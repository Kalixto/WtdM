//
//  WMListadoVC.h
//  WtdM tabla 01
//
//  Created by Edu Ardo on 03/07/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WMDetalleVC.h"

@interface WMListadoVC : UITableViewController <DetalleDelegado>

@property (nonatomic, strong) NSMutableArray *celdas;
@property (nonatomic, assign) int indiceSeleccionado;

@end
