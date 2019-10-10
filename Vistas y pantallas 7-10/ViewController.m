//
//  ViewController.m
//  Vistas y pantallas 7-10
//
//  Created by A4-PC02 on 07/10/2019.
//  Copyright © 2019 A4-PC02. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) viewDidAppear:(BOOL)animated{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Bienvenido a es[tech]" message:@"Selecciona el ciclo que estás estudiando" preferredStyle:UIAlertControllerStyleAlert];
    
    //Add Buttons
    
    UIAlertAction* damButton = [UIAlertAction actionWithTitle:@"DAM" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //Handle your yes please button action here
        self->_cicloName.text = [[NSString alloc] initWithFormat:@"%@ DAM", self->_cicloName.text];
    }];
    
    UIAlertAction* vjButton = [UIAlertAction actionWithTitle:@"Videojuegos" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        self->_cicloName.text = [[NSString alloc] initWithFormat:@"%@ VJ", self->_cicloName.text];
    }];
    
    //Add your buttons to alert controller
    
    [alert addAction:damButton];
    [alert addAction:vjButton];
    
    [self presentViewController:alert animated:YES completion:nil];
    
}


- (IBAction)btnLogin:(id)sender {
}
@end
