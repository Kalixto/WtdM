//
//  AGTWineryModel.h
//  Baccus
//
//  Created by Fernando Rodríguez Romero on 1/31/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AGTWineModel.h"

#define RED_WINE_KEY        @"Tinto"
#define WHITE_WINE_KEY      @"Blanco"
#define ROSE_WINE_KEY       @"Rosado"
#define CHAMPAGNE_WINE_KEY  @"Cava"

@interface AGTWineryModel : NSObject

@property (nonatomic, readonly) NSUInteger redWineCount;
@property (nonatomic, readonly) NSUInteger whiteWineCount;
@property (nonatomic, readonly) NSUInteger roseWineCount;
@property (nonatomic, readonly) NSUInteger champagneWineCount;

- (AGTWineModel *)redWineAtIndex:(NSUInteger)index;
- (AGTWineModel *)whiteWineAtIndex:(NSUInteger)index;
- (AGTWineModel *)roseWineAtIndex:(NSUInteger)index;
- (AGTWineModel *)champagneWineAtIndex:(NSUInteger)index;

@end
