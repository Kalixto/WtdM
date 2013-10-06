//
//  WtdMAnuncioTablonModelo.m
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMAnuncioTablonModelo.h"

// Definimos 3 tipos de Anuncios: Eventos, Turismo y Restauración
// No lo ponemos en .h lo ocultamo en .m dentro del @interface

@interface WtdMAnuncioTablonModelo ()

@property (strong, nonatomic) NSArray *eventos;
@property (strong, nonatomic) NSArray *turismo;
@property (strong, nonatomic) NSArray *restauracion;

@end

@implementation WtdMAnuncioTablonModelo

#pragma mark - Propiedades

-(int) eventosCount {
    return [self.eventos count];
}
-(int) turismoCount {
    return [self.turismo count];
}
-(int) restauracionCount {
    return  [self.restauracion count];
}

-(id) init {
    
    if (self = [super init]) {
        // Creamos los Modelos
        
        WtdMAnuncioModelo * marsaxlokk = [WtdMAnuncioModelo anuncioWithNombre: @"Marsaxlokk"
                                                                       Logo: [UIImage imageNamed:@"WtdM-A-Logo-01"]
                                                                      Notas: @"Marsaxlokk is fishing village, it's placed in the south-east of Malta. It has around 3.000 residents. Marsa means harbour and Xlokk means south-easterly."
                                                                        Url: [NSURL URLWithString:@"http://whattodomalta.com/post/18?lang=en"]
                                                                       Foto:[UIImage imageNamed:@"WtdM-A-Foto-01"]
                                                                     Matriz:@"Every Sunday there is a market"
                                                                    Latitud:35.841944
                                                                   Longitud:14.543056];
        
        WtdMAnuncioModelo * dingli = [WtdMAnuncioModelo anuncioWithNombre: @"Dingli"
                                                                   Logo: [UIImage imageNamed:@"WtdM-A-Logo-02"]
                                                                  Notas: @"Motivated by a friend's suggestion, we went to Dingli, small village from the west coast of Malta, 13km away from Valletta. The closest city to Dingli is Rabat, just 2km away. Dingli is know per their cliffs and the Buskett gardens"
                                                                    Url: [NSURL URLWithString:@"http://whattodomalta.com/post/16?lang=en"]
                                                                   Foto:[UIImage imageNamed:@"WtdM-A-Foto-02"]
                                                                 Matriz:@"Dingli dingli"
                                                                Latitud:35.861389
                                                               Longitud:14.382222];
        
        WtdMAnuncioModelo * ecogozo = [WtdMAnuncioModelo anuncioWithNombre: @"EcoGozo 2020"
                                                                    Logo: [UIImage imageNamed:@"WtdM-A-Logo-03"]
                                                                   Notas: @"Gozo will become an eco-island at 2020, supported by a sustainable comunity, enthusiastic and committed. This project intend to show the life's quality of Gozo and improve it even more with the education, economic development and social progress."
                                                                     Url: [NSURL URLWithString:@"http://whattodomalta.com/post/15?lang=en"]
                                                                    Foto:[UIImage imageNamed:@"WtdM-A-Foto-03"]
                                                                  Matriz:@"Para 2020"
                                                                 Latitud:36.044444
                                                                Longitud:14.239722];
        
        WtdMAnuncioModelo * valetta = [WtdMAnuncioModelo anuncioWithNombre: @"Valletta 2018"
                                                                    Logo: [UIImage imageNamed:@"WtdM-A-Logo-04"]
                                                                   Notas: @"Valletta was unanimously named the European Capital of Culture 2018, by a jury of experts, following a presentation of the Valletta 2018 Foundation October 12, 2012."
                                                                     Url: [NSURL URLWithString:@"http://whattodomalta.com/post/14?lang=en"]
                                                                    Foto:[UIImage imageNamed:@"WtdM-A-Foto-04"]
                                                                  Matriz:@"EN 2018"
                                                                 Latitud:35.899722
                                                                Longitud:14.514722];
        
        WtdMAnuncioModelo * donmesquita = [WtdMAnuncioModelo anuncioWithNombre: @"Don Mesquita"
                                                                        Logo: [UIImage imageNamed:@"WtdM-A-Logo-05"]
                                                                       Notas: @"Like you already know, one of our hobbies and like good mediterraneans, we are good cuisine lovers, so we are interesting to suggest you locals where we have been and we liked it, we will rating them, based in a few aspect that we consider basics in a choice of a restaurant or bar, like we told you in the Initial Article Rating: the environment, the food, drink, service, and location, if there is any special characteristic we will tell you about it."
                                                                         Url: [NSURL URLWithString:@"http://whattodomalta.com/post/13?lang=en"]
                                                                        Foto:[UIImage imageNamed:@"WtdM-A-Foto-05"]
                                                                      Matriz:@"Vinos y comida"
                                                                     Latitud:35.886944
                                                                    Longitud:14.4025];
        
        WtdMAnuncioModelo * mdinayrabat = [WtdMAnuncioModelo anuncioWithNombre: @"Mdina & Rabat"
                                                                        Logo: [UIImage imageNamed:@"WtdM-A-Logo-06"]
                                                                       Notas: @"We went to visit Rabat and Mdina the last 19 of October. We were impressed per the strategic situation of Mdina and his protector wall. This image made us travel through the time, placing us in an era in which it was very essential to be protected to survive."
                                                                         Url: [NSURL URLWithString:@"http://whattodomalta.com/post/12?lang=en"]
                                                                        Foto:[UIImage imageNamed:@"WtdM-A-Foto-06"]
                                                                      Matriz:@"Pues eso"
                                                                     Latitud:35.874167
                                                                    Longitud:14.394167];
        self.eventos = @[ecogozo, valetta];
        self.turismo = @[mdinayrabat, dingli];
        self.restauracion = @[donmesquita, marsaxlokk];
        
    }
    return self;
}


-(WtdMAnuncioModelo *) eventosAtIndex: (int) index {
    
    return [self.eventos objectAtIndex:index];
    
}
-(WtdMAnuncioModelo *) turismoAtIndex: (int) index {
    
    return [self.turismo objectAtIndex:index];
    
}
-(WtdMAnuncioModelo *) restauracionAtIndex: (int) index {
    
    return [self.restauracion objectAtIndex:index];
    
}


@end
