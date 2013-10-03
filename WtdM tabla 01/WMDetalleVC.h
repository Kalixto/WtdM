//
//  WMDetalleVC.h
//  WtdM tabla 01
//
//  Created by Edu Ardo on 03/07/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DetalleDelegado <NSObject>


@end

@interface WMDetalleVC : UIViewController

@property (nonatomic, weak) id <DetalleDelegado> delegado;

@end
