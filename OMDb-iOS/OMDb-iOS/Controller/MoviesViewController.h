//
//  MoviesViewController.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "GenericViewController.h"

#ifdef TEST

// Model
#import "MovieModel.h"

// Conductor
#import "MoviesConductor.h"

#endif

@interface MoviesViewController : GenericViewController

#ifdef TEST
@property(nonatomic,strong) UICollectionView *collectionView;
@property(nonatomic,strong) MoviesConductor *moviesConductor;
#endif

@end

