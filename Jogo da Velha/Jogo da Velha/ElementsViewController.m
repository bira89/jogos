//
//  ElementsViewController.m
//  Jogo da Velha
//
//  Created by Bira on 23/03/15.
//  Copyright (c) 2015 Senac. All rights reserved.
//

#import "ElementsViewController.h"
//#import "ElementsView.h"

//@interface ElementsViewController ()
//
//@end

@interface ElementsViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *playerActive;
@property (nonatomic) IBOutlet UIImageView *playerX;
@property (nonatomic) IBOutlet UIImageView *playerO;
@property (nonatomic) IBOutlet UIImageView *cel00;
@property (nonatomic) IBOutlet UIImageView *cel01;

@property (nonatomic) int currentPlayerIndex;

@property (nonatomic, copy) NSArray *player;


@end

@implementation ElementsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.playerX = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
        
        UIImage *xImage = [UIImage imageNamed:@"imageX.png"];
//        UIImage *oImage = [UIImage imageNamed:@"imageO.png"];
        
        [self.playerX setImage:xImage];
        
        
//        self.playerO = [[UIImageView alloc]initWithImage:oImage];
        
//        [self.view addSubView: xImage];
        
        self.currentPlayerIndex = 0;
//        self.cel00 = self.playerX;
        NSLog(@"player %d esta ativo.", self.currentPlayerIndex);
        self.currentPlayerIndex = 1;
//        self.cel00 = [[[UIImageView alloc]init] initWithImage:xImage];

    }
    // Return the address of the new object
    return self;
}

- (IBAction)mod00:(id)sender
{
    
    if(self.currentPlayerIndex==1){
        self.currentPlayerIndex = 0;
//        [self.cel00 setImage:];
        NSLog(@"player %d esta ativo.", self.currentPlayerIndex);
        
    }else {
        self.currentPlayerIndex = 1;
        NSLog(@"player %d esta ativo.", self.currentPlayerIndex);
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
