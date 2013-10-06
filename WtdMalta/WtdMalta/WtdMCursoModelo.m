//
//  WtdMCursoModelo.m
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMCursoModelo.h"

@implementation WtdMCursoModelo

#pragma mark - Métodos de Clase

// Implemenmtación de los Constructores (métodos de clase)

+(id) cursoWithTipo: (NSString *) aTipo
             Titulo: (UIImage *) aTitulo
            Empresa: (NSString *) aEmpresa
             Ciudad: (NSString *) aCiudad
          Direccion: (NSString *) aDireccion
              Notas: (NSString *) aNotas
               Logo: (UIImage *) aLogo
               Foto: (UIImage *) aFoto
                Url: (NSURL *) aUrl
         Puntuacion: (int) aPuntuacion {
    return [[self alloc] initWithTipo:aTipo
                               Titulo: aTitulo
                              Empresa:aEmpresa
                               Ciudad:aCiudad
                            Direccion:aDireccion
                                Notas:aNotas
                                 Logo:aLogo
                                 Foto:aFoto
                                  Url:aUrl
                           Puntuacion:aPuntuacion];
}

+(id) cursoWithTipo: (NSString *) aTipo
             Titulo: (UIImage *) aTitulo
            Empresa: (NSString *) aEmpresa
             Ciudad: (NSString *) aCiudad
          Direccion: (NSString *) aDireccion
              Notas: (NSString *) aNotas
               Logo: (UIImage *) aLogo
                Url: (NSURL *) aUrl {
    return [[self alloc] initWithTipo:aTipo
                               Titulo: aTitulo
                              Empresa:aEmpresa
                               Ciudad:aCiudad
                            Direccion:aDireccion
                                Notas:aNotas
                                 Logo:aLogo
                                  Url:aUrl];
}

#pragma mark - Init

// Implementación de los Inicializadores: Inicializador Designado

-(id) initWithTipo: (NSString *) aTipo
            Titulo: (UIImage *) aTitulo
           Empresa: (NSString *) aEmpresa
            Ciudad: (NSString *) aCiudad
         Direccion: (NSString *) aDireccion
             Notas: (NSString *) aNotas
              Logo: (UIImage *) aLogo
              Foto: (UIImage *) aFoto
               Url: (NSURL *) aUrl
        Puntuacion: (int) aPuntuacion {
    if (self = [super init]) {
        // Asignar los parámetros a las variables de instancia
        _tipo = aTipo;
        _titulo = aTitulo;
        _empresa = aEmpresa;
        _ciudad = aCiudad;
        _direccion = aDireccion;
        _notas = aNotas;
        _logo = aLogo;
        _foto = aFoto;
        _url= aUrl;
        _puntuacion = aPuntuacion;
    }
    return self;
}

// Implementación del Inicializador de Coveniencia (sin url)

-(id) initWithTipo: (NSString *) aTipo
            Titulo: (UIImage *) aTitulo
           Empresa: (NSString *) aEmpresa
            Ciudad: (NSString *) aCiudad
         Direccion: (NSString *) aDireccion
             Notas: (NSString *) aNotas
              Logo: (UIImage *) aLogo
               Url: (NSURL *) aUrl {
    // Llamamos al inicializador Designado
    return [self initWithTipo:aTipo
                       Titulo: aTitulo
                      Empresa:aEmpresa
                       Ciudad:aCiudad
                    Direccion:aDireccion
                        Notas:aNotas
                         Logo:aLogo
                         Foto:nil
                          Url:aUrl
                   Puntuacion:nice(0)];
}

@end
