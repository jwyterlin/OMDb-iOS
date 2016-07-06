//
//  MoviesViewController.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "GenericViewController.h"

@interface MoviesViewController : GenericViewController

#ifdef TEST
@property(nonatomic,strong) UICollectionView *collectionView;
@property(nonatomic,strong) NSArray *movies;
#endif

@end
