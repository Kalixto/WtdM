//
//  WtdMAppDelegate.m
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WtdMAppDelegate.h"


#import "WtdMAnuncioModelo.h"
#import "WtdMAnuncioTablonModelo.h"
#import "WtdMAnuncioVC.h"
#import "WtdMAnuncioTablonTableVC.h"
// Ojo creo que no hacen falta los otros VC de Anuncios

#import "WtdMCursoModelo.h"
#import "WtdMCursoTablonModelo.h"
#import "WtdMCursoVC.h"
#import "WtdMCursoTablonTableVC.h"

#import "WtdMLugarVC.h"

@implementation WtdMAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // Creamos 2 Modelos de: 1 de Tablón de Anuncios y otro de Tablón de Cursos
    
    WtdMAnuncioTablonModelo *tablonAnuncios = [[WtdMAnuncioTablonModelo alloc] init];
    WtdMCursoTablonModelo   *tablonCursos   = [[WtdMCursoTablonModelo alloc] init];
    
    // Creamos 3 Controladores: 1 del tablón de Anuncios y otro de tablón de Cursos + otro de Lugares

    WtdMAnuncioTablonTableVC *tablonAnunciosVC = [[WtdMAnuncioTablonTableVC alloc] initWithModelo:tablonAnuncios style:UITableViewStyleGrouped];
    WtdMCursoTablonTableVC   *tablonCursosVC   = [[WtdMCursoTablonTableVC alloc] initWithModelo:tablonCursos style:UITableViewStyleGrouped];
    WtdMLugarVC              *lugaresVC        = [[WtdMLugarVC alloc] initLugar];
    
    // Creamos los Navigation para los Anuncios, Cursos y para los Lugares
    
    UINavigationController *naviAnunciosVC = [[UINavigationController alloc] initWithRootViewController:tablonAnunciosVC];
    UINavigationController *naviCursosVC   = [[UINavigationController alloc] initWithRootViewController:tablonCursosVC];
    UINavigationController *naviLugaresVC  = [[UINavigationController alloc] initWithRootViewController:lugaresVC];
    
    // Creamos el Combinador
    
    UITabBarController *tabVC = [[UITabBarController alloc] init];
    
    // Le cargamos los Navigation
    
    tabVC.viewControllers = @[naviAnunciosVC, naviCursosVC, naviLugaresVC];
    
    // Lo asignamos como controlador Raiz
    
    self.window.rootViewController = tabVC;    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
