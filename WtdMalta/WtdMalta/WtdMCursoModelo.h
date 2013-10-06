//
//  WtdMCursoModelo.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WtdMCursoModelo : NSObject

// Propiedades
@property (strong, nonatomic) NSString *tipo;
@property (strong, nonatomic) UIImage *titulo;
@property (strong, nonatomic) NSString *empresa;
@property (strong, nonatomic) NSString *ciudad;
@property (strong, nonatomic) NSString *direccion;
@property (strong, nonatomic) NSString *notas;
@property (strong, nonatomic) UIImage *logo;
@property (strong, nonatomic) UIImage *foto;
@property (strong, nonatomic) NSURL *url;
@property (nonatomic) int puntuacion; // 0 to 5

// Constructores (métodos de Clase)

+(id) cursoWithTipo: (NSString *) aTipo
             Titulo: (UIImage *) aTitulo
            Empresa: (NSString *) aEmpresa
             Ciudad: (NSString *) aCiudad
          Direccion: (NSString *) aDireccion
              Notas: (NSString *) aNotas
               Logo: (UIImage *) aLogo
               Foto: (UIImage *) aFoto
                Url: (NSURL *) aUrl
         Puntuacion: (int) aPuntuacion;

+(id) cursoWithTipo: (NSString *) aTipo
             Titulo: (UIImage *) aTitulo
            Empresa: (NSString *) aEmpresa
             Ciudad: (NSString *) aCiudad
          Direccion: (NSString *) aDireccion
              Notas: (NSString *) aNotas
               Logo: (UIImage *) aLogo
                Url: (NSURL *) aUrl;

// Inicializador designado

-(id) initWithTipo: (NSString *) aTipo
            Titulo: (UIImage *) aTitulo
           Empresa: (NSString *) aEmpresa
            Ciudad: (NSString *) aCiudad
         Direccion: (NSString *) aDireccion
             Notas: (NSString *) aNotas
              Logo: (UIImage *) aLogo
              Foto: (UIImage *) aFoto
               Url: (NSURL *) aUrl
        Puntuacion: (int) aPuntuacion;

// Inicializador de Coveniencia (sin foto ni puntuación)

-(id) initWithTipo: (NSString *) aTipo
            Titulo: (UIImage *) aTitulo
           Empresa: (NSString *) aEmpresa
            Ciudad: (NSString *) aCiudad
         Direccion: (NSString *) aDireccion
             Notas: (NSString *) aNotas
              Logo: (UIImage *) aLogo
               Url: (NSURL *) aUrl;

@end
