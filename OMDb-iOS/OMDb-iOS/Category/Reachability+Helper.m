//
//  Reachability+Helper.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 25/11/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "Reachability+Helper.h"

@implementation Reachability (Helper)

+(BOOL)isNetworkReachable {
    
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    
    NetworkStatus networkStatus = [reachability currentReachabilityStatus];
    
    [reachability startNotifier];
    
    if ( networkStatus == NotReachable || [reachability connectionRequired] )
        return NO;
    else
        return YES;
    
}

@end
