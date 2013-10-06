//
//  WtdMCursoWebVc.m
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMCursoWebVc.h"

@implementation WtdMCursoWebVc

-(id) initWithModelo:(WtdMCursoModelo *)aModelo {
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _modelo = aModelo;
        self.title = @"Web";
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self displayURL: self.modelo.url];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma  mark - UIWebViewDelegate

-(void) webViewDidFinishLoad:(UIWebView *)webView {
    
    [self.visorActividad stopAnimating];
    [self.visorActividad setHidden:YES];
    
}

#pragma mark - Utilidades

-(void) displayURL: (NSURL *) aURL {
    
    
    self.browser.delegate = self;
    
    self.visorActividad.hidden = NO;
    [self.visorActividad startAnimating];
    [self.browser loadRequest:[NSURLRequest requestWithURL:aURL]];
    
}

@end
