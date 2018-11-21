//
//  StringOperationObjc.m
//  StringOperations
//
//  Created by Nazia Afroz on 17/11/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//


#import "StringOperationObjc.h"

#import <UIKit/UIKit.h>
@implementation StringOperationObjc

-(NSAttributedString *)getAttributeStringWithDifferentFont{
    
    NSString *str1  = @"string1";
    NSString *str2 = @"string2";
    
    NSString *fullString = [NSString stringWithFormat:@"%@ %@", str1, str2];
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:fullString];
    
    
    UIFont *font1 = [UIFont systemFontOfSize:23];
    [attributedString addAttribute:NSFontAttributeName value:font1 range:NSMakeRange(0, str1.length)];

    
    UIFont *font2 = [UIFont fontWithName:@"Thonburi-Bold" size:12.0f];
    [attributedString addAttribute:NSFontAttributeName value:font2 range:NSMakeRange(str1.length, str2.length + 1)];

    return attributedString;
}



-(NSAttributedString *)getAttributeStringWithDifferentColor{
//    NSAttributedString *str1 = [NSAttributedString alloc] in
    NSString *str1 = @"normal color";
    NSString *str2 = @"Different Color";
    NSString *fullString = [NSString stringWithFormat:@"%@ %@", str1, str2];
    
    NSMutableAttributedString *mAttrString = [[NSMutableAttributedString alloc] initWithString:fullString];
    
    [mAttrString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, str1.length)];
    [mAttrString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:12] range:NSMakeRange(0, str1.length)];
    
    
    
    NSAttributedString *attrStr = [[NSAttributedString alloc]initWithString:@"attr" attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:30], NSForegroundColorAttributeName: [UIColor blueColor]}];
    [mAttrString appendAttributedString: attrStr];
    
    return mAttrString;
}

+(NSAttributedString *)createAttributed{

    NSMutableAttributedString *mutableAttributedString = [[NSMutableAttributedString alloc] init];
    
    NSAttributedString *attributed1 = [[NSAttributedString alloc]initWithString:@"NSAttributedString1" attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14], NSForegroundColorAttributeName: [UIColor blueColor]}];
    NSAttributedString *attribute2 = [[NSAttributedString alloc] initWithString:@"NSAttributedString2" attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:20], NSBackgroundColorAttributeName: [UIColor grayColor]}];
    [mutableAttributedString appendAttributedString:attributed1];
    [mutableAttributedString appendAttributedString:attribute2];
    return mutableAttributedString;
}

+(NSAttributedString *)textWithIcon{
    NSMutableAttributedString *mutableAttributedString = [[NSMutableAttributedString alloc] init];
    
    NSAttributedString *attributedStr1 = [[NSAttributedString alloc] initWithString:@"stringWithIcon " attributes: @{NSFontAttributeName: [UIFont systemFontOfSize:12], NSBackgroundColorAttributeName: [UIColor cyanColor]}];
    
    UIImage *image = [UIImage imageNamed:@"plus_minus2"];
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = image;
    attachment.bounds = CGRectMake(0, 0, 22, 22);
    NSAttributedString *attr2 = [NSAttributedString attributedStringWithAttachment: attachment];
    [mutableAttributedString appendAttributedString:attributedStr1];
    [mutableAttributedString appendAttributedString:attr2];
    return mutableAttributedString;
    
}

@end
