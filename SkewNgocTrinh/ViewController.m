//
//  ViewController.m
//  SkewNgocTrinh
//
//  Created by Duy Dang on 12/22/15.
//  Copyright © 2015 Duy Dang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageview;
@property (weak, nonatomic) IBOutlet UISlider *slider;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.slider addTarget:self action:@selector(skewimage) forControlEvents:UIControlEventValueChanged];

}
- (void)skewimage{
    CGFloat skew = 180.0f * self.slider.value * M_PI / 180.0f;
    CATransform3D t = CATransform3DIdentity;
    t.m34 = 1.0/ -500;
    t = CATransform3DRotate(t, skew, 0, 1, 0);
    
    CALayer *myLayer =  self.imageview.layer;
    myLayer.transform = t;
    
}



@end
