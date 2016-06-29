//
//  ViewController.m
//  FontingLab
//
//  Created by Salmaan Rizvi on 6/29/16.
//  Copyright © 2016 Rizvi Labs. All rights reserved.
//

#import "ViewController.h"
#import <FontAwesomeKit.h>

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *fontLabel;
@property (strong, nonatomic) NSDictionary *allIcons;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FAKIcon *icon = [FAKZocial twitterIconWithSize:45];
    
    self.allIcons = [FAKFontAwesome allIcons];
    
    self.fontLabel.attributedText = icon.attributedString;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newFontTapped:(id)sender {
    NSUInteger randomIcon = (NSUInteger)arc4random_uniform(self.allIcons.count);
    NSString *randomIconCode = [self.allIcons allKeys][randomIcon];
    NSLog(@"%@", randomIconCode);
    self.fontLabel.attributedText = [FAKFontAwesome iconWithCode:randomIconCode size:45].attributedString;
}

@end
