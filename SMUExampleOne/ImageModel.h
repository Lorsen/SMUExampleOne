//
//  ImageModel.h
//  SMUExampleOne
//
//  Created by Eric Larson on 1/21/15.
//  Copyright (c) 2015 Eric Larson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageModel : NSObject

-(NSString*)getImageNameFromIndex:(NSInteger)index;
-(UIImage*)getImageDataFromIndex:(NSInteger)index;
-(NSInteger)getImageCount;

+(ImageModel*) sharedInstance;

-(UIImage*)getImageWithName:(NSString*)name;

@end
