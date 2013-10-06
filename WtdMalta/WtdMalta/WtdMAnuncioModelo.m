//
//  WtdMAnuncioModelo.m
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMAnuncioModelo.h"

@implementation WtdMAnuncioModelo

#pragma mark - Métodos de Clase

// Implemenmtación de los Constructores (métodos de clase)
+(id) anuncioWithNombre: (NSString *) aNombre
                   Logo: (UIImage *) aLogo
                  Notas: (NSString *) aNotas
                    Url: (NSURL *) aUrl
                   Foto: (UIImage *) aFoto
                 Matriz:(NSString *)aMatriz
                Latitud:(double)aLatitud
               Longitud:(double)aLongitud{
    return [[self alloc] initWithNombre:aNombre
                                   Logo:aLogo
                                  Notas:aNotas
                                    Url:aUrl
                                   Foto:aFoto
                                 Matriz:aMatriz
                                Latitud:aLatitud
                               Longitud:aLongitud];
}

+(id) anuncioWithNombre: (NSString *) aNombre
                   Logo: (UIImage *) aLogo
                  Notas: (NSString *) aNotas
                   Foto: (UIImage *) aFoto{
    return [[self alloc] initWithNombre:aNombre
                                   Logo:aLogo
                                  Notas:aNotas
                                   Foto:aFoto];
}


#pragma mark - Init

// Implementación de los Inicializadores: Inicializador Designado

-(id) initWithNombre: (NSString *) aNombre
                Logo: (UIImage *) aLogo
               Notas: (NSString *) aNotas
                 Url: (NSURL *) aUrl
                Foto: (UIImage *) aFoto
              Matriz:(NSString *)aMatriz
             Latitud:(double)aLatitud
            Longitud:(double)aLongitud{
    
    if (self = [super init]) {
        // Asignar los parámetros a las variables de instancia
        _nombre = aNombre;
        _logo = aLogo;
        _notas = aNotas;
        _url = aUrl;
        _foto = aFoto;
        _matriz = aMatriz;
        _latitud = aLatitud;
        _longitud = aLongitud;
    }
    return  self;
}

// Implementación del Inicializador de Coveniencia (sin url)

-(id) initWithNombre: (NSString *) aNombre
                Logo: (UIImage *) aLogo
               Notas: (NSString *) aNotas
                Foto: (UIImage *) aFoto{
    // Llamamos al inicializador Designado
    return [self initWithNombre:aNombre
                           Logo: aLogo
                          Notas:aNotas
                            Url:nil
                           Foto:aFoto
                         Matriz:nil
                        Latitud:0
                       Longitud:0];
}


@end
