//
//  MoviesViewController.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 03/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "MoviesViewController.h"

// Cell
#import "MovieCell.h"

// Service
#import "MovieService.h"

@interface MoviesViewController()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

#ifndef TEST
@property(nonatomic,strong) UICollectionView *collectionView;
@property(nonatomic,strong) NSArray *movies;
#endif

@end

@implementation MoviesViewController

#pragma mark - View Lifecycle

-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setupCollectionView];
    
    [[MovieService new] searchMovieWithTitle:@"The Lord of the Rings" success:^(NSArray<MovieModel *> *movies) {
        
    } failure:^(BOOL hasNoConnection, NSError *error) {
        
    }];
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.navigationItem.title = @"Movies";
    
}

#pragma mark - UICollectionViewDataSource methods

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.movies.count;
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return [MovieCell new];
    
}

#pragma mark - UICollectionViewDelegate methods

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
}

#pragma mark - UICollectionViewDelegateFlowLayout methods

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return CGSizeMake( 190.0f, 329.0f );
    
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    return UIEdgeInsetsMake( 10.0f, 10.0f, 20.0f, 10.0f );
    
}

#pragma mark - Private methods

-(void)setupCollectionView {
    
    UINib *nib = [UINib nibWithNibName:kNibNameMovieCell bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:kNibNameMovieCell];
    
}

#pragma mark - Lazy Instances 

-(UICollectionView *)collectionView {
    
    if ( ! _collectionView ) {
        
        CGFloat x = 0.0f;
        CGFloat y = 0.0f;
        CGFloat width = [UIScreen mainScreen].bounds.size.width;
        CGFloat heigh = [UIScreen mainScreen].bounds.size.height;
        
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake( x, y, width, heigh ) collectionViewLayout:layout];
        
    }
    
    return _collectionView;
    
}

-(NSArray *)movies {
    
    if ( ! _movies )
        _movies = [NSArray new];
    return _movies;
    
}

@end
