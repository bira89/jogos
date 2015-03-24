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
@property (nonatomic, weak) IBOutlet UIImageView *playerX;
@property (nonatomic, weak) IBOutlet UIImageView *playerO;
@property (nonatomic) int currentPlayerIndex;

@property (nonatomic, copy) NSArray *player;
@property (nonatomic) int matriz[3][3];


@end

@implementation ElementsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    ElementsView *backgroundView = [[ElementsView alloc] init];
    // Set it as *the* view of this view controller
//    self.view = backgroundView;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    for (int i = 0; i < 3; i++)
        for ( int j = 0; j < 3; j++)
            matriz[i][j] = 0;
    
    
    _currentPlayerIndex = 1;
        
    
             
    
    
    // Return the address of the new object
    return self;
}

- (IBAction)area0:(id)sender
{
    if (_currentPlayerIndex == 1){
        matriz[0][0] = 1;
    } else {
        matriz[0][0] = 2;
    }
    
    verMatriz();
}

- (IBAction)area1:(id)sender
{
    if (_currentPlayerIndex == 1){
        matriz[0][0] = 1;
    } else {
        matriz[0][0] = 2;
    }
    
    
}
- (IBAction)area2:(id)sender
{
    if (_currentPlayerIndex == 1){
        matriz[0][0] = 1;
    } else {
        matriz[0][0] = 2;
    }
    
    
}
- (IBAction)area3:(id)sender
{
    if (_currentPlayerIndex == 1){
        matriz[0][0] = 1;
    } else {
        matriz[0][0] = 2;
    }
    
    
}
- (IBAction)area4:(id)sender
{
    if (_currentPlayerIndex == 1){
        matriz[0][0] = 1;
    } else {
        matriz[0][0] = 2;
    }
    
    
}
- (IBAction)area5:(id)sender
{
    if (_currentPlayerIndex == 1){
        matriz[0][0] = 1;
    } else {
        matriz[0][0] = 2;
    }
    
    
}
- (IBAction)area6:(id)sender
{
    if (_currentPlayerIndex == 1){
        matriz[0][0] = 1;
    } else {
        matriz[0][0] = 2;
    }
    
    
}
- (IBAction)area7:(id)sender
{
    if (_currentPlayerIndex == 1){
        matriz[0][0] = 1;
    } else {
        matriz[0][0] = 2;
    }
    
    
}
- (IBAction)area8:(id)sender
{
    if (_currentPlayerIndex == 1){
        matriz[0][0] = 1;
    } else {
        matriz[0][0] = 2;
    }
    
    
}

- (void) verMatriz
{
    for (int i = 0; i < 3; i++){
        for( int j = 0; j < 3; j++)
            NSLog(@" %d ", matriz[i][j]);
        
        NSLog("/n");
    }
    
}

//- (IBAction)showPlayer:(id)sender
//{
//    
//    UIImage *xImage = [UIImage imageNamed:@"imageX.png"];
//    self.playerX = [[[UIImageView alloc]init] initWithImage:xImage];
////    NSMutableArray *views = [NSMutableArray array];
////
////    NSUInteger viewCount = 30;
////    NSUInteger index;
//}




//- (IBAction)showPlayer:(id)sender
//{
//    
////    NSMutableArray *views = [NSMutableArray array];
////    
////    NSUInteger viewCount = 30;
////    NSUInteger index;
//    
//    
//    for (index = 0; index < viewCount; index++) {
//        UIImageView *newView = [[[UIImageView alloc] initWithImage:anImage] autorelease];
//        
//        [newView setFrame:CGRectMake(index * width, 0.0, width, height);
//         
//         [[self someView] addSubview:newView];
//         [views addObject:newView];
//         }
//    
//    
//    
//    
//    
//    // Step to the next question
//    self.currentPlayerIndex++;
//    // Am I past the last question?
//    if (self.currentPlayerIndex == [self.questions count]) {
//        // Go back to the first question
//        self.currentPlayerIndex = 0;
//    }
//    // Get the string at that index in the questions array
//    NSString *question = self.questions[self.currentQuestionIndex];
//    // Display the string in the question label
//    self.questionLabel.text = question;
//    // Reset the answer label
//    self.answerLabel.text = @"???";
//    
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
