//
//  SettingsController.m
//  g0blin
//
//  Created by Sticktron on 2017-12-30.
//  Copyright © 2017 Sticktron. All rights reserved.
//

#import "SettingsController.h"

@interface SettingsController ()
@property (weak, nonatomic) IBOutlet UIButton *redditButton;
@property (weak, nonatomic) IBOutlet UIButton *discordButton;
@property (weak, nonatomic) IBOutlet UIButton *issuesButton;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@end

@implementation SettingsController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.redditButton.layer.cornerRadius = 16;
    self.discordButton.layer.cornerRadius = 16;
    self.issuesButton.layer.cornerRadius = 16;
    
    self.scrollView.contentSize = CGSizeMake(self.scrollView.bounds.size.width, self.contentView.frame.size.height);

    [self.reinstallBootstrapSwitch setOn:NO animated:NO];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.scrollView.contentOffset = CGPointMake(0, 0);
}

- (IBAction)goIssues:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"http://github.com/sticktron/g0blin/issues"];
    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
}

- (IBAction)goReddit:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"http://reddit.com/r/jailbreak"];
    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
}

- (IBAction)goDiscord:(UIButton *)sender {
    NSURL *url = [NSURL URLWithString:@"http://discord.gg/RZqpUfR"];
    [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
