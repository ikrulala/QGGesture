//
//  QGGestureInvoker.m
//  QuickGestureInvoke
//
//  Created by 1801E on 2021/6/1.
//

#import "QGGestureInvoker.h"
#import "UIGestureRecognizer+QG.h"

typedef void(^GestureCompletion)(UIGestureRecognizer*);

@implementation QGGestureProxy

- (instancetype)initWithInvoker:(id<QGGestureCallable>) invoker gesture:(UIGestureRecognizer*) gesture {
    self = [super init];
    if (self) {
        self.invoker = invoker;
        gesture.qg_proxy = self;
    }
    return self;
}

- (void)recognized:(UIGestureRecognizer *) gesture {
    [self.invoker invoke:gesture];
}

@end

@interface QGGestureInvoker()
@property (nonatomic, strong) NSMutableDictionary *invokeBlocks;
@property (nonatomic, strong) NSArray *gestureRecognizerStates;
@property (nonatomic, copy) QGGestureCallBack callback;
@end

@implementation QGGestureInvoker

- (instancetype)initWithGesture:(UIGestureRecognizer *)gesture callback:(QGGestureCallBack)callback
{
    self = [super init];
    if (self) {
        UIGestureRecognizer *qg_gesture = gesture;
        if (gesture.qg_proxy) {
            qg_gesture = [gesture cloneGesture];
        }

        self.callback = [callback copy];
        self.proxy = [[QGGestureProxy alloc] initWithInvoker:self gesture:qg_gesture];
    }
    return self;
}

- (void)invoke: (UIGestureRecognizer *)gesture {
    if(self.callback) self.callback(gesture, gesture.state);
}

- (NSMutableDictionary *)invokeBlocks {
    if (!_invokeBlocks) {
        _invokeBlocks = [[NSMutableDictionary alloc] init];
    }
    return _invokeBlocks;
}

@end

