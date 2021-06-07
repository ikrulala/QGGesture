//
//  QGGestureInvoker.h
//  QuickGestureInvoke
//
//  Created by 1801E on 2021/6/1.
//

#import <UIKit/UIKit.h>
#import "UIView+QGGesture.h"

NS_ASSUME_NONNULL_BEGIN

@protocol QGGestureCallable <NSObject>
- (void)invoke: (UIGestureRecognizer *)gesture;
@end

@interface QGGestureProxy : NSObject
@property (nonatomic, strong, nullable) id <QGGestureCallable> invoker;
- (instancetype)initWithInvoker:(id<QGGestureCallable>)invoker gesture:(UIGestureRecognizer*)gesture;
- (void)recognized:(UIGestureRecognizer *) gesture;
@end

@interface QGGestureInvoker: NSObject<QGGestureCallable>
@property (nonatomic, strong) QGGestureProxy *proxy;
- (instancetype)initWithGesture:(UIGestureRecognizer *)gesture callback:(QGGestureCallBack)callback;
@end



NS_ASSUME_NONNULL_END
