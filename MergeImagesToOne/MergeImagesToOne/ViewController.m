//
//  ViewController.m
//  MergeImagesToOne
//
//  Created by baishiqi on 15/10/14.
//  Copyright (c) 2015年 baishiqi. All rights reserved.
//

#import "ViewController.h"

#define INTERVAL                      12    // 间距
#define MARGIN                        24    // 边距
#define CANVAS_SIZE                   600   // 底图尺寸
#define SMALL_AVATAR_SIZE_TWO_RANK    ((CANVAS_SIZE - MARGIN*2.0 - INTERVAL)/2.0)       //  两列时小头像尺寸 1234
#define SMALL_AVATAR_SIZE_THREE_RANK  ((CANVAS_SIZE - MARGIN*2.0 - INTERVAL*2.0)/3.0)   //  三列时小头像尺寸 56789
#define AVATAR_AMOUNT                 6     // 小头像数量

#define SMALL_AVATAR_FILE             [UIImage imageNamed:@"5.jpg"]
#define CANVAS_BG_COLOR               [UIColor colorWithRed:192.0/255.0 green:192.0/255.0 blue:192.0/255.0 alpha:1.0]    // 底图背景色

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self test];
}

- (void)test
{
    // 位置坐标
    // 1张图
    NSArray *smallAvatarLocationArrayOne   = [[NSArray alloc] initWithObjects:
                                              [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_TWO_RANK/2.0],
                                              [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_TWO_RANK/2.0], nil];
    // 2张图
    NSArray *smallAvatarLocationArrayTwo   = [[NSArray alloc] initWithObjects:
                                              [NSNumber numberWithFloat:MARGIN],
                                              [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_TWO_RANK/2.0],
                                              [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_TWO_RANK+INTERVAL],
                                              [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_TWO_RANK/2.0], nil];
    // 3张图
    NSArray *smallAvatarLocationArrayThree = [[NSArray alloc] initWithObjects:
                                              [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_TWO_RANK/2.0],
                                              [NSNumber numberWithFloat:MARGIN],
                                              [NSNumber numberWithFloat:MARGIN],
                                              [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_TWO_RANK+INTERVAL],
                                              [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_TWO_RANK+INTERVAL],
                                              [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_TWO_RANK+INTERVAL], nil];
    // 4张图
    NSArray *smallAvatarLocationArrayFour   = [[NSArray alloc] initWithObjects:
                                               [NSNumber numberWithFloat:MARGIN],
                                               [NSNumber numberWithFloat:MARGIN],
                                               [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_TWO_RANK+INTERVAL],
                                               [NSNumber numberWithFloat:MARGIN],
                                               [NSNumber numberWithFloat:MARGIN],
                                               [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_TWO_RANK+INTERVAL],
                                               [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_TWO_RANK+INTERVAL],
                                               [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_TWO_RANK+INTERVAL], nil];
    // 5张图
    NSArray *smallAvatarLocationArrayFive    = [[NSArray alloc] initWithObjects:
                                                [NSNumber numberWithFloat:CANVAS_SIZE/2.0-(SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL/2.0)],
                                                [NSNumber numberWithFloat:CANVAS_SIZE/2.0-(SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL/2.0)],
                                                [NSNumber numberWithFloat:CANVAS_SIZE/2.0+INTERVAL/2.0],
                                                [NSNumber numberWithFloat:CANVAS_SIZE/2.0-(SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL/2.0)],
                                                [NSNumber numberWithFloat:MARGIN],
                                                [NSNumber numberWithFloat:CANVAS_SIZE/2.0+INTERVAL/2.0],
                                                [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL],
                                                [NSNumber numberWithFloat:CANVAS_SIZE/2.0+INTERVAL/2.0],
                                                [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK*2+INTERVAL*2],
                                                [NSNumber numberWithFloat:CANVAS_SIZE/2.0+INTERVAL/2.0], nil];
    // 6张图
    NSArray *smallAvatarLocationArraySix      = [[NSArray alloc] initWithObjects:
                                                 [NSNumber numberWithFloat:MARGIN],
                                                 [NSNumber numberWithFloat:CANVAS_SIZE/2.0-(SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL/2.0)],
                                                 [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL],
                                                 [NSNumber numberWithFloat:CANVAS_SIZE/2.0-(SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL/2.0)],
                                                 [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK*2+INTERVAL*2],
                                                 [NSNumber numberWithFloat:CANVAS_SIZE/2.0-(SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL/2.0)],
                                                 [NSNumber numberWithFloat:MARGIN],
                                                 [NSNumber numberWithFloat:CANVAS_SIZE/2.0+INTERVAL/2.0],
                                                 [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL],
                                                 [NSNumber numberWithFloat:CANVAS_SIZE/2.0+INTERVAL/2.0],
                                                 [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK*2+INTERVAL*2],
                                                 [NSNumber numberWithFloat:CANVAS_SIZE/2.0+INTERVAL/2.0], nil];
    // 7张图
    NSArray *smallAvatarLocationArraySeven     = [[NSArray alloc] initWithObjects:
                                                  [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_THREE_RANK/2.0],
                                                  [NSNumber numberWithFloat:MARGIN],
                                                  [NSNumber numberWithFloat:MARGIN],
                                                  [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_THREE_RANK/2.0],
                                                  [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL],
                                                  [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_THREE_RANK/2.0],
                                                  [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK*2+INTERVAL*2],
                                                  [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_THREE_RANK/2.0],
                                                  [NSNumber numberWithFloat:MARGIN],
                                                  [NSNumber numberWithFloat:CANVAS_SIZE/2.0+SMALL_AVATAR_SIZE_THREE_RANK/2.0+INTERVAL],
                                                  [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL],
                                                  [NSNumber numberWithFloat:CANVAS_SIZE/2.0+SMALL_AVATAR_SIZE_THREE_RANK/2.0+INTERVAL],
                                                  [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK*2+INTERVAL*2],
                                                  [NSNumber numberWithFloat:CANVAS_SIZE/2.0+SMALL_AVATAR_SIZE_THREE_RANK/2.0+INTERVAL], nil];
    // 8张图
    NSArray *smallAvatarLocationArrayEight      = [[NSArray alloc] initWithObjects:
                                                   [NSNumber numberWithFloat:CANVAS_SIZE/2.0-(SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL/2.0)],
                                                   [NSNumber numberWithFloat:MARGIN],
                                                   [NSNumber numberWithFloat:CANVAS_SIZE/2.0+INTERVAL/2.0],
                                                   [NSNumber numberWithFloat:MARGIN],
                                                   [NSNumber numberWithFloat:MARGIN],
                                                   [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_THREE_RANK/2.0],
                                                   [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL],
                                                   [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_THREE_RANK/2.0],
                                                   [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK*2+INTERVAL*2],
                                                   [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_THREE_RANK/2.0],
                                                   [NSNumber numberWithFloat:MARGIN],
                                                   [NSNumber numberWithFloat:CANVAS_SIZE/2.0+SMALL_AVATAR_SIZE_THREE_RANK/2.0+INTERVAL],
                                                   [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL],
                                                   [NSNumber numberWithFloat:CANVAS_SIZE/2.0+SMALL_AVATAR_SIZE_THREE_RANK/2.0+INTERVAL],
                                                   [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK*2+INTERVAL*2],
                                                   [NSNumber numberWithFloat:CANVAS_SIZE/2.0+SMALL_AVATAR_SIZE_THREE_RANK/2.0+INTERVAL], nil];
    // 9张图
    NSArray *smallAvatarLocationArrayNine        = [[NSArray alloc] initWithObjects:
                                                    [NSNumber numberWithFloat:MARGIN],
                                                    [NSNumber numberWithFloat:MARGIN],
                                                    [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL],
                                                    [NSNumber numberWithFloat:MARGIN],
                                                    [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK*2+INTERVAL*2],
                                                    [NSNumber numberWithFloat:MARGIN],
                                                    [NSNumber numberWithFloat:MARGIN],
                                                    [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_THREE_RANK/2.0],
                                                    [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL],
                                                    [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_THREE_RANK/2.0],
                                                    [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK*2+INTERVAL*2],
                                                    [NSNumber numberWithFloat:CANVAS_SIZE/2.0-SMALL_AVATAR_SIZE_THREE_RANK/2.0],
                                                    [NSNumber numberWithFloat:MARGIN],
                                                    [NSNumber numberWithFloat:CANVAS_SIZE/2.0+SMALL_AVATAR_SIZE_THREE_RANK/2.0+INTERVAL],
                                                    [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK+INTERVAL],
                                                    [NSNumber numberWithFloat:CANVAS_SIZE/2.0+SMALL_AVATAR_SIZE_THREE_RANK/2.0+INTERVAL],
                                                    [NSNumber numberWithFloat:MARGIN+SMALL_AVATAR_SIZE_THREE_RANK*2+INTERVAL*2],
                                                    [NSNumber numberWithFloat:CANVAS_SIZE/2.0+SMALL_AVATAR_SIZE_THREE_RANK/2.0+INTERVAL], nil];
    
    NSInteger numberOfAvatar = AVATAR_AMOUNT;
    
    // 填充被合并图像数组
    CGFloat smallAvatarSize;
    if (numberOfAvatar <= 4) {
        smallAvatarSize = SMALL_AVATAR_SIZE_TWO_RANK;
    } else {
        smallAvatarSize = SMALL_AVATAR_SIZE_THREE_RANK;
    }
    NSMutableArray *imageMArray = [NSMutableArray arrayWithCapacity:numberOfAvatar];
    for (int i=0; i<numberOfAvatar; i++) {
        UIImage *image = SMALL_AVATAR_FILE;
        float scale = image.size.width/smallAvatarSize;
        NSData *data = UIImagePNGRepresentation(image);
        UIImage *newImage = [UIImage imageWithData:data scale:scale];
        [imageMArray addObject:newImage];
    }
    
    // 确定被合并图像位置数组
    NSArray *imageLocationArrays = [NSArray arrayWithObjects:smallAvatarLocationArrayOne, smallAvatarLocationArrayTwo, smallAvatarLocationArrayThree, smallAvatarLocationArrayFour, smallAvatarLocationArrayFive, smallAvatarLocationArraySix, smallAvatarLocationArraySeven, smallAvatarLocationArrayEight, smallAvatarLocationArrayNine, nil];
    NSArray *imageLocationArray = [imageLocationArrays objectAtIndex:numberOfAvatar-1];
    
    BOOL success = [self mergeImagesToOneWithImageArray:imageMArray andImageLocationArray:imageLocationArray];
    
    if (success == YES) {
        NSLog(@"Images Successfully Mearged & Saved to Album");
    }
    else {
        NSLog(@"Images not Mearged & not Saved to Album");
    }
}

