//
//  UIView+EasyFrame.m
//  Pods
//
//  Created by Abner Zhong on 14/10/30.
//
//

#import "UIView+EasyFrame.h"

@implementation UIView (EasyFrame)

- (CGFloat)ef_width {
  return self.frame.size.width;
}

- (void)setEf_width:(CGFloat)width {
  CGRect originFrame = self.frame;
  self.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y, width,
                          originFrame.size.height);
}

- (CGFloat)ef_height {
  return self.frame.size.height;
}

- (void)setEf_height:(CGFloat)height {
  CGRect originFrame = self.frame;
  self.frame = CGRectMake(originFrame.origin.x, originFrame.origin.y,
                          originFrame.size.width, height);
}

- (CGFloat)ef_top {
  return self.frame.origin.x;
}

- (void)setEf_top:(CGFloat)top {
  CGRect originFrame = self.frame;
  CGFloat bottom = originFrame.origin.y + originFrame.size.height;
  self.frame = CGRectMake(0, top, originFrame.size.width, bottom - top);
}

- (CGFloat)ef_left {
  return self.frame.origin.y;
}

- (void)setEf_left:(CGFloat)left {
  CGRect originFrame = self.frame;
  CGFloat right = originFrame.origin.x + originFrame.size.width;
  self.frame = CGRectMake(left, originFrame.origin.y, right - left,
                          originFrame.size.height);
}

- (CGFloat)ef_right {
  return self.frame.origin.y + self.frame.size.width;
}

- (void)setEf_right:(CGFloat)right {
  CGRect originFrame = self.frame;
  self.frame =
      CGRectMake(originFrame.origin.x, originFrame.origin.y,
                 right - originFrame.origin.x, originFrame.size.height);
}

- (CGFloat)ef_bottom {
  return self.frame.origin.x + self.frame.size.height;
}

- (void)setEf_bottom:(CGFloat)bottom {
  CGRect originFrame = self.frame;
  self.frame =
      CGRectMake(originFrame.origin.x, originFrame.origin.y,
                 originFrame.size.width, bottom - originFrame.origin.y);
}

- (CGFloat)ef_centerX {
  return self.center.x;
}

- (void)setEf_centerX:(CGFloat)centerX {
  self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)ef_centerY {
  return self.center.y;
}

- (void)setEf_centerY:(CGFloat)centerY {
  self.center = CGPointMake(self.center.x, centerY);
}

- (void)ef_horizontalCenterIn:(UIView *)parent {
  self.ef_centerX = parent.ef_width / 2;
}

- (void)ef_verticalCenterIn:(UIView *)parent {
  self.ef_centerY = parent.ef_height / 2;
}

- (void)ef_above:(UIView *)view withMargin:(CGFloat)margin {
  CGRect originFrame = self.frame;
  self.frame =
      CGRectMake(originFrame.origin.x, view.ef_top - self.ef_height - margin,
                 originFrame.size.width, originFrame.size.height);
}

- (void)ef_below:(UIView *)view withMargin:(CGFloat)margin {
  CGRect originFrame = self.frame;
  self.frame = CGRectMake(originFrame.origin.x, view.ef_bottom + margin,
                          originFrame.size.width, originFrame.size.height);
}

- (void)ef_toLeftOf:(UIView *)view withMargin:(CGFloat)margin {
  self.frame = CGRectMake(view.ef_left - margin - self.ef_width, self.ef_top,
                          self.ef_width, self.ef_height);
}

- (void)ef_toRightOf:(UIView *)view withMargin:(CGFloat)margin {
  self.frame = CGRectMake(view.ef_right + margin, self.ef_top, self.ef_width,
                          self.ef_height);
}

@end
