#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "QGGestureInvoker.h"
#import "UIGestureRecognizer+QG.h"
#import "UIView+QGGesture.h"

FOUNDATION_EXPORT double QGGestureVersionNumber;
FOUNDATION_EXPORT const unsigned char QGGestureVersionString[];

