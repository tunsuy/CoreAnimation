//
//  ViewController.m
//  CliptobundsTest
//
//  Created by tunsuy on 7/3/16.
//  Copyright © 2016年 tunsuy. All rights reserved.
//

#import "ViewController.h"
#import "AnimationView.h"

@interface ViewController ()

@property (nonatomic, strong) CALayer *subLayer;
@property (nonatomic, strong) UIView *animateView;
@property (nonatomic, strong) AnimationView *myView;
@property (nonatomic, strong) CABasicAnimation *animation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
    self.view.backgroundColor = [UIColor grayColor];
    
//    一 寄宿图
//        UIView *viewOne = [[UIView alloc] initWithFrame:CGRectMake(50, 80, 200, 200)];
//        viewOne.backgroundColor = [UIColor whiteColor];
//    UIImage *image = [UIImage imageNamed:@"IMG2.jpg"];
//    viewOne.layer.contents = (__bridge id _Nullable)(image.CGImage);
//    viewOne.layer.contentsGravity = kCAGravityResizeAspect;
//    viewOne.layer.contentsScale = [UIScreen mainScreen].scale;
//    NSLog(@"image scale is :%f", image.scale);
//    NSLog(@"uiscreen scale is :%f", [UIScreen mainScreen].scale);

//    viewOne.layer.contentsRect = CGRectMake(0, 0, 0.5, 0.5);
//    viewOne.layer.contentsCenter = CGRectMake(0.3, 0.4, 0.4, 0.5);
//    
//            [self.view addSubview:viewOne];

//    二 阴影效果
//    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(100, 80, 100, 100)];
//    tableView.backgroundColor = [UIColor blueColor];
//    tableView.clipsToBounds = NO;
//    [self.view addSubview:tableView];
//    
//    
//    UIView *viewTwo = [[UIView alloc] initWithFrame:CGRectMake(0, -10, 80, 80)];
//    viewTwo.backgroundColor = [UIColor blackColor];
//    [tableView addSubview:viewTwo];
    
//    UIView *viewTwo = [[UIView alloc] initWithFrame:CGRectMake(40, 80, 80, 80)];
//    viewTwo.backgroundColor = [UIColor whiteColor];
//    viewTwo.layer.cornerRadius = 20.0;
////    viewTwo.layer.borderWidth = 2.0;
//    viewTwo.layer.shadowOpacity = 2;
//    viewTwo.layer.shadowOffset = CGSizeMake(0, 5);
//    viewTwo.layer.shadowRadius = 10;
////    viewTwo.clipsToBounds = YES;
//    viewTwo.layer.masksToBounds = YES;
//    [self.view addSubview:viewTwo];

//    三
//    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(viewTwo.frame), CGRectGetHeight(viewTwo.frame))];
//    imageview.image = [UIImage imageNamed:@"IMG2.jpg"];
////    imageview.contentScaleFactor = [UIScreen mainScreen].scale;
//    imageview.contentMode = UIViewContentModeScaleAspectFit;
//    [viewTwo addSubview:imageview];
//    
//    viewTwo.maskView = imageview;
    
//    四 多个图层 光栅化为 一个图层
//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(40, 80, 100, 50)];
////    [btn setTitle:@"测试" forState:UIControlStateNormal];
//    btn.backgroundColor = [UIColor whiteColor];
////    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    btn.alpha = 0.5;
//
//    
//    UILabel *label = [[UILabel alloc] init];
//    CGRect frame = label.frame;
//    frame.size = CGSizeMake(60, 30);
//    label.frame = frame;
//    label.center = CGPointMake(50, 25);
//    label.text = @"测试";
////    label.textColor = [UIColor blackColor];
//    label.textAlignment = NSTextAlignmentCenter;
//    [btn addSubview:label];
//    NSLog(@"rasterize is : %@", btn.layer.shouldRasterize?@"YES":@"NO");
//    
////    btn.layer.shouldRasterize = NO;
////    btn.layer.rasterizationScale = [UIScreen mainScreen].scale;
//    
//    [self.view addSubview:btn];
    
//    五 放射变换
//    UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(40, 80, 100, 200)];
//    imageview.image = [UIImage imageNamed:@"IMG2.jpg"];
//    CGAffineTransform transform = CGAffineTransformMakeRotation(M_PI_4);
//    imageview.layer.affineTransform = transform;
//    [self.view addSubview:imageview];
    
