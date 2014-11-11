//
//  EFTestEasyFrameWithParentView.m
//  EasyFrame
//
//  Created by Abner Zhong on 14/10/30.
//  Copyright (c) 2014年 Abner Zhong. All rights reserved.
//

#import <UIView+EasyFrame.h>

SPEC_BEGIN(EFTestEasyFrameWithParentView)

describe(@"Relative layout", ^{
    context(@"with parent view", ^{
        __block UIView *parentView;
        __block UIView *view;
        beforeAll(^{
            parentView = [[UIView alloc] init];
            parentView.frame = CGRectMake(10, 20, 300, 400);
            view = [[UIView alloc] init];
        });

        it(@"is horizontal center in parent", ^{
            view.frame = CGRectMake(0, 0, 100, 100);
            [view ef_horizontalCenterIn:parentView];
            [[theValue(CGRectEqualToRect(
                view.frame, CGRectMake(100, 0, 100, 100))) should] beYes];
        });

        it(@"is vertical center in parent", ^{
            view.frame = CGRectMake(0, 0, 100, 100);
            [view ef_verticalCenterIn:parentView];
            [[theValue(CGRectEqualToRect(
                view.frame, CGRectMake(0, 150, 100, 100))) should] beYes];
        });

        it(@"is center in parent view", ^{
            view.frame = CGRectMake(0, 0, 100, 100);
            [view ef_centerIn:parentView];
            [[theValue(CGPointEqualToPoint(view.center, CGPointMake(150, 200)))
                    should] beYes];
        });

    });

    context(@"with other view", ^{
        __block UIView *otherView;
        __block UIView *view;
        beforeAll(^{
            otherView = [[UIView alloc] init];
            view = [[UIView alloc] init];
        });

        it(@"above the view", ^{
            otherView.frame = CGRectMake(100, 100, 10, 10);
            view.frame = CGRectMake(0, 0, 10, 10);
            [view ef_above:otherView withMargin:10];

            [[theValue(CGRectEqualToRect(view.frame, CGRectMake(0, 80, 10, 10)))
                    should] beYes];
        });

        it(@"below the view", ^{
            otherView.frame = CGRectMake(100, 100, 10, 10);
            view.frame = CGRectMake(0, 0, 10, 10);
            [view ef_below:otherView withMargin:10];
            [[theValue(CGRectEqualToRect(
                view.frame, CGRectMake(0, 120, 10, 10))) should] beYes];
        });

        it(@"is to right of other view", ^{
            view.frame = CGRectMake(0, 0, 10, 10);
            otherView.frame = CGRectMake(100, 100, 100, 100);
            [view ef_toRightOf:otherView withMargin:10];
            [[theValue(CGRectEqualToRect(
                view.frame, CGRectMake(210, 0, 10, 10))) should] beYes];
        });

        it(@"is to left of other view", ^{
            view.frame = CGRectMake(0, 0, 10, 10);
            otherView.frame = CGRectMake(100, 100, 100, 100);
            [view ef_toLeftOf:otherView withMargin:10];
            [[theValue(CGRectEqualToRect(view.frame, CGRectMake(80, 0, 10, 10)))
                    should] beYes];
        });

    });

});

SPEC_END