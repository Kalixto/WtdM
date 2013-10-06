//
//  AGTWineViewController.h
//  Baccus
//
//  Created by Fernando Rodríguez Romero on 1/30/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AGTWineModel.h"
#import "AGTWineryTableViewController.h"

@interface AGTWineViewController : UIViewController<UISplitViewControllerDelegate, AGTWineryTableViewControllerDelegate>


// Propiedades
@property (strong, nonatomic) AGTWineModel *model;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *wineryNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *originLabel;
@property (weak, nonatomic) IBOutlet UILabel *grapesLabel;
@property (weak, nonatomic) IBOutlet UITextView *notesView;
@property (weak, nonatomic) IBOutlet UIImageView *photoView;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *ratingViews;
@property (weak, nonatomic) IBOutlet UIButton *webButton;
@property (strong, nonatomic) IBOutlet UIView *portraitView;

// portrait
@property (weak, nonatomic) IBOutlet UILabel *nameLabelPortrait;
@property (weak, nonatomic) IBOutlet UILabel *wineryNameLabelPortrait;
@property (weak, nonatomic) IBOutlet UILabel *typeLabelPortrait;
@property (weak, nonatomic) IBOutlet UILabel *originLabelPortrait;
@property (weak, nonatomic) IBOutlet UILabel *grapesLabelPortrait;
@property (weak, nonatomic) IBOutlet UITextView *notesViewPortrait;
@property (weak, nonatomic) IBOutlet UIImageView *photoViewPortrait;
@property (strong, nonatomic) IBOutletCollection(UIImageView) NSArray *ratingViewsPortrait;

-(id) initWithModel: (AGTWineModel *) aModel;

-(IBAction)displayWebpage:(id)sender;


@end
