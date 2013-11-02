//
//  chiefHeaderTableCell.h
//  sandbox
//
//  Created by George on 10/31/2013.
//  Copyright (c) 2013 George. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface chiefHeaderTableCell : UITableViewCell{
    

}

@property (weak, nonatomic) IBOutlet UITextView *desc;
@property (weak, nonatomic) IBOutlet UILabel *username;
@property (nonatomic, weak) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UIImageView *userImage;
@property (weak, nonatomic) IBOutlet UITextView *date;
@property (weak, nonatomic) IBOutlet UILabel *title;
@end