- (BOOL)mergeImagesToOneWithImageArray:(NSArray *)imageArray andImageLocationArray:(NSArray *)locationArray
{
    UIGraphicsBeginImageContext(CGSizeMake(CANVAS_SIZE, CANVAS_SIZE));
    
    CGRect rect = CGRectMake(0, 0, CANVAS_SIZE, CANVAS_SIZE);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [CANVAS_BG_COLOR CGColor]);
    CGContextFillRect(context, rect);
    
    int i = 0;
    for (UIImage *image in imageArray) {
        [image drawInRect:CGRectMake([[locationArray objectAtIndex:i] floatValue],
                                     [[locationArray objectAtIndex:i+1] floatValue],
                                     image.size.width,
                                     image.size.height)];
        
        i+=2;
    }
    
    CGImageRef newImage = CGImageCreateWithImageInRect(UIGraphicsGetImageFromCurrentImageContext().CGImage,
                                                       CGRectMake(0, 0, CANVAS_SIZE, CANVAS_SIZE));
    
    UIGraphicsEndImageContext();
    
    BOOL successFlag;
    if (newImage == nil) {
        successFlag = NO;
    } else {
        UIImageWriteToSavedPhotosAlbum([UIImage imageWithCGImage:newImage], self, nil, nil);
        CFRelease(newImage);
        successFlag = YES;
    }
    return successFlag;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
