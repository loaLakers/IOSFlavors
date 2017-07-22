//
//  ViewController.m
//  IOSFlavorsProd
//
//  Created by 王瑞 on 17/7/21.
//  Copyright © 2017年 wzh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UILabel *show;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)login:(id)sender {
    
    #if APP_PROD ==1
    
        _show.text = @"prod版本登陆成功";
    
    #elif APP_TEST ==1
    
        _show.text = @"test版本登陆成功";
    
    #elif APP_MOCK ==1
    
        _show.text = @"mock版本登陆成功";
    #endif

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
