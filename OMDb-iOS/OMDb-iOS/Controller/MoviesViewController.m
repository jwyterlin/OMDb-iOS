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

// Controller
#import "AddMovieViewController.h"

// Conductor
#import "MoviesConductor.h"

@interface MoviesViewController()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,MoviesConductorDelegate>

#ifndef TEST
@property(nonatomic,strong) UICollectionView *collectionView;
@property(nonatomic,strong) MoviesConductor *moviesConductor;
#endif

@end

@implementation MoviesViewController

#pragma mark - View Lifecycle

-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setupCollectionView];
    [self setupAddButton];
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.navigationItem.title = @"Movies";
    
    if ( ! [self.collectionView isDescendantOfView:self.view] )
        [self.view addSubview:self.collectionView];
    
}

-(void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear:animated];
    
    self.navigationItem.title = @"";
    
}

-(void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    [self.moviesConductor viewDidAppear];
    
}

#pragma mark - UICollectionViewDataSource methods

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self.moviesConductor numberOfMovies];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    MovieModel *movie = [self.moviesConductor movieAtIndex:indexPath.row];
    
    return [MovieCell cellAtIndexPath:indexPath collectionView:collectionView movie:movie];
    
}

#pragma mark - UICollectionViewDelegate methods

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
}

#pragma mark - UICollectionViewDelegateFlowLayout methods

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    return CGSizeMake( 173.0f, 245.0f );
    
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    CGFloat top = 10.0f;
    CGFloat left = 10.0f;
    CGFloat bottom = 20.0f;
    CGFloat right = 10.0f;
    
    return UIEdgeInsetsMake( top, left, bottom, right );
    
}

#pragma mark - MoviesConductorDelegate methods

-(void)moviesConductorDelegate_updateList {
    [self.collectionView reloadData];
}

-(void)moviesConductorDelegate_handleError:(NSError *)error {
    [[Alert new] showError:error viewController:self];
}

-(void)moviesConductorDelegate_hasNoConnection {
    [[Alert new] showNoConnectionWithViewController:self];
}

#pragma mark - IBAction methods

-(IBAction)addButtonPressed:(UIBarButtonItem *)sender {
    
    [self callAddMovieViewController];
    
}

#pragma mark - Private methods

-(void)setupCollectionView {
    
    UINib *nib = [UINib nibWithNibName:kNibNameMovieCell bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:kNibNameMovieCell];
    
}

-(void)setupAddButton {
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonPressed:)];
    
    self.navigationItem.rightBarButtonItem = addButton;
    
}

-(void)callAddMovieViewController {
    
    AddMovieViewController *addMovieViewController = [AddMovieViewController new];
    [self.navigationController pushViewController:addMovieViewController animated:YES];
    
}

#pragma mark - Lazy Instances 

-(UICollectionView *)collectionView {
    
    if ( ! _collectionView ) {
        
        CGFloat x = 0.0f;
        CGFloat y = 0.0f;
        CGFloat width = [DeviceInfo width];
        CGFloat heigh = [DeviceInfo height];
        
        UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake( x, y, width, heigh ) collectionViewLayout:layout];
        _collectionView.dataSource = self;
        _collectionView.delegate = self;
        _collectionView.backgroundColor = [UIColor blackColor];
        
    }
    
    return _collectionView;
    
}

-(MoviesConductor *)moviesConductor {
    
    if ( ! _moviesConductor ) {
        
        _moviesConductor = [MoviesConductor new];
        _moviesConductor.delegateMoviesConductor = self;
        
    }
    
    return _moviesConductor;
    
}

@end
