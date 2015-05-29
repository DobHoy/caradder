//
//  ViewController.m
//  TableViewAdder
//
//  Created by Srikanth Narayanamohan on 26/05/2015.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL _isInsertingNewCar;

}

@property (nonatomic, strong) UIButton *insertCarButton;
@property (nonatomic, strong) UIButton *editCarButton;
@property (nonatomic, strong) UIView *footerView;
@property (nonatomic, strong) NSArray *favoriteCars;

@end

@implementation ViewController




- (instancetype) init {
    self = [super init];
    
    if(self) {
        
        self.favoriteCars = @[@"Lexus", @"Toyata", @"Mercedes", @"BMW", @"Audi"];
        self.insertCarButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
        self.editCarButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
        
        self.footerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
        //create a view that's the width of device.. independent of size?
        
        self.editCarButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        self.insertCarButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        
        [self.editCarButton setTag:1];
        [self.insertCarButton setTag:2];
        
        [self.editCarButton addTarget:self action:@selector(editCar:) forControlEvents:UIControlEventTouchUpInside];
        [self.insertCarButton addTarget:self action:@selector(insertCar:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.editCarButton setTitle:@"Edit" forState:UIControlStateNormal];
        [self.insertCarButton setTitle:@"Insert" forState:UIControlStateNormal];
        
        [self.editCarButton sizeToFit];
        [self.insertCarButton sizeToFit];
        
        self.editCarButton.translatesAutoresizingMaskIntoConstraints = NO;
        self.insertCarButton.translatesAutoresizingMaskIntoConstraints = NO;
        self.footerView.translatesAutoresizingMaskIntoConstraints = NO;
        
        //right way to add two buttons programmtically to the footer view of a table view?AL
        [self.footerView addSubview:self.insertCarButton];
        [self.footerView addSubview:self.editCarButton];
        
        NSDictionary *viewDictionary = NSDictionaryOfVariableBindings(_editCarButton, _insertCarButton, _footerView);
        [self.footerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_editCarButton]-(200)-[_insertCarButton]|" options:kNilOptions metrics:nil views:viewDictionary]];
        [self.footerView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_editCarButton]|" options:NSLayoutFormatAlignAllTop metrics:nil views:viewDictionary]];

        self.tableView.tableFooterView  = self.footerView;
        
    }
    
    
    
    return self;
}

- (void) editCar: (UIButton *) button {
    NSLog(@"edit button touched");
}

- (void) insertCar: (UIButton *) button {
    NSLog(@"insert button touched");
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
