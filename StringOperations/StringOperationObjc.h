//
//  StringOperationObjc.h
//  StringOperations
//
//  Created by Nazia Afroz on 17/11/18.
//  Copyright © 2018 Nazia Afroz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringOperationObjc : NSObject
-(NSAttributedString *)getAttributeStringWithDifferentFont;

-(NSAttributedString *)getAttributeStringWithDifferentColor;
+(NSAttributedString *)createAttributed;
+(NSAttributedString *)textWithIcon;
@end
