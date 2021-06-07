//
//  UIGestureRecognizer+QG.h
//  QuickGestureInvoke
//
//  Created by 1801E on 2021/6/1.
//

#import <UIKit/UIKit.h>
#import "QGGestureInvoker.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIGestureRecognizer (QG)
@property (nonatomic, weak) QGGestureProxy *qg_proxy;
- (id)cloneGesture;
@end

NS_ASSUME_NONNULL_END
