//
//  ViewController.m
//  Vistas y pantallas 7-10
//
//  Created by A4-PC02 on 07/10/2019.
//  Copyright © 2019 A4-PC02. All rights reserved.
//

#import "ViewController.h"
#import "InViewController.h"

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
    
    //View the alert
    [self presentViewController:alert animated:YES completion:nil];
    
}


- (IBAction)btnLogin:(id)sender {
    
    if ([_labelUser.text isEqual:@""] || [_labelPass.text isEqual:@""]){
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:@"Los campos de acceso no estan rellenos" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *exitAlert = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:exitAlert];
        
        [self presentViewController:alert animated:YES completion:nil];
    }else {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        
        InViewController *newViewController = (InViewController *) [storyboard instantiateViewControllerWithIdentifier:@"inViewControler"];
        
        newViewController.LbBienvenida.text = [NSString stringWithFormat:@"Bienvenido %@",newViewController.userName];
        
        [[self navigationController] pushViewController:newViewController animated:YES];
        
    }
}
@end
