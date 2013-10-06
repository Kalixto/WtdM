//
//  AGTWineryTableViewController.h
//  Baccus
//
//  Created by Fernando Rodríguez Romero on 1/31/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AGTWineryModel.h"
#import "AGTWineModel.h"

#define RED_WINE_SECTION        0
#define WHITE_WINE_SECTION      1
#define ROSE_WINE_SECTION       2
#define CHAMPAGNE_WINE_SECTION  3

#define DID_SELECT_WINE_NOTIFICATION_NAME @"newWineSelected"
#define WINE_KEY @"wine"

#define SECTION_KEY @"section"
#define ROW_KEY @"row"
#define LAST_WINE_KEY @"lastWine"

@class AGTWineryTableViewController;

@protocol AGTWineryTableViewControllerDelegate <NSObject>

-(void) wineryTableViewController: (AGTWineryTableViewController *) aWineryVC
                    didSelectWine:(AGTWineModel *) aWine;

@end


@interface AGTWineryTableViewController : UITableViewController <AGTWineryTableViewControllerDelegate>

@property (strong, nonatomic) AGTWineryModel *model;
@property (weak, nonatomic) id<AGTWineryTableViewControllerDelegate> delegate;

// Designado
- (id) initWithModel:(AGTWineryModel *)aModel
               style:(UITableViewStyle)aStyle;

- (AGTWineModel *)lastSelectedWine;

@end
