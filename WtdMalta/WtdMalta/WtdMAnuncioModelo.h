//
//  WtdMAnuncioModelo.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WtdMAnuncioModelo : NSObject

// Propiedades
@property (strong, nonatomic) NSString *nombre;
@property (strong, nonatomic) UIImage *logo;
@property (strong, nonatomic) NSString *notas;
@property (strong, nonatomic) NSURL *url;
@property (strong, nonatomic) UIImage *foto;
@property (strong, nonatomic) NSString *matriz;
@property (nonatomic) double latitud;
@property (nonatomic) double longitud;

// Constructores (métodos de clase)
+(id) anuncioWithNombre: (NSString *) aNombre
                   Logo: (UIImage *) aLogo
                  Notas: (NSString *) aNotas
                    Url: (NSURL *) aUrl
                   Foto: (UIImage *) aFoto
                 Matriz: (NSString *) aMatriz
                Latitud: (double) aLatitud
               Longitud: (double) aLongitud;

+(id) anuncioWithNombre: (NSString *) aNombre
                   Logo: (UIImage *) aLogo
                  Notas: (NSString *) aNotas
                   Foto: (UIImage *) aFoto;


// Inicializador Designado

-(id) initWithNombre: (NSString *) aNombre
                Logo: (UIImage *) aLogo
               Notas: (NSString *) aNotas
                 Url: (NSURL *) aUrl
                Foto: (UIImage *) aFoto
              Matriz: (NSString *) aMatriz
             Latitud: (double) aLatitud
            Longitud: (double) aLongitud;

// Inicializador de Coveniencia (sin url)

-(id) initWithNombre: (NSString *) aNombre
                Logo: (UIImage *) aLogo
               Notas: (NSString *) aNotas
                Foto: (UIImage *) aFoto;

@end
