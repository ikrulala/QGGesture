//
//  UIGestureRecognizer+QG.m
//  QuickGestureInvoke
//
//  Created by 1801E on 2021/6/1.
//

#import "UIGestureRecognizer+QG.h"
@import ObjectiveC.runtime;

static const void *QGGestureRecognizerKey = &QGGestureRecognizerKey;

@implementation UIGestureRecognizer (QG)

- (void)setQg_proxy:(QGGestureProxy *)qg_proxy {
    @synchronized (self) {
        objc_setAssociatedObject(self, QGGestureRecognizerKey, qg_proxy, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (QGGestureProxy *)qg_proxy {
    @synchronized (self) {
        return objc_getAssociatedObject(self, QGGestureRecognizerKey);
    }
}

- (id)cloneGesture {
    
    if ([self isKindOfClass:UILongPressGestureRecognizer.self]) {
        UILongPressGestureRecognizer *newValue = [[UILongPressGestureRecognizer alloc] init];
        UILongPressGestureRecognizer *oldValue = (UILongPressGestureRecognizer*)self;
        newValue.numberOfTapsRequired    = oldValue.numberOfTapsRequired;
        newValue.numberOfTouchesRequired = oldValue.numberOfTouchesRequired;
        newValue.minimumPressDuration    = oldValue.minimumPressDuration;
        newValue.allowableMovement       = oldValue.allowableMovement;
        return newValue;
    }
    
    if ([self isKindOfClass:UIPanGestureRecognizer.self]) {
        UIPanGestureRecognizer *newValue = [[UIPanGestureRecognizer alloc] init];
        UIPanGestureRecognizer *oldValue = (UIPanGestureRecognizer*)self;
        newValue.maximumNumberOfTouches = oldValue.maximumNumberOfTouches;
        newValue.minimumNumberOfTouches = oldValue.minimumNumberOfTouches;
        return newValue;
    }
    
    if ([self isKindOfClass:UIScreenEdgePanGestureRecognizer.self]) {
        UIScreenEdgePanGestureRecognizer *newValue = [[UIScreenEdgePanGestureRecognizer alloc] init];
        UIScreenEdgePanGestureRecognizer *oldValue = (UIScreenEdgePanGestureRecognizer*)self;
        newValue.edges = oldValue.edges;
        return newValue;
    }
    
    if ([self isKindOfClass:UISwipeGestureRecognizer.self]) {
        UISwipeGestureRecognizer *newValue = [[UISwipeGestureRecognizer alloc] init];
        UISwipeGestureRecognizer *oldValue = (UISwipeGestureRecognizer*)self;
        newValue.direction               = oldValue.direction;
        newValue.numberOfTouchesRequired = oldValue.numberOfTouchesRequired;
        return newValue;
    }
    
    
    if ([self isKindOfClass:UITapGestureRecognizer.self]) {
        UITapGestureRecognizer *newValue = [[UITapGestureRecognizer alloc] init];
        UITapGestureRecognizer *oldValue = (UITapGestureRecognizer*)self;
        newValue.numberOfTapsRequired    = oldValue.numberOfTapsRequired;
        newValue.numberOfTouchesRequired = oldValue.numberOfTouchesRequired;
        return newValue;
    }
    
    return nil;
}


@end
