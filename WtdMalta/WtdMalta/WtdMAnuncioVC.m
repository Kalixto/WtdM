//
//  WtdMAnuncioVC.m
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMAnuncioVC.h"
#import "WtdMAnuncioWebVC.h"
#import "WtdMAnuncioPlanoVC.h"

@interface WtdMAnuncioVC ()

@end

@implementation WtdMAnuncioVC

-(id) initWithModelo: (WtdMAnuncioModelo *) aModelo{
    
    // decimos que el nib/xib sea el por defecto
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _modelo = aModelo;
        
        self.title = aModelo.nombre;
    }
    return self;
}

// Sincronizamos Modelo y Vista
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self sincronizarVistaYModelo];
    
    self.navigationController.navigationBar.tintColor = [UIColor colorWithRed:0.1
                                                                        green:0.1
                                                                         blue:0.5
                                                                        alpha:1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma  mark - Acciones

- (IBAction) displayUrl:(id)sender{
    
    // Crear un webVC
    WtdMAnuncioWebVC *webVC = [[WtdMAnuncioWebVC alloc] initWithModelo:self.modelo];
    
    // hacemos un Push
    [self.navigationController pushViewController:webVC
                                         animated:YES];
}

-(IBAction)displayPlano:(id)sender {
    WtdMAnuncioPlanoVC *planoVC = [[WtdMAnuncioPlanoVC alloc] initWithModelo:self.modelo];
    [self.navigationController pushViewController:planoVC animated:YES];
    
}

#pragma  mark - Utilidades

-(void) sincronizarVistaYModelo {
    
    self.notasLabel.text = self.modelo.notas;
    //    self.logoView.image = self.modelo.logo;
    self.fotoView.image = self.modelo.foto;
    
    //  [self.notasLabel setNumberOfLines:0];
    
}

@end
