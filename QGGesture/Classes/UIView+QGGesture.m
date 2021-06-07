//
//  UIView+QGGesture.m
//  QuickGestureInvoke
//
//  Created by 1801E on 2021/6/1.
//

#import "UIView+QGGesture.h"
#import "QGGestureInvoker.h"

@implementation UIView (QGGesture)

- (void)qg_onGesture:(UIGestureRecognizer *)gesture callback:(QGGestureCallBack)callback {
    QGGestureInvoker *sender = [[QGGestureInvoker alloc] initWithGesture:gesture callback:callback];
    [self addGestureRecognizer:sender gesture:gesture];
}

- (void)qg_tapWithCallback:(QGGestureCallBack)callback {
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    [self qg_onGesture:tap callback:callback];
}

- (void)qg_swipeWithCallback:(QGGestureCallBack)callback {
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] init];
    [self qg_onGesture:swipe callback:callback];
}

- (void)qg_rotationWithCallback:(QGGestureCallBack)callback {
    UIRotationGestureRecognizer *rotation = [[UIRotationGestureRecognizer alloc] init];
    [self qg_onGesture:rotation callback:callback];
}

- (void)qg_pinchWithCallback:(QGGestureCallBack)callback {
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] init];
    [self qg_onGesture:pinch callback:callback];
}

- (void)qg_panWithCallback:(QGGestureCallBack)callback {
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] init];
    [self qg_onGesture:pan callback:callback];
}

- (void)qg_longPressWithCallback:(QGGestureCallBack)callback {
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] init];
    [self qg_onGesture:longPress callback:callback];
}

- (void)qg_removeGesture:(UIGestureRecognizer *)gesture {
    [self removeGestureRecognizer:gesture];
}

- (void)qg_removeAllGestures {
    NSArray *gestures = self.gestureRecognizers;
    for (UIGestureRecognizer *gesture in gestures) {
        [self removeGestureRecognizer:gesture];
    }
}

- (void)addGestureRecognizer:(QGGestureInvoker *)invoker gesture:(UIGestureRecognizer *)gesture {
    if (!invoker.proxy)  return;
    QGGestureProxy *proxy = invoker.proxy;
    
    [gesture addTarget:proxy action:@selector(recognized:)];
    [self addGestureRecognizer:gesture];
}

@end
