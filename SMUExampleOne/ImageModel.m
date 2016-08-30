//
//  ImageModel.m
//  SMUExampleOne
//
//  Created by Eric Larson on 1/21/15.
//  Copyright (c) 2015 Eric Larson. All rights reserved.
//

#import "ImageModel.h"

@interface ImageModel()

@property (strong,nonatomic) NSArray* imageNames;
@property (strong,nonatomic) NSMutableArray* imageData;

@end

@implementation ImageModel
@synthesize imageNames = _imageNames;

-(NSString*)getImageNameFromIndex:(NSInteger)index{
  return [self.imageNames objectAtIndex:index];
}

-(UIImage*)getImageDataFromIndex:(NSInteger)index{
  return [self.imageData objectAtIndex:index];
}

-(NSInteger)getImageCount{
  return [self.imageNames count];
}

-(NSArray*)imageData{
    if(!_imageData){
        _imageData = [[NSMutableArray alloc] init];
        for(NSString* name in _imageNames){
            [_imageData addObject:[self getImageWithName:name]];
        }
    }
    return _imageData;
}

-(NSArray*)imageNames{
    if(!_imageNames)
        _imageNames = @[@"Eric1",@"Eric2",@"Eric3", @"big_pizza_party", @"life.js", @"omar_bread"];
    return _imageNames;
}

+(ImageModel*)sharedInstance{
    static ImageModel * _sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate,^{
        _sharedInstance = [[ImageModel alloc] init];
    });
    return _sharedInstance;
}

-(UIImage*)getImageWithName:(NSString *)name{
    UIImage* image = nil;
    image = [UIImage imageNamed:name];
    return image;
}

@end
