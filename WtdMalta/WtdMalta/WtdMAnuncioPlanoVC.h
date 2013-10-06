//
//  WtdMAnuncioPlanoVC.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "WtdMAnuncioModelo.h"

@interface WtdMAnuncioPlanoVC : UIViewController <MKMapViewDelegate> {
    
    // Ni idea de dónde sale esta expresión
    BOOL _doneInitialZoom;
    
    IBOutlet MKMapView *localizacion;
}

@property (strong, nonatomic) WtdMAnuncioModelo *modelo;
@property (nonatomic, retain) IBOutlet MKMapView *localizacion;


-(id) initWithModelo: (WtdMAnuncioModelo *) aModelo;

-(IBAction) cambioMapa:(id)sender;

@end
