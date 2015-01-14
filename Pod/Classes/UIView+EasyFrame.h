//
//  UIView+EasyFrame.h
//  Pods
//
//  Created by Abner Zhong on 14/10/30.
//
//

#import <UIKit/UIKit.h>

@interface UIView (EasyFrame)

@property(nonatomic, assign) CGFloat ef_width;
@property(nonatomic, assign) CGFloat ef_height;
@property(nonatomic, assign) CGFloat ef_top;
@property(nonatomic, assign) CGFloat ef_left;
@property(nonatomic, assign) CGFloat ef_bottom;
@property(nonatomic, assign) CGFloat ef_right;
@property(nonatomic, assign) CGFloat ef_centerX;
@property(nonatomic, assign) CGFloat ef_centerY;
@property (nonatomic, assign) CGFloat ef_xleft;
@property (nonatomic, assign) CGFloat ef_xright;
@property (nonatomic, assign) CGFloat ef_xtop;
@property (nonatomic, assign) CGFloat ef_xbottom;

- (void)ef_centerIn:(UIView *)parent;
- (void)ef_horizontalCenterIn:(UIView *)parent;
- (void)ef_verticalCenterIn:(UIView *)parent;
- (void)ef_above:(UIView *)view withMargin:(CGFloat)margin;
- (void)ef_below:(UIView *)view withMargin:(CGFloat)margin;
- (void)ef_toLeftOf:(UIView *)view withMargin:(CGFloat)margin;
- (void)ef_toRightOf:(UIView *)view withMargin:(CGFloat)margin;

@end
