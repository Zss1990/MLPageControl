//
//  GA_HER_MLPageControl.h
//  B_GA_HermesHome
//
//  Created by zhushuaishuai on 2018/5/4.
//

#import <UIKit/UIKit.h>

@interface GA_HER_MLPageControl : UIPageControl
@property (nonatomic, strong)UIImage *currentImage;
@property (nonatomic, strong)UIImage *inactiveImage;

@property(nonatomic, assign) CGSize currentSize;
@property(nonatomic) CGSize inactiveSize;

@end
