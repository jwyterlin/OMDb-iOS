//
//  MovieCell.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "MovieCell.h"

#import "UIImageView+AFNetworking.h"

@interface MovieCell()

@property(nonatomic,strong) IBOutlet UIImageView *poster;

@end

@implementation MovieCell

-(MovieCell *)cellAtIndexPath:(NSIndexPath *)indexPath collectionView:(UICollectionView *)collectionView movie:(MovieModel *)movie {
    
    MovieCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kNibNameMovieCell forIndexPath:indexPath];
    [self configureCell:cell movie:movie];
    
    return cell;
    
}

-(void)configureCell:(MovieCell *)cell movie:(MovieModel *)movie {
    
    [cell configureImageWithPosterUrl:movie.urlPoster];
    
}

-(void)configureImageWithPosterUrl:(NSString *)urlPoster {
    
    UIImage *placeholderImage;
    NSURL *url = [NSURL URLWithString:urlPoster];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    
    __weak MovieCell *weakCell = self;
    
    [self.poster setImageWithURLRequest:urlRequest placeholderImage:placeholderImage success:^(NSURLRequest *urlRequest, NSHTTPURLResponse *response, UIImage *image) {
        
        weakCell.poster.image = image;
        
    } failure:^(NSURLRequest *urlRequest, NSHTTPURLResponse *response, NSError *error) {
        
    }];
    
}

@end
