//
//  WtdMLugarVC.m
//  WtdMalta
//
//  Created by Edu Ardo on 08/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMLugarVC.h"
#import "WtdMLugarModelo.h"

@interface WtdMLugarVC ()

@end

@implementation WtdMLugarVC

-(id) initLugar {
    
    self.tabBarItem.image = [UIImage imageNamed:@"73-radar"];
    self.tabBarItem.title = @"Lugares";
    
    return self;
}

-(void) viewWillAppear:(BOOL)animated {
    
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.1
                                                                        green:0.1
                                                                         blue:0.5
                                                                        alpha:1];
    self.title = @"What to do Malta";
    self.tabBarItem.title = @"Lugares";
}

-(void) viewDidLoad {
    
    // Una opción es crear el gestor y demás aquí, en vez de en initWithNibName:(NSString *)nibNameOrNil bundle:...
    
    // Creamos el gestor de localización
    gestorLocalizacion = [[CLLocationManager alloc] init];
    
    // Establecemos que la propiedad de Delegado del Gestor de Localización es el WTMViewController
    [gestorLocalizacion setDelegate:self];
    
    // Queremos la mejor precisión independientemente del coste
    [gestorLocalizacion setDesiredAccuracy:kCLLocationAccuracyBest];
    
    [vistaMundial setShowsUserLocation:YES];
}

-(void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)lugarUsuario {
    
    CLLocationCoordinate2D loc = [lugarUsuario coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [vistaMundial setRegion:region animated:YES];
}

-(BOOL) textFieldShouldReturn:(UITextField *)tf  {
    
    [self buscarLocalizacion];
    
    [tf resignFirstResponder];
    
    //   NSLog(@"textFieldShouldReturn:1");
    //   NSLog(@"texto: %@", tituloLugar );
    
    return YES;
}

-(void) buscarLocalizacion {
    
    [gestorLocalizacion startUpdatingLocation];
    [indicadorActividad startAnimating];
    [tituloLugar setHidden:YES];
}
-(void) LocalizacionEncontrada: (CLLocation *) loc {
    
    CLLocationCoordinate2D coord = [loc coordinate];
    
    // Creamos una instancia de WTMModeloMapPoint con los datos actuales
    WtdMLugarModelo *mp = [[WtdMLugarModelo alloc] initWithCoordenadas:coord titulo:[tituloLugar text]];
    
    // Lo añadimos al Mapa
    [vistaMundial addAnnotation:mp];
    
    // Zoom por Region a la localización
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [vistaMundial setRegion:region animated:YES];
    
    // Reseteamos la vista
    [tituloLugar setText:@""];
    [indicadorActividad stopAnimating];
    [tituloLugar setHidden:NO];
    [gestorLocalizacion stopUpdatingLocation];
    
}

-(IBAction)opcionMapa:(id)sender {
    
    switch ([sender selectedSegmentIndex]) {
        case 0:
        {
            [vistaMundial setMapType:MKMapTypeStandard];
        }
            break;
        case 1:
        {
            [vistaMundial setMapType:MKMapTypeSatellite];
        }
            break;
        case 2:
        {
            [vistaMundial setMapType:MKMapTypeHybrid];
        }
    }
    
}

-(void) locationManager:(CLLocationManager *) gestor
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation {
    
    // Cuántos segundos hace que se creó la localización?
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    // CLLocationManager retornará la última localización del dispositivo. A nosotros plim
    // Si se realizó hace más de 3 minutos, lo ignora
    if (t < -180) {
        // Se trata de datos de caché, seguimos buscando
        return;
    }
    [self LocalizacionEncontrada:newLocation];
}

-(void) locationManager: (CLLocationManager *) gestor
       didFailWithError:(NSError *)error {
    
    NSLog(@"didFailWithError: %@", error);
    
}

-(void) dealloc {
    [gestorLocalizacion setDelegate:nil];
}


@end
