//
//  ViewController.m
//  NoWaste
//
//  Created by Jay Reynolds on 10/17/15.
//  Copyright © 2015 com.reynoldsJay. All rights reserved.
//

#import "Inventory.h"
#import "ServerAPI.h"

@interface Inventory()

@end

@implementation Inventory {
    ServerAPI* server;
    NSMutableDictionary* dict;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    server = [ServerAPI getInstance];
    dict = server.inventory;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [exampleItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    UILabel *cellLabel = (UILabel *)[cell viewWithTag:10];
    cellLabel.text = exampleItems[indexPath.row];
    
    
    
    
    
    return cell;
}


@end
