//
//  AddMovieViewController.m
//  OMDb-iOS
//
//  Created by Jhonathan Wyterlin on 14/07/16.
//  Copyright © 2016 Jhonathan Wyterlin. All rights reserved.
//

#import "AddMovieViewController.h"

// Category
#import "UIView+Helper.h"

@interface AddMovieViewController()

@property(nonatomic,strong) UILabel *lbTypeMovieName;
@property(nonatomic,strong) UITextField *tfMovieName;

@end

@implementation AddMovieViewController

#pragma mark - View Lifecycle

-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    self.navigationItem.title = @"Create a new movie";
    
    if ( ! [self.tfMovieName isDescendantOfView:self.view] ) {
        [self.view addSubview:self.tfMovieName];
        [self.view addSubview:self.lbTypeMovieName];
    }
    
}

#pragma mark - Lazy Instances

-(UITextField *)tfMovieName {
    
    if ( ! _tfMovieName ) {
        
        CGFloat x = 13.0f;
        CGFloat height = 21.0f;
        CGFloat y = [DeviceInfo height]/2 - height/2;
        CGFloat width = [DeviceInfo width] - ( 2 * x );
        
        CGRect frame = CGRectMake( x, y, width, height );
        
        _tfMovieName = [[UITextField alloc] initWithFrame:frame];
        _tfMovieName.borderStyle = UITextBorderStyleRoundedRect;
        _tfMovieName.backgroundColor = [UIColor whiteColor];
        
    }
    
    return _tfMovieName;
    
}

-(UILabel *)lbTypeMovieName {
    
    if ( ! _lbTypeMovieName ) {
        
        CGFloat x = 13.0f;
        CGFloat height = 21.0f;
        CGFloat y = self.tfMovieName.y - height - 8.0f;
        CGFloat width = [DeviceInfo width] - ( 2 * x );
        
        CGRect frame = CGRectMake( x, y, width, height );
        
        _lbTypeMovieName = [[UILabel alloc] initWithFrame:frame];
        _lbTypeMovieName.text = @"Type the name of the movie";
        _lbTypeMovieName.textAlignment = NSTextAlignmentCenter;
        _lbTypeMovieName.textColor = [UIColor whiteColor];
        
    }
    
    return _lbTypeMovieName;
    
}

@end
