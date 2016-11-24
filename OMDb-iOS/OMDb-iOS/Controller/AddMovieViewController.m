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

// Conductor
#import "AddMovieConductor.h"

@interface AddMovieViewController()

@property(nonatomic,strong) UITextField *tfMovieName;
@property(nonatomic,strong) UIButton *createButton;
@property(nonatomic,strong) AddMovieConductor *addMovieConductor;

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
        [self.view addSubview:self.createButton];
    }
    
}

#pragma mark - IBAction methods

-(IBAction)createButtonPressed:(id)sender {
    
    [self.addMovieConductor createMovie];
    
}

#pragma mark - Lazy Instances

-(UITextField *)tfMovieName {
    
    if ( ! _tfMovieName ) {
        
        CGFloat x = 13.0f;
        CGFloat height = 31.0f;
        CGFloat y = 64.0f + 34.0f;
        CGFloat width = [DeviceInfo width] - ( 2 * x );
        
        CGRect frame = CGRectMake( x, y, width, height );
        
        _tfMovieName = [[UITextField alloc] initWithFrame:frame];
        _tfMovieName.borderStyle = UITextBorderStyleNone;
        _tfMovieName.backgroundColor = [UIColor whiteColor];
        _tfMovieName.placeholder = @"Type the name of the movie";
        _tfMovieName.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0);
        
    }
    
    return _tfMovieName;
    
}

-(UIButton *)createButton {
    
    if ( ! _createButton ) {
        
        CGFloat y = self.tfMovieName.verticalSpace + 34.0f;
        CGFloat width = 88.0f;
        CGFloat height = 44.0f;
        CGFloat x = [DeviceInfo width]/2 - width/2;
        
        CGRect frame = CGRectMake( x, y, width, height );
        
        _createButton = [[UIButton alloc] initWithFrame:frame];
        [_createButton setTitle:@"Create" forState:UIControlStateNormal];
        _createButton.backgroundColor = [UIColor colorWithRed:251.0f/255.0f green:188.0f/255.0f blue:5.0f/255.0f alpha:1.0f];
        [_createButton setTitleColor:[UIColor colorWithRed:45.0f/255.0f green:40.0f/255.0f blue:34.0f/255.0f alpha:1.0f] forState:UIControlStateNormal];
        [_createButton addTarget:self action:@selector(createButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        _createButton.layer.cornerRadius = 5.0f;
        
    }
    
    return _createButton;
    
}

-(AddMovieConductor *)addMovieConductor {
    
    if ( ! _addMovieConductor ) {
        _addMovieConductor = [AddMovieConductor new];
    }
    return _addMovieConductor;
    
}

@end
