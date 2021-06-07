//
//  UIView+QGGesture.h
//  QuickGestureInvoke
//
//  Created by 1801E on 2021/6/1.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^QGGestureCallBack)(UIGestureRecognizer* sender, UIGestureRecognizerState state);
@interface UIView (QGGesture)

/// Attaches a gesture recognizer to the view for all its states.
/// @param gesture  An object whose class descends from the UIGestureRecognizer class
/// @param callback  A function to be invoked when the gesture occurs
- (void)qg_onGesture:(UIGestureRecognizer *)gesture callback:(QGGestureCallBack) callback;

#pragma mark - Different gesture recognizer

/// Attaches an instance of UITapGestureRecognizer to the view for all its states.
/// @param callback  A function to be invoked when the gesture occurs
- (void)qg_tapWithCallback:(QGGestureCallBack)callback;

/// Attaches an instance of UISwipeGestureRecognizer to the view.
/// @param callback   A function to be invoked when the gesture occurs
- (void)qg_swipeWithCallback:(QGGestureCallBack)callback;

/// Attaches an instance of UIRotationGestureRecognizer to the view.
/// @param callback   A function to be invoked when the gesture occurs
- (void)qg_rotationWithCallback:(QGGestureCallBack)callback;

/// Attaches an instance of UIPinchGestureRecognizer to the view for all its states.
/// @param callback   A function to be invoked when the gesture occurs
- (void)qg_pinchWithCallback:(QGGestureCallBack)callback;

/// Attaches an instance of UIPanGestureRecognizer to the view for all its states.
/// @param callback   A function to be invoked when the gesture occurs
- (void)qg_panWithCallback:(QGGestureCallBack)callback;

/// Attaches an instance of UILongPressGestureRecognizer to the view for all its states.
/// @param callback   A function to be invoked when the gesture occurs
- (void)qg_longPressWithCallback:(QGGestureCallBack)callback;

#pragma mark - Remove gesture recognizer

/// Detaches all the gestures recognizer of a given type from the receiving view.
/// @param gesture  A type of gesture recognizer
- (void)qg_removeGesture:(UIGestureRecognizer *)gesture;

/// Detaches all the gestures recognizer from the receiving view.
- (void)qg_removeAllGestures;

@end

NS_ASSUME_NONNULL_END
