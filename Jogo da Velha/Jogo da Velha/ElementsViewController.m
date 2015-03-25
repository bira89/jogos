//
//  ElementsViewController.m
//  Jogo da Velha
//
//  Created by Bira on 23/03/15.
//  Copyright (c) 2015 Senac. All rights reserved.
//

#import "ElementsViewController.h"

//@interface ElementsViewController ()
//
//@end

@interface ElementsViewController ()
{
    int matriz[3][3];
}


//@property (nonatomic, weak) IBOutlet UIImageView *playerActive;
@property (nonatomic, weak) IBOutlet UIImageView *playerX;
@property (nonatomic, weak) IBOutlet UIImageView *playerO;
@property (nonatomic) int currentPlayerIndex;

@property (nonatomic, copy) NSArray *player;
@property (nonatomic, copy) NSArray *imageButtons;




@end

@implementation ElementsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *newX = [UIImage imageNamed:@"imageX.png"];
    UIImage *newO = [UIImage imageNamed:@"imageO.png"];
    UIImage *new2 = [UIImage imageNamed:@"imageX.png"];
    self.imageButtons = @[new2, newO, newX];
    [self.playerX setImage:newX];
    [self.playerO setImage:newO];

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
    UIButton *btn = (UIButton *)sender;
    
    
    if (matriz[0][0] == 0){
        matriz[0][0] = _currentPlayerIndex == 1 ? 1 : 2;
//
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
        [btn setImage:[self.imageButtons objectAtIndex:_currentPlayerIndex] forState:UIControlStateNormal];

    }
    
    
    
    
    [self verMatriz];
    
    
}


- (IBAction)area1:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (matriz[0][1] == 0){
        matriz[0][1] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
        [btn setImage:[self.imageButtons objectAtIndex:_currentPlayerIndex] forState:UIControlStateNormal];
    }
    
    
    
    
    
}
- (IBAction)area2:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (matriz[0][2] == 0){
        matriz[0][2] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
        [btn setImage:[self.imageButtons objectAtIndex:_currentPlayerIndex] forState:UIControlStateNormal];

    }
    
    
    
    
}
- (IBAction)area3:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (matriz[1][0] == 0){
        matriz[1][0] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
        [btn setImage:[self.imageButtons objectAtIndex:_currentPlayerIndex] forState:UIControlStateNormal];

        
    }
    
}
- (IBAction)area4:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (matriz[1][1] == 0){
        matriz[1][1] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
        [btn setImage:[self.imageButtons objectAtIndex:_currentPlayerIndex] forState:UIControlStateNormal];

    }
    
}
- (IBAction)area5:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (matriz[1][2] == 0){
        matriz[1][2] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
        [btn setImage:[self.imageButtons objectAtIndex:_currentPlayerIndex] forState:UIControlStateNormal];

    }
    
}
- (IBAction)area6:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    if (matriz[2][0] == 0){
        matriz[2][0] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
        [btn setImage:[self.imageButtons objectAtIndex:_currentPlayerIndex] forState:UIControlStateNormal];

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
    UIButton *btn = (UIButton *)sender;
    if (matriz[2][1] == 0){
        matriz[2][1] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
        [btn setImage:[self.imageButtons objectAtIndex:_currentPlayerIndex] forState:UIControlStateNormal];

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
    UIButton *btn = (UIButton *)sender;
    if (matriz[2][2] == 0){
        matriz[2][2] = _currentPlayerIndex == 1 ? 1 : 2;
        _currentPlayerIndex = [self mudarJogador:_currentPlayerIndex];
        [btn setImage:[self.imageButtons objectAtIndex:_currentPlayerIndex] forState:UIControlStateNormal];

    }
    
    
    
}

- (void) verMatriz
{
    for (int i = 0; i < 3; i++){
        NSLog(@"%d %d %d ", matriz[i][0], matriz[i][1], matriz[i][2]);
        
        
        
    }
    NSLog(@"Fim Matriz");
    
}

- (void) verGanhador
{
    
    for (int i=0; i<3; i++) {
        for ( int j = 0; j < 3; j++){
            matriz[i][j] = 0;
        }
    }
    
}

- (int) mudarJogador:(int) jogadorAtual
{

    
    jogadorAtual = jogadorAtual == 1  ? 2 : 1;
//    if (jogadorAtual==1) {
//            Mudar o player ativo - fazer codigo
//    }
    
    
    return jogadorAtual;
}




@end
