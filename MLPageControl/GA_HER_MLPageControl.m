//
//  GA_HER_MLPageControl.m
//
//  Created by zhushuaishuai on 2018/5/4.
//

#import "GA_HER_MLPageControl.h"

@implementation GA_HER_MLPageControl

#pragma mark - override
- (void)setCurrentPage:(NSInteger)currentPage {
    [super setCurrentPage:currentPage];
    [self updateDots];
}

#pragma mark - private
// 改变图片和大小
- (void)updateDots {
    for (int i = 0; i < [self.subviews count]; i++) {
        UIView *view = [self.subviews objectAtIndex: i];
        UIImageView * dot = [self imageViewForSubview:view];
        if (i == self.currentPage) {
            if (self.currentImage) {
                dot.image = self.currentImage;
            }
            if (self.currentSize.width!=0 && self.currentSize.height!=0) {
                [dot setFrame:CGRectMake(0, 0, self.currentSize.width, self.currentSize.height)];
            }
        }else{
            if (self.inactiveImage) {
                dot.image = self.inactiveImage;
            }
            if (self.inactiveSize.width!=0 && self.inactiveSize.height!=0) {
                [dot setFrame:CGRectMake(0, 0, self.inactiveSize.width, self.inactiveSize.height)];
            }
        }
    }
}

- (UIImageView *)imageViewForSubview:(UIView *) view {
    UIImageView * dot = nil;
    if ([view isKindOfClass: [UIView class]]) {
        for (UIView* subview in view.subviews) {
            if ([subview isKindOfClass:[UIImageView class]]) {
                dot = (UIImageView *)subview;
                break;
            }
        }
        if (dot == nil) {
            dot = [[UIImageView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, view.frame.size.width, view.frame.size.height)];
            [view addSubview:dot];
        }
    }else {
        dot = (UIImageView *) view;
    }

    return dot;
}

@end
