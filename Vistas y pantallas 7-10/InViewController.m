//
//  InViewController.m
//  Vistas y pantallas 7-10
//
//  Created by Juan Antonio Alvarez Fernandez on 20/10/2019.
//  Copyright © 2019 A4-PC02. All rights reserved.
//

#import "InViewController.h"

@implementation InViewController

- (void) viewDidLoad {
    [_LbBienvenida setText:[[NSString alloc] initWithFormat:@"Bienvenido %@", _userName]];
}


@end
