//
//  ViewController.m
//  EffectiveOC5内存管理
//
//  Created by 李育腾 on 2023/1/27.
//

#import "ViewController.h"

@interface ViewController () {
    id __weak _weakObject;
    id __unsafe_unretained _unsafeUnretainedObject;
}
@property (nonatomic, strong)NSString *foo;

@end

@implementation ViewController
/**MRC
 
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSMutableArray *array = [[NSMutableArray alloc] init];
    NSNumber *number = [[NSNumber alloc] initWithInt:2023];
    [array addObject:number];
    [number release];
    number = nil;
//    [array release];
}

- (void)setFoo:(id)foo {
    [foo retain];
    [_foo release];
    _foo = foo;
    
}
// autorelease的使用时机
- (NSString *)stringValue {
   NSString *str = [[NSString alloc] initWithFormat:@"I am this:%@", self];
   return [str autorelease];
}
//MRC的手动dealloc
- (void)dealloc {
    [_foo release];
    [super dealloc];
}
**/

// ARC
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
}
// ARC forbids implementation of 'retainCount'
//- (NSUInteger)retainCount {
//
//}
@end
