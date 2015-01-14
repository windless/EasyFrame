//
//  EFTestEasyFrame.m
//  EasyFrame
//
//  Created by Abner Zhong on 14/10/30.
//  Copyright (c) 2014年 Abner Zhong. All rights reserved.
//

#import <UIView+EasyFrame.h>
#import "UIView+EasyFrame.h"

SPEC_BEGIN(EasyFrame)

  describe(@"UIView", ^{
    context(@"position", ^{
      __block UIView *view;
      beforeAll(^{
        view = [[UIView alloc] init];
        view.frame = CGRectMake(1, 2, 3, 4);
      });

      it(@"has right width",
          ^{
            [[theValue(view.ef_width) should] equal:@3];
          });

      it(@"has right height",
          ^{
            [[theValue(view.ef_height) should] equal:@4];
          });

      it(@"has right top", ^{
        [[theValue(view.ef_top) should] equal:@2];
      });

      it(@"has right left",
          ^{
            [[theValue(view.ef_left) should] equal:@1];
          });

      it(@"has the right right",
          ^{
            [[theValue(view.ef_right) should] equal:@4];
          });

      it(@"has the right bottom",
          ^{
            [[theValue(view.ef_bottom) should] equal:@6];
          });

      it(@"has the right centerX",
          ^{
            [[theValue(view.ef_centerX) should] equal:@2.5];
          });

      it(@"has the right centerY",
          ^{
            [[theValue(view.ef_centerY) should] equal:@4];
          });
    });

    it(@"has right frame after setting width", ^{
      UIView *view = [[UIView alloc] init];
      view.frame = CGRectMake(0, 0, 100, 100);
      view.ef_width = 50;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(0, 0, 50, 100)))
          should] beYes];
    });

    it(@"has right frame after setting height", ^{
      UIView *view = [[UIView alloc] init];
      view.frame = CGRectMake(0, 0, 100, 100);
      view.ef_height = 50;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(0, 0, 100, 50)))
          should] beYes];
    });

    it(@"has right frame after setting top", ^{
      UIView *view = [[UIView alloc] init];
      view.frame = CGRectMake(0, 0, 100, 100);
      view.ef_top = 20;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(0, 20, 100, 100)))
          should] beYes];
    });

    it(@"has right frame after setting left", ^{
      UIView *view = [[UIView alloc] init];
      view.frame = CGRectMake(0, 0, 100, 100);
      view.ef_left = 20;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(20, 0, 100, 100)))
          should] beYes];
    });

    it(@"has right frame after setting right", ^{
      UIView *view = [[UIView alloc] init];
      view.frame = CGRectMake(0, 0, 100, 100);
      view.ef_right = 80;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(-20, 0, 100, 100)))
          should] beYes];
    });

    it(@"has right frame after setting bottom", ^{
      UIView *view = [[UIView alloc] init];
      view.frame = CGRectMake(0, 0, 100, 100);
      view.ef_bottom = 80;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(0, -20, 100, 100)))
          should] beYes];
    });

    it(@"has right center after setting centerX", ^{
      UIView *view = [[UIView alloc] init];
      view.center = CGPointMake(100, 100);
      view.ef_centerX = 50;
      [[theValue(CGPointEqualToPoint(view.center, CGPointMake(50, 100)))
          should] beYes];
    });

    it(@"has right center after setting centerY", ^{
      UIView *view = [[UIView alloc] init];
      view.center = CGPointMake(100, 100);
      view.ef_centerY = 50;
      [[theValue(CGPointEqualToPoint(view.center, CGPointMake(100, 50)))
          should] beYes];
    });

    it(@"has right frame after setting xleft", ^{
      UIView *view = [[UIView alloc] init];
      view.frame = CGRectMake(100, 200, 300, 400);
      view.ef_xleft = 50;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(50, 200, 350, 400))) should] beYes];

      view.frame = CGRectMake(100, 200, 300, 400);
      view.ef_xleft = 500;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(500, 200, 0, 400))) should] beYes];
    });

    it(@"has right frame after setting xtop", ^{
      UIView *view = [[UIView alloc] init];
      view.frame = CGRectMake(100, 200, 300, 400);
      view.ef_xtop = 50;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(100, 50, 300, 550))) should] beYes];

      view.frame = CGRectMake(100, 200, 300, 400);
      view.ef_xtop = 700;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(100, 700, 300, 0))) should] beYes];
    });

    it(@"has right frame after setting xright", ^{
      UIView *view = [[UIView alloc] init];
      view.frame = CGRectMake(100, 200, 300, 400);
      view.ef_xright = 450;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(100, 200, 350, 400))) should] beYes];

      view.frame = CGRectMake(100, 200, 300, 400);
      view.ef_xright = 50;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(50, 200, 0, 400))) should] beYes];
    });

    it(@"has right frame after setting xbottom", ^{
      UIView *view = [[UIView alloc] init];
      view.frame = CGRectMake(100, 200, 300, 400);
      view.ef_xbottom = 500;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(100, 200, 300, 300))) should] beYes];

      view.frame = CGRectMake(100, 200, 300, 400);
      view.ef_xbottom = 100;
      [[theValue(CGRectEqualToRect(view.frame, CGRectMake(100, 100, 300, 0))) should] beYes];
    });

  });

SPEC_END
