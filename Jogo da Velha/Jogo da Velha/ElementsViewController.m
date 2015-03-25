//
//  ElementsViewController.m
//  Jogo da Velha
//
//  Created by Bira on 23/03/15.
//  Copyright (c) 2015 Senac. All rights reserved.
//

#import "ElementsViewController.h"
#import "ElementsView.h"

//@interface ElementsViewController ()
//
//@end

@interface ElementsViewController ()
{
    int matriz[3][3];
}


@property (nonatomic, weak) IBOutlet UIImageView *playerActive;
@property (nonatomic, weak) IBOutlet UIImageView *playerX;
@property (nonatomic, weak) IBOutlet UIImageView *playerO;
@property (nonatomic) int currentPlayerIndex;

@property (nonatomic, copy) NSArray *player;



@end

@implementation ElementsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Create a view
    ElementsView *backgroundView = [[ElementsView alloc] init];
    
=======
    self.view = backgroundView;
>>>>>>> Stashed changes
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
=======

>>>>>>> Stashed changes


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
    if (matriz[0][0] == 0){
        matriz[0][0] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
    }
    
    
    
    
    [self verMatriz];
    
    
}


- (IBAction)area1:(id)sender
{
    if (matriz[0][1] == 0){
        matriz[0][1] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
    }
    
    
    
    
    
}
- (IBAction)area2:(id)sender
{
    if (matriz[0][2] == 0){
        matriz[0][2] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
    }
    
    
    
    
}
- (IBAction)area3:(id)sender
{
    if (matriz[1][0] == 0){
        matriz[1][0] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
        
    }
    
}
- (IBAction)area4:(id)sender
{
    if (matriz[1][1] == 0){
        matriz[1][1] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
    }
    
}
- (IBAction)area5:(id)sender
{
    if (matriz[1][2] == 0){
        matriz[1][2] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
    }
    
}
- (IBAction)area6:(id)sender
{
    
    if (matriz[2][0] == 0){
        matriz[2][0] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
    }
    /*
    if (_currentPlayerIndex == 1){
        matriz[2][0] = 1;
    } else {
        matriz[2][0] = 2;
    }
     */
    
}
- (IBAction)area7:(id)sender
{
    if (matriz[2][1] == 0){
        matriz[2][1] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
    }
    
    /*
    if (_currentPlayerIndex == 1){
        matriz[2][1] = 1;
    } else {
        matriz[2][1] = 2;
    }
     */
    
}
- (IBAction)area8:(id)sender
{
    if (matriz[2][2] == 0){
        matriz[2][2] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
    }
    
    
    
}

- (void) verMatriz
{
    for (int i = 0; i < 3; i++){
        NSLog(@"%d %d %d ", matriz[i][0], matriz[i][1], matriz[i][2]);
        
        
        
    }
    NSLog(@"Fim Matriz");
    
}

- (int) mudarJogador:(int) jogadorAtual
{

    
    jogadorAtual = jogadorAtual == 1  ? 2 : 1;
    
    
    return jogadorAtual;
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
