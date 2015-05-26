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

@property (nonatomic, strong) UIButton *insertCar;
@property (nonatomic, strong) UIButton *editCar;
@property (nonatomic, strong) UIView *footerView;
@property (nonatomic, strong) NSArray *favoriteCars;

@end

@implementation ViewController




- (instancetype) init {
    self = [super init];
    
    if(self) {
        
        self.favoriteCars = @[@"Lexus", @"Toyata", @"Mercedes", @"BMW", @"Audi"];
        self.insertCar = [UIButton buttonWithType:UIButtonTypeContactAdd];
        self.editCar = [UIButton buttonWithType:UIButtonTypeInfoDark];
        
        self.footerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 40)];
        [self.footerView addSubview:self.insertCar];
        [self.footerView addSubview:self.editCar];
        self.tableView.tableFooterView  = self.footerView;
        
    }
    
    
    
    return self;
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
