//
//  WtdMCursoPlanoVC.m
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMCursoPlanoVC.h"

@interface WtdMCursoPlanoVC ()

@end

@implementation WtdMCursoPlanoVC

@synthesize localizacion;

-(id) initWithModelo: (WtdMCursoModelo *) aModelo {
    
    // Cargar un xib u otro según el dispositivo
    // la macro IS_IPHONE la hemos definido en el fichero de precompilado *.pch para tenerla disponible en todo el proyecto
    NSString *nibName = nil;
    if (!IS_IPHONE) {
        nibName = @"WtdMCursoPlanoiPadVC";
    }
    
    if (self = [super initWithNibName:nibName bundle:nil]) {
        _modelo = aModelo;
        
        self.title = @"Plano";
        
    }
    return  self;
}

-(void) viewDidAppear:(BOOL)animated {
    
    CLLocationCoordinate2D plano;
//    plano.latitude = self.modelo.latitud;
    plano.latitude = 30.044444;
    plano.longitude = 31.235718;
 //   51.510475,-0.131837
 //   30.044444,31.235718
//    plano.longitude = self.modelo.longitud;
    MKPointAnnotation *punto = [[MKPointAnnotation alloc] init];
    punto.coordinate = plano;
//    punto.title = self.modelo.nombre;
//    punto.subtitle = self.modelo.matriz;
    
    [localizacion addAnnotation:punto];
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(plano, 500, 500);
    MKCoordinateRegion adjustedRegion = [localizacion regionThatFits:viewRegion];
    [localizacion setRegion:adjustedRegion animated:YES];
}

-(IBAction) cambioMapa:(id)sender {
    switch ([sender selectedSegmentIndex]) {
        case 0:
        {
            [localizacion setMapType:MKMapTypeStandard];
        }
            break;
        case 1:
        {
            [localizacion setMapType:MKMapTypeSatellite];
        }
            break;
        case 2:
        {
            [localizacion setMapType:MKMapTypeHybrid];
        }
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
