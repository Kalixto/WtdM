//
//  WtdMCursoTablonModelo.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WtdMCursoModelo.h"

@interface WtdMCursoTablonModelo : NSObject

// Definimos 3 tipos de Cursos: Idiomas, Buceo y Cocina
// No lo ponemos en .h lo ocultamo en .m

// loas siguientes propiedades si las definimos aqui y seran las que contengan
// el número de Anuncios por tipo de Anuncios: Idiomas, Buceo y Cocina

@property (readonly, nonatomic) int idiomasCount;
@property (readonly, nonatomic) int buceoCount;
@property (readonly, nonatomic) int cocinaCount;

// Métodos

-(WtdMCursoModelo *) idiomasAtIndex: (int) index;
-(WtdMCursoModelo *) buceoAtIndex: (int) index;
-(WtdMCursoModelo *) cocinaAtIndex: (int) index;

@end
