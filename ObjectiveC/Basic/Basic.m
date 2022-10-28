//
//  Basic.m
//  ObjectiveC
//
//  Created by jhkim on 2022/10/28.
//

#import "Basic.h"




@implementation Tire
- (NSString *) description {
    return (@"I am tire");
}
@end


@implementation Engine
- (NSString *) description {
    return (@"I am engine.");
}
@end

// ============================================

@implementation Car

- (id) init {
    if(self = [super init]) { // 객체를 사용하기 때문에.. 클래스를 구현할 때는 필수적인 과정이다.
//        engine = [Engine new];
//        for (int i=0; i<3; i++) {
//            tires[i] = [Tire new];
//        }
        
    }
    return self;
}

//- (Engine *) engine {
//    return (engine);
//}
//
//- (void)setEngine:(Engine *)newEngine {
//    engine = newEngine;
//}
@synthesize engine;


- (Tire *)tireAtIndex:(int)index {
    return (tires[index]);
}

- (void)setTire:(Tire *)tire atIndex:(int)index {
    tires[index] = tire;
}

- (void) print {
    NSLog(@"%@", engine);
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
}
@end


@implementation FoundationBeginner

- (void) print {
    
    NSString *str = @"Hello, Objective-C!";
    NSLog(@"%@", str);
    NSLog(@"%d", 100);
    
    

}

- (void) printString {
    // 읽기전용 / 수정가능
    NSString *letter = @"ABCDE";
    NSString *temp;
    NSMutableString *mTemp;
    
    temp = [letter substringToIndex:2];
    NSLog(@"1: %@ ", temp);
    
    temp = [letter substringFromIndex:3];
    NSLog(@"2: %@", temp);
    
    temp = [letter substringWithRange:NSMakeRange(3, 2)];
    NSLog(@"3: %@", temp);
    
    mTemp = [NSMutableString stringWithString:@"abcdefghk"];
    [mTemp appendString:@"xyz"];
    
    [mTemp deleteCharactersInRange:NSMakeRange(2,2)];
    
    
    
}

- (void) printArray {
    

    // empty Array
    NSArray *iArray = [NSArray array];
    // 초기값 할당
    NSArray *list = @[@"aa", @"bb", @"cc"];
    
    NSString *value = list[0];
    
    [list arrayByAddingObject:@"dd"];
    
    NSLog(@"1: %@, %@, %@, %@", iArray, list, value, list[0]);
    
}

- (void) printBasicType {
    bool *isBool = YES;
    
    NSNumber *n1 = @1;
    
    NSDictionary *dict = [NSDictionary dictionary];
    
    NSDictionary *dic = @{@"key1":@"aa", @"key2":@"bb"};
    NSLog(@"%@", dic[@"key1"]);
    
    
    NSURL *url = [NSURL URLWithString:@"https://www.apple.com/"];
    NSDictionary *dic1 = [NSDictionary dictionaryWithContentsOfURL:url];
    
    [NSDictionary dictionaryWithObject:@"TT" forKey:@"key1"];
    
    printf("NSMutableDictionary  ========================");
    NSMutableDictionary *mdic = [NSMutableDictionary dictionary];
    
    [mdic setObject:@"vlaue1" forKey:@"key1"];
    [mdic setObject:@10 forKey:@"key2"];
    [mdic setObject:@true forKey:@"key3"];
    printf("dic %s", mdic.description.UTF8String);
    
    // value update
    [mdic setObject:@20 forKey:@"key2"];
    
    bool existKey = [mdic objectForKey:@"key1"];
    
    
    printf("NSMutableDictionary  ========================");
    
    NSOrderedSet *orderedSet = [NSOrderedSet orderedSet];
    
    NSMutableOrderedSet *mOrderedSet = [NSMutableOrderedSet orderedSetWithArray:@[@1, @2, @3]];
    [mOrderedSet addObject:@5];
    
    NSMutableOrderedSet *orderedSet2 = [[NSMutableOrderedSet alloc]init];
    [orderedSet2 addObjectsFromArray:@[@"Eezy", @"Tutorials"]];
    NSLog(@"%@",orderedSet2);
    
    printf("if-else | Switch-case ========================");
    
    int oneData = 30;
    int twoData = 20;
    
    int sumData = oneData + twoData;
    
    if (sumData == 60) {
        printf("sumData is Not 60");
    }
    else if (sumData == 50) {
        printf("sumData is 60");
    }
    
    NSString *checkLogic = (oneData > twoData) ? @"크다" : @"작다";
    
    
    switch (sumData) {
        case 40:
            printf("sumData %d", sumData);
            break;
        case 50:
            printf("sumData %d", sumData);
            break;
        default:
            printf("sumData is Not 50 or 60");
            break;
    }
    
    
    printf("Closure Block ========================");
    
    __block int sum = 1;
    
    void (^getSum)(int, int) = ^(int x, int y) {
        sum = x + y;
    };
    
    
    printf("for-in And While ========================");
    
    for (int i=0; i<10; i++) {
        NSLog(@"number : %@", i);
    }
    
    int *i = 0;
    
    while (i<5) {
        NSLog(@"while Number %@", i);
        i ++;
    }
    
    
    
    
}

- (void) uikitTest {
    CGFloat f1 = 1.1;
}

@end