//    六 uiview直接关联动画与layer 的 catransaction 的关系
//    self.animateView = [[UIView alloc] initWithFrame:CGRectMake(40, 80, 100, 100)];
//    self.animateView.backgroundColor = [UIColor whiteColor];
    
//    self.subLayer = [CALayer layer];
//    self.subLayer.frame = CGRectMake(25, 25, 50, 50);
////    CGSize size = CGSizeMake(80, 80);
////    CGRect frame = subLayer.frame;
////    frame.size = size;
////    subLayer.frame = frame;
////    subLayer.position = CGPointMake(50, 50);
////    subLayer.anchorPoint = CGPointMake(40, 40);
//    self.subLayer.backgroundColor = [UIColor redColor].CGColor;
//    
////    [self.animateView.layer addSublayer:self.subLayer];
////    [self.view addSubview:self.animateView];
//    
////    重写CALayerdelegate协议方法
//    self.myView = [[AnimationView alloc] initWithFrame:CGRectMake(40, 80, 100, 100)];
//    self.myView.backgroundColor = [UIColor whiteColor];
//    self.myView.layer.delegate = self;
//    
//    CATransition *transition = [CATransition animation];
//    transition.type = kCATransitionPush;
//    transition.subtype = kCATransitionFromRight;
//    
////    通过actions设置动画
//    self.myView.layer.actions = @{@"backgroundColor":transition};
////    self.subLayer.actions = @{@"backgroundColor":transition};
//    
////    self.myView.layer.style = @{@"backgroundColor":transition};
//    
//    [self.myView.layer addSublayer:self.subLayer];
//    [self.view addSubview:self.myView];
//    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 190, 80, 20)];
    [btn setTitle:@"测试" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(animationTest) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
//    七 呈现树
//    self.subLayer = [CALayer layer];
//    self.subLayer.frame = CGRectMake(0, 44, 100, 100);
//    self.subLayer.backgroundColor = [UIColor redColor].CGColor;
//    [self.view.layer addSublayer:self.subLayer];
    
//    八 显式动画
    self.animateView = [[UIView alloc] initWithFrame:CGRectMake(40, 80, 100, 100)];
    self.animateView.backgroundColor = [UIColor whiteColor];
    
    self.subLayer = [CALayer layer];
    self.subLayer.frame = CGRectMake(25, 25, 50, 50);
    self.subLayer.backgroundColor = [UIColor redColor].CGColor;
    
    [self.animateView.layer addSublayer:self.subLayer];
    [self.view addSubview:self.animateView];
    
    
    self.animation = [CABasicAnimation animation];
    self.animation.duration = 1.0;
    self.animation.keyPath = @"backgroundColor";
    self.animation.delegate = self;
    
}

- (void) animationTest{
//    [CATransaction begin];
//    [CATransaction setAnimationDuration:2.0];
//    [CATransaction setDisableActions:NO];
    
    CGFloat r = arc4random()/(CGFloat)INT_MAX;
    CGFloat g = arc4random()/(CGFloat)INT_MAX;
    CGFloat b = arc4random()/(CGFloat)INT_MAX;
//    self.subLayer.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0].CGColor;
//    self.animateView.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0];
//    self.myView.layer.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0].CGColor;
    
//    [CATransaction commit];
    
//    self.myView.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0];
//    self.subLayer.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0].CGColor;
    
//    [UIView animateWithDuration:1.0
//                     animations:^{
//                         self.animateView.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0];
////                         self.subLayer.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0].CGColor;
//                    }
//                     completion:nil];
    
    
    UIColor *color = [UIColor colorWithRed:r green:g blue:b alpha:1.0];

    self.animation.toValue = (__bridge id)color.CGColor;
    
    [self.subLayer addAnimation:self.animation forKey:nil];

}

- (void) animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
//    self.subLayer.backgroundColor = (__bridge CGColorRef)self.animation.toValue;
    [CATransaction commit];
    self.subLayer.backgroundColor = (__bridge CGColorRef)self.animation.toValue;
}


//呈现树
//- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    CGPoint point = [[touches anyObject] locationInView:self.view];
//    if ([self.subLayer.presentationLayer hitTest:point]) {
//        CGFloat r = arc4random()/(CGFloat)INT_MAX;
//        CGFloat g = arc4random()/(CGFloat)INT_MAX;
//        CGFloat b = arc4random()/(CGFloat)INT_MAX;
//        self.subLayer.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0].CGColor;
//    }else{
//        [CATransaction begin];
//        [CATransaction setAnimationDuration:4.0];
//        self.subLayer.position = point;
//        [CATransaction commit];
//    }
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
