//
//  AGTWineryTableViewController.m
//  Baccus
//
//  Created by Fernando Rodríguez Romero on 1/31/13.
//  Copyright (c) 2013 Agbo. All rights reserved.
//

#import "AGTWineryTableViewController.h"
#import "AGTWineViewController.h"



@implementation AGTWineryTableViewController


#pragma mark -  Init

- (id)initWithModel:(AGTWineryModel *)aModel
              style:(UITableViewStyle)aStyle
{
    
    if (self = [super initWithStyle:aStyle]) {
        _model = aModel;
    }
    
    return self;
}

#pragma mark -  View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setDefaults];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if (!self.model) {
        UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        indicator.hidesWhenStopped = YES;
        indicator.frame = CGRectMake(self.view.frame.size.width / 2 - 37 / 2, self.view.frame.size.height / 2 - 37 / 2, 37, 37);
        [indicator startAnimating];
        
        // como descendemos de UITableViewController nos da muy poca flexibilidad a la hora de añadir subvistas, lo añadimos como cabecera de la tabla
        self.tableView.tableHeaderView = indicator;

        [self performSelector:@selector(loadModel) withObject:nil afterDelay:0.1];
    }
}

- (void)loadModel
{
    self.model = [[AGTWineryModel alloc] init];
    self.tableView.tableHeaderView = nil;
    [self.tableView reloadData];
    
    // Avisar al delegado
    [self.delegate wineryTableViewController:self didSelectWine:[self lastSelectedWine]];
}

- (NSString *)title
{
    return @"Baccus";
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    if (self.model) {
        return 4;
    }
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    NSInteger count = 0;
    
    if (section == RED_WINE_SECTION) {
        count = [self.model redWineCount];
    }
    else if (section == WHITE_WINE_SECTION) {
        count = [self.model whiteWineCount];
    }
    else if (section == ROSE_WINE_SECTION) {
        count = [self.model roseWineCount];
    }
    else {
        count = [self.model champagneWineCount];
    }
    
    
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"WineCell";
    
    // Averiguamos de qué vino se trata
    AGTWineModel *wine = [self wineForIndexPath:indexPath];
    
    // Creamos una celda
    UITableViewCell *wineCell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (wineCell == nil) {
        // La creamos de cero
        wineCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        
        // aplicamos diseño
        wineCell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cell_bg.png"]];
        wineCell.textLabel.backgroundColor = [UIColor clearColor];
        wineCell.detailTextLabel.backgroundColor = [UIColor clearColor];
        wineCell.textLabel.font = [UIFont fontWithName:@"Valentina-Regular" size:18];
        wineCell.detailTextLabel.font = [UIFont fontWithName:@"Valentina-Regular" size:16];
    }
    
    // Sincronizamos modelo con vista (celda)
    if (wine.photo) {
        wineCell.imageView.image = wine.photo;
    }
    else {
        wineCell.imageView.image = [UIImage imageNamed:@"cell_icon_bg.png"];
    }
    wineCell.textLabel.text = wine.name;
    wineCell.detailTextLabel.text = wine.wineCompanyName;
    
    return wineCell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    AGTWineModel *wine = [self wineForIndexPath:indexPath];

       
        // Avisar al delegado
        [self.delegate wineryTableViewController:self
                                   didSelectWine:wine];
        
        // Enviar notificación
        NSNotification *n = [NSNotification notificationWithName:DID_SELECT_WINE_NOTIFICATION_NAME
                                                          object:self
                                                        userInfo:@{WINE_KEY: wine}];
        [[NSNotificationCenter defaultCenter] postNotification:n];
        
        // Guardar el último vino seleccionado
        [self saveLastSelectedWineAtSection:indexPath.section
                                        row:indexPath.row];

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // devolvemos el tamaño al mismo que el background que hemos puesto
    return 72;
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    // devolvemos el tamaño de la imagen de la cabecera
    return 30;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    AGTWineModel *wine = [self wineForIndexPath:[NSIndexPath indexPathForRow:0 inSection:section]];

    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.tableView.frame.size.width, 30)];
    UIImageView *backgroundHeader = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"sectionBackground.png"]];
    [headerView addSubview:backgroundHeader];
    
    UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, self.tableView.frame.size.width - 10, 30)];
    name.font = [UIFont fontWithName:@"Valentina-Regular" size:20];
    name.textColor = [UIColor whiteColor];
    name.text = wine.type;
    name.backgroundColor = [UIColor clearColor];
    
    [headerView addSubview:name];
    
    return headerView;
}

#pragma mark -  AGTWineryTableViewControllerDelegate

- (void)wineryTableViewController:(AGTWineryTableViewController *)aWineryVC
                    didSelectWine:(AGTWineModel *)aWine
{    
    // Crear el controlador
    AGTWineViewController *wineVC = [[AGTWineViewController alloc] initWithModel:aWine];
    
    // Hacer un push
    [self.navigationController pushViewController:wineVC
                                         animated:YES];
}


#pragma mark -  Utils

- (AGTWineModel *)wineForIndexPath:(NSIndexPath *)indexPath
{    
    // Averiguamos de qué vino se trata
    AGTWineModel *wine = nil;
    
    if (indexPath.section == RED_WINE_SECTION) {
        wine = [self.model redWineAtIndex:indexPath.row];
    }
    else if (indexPath.section == WHITE_WINE_SECTION) {
        wine = [self.model whiteWineAtIndex:indexPath.row];
    }
    else if (indexPath.section == ROSE_WINE_SECTION){
        wine = [self.model roseWineAtIndex:indexPath.row];
    }
    else {
        wine = [self.model champagneWineAtIndex:indexPath.row];
    }

    return wine;
}


#pragma mark -  NSUserDefaults

- (NSDictionary *)setDefaults
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    // Por defecto, mostraremos el primero de los tintos
    NSDictionary *defaultWineCoords = @{SECTION_KEY : @(RED_WINE_SECTION), ROW_KEY : @0};
    
    // lo asignamos
    [defaults setObject:defaultWineCoords
                 forKey:LAST_WINE_KEY];
    // guardamos por si las moscas
    [defaults synchronize];
    
    return defaultWineCoords;
    
}

- (void)saveLastSelectedWineAtSection:(NSUInteger)section row:(NSUInteger)row
{    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@{SECTION_KEY : @(section),
                          ROW_KEY     : @(row)}
                 forKey:LAST_WINE_KEY];
    
    [defaults synchronize]; // Por si acaso, que Murphy acecha.
}

- (AGTWineModel *)lastSelectedWine
{
    NSIndexPath *indexPath = nil;
    NSDictionary *coords = nil;
    
    coords = [[NSUserDefaults standardUserDefaults] objectForKey:LAST_WINE_KEY];
    
    if (coords == nil) {
        // No hay nada bajo la clave LAST_WINE_KEY.
        // Esto quiere decir que es la primera vez que se llama a la App
        // Ponemos un valor por defecto: el primero de los tintos
        coords = [self setDefaults];
    }else{
        // Ya hay algo, es decir, en algún momento se guardó.
        // No hay nada en especial que hacer.
    }
    
    // Transformamos esas coordenadas en un indexpath
    indexPath = [NSIndexPath indexPathForRow:[[coords objectForKey: ROW_KEY] integerValue]
                                   inSection:[[coords objectForKey: SECTION_KEY] integerValue]];
    
    // devolvemos el vino en cuestión
    return [self wineForIndexPath:indexPath];
}

@end