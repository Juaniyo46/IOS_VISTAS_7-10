//
//  ViewController.h
//  Vistas y pantallas 7-10
//
//  Created by A4-PC02 on 07/10/2019.
//  Copyright © 2019 A4-PC02. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *cicloName;
@property (weak, nonatomic) IBOutlet UITextField *labelUser;
@property (weak, nonatomic) IBOutlet UITextField *labelPass;

- (IBAction)btnLogin:(id)sender;

@end

