//
//  MovieCell.h
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "GenericCell.h"

// Model
#import "MovieModel.h"

@interface MovieCell : GenericCell

+(MovieCell *)cellAtIndexPath:(NSIndexPath *)indexPath collectionView:(UICollectionView *)collectionView movie:(MovieModel *)movie;

+(void)configureCell:(MovieCell *)cell movie:(MovieModel *)movie;

@end
