//
//  WtdMAnuncioTablonModelo.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WtdMAnuncioModelo.h"

@interface WtdMAnuncioTablonModelo : NSObject

// Definimos 3 tipos de Anuncios: Eventos, Turismo y Restauración
// No lo ponemos en .h lo ocultamo en .m


// loas siguientes propiedades si las definimos aqui y seran las que contengan
// el número de Anuncios por tipo de Anuncios: Eventos, Turismo y Restauración

@property (readonly, nonatomic) int eventosCount;
@property (readonly, nonatomic) int turismoCount;
@property (readonly, nonatomic) int restauracionCount;

// Métodos

-(WtdMAnuncioModelo *) eventosAtIndex: (int) index;
-(WtdMAnuncioModelo *) turismoAtIndex: (int) index;
-(WtdMAnuncioModelo *) restauracionAtIndex: (int) index;

@end
