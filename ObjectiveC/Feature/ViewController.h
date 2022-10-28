//
//  ViewController.h
//  ObjectiveC
//
//  Created by jhkim on 2022/10/27.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


//MARK: - Protocol

@protocol myFirstProtocol <NSObject>

@required

- (void) protocolFunction;

@end


@interface ViewController : UIViewController


@end





@interface CustomButton : UIButton

@property (nonatomic, assign) id<myFirstProtocol> protocolVar;

@end
