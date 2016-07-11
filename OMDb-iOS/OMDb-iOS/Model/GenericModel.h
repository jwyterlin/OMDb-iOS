//
//  GenericModel.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import <Foundation/Foundation.h>

// Util
#import "Constants.h"
#import "Validator.h"

@interface GenericModel : NSObject

-(NSArray *)setupListWithJson:(NSArray *)list;
-(id)setupWithJson:(NSDictionary *)json;

@end
