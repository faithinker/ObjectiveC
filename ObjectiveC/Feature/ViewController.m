//
//  ViewController.m
//  ObjectiveC
//
//  Created by jhkim on 2022/10/27.
//

#import "ViewController.h"

#import "Basic.h"


// Shape >> Circle, Rectangle



/* ======================================================= */

/*
 framework -> #import <UIKit/UIkit.h>
 otherFile -> #import "Myclass.h"
 
 */

@interface ViewController () <myFirstProtocol>

@property (atomic, retain) UILabel * label;

@end

@implementation ViewController

- (void)protocolFunction {
    [UIView animateWithDuration:0.6 animations: ^(void){
        self.view.backgroundColor = UIColor.redColor;
        self.view.layer.opacity = 0.7;
    }];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        // 비동기 처리 구문 수행
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    

    
    
    
    _label = [UILabel new];
    
    CustomButton * button = [[CustomButton alloc] initWithFrame:CGRectZero];
    
    [self.view addSubview:button];
    
    [button.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    [button.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    
    button.protocolVar = self;
    
    
    Car *car;
    car = [Car new];
    
    Engine * e = [Engine new];
    [car setEngine:e];
    
    for (int i=0; i<4; i++) {
        Tire *tire = [Tire new];
        [car setTire:tire atIndex:i];
    }
    
    [car print];
    
    FoundationBeginner *beginner;
    [beginner printArray];
    
    [beginner printBasicType];
    
    
}

- (void) setupLayout {
    
}

@end


@interface CustomButton ()

@end

@implementation CustomButton

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        self.translatesAutoresizingMaskIntoConstraints = false;
        [self.widthAnchor constraintEqualToConstant:130].active = YES;
        [self.heightAnchor constraintEqualToConstant:35].active = YES;

        self.backgroundColor = UIColor.systemBlueColor;
        [self setTitle:@"Press" forState:UIControlStateNormal];
        
        self.layer.cornerRadius = 15;
        
        [self addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)buttonPressed:(UIButton *)sender {
    [_protocolVar protocolFunction];
}

@end



