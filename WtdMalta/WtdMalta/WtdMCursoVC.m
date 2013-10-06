//
//  WtdMCursoVC.m
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMCursoVC.h"
#import "WtdMCursoWebVc.h"
#import "WtdMCursoPlanoVC.h"

@interface WtdMCursoVC ()

@end

@implementation WtdMCursoVC

-(id) initWithModelo: (WtdMCursoModelo *) aModelo{
    
    // decimos que el nib/xib sea el por defecto
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _modelo = aModelo;
        
        self.title = aModelo.empresa;
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
    WtdMCursoWebVc *webVC = [[WtdMCursoWebVc alloc] initWithModelo:self.modelo];
    
    // hacemos un Push
    [self.navigationController pushViewController:webVC
                                         animated:YES];
}

-(IBAction)displayPlano:(id)sender {
    WtdMCursoPlanoVC *planoVC = [[WtdMCursoPlanoVC alloc] initWithModelo:self.modelo];
    [self.navigationController pushViewController:planoVC animated:YES];
    
}

#pragma  mark - Utilidades

-(void) sincronizarVistaYModelo {
    
    self.notasLabel.text = self.modelo.notas;
    self.logoView.image = self.modelo.logo;
    self.ciudadLabel.text = self.modelo.ciudad;
   [self.notasLabel setNumberOfLines:0];    
    
}

@end