//
//  ViewController.m
//  SlideDemo
//
//  Created by test5d on 15/2/11.
//  Copyright (c) 2015年 test5d. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblSlide;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SlideValueChange:(UISlider *)sender {
    self.lblSlide.text = [NSString stringWithFormat:@"%.0f", sender.value];
}
@end
