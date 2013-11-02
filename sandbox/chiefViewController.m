//
//  chiefViewController.m
//  sandbox
//
//  Created by George on 11/1/2013.
//  Copyright (c) 2013 George. All rights reserved.
//

#import "chiefViewController.h"
#import "chiefHeaderTableView.h"
#import "chiefHeaderTableCell.h"

@implementation chiefViewController{
    
    NSArray *tableData;
    NSArray *thumbnails;
    NSUInteger last;
    NSXMLParser *parser;
    NSMutableArray *feeds;
    NSMutableDictionary *item;
    NSMutableString *title;
    NSMutableString *link;
    NSMutableString *pubDate;
    NSMutableString *description;
    
    NSString *element;
    
}

- (void)loadView
{
    [super loadView];
}

/*-(void)viewDidLoad{
 [super viewDidLoad];
 CGRect screenRect = [[UIScreen mainScreen] bounds];
 CGFloat screenWidth = screenRect.size.width;
 // CGFloat screenHeight = screenRect.size.height;
 
 chiefHeaderTableViewController *tableView = [[chiefHeaderTableViewController alloc]initWithFrame:CGRectMake(0, 100, screenWidth, 400)];
 tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
 tableView.delegate = self;
 tableView.dataSource = self;
 [tableView reloadData];
 
 
 [[self view]addSubview:tableView];
 
 
 }*/
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    //CGFloat screenWidth = screenRect.size.width;
    // CGFloat screenHeight = screenRect.size.height;
   // UITableView *tableView = [[UITableView alloc] init];
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 100, 100, 100)];

    //chiefHeaderTableView *tableView = [[chiefHeaderTableView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    //tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView reloadData];
    
    self.view = tableView;
    
    thumbnails = [NSArray arrayWithObjects:@"RowingSmall.jpg", @"su3.jpg", @"sampleUser.jpg", nil];
    last = 0;
    
    feeds = [[NSMutableArray alloc] init];
    NSURL *url = [NSURL URLWithString:@"http://www.chiefdelphi.com/forums/external.php?type=RSS2&forumids=13,16,113,15,21,58,125,50,22,66,52,53,51,120,54,55,57,85,9,64,56,3,11,86,63,82,87,88,6,36,12,10,20,4,110,126,7,8,34,68,162,122,59"];
    parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    [parser setDelegate:self];
    [parser setShouldResolveExternalEntities:NO];
    
    [parser parse];
    
}

- (void)didReceiveMemoryWarning
 {
 [super didReceiveMemoryWarning];
 // Dispose of any resources that can be recreated.
 }

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myChiefHeaderTableCell" forIndexPath:indexPath];
    //chiefHeaderTableCell *cell = [[chiefHeaderTableCell alloc]init];
    chiefHeaderTableCell *cell = (chiefHeaderTableCell *)[tableView dequeueReusableCellWithIdentifier:@"chiefHeaderTableCell"];
    if (cell == nil) {
    	NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"chiefHeaderTableCell"owner:self options:nil];
    	cell = (chiefHeaderTableCell *)[nib objectAtIndex:0];
    }
    cell.title.text = [[feeds objectAtIndex:indexPath.row] objectForKey: @"title"];
    return cell;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    // If You have only one(1) section, return 1, otherwise you must handle sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    //return [tableData count];
    return 10;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return  110;
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    element = elementName;
    if ([element isEqualToString:@"item"]) {
        item    = [[NSMutableDictionary alloc] init];
        title   = [[NSMutableString alloc] init];
        link    = [[NSMutableString alloc] init];
        pubDate = [[NSMutableString alloc] init];
        description = [[NSMutableString alloc] init];
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    if ([elementName isEqualToString:@"item"]) {
        [item setObject:title forKey:@"title"];
        [item setObject:link forKey:@"link"];
        [item setObject:description forKey:@"description"];
        [item setObject:pubDate forKey:@"pubDate"];
        [feeds addObject:[item copy]];
        
    }
    
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    if ([element isEqualToString:@"title"]) {
        [title appendString:string];
    } else if ([element isEqualToString:@"link"]) {
        [link appendString:string];
    }else if ([element isEqualToString:@"description"]) {
        [description appendString:string];
    }else if([element isEqualToString:@"pubDate"]){
        [pubDate appendString:string];
    }
    
}

- (void)parserDidEndDocument:(NSXMLParser *)parser {
    //[self.tableView reloadData];
    
    
}


@end
