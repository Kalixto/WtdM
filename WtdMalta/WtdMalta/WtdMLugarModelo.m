//
//  WtdMLugarModelo.m
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMLugarModelo.h"

@implementation WtdMLugarModelo

@synthesize coordinate, titulo;

-(id) initWithCoordenadas: (CLLocationCoordinate2D) c
                   titulo: (NSString *) t {
    
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitulo:t];
    }
    return self;
}

@end
