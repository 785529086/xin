//
//  CellCustomSecend.m
//  UI20_网易首页
//
//  Created by dllo on 16/1/9.
//  Copyright © 2016年 lanou.com. All rights reserved.
//

#import "CellCustomSecend.h"
#import "ModelForSecend.h"
#import "UIImageView+WebCache.h"
@interface CellCustomSecend ()

@property (weak, nonatomic) IBOutlet UILabel *labelOfTitle;

@property (weak, nonatomic) IBOutlet UILabel *labelOfdigest;

@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation CellCustomSecend


- (void)passValueForCell:(ModelForSecend *)model {

     self.labelOfTitle.text = model.title;
    self.labelOfdigest.text = model.digest;
    [self.image sd_setImageWithURL:[NSURL URLWithString:model.imgsrc]];

}
//
//- (void)layoutSubviews {
//
//    [super layoutSubviews];
//
//    self.labelOfTitle.frame = CGRectMake(170, 20, [UIScreen mainScreen].bounds.size.width - 180,[CellCustomSecend heightForTitle:self.labelOfTitle.text] );
//
//    self.labelOfdigest.frame = CGRectMake(140, 40 + [CellCustomSecend heightForTitle:self.labelOfTitle.text] , [UIScreen mainScreen].bounds.size.width - 180, [CellCustomSecend heightForGiest:self.labelOfdigest.text]);
//}
//
//
//+ (CGFloat)heightForGiest:(NSString *)giest {
//
//    // 文本大小.
//    NSAttributedString *text1 = [[NSAttributedString alloc]initWithString:giest attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]}];
//    
//    // 根据label内容大小自适应,计算本文尺寸.
//    // NSStringDrawingUsesLineFragmentOrigin:整个文本将以每行组成的矩形为单位计算整个文本的尺寸.
//    
//    CGRect rect1 = [text1 boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 150 - 30, 0) options:NSStringDrawingUsesLineFragmentOrigin context:nil];
//    return rect1.size.height;
//}
//
//+ (CGFloat)heightForTitle:(NSString *)title {
//    // 文本大小.
//    NSAttributedString *text2 = [[NSAttributedString alloc]initWithString:title attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]}];
//    
//    // 根据label内容大小自适应,计算本文尺寸.
//    // NSStringDrawingUsesLineFragmentOrigin:整个文本将以每行组成的矩形为单位计算整个文本的尺寸.
//    CGRect rect2 = [text2 boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width, 0) options:NSStringDrawingUsesLineFragmentOrigin context:nil];
//
//    return  rect2.size.height;
//
//}

//+ (CGFloat)heightForCell:(ModelForSecend *)model {
//
//    CGFloat height1 = [CellCustomSecend heightForGiest:model.digest];
//    CGFloat height2 = [CellCustomSecend heightForTitle:model.title];
//    return height1 + height2 + 40;
//}



- (void)awakeFromNib {
    // Initialization code
    self.labelOfTitle.numberOfLines = 0;
    self.labelOfdigest.numberOfLines = 0;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
