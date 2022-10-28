//
//  Basic.h
//  ObjectiveC
//
//  Created by jhkim on 2022/10/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface Tire : NSObject
@end

@interface Engine : NSObject
@end


// ============================================

@interface Car : NSObject { // 프로퍼티 생성시 괄호
    Engine *engine;
    Tire *tires[4];
}

//- (Engine *) engine;
//- (void) setEngine:(Engine *) newEngine;
@property (nonatomic, retain) Engine *engine;

- (Tire *) tireAtIndex:(int) index;
- (void) setTire:(Tire *) tire atIndex: (int) index;

- (void) print;

@end


@interface FoundationBeginner : NSObject
- (void) print;
- (void) printString;
- (void) printArray;
- (void) printBasicType;
- (void) uikitTest;

@end

NS_ASSUME_NONNULL_END
