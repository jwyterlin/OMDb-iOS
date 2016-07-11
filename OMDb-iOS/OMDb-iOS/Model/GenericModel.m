//
//  GenericModel.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "GenericModel.h"

@implementation GenericModel

-(NSArray *)setupListWithJson:(NSArray *)list {
    
    if ( ! list )
        return nil;
    
    NSMutableArray *listResult;
    
    if ( list.count > 0 ) {
        
        if ( [list[0] isKindOfClass:[NSDictionary class]] ) {
            
            listResult = [NSMutableArray new];
            
            for ( NSDictionary *obj in list ) {
                
                id objCreated = [self setupWithJson:obj];
                [listResult addObject:objCreated];
                
            }
            
        }
        
    }
    
    return listResult;
    
}

-(id)setupWithJson:(NSDictionary *)json {
    return self;
}

@end
