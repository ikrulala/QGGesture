# QGGesture

[![CI Status](https://img.shields.io/travis/ikrulala/QGGesture.svg?style=flat)](https://travis-ci.org/ikrulala/QGGesture)
[![Version](https://img.shields.io/cocoapods/v/QGGesture.svg?style=flat)](https://cocoapods.org/pods/QGGesture)
[![License](https://img.shields.io/cocoapods/l/QGGesture.svg?style=flat)](https://cocoapods.org/pods/QGGesture)
[![Platform](https://img.shields.io/cocoapods/p/QGGesture.svg?style=flat)](https://cocoapods.org/pods/QGGesture)

**QGGesture** is a safer and more quickly way to respond to gestures

## Usage

**QGGesture** extends `UIView` classes

### UIView extensions

`UIView+QGGesture.h`

### The `qg_onGesture` method

Use the `qg_onGesture:` method to add gesture recognizers

```objective-c
UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
[self.view qg_onGesture:tap callback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
    NSLog(@"%@ %ld",sender, (long)state);
];
```

#### The shorthand methods

**QGGesture** defines 6 shorthand methods:
`tap`, `swipe`, `rotation`, `pinch`, `pan` and `longPress`

**`qg_tapWithCallback:`**

```objective-c
[self.view qg_tapWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
    NSLog(@"%@ %ld",sender, (long)state);
}];
```

**`qg_tapWithCallback:`**

```objective-c
[self.view qg_tapWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
    NSLog(@"%@ %ld",sender, (long)state);
}];
```

**`qg_swipeWithCallback:`**

```objective-c
[self.view qg_swipeWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
    NSLog(@"%@ %ld",sender, (long)state);
}];
```

**`qg_rotationWithCallback:`**

```objective-c
[self.view qg_rotationWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
    NSLog(@"%@ %ld",sender, (long)state);
}];
```

**`qg_pinchWithCallback:`**

```objective-c
[self.view qg_pinchWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
    NSLog(@"%@ %ld",sender, (long)state);
}];
```

**`qg_panWithCallback:`**

```objective-c
[self.view qg_panWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
    NSLog(@"%@ %ld",sender, (long)state);
}];
```

**`qg_longPressWithCallback:`**

```objective-c
[self.view qg_longPressWithCallback:^(UIGestureRecognizer * _Nonnull sender, UIGestureRecognizerState state) {
    NSLog(@"%@ %ld",sender, (long)state);
}];
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

QGGesture is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'QGGesture'
```

## Author

ikrulala, ikrulala@outlook.com

## License

QGGesture is available under the MIT license. See the LICENSE file for more info.
