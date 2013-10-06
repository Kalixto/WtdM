//
//  WtdMLugarVC.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WtdMLugarVC : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate> {
    
    CLLocationManager *gestorLocalizacion;
    
    // Variables de Instancia
    
    IBOutlet MKMapView *vistaMundial;
    IBOutlet UIActivityIndicatorView *indicadorActividad;
    IBOutlet UITextField *tituloLugar;
    
}

-(id) initLugar;
-(void) buscarLocalizacion;
-(void) LocalizacionEncontrada: (CLLocation *) loc;

-(IBAction)opcionMapa:(id)sender;

@end
