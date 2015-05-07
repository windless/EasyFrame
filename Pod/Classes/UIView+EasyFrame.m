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
  return self.frame.origin.y;
}

- (void)setEf_top:(CGFloat)top {
  CGRect originFrame = self.frame;
  self.frame = CGRectMake(originFrame.origin.x, top,
      originFrame.size.width, originFrame.size.height);
}

- (CGFloat)ef_left {
  return self.frame.origin.x;
}

- (void)setEf_left:(CGFloat)left {
  CGRect originFrame = self.frame;
  self.frame = CGRectMake(left, originFrame.origin.y,
      originFrame.size.width, originFrame.size.height);
}

- (CGFloat)ef_right {
  return self.frame.origin.x + self.frame.size.width;
}

- (void)setEf_right:(CGFloat)right {
  CGRect originFrame = self.frame;
  self.frame = CGRectMake(right - originFrame.size.width, originFrame.origin.y,
      originFrame.size.width, originFrame.size.height);
}

- (CGFloat)ef_bottom {
  return self.frame.origin.y + self.frame.size.height;
}

- (void)setEf_bottom:(CGFloat)bottom {
  CGRect originFrame = self.frame;
  self.frame = CGRectMake(originFrame.origin.x,
      bottom - originFrame.size.height,
      originFrame.size.width, originFrame.size.height);
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

- (void)ef_centerIn:(UIView *)parent {
  CGSize parentSize = parent.frame.size;
  self.center = CGPointMake(parentSize.width / 2, parentSize.height / 2);
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

- (CGFloat)ef_xleft {
  return self.ef_left;
}

- (void)setEf_xleft:(CGFloat)ef_xleft {
  if (ef_xleft > self.ef_right) {
    self.ef_width = 0;
  } else {
    self.ef_width = self.ef_right - ef_xleft;
  }
  self.ef_left = ef_xleft;
}

- (CGFloat)ef_xright {
  return self.ef_right;
}

- (void)setEf_xright:(CGFloat)ef_xright {
  if (ef_xright < self.ef_left) {
    self.ef_width = 0;
  } else {
    self.ef_width = ef_xright - self.ef_left;
  }
  self.ef_right = ef_xright;
}

- (CGFloat)ef_xtop {
  return self.ef_top;
}

- (void)setEf_xtop:(CGFloat)ef_xtop {
  if (ef_xtop > self.ef_bottom) {
    self.ef_height = 0;
  } else {
    self.ef_height = self.ef_bottom - ef_xtop;
  }
  self.ef_top = ef_xtop;
}

- (CGFloat)ef_xbottom {
  return self.ef_bottom;
}

- (void)setEf_xbottom:(CGFloat)ef_xbottom {
  if (ef_xbottom < self.ef_top) {
    self.ef_height = 0;
  } else {
    self.ef_height = ef_xbottom - self.ef_top;
  }
  self.ef_bottom = ef_xbottom;
}

- (CGSize)ef_size {
  return self.frame.size;
}

- (void)setEf_size:(CGSize)ef_size {
  self.frame = CGRectMake(self.ef_left, self.ef_top, ef_size.width, ef_size.height);
}


@end
