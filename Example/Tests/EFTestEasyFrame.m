//
//  EFTestEasyFrame.m
//  EasyFrame
//
//  Created by Abner Zhong on 14/10/30.
//  Copyright (c) 2014年 Abner Zhong. All rights reserved.
//

#import <UIView+EasyFrame.h>

SPEC_BEGIN(EasyFrame)

describe(@"UIView", ^{
    context(@"position", ^{
        __block UIView *view;
        beforeAll(^{
            view = [[UIView alloc] init];
            view.frame = CGRectMake(100, 100, 100, 100);
        });

        it(@"has right width",
           ^{ [[theValue(view.ef_width) should] equal:@100]; });

        it(@"has right height",
           ^{ [[theValue(view.ef_height) should] equal:@100]; });

        it(@"has right top", ^{ [[theValue(view.ef_top) should] equal:@100]; });

        it(@"has right left",
           ^{ [[theValue(view.ef_left) should] equal:@100]; });

        it(@"has the right right",
           ^{ [[theValue(view.ef_right) should] equal:@200]; });

        it(@"has the right bottom",
           ^{ [[theValue(view.ef_bottom) should] equal:@200]; });

        it(@"has the right centerX",
           ^{ [[theValue(view.ef_centerX) should] equal:@150]; });

        it(@"has the right centerY",
           ^{ [[theValue(view.ef_centerY) should] equal:@150]; });
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
        [[theValue(CGRectEqualToRect(view.frame, CGRectMake(0, 20, 100, 80)))
                should] beYes];
    });

    it(@"has right frame when top is larger then bottom", ^{
        UIView *view = [[UIView alloc] init];
        view.frame = CGRectMake(0, 0, 100, 100);
        view.ef_top = 200;
        [[theValue(CGRectEqualToRect(view.frame, CGRectMake(0, 200, 100, 0)))
                should] beYes];
    });

    it(@"has right frame after setting left", ^{
        UIView *view = [[UIView alloc] init];
        view.frame = CGRectMake(0, 0, 100, 100);
        view.ef_left = 20;
        [[theValue(CGRectEqualToRect(view.frame, CGRectMake(20, 0, 80, 100)))
                should] beYes];
    });

    it(@"has right frame when left is larger then right", ^{
        UIView *view = [[UIView alloc] init];
        view.frame = CGRectMake(0, 0, 100, 100);
        view.ef_left = 200;
        [[theValue(CGRectEqualToRect(view.frame, CGRectMake(200, 0, 0, 100)))
                should] beYes];
    });

    it(@"has right frame after setting right", ^{
        UIView *view = [[UIView alloc] init];
        view.frame = CGRectMake(0, 0, 100, 100);
        view.ef_right = 80;
        [[theValue(CGRectEqualToRect(view.frame, CGRectMake(0, 0, 80, 100)))
                should] beYes];
    });

    it(@"has right frame when right is smaller than left", ^{
        UIView *view = [[UIView alloc] init];
        view.frame = CGRectMake(100, 100, 100, 100);
        view.ef_right = 90;
        [[theValue(CGRectEqualToRect(view.frame, CGRectMake(90, 100, 0, 100)))
                should] beYes];
    });

    it(@"has right frame after setting bottom", ^{
        UIView *view = [[UIView alloc] init];
        view.frame = CGRectMake(0, 0, 100, 100);
        view.ef_bottom = 80;
        [[theValue(CGRectEqualToRect(view.frame, CGRectMake(0, 0, 100, 80)))
                should] beYes];
    });

    it(@"has right frame when bottom is smaller than top", ^{
        UIView *view = [[UIView alloc] init];
        view.frame = CGRectMake(0, 100, 100, 100);
        view.ef_bottom = 90;
        [[theValue(CGRectEqualToRect(view.frame, CGRectMake(0, 90, 100, 0)))
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

});

SPEC_END
