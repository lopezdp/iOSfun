//
//  StatesTableViewController.m
//  USStatesAndFlags
//
//  Created by David P. Lopez on 11/4/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "StatesTableViewController.h"
#import "StateTableViewCell.h"
#import "States.h"
#import "StateDetailViewController.h"

@interface StatesTableViewController ()
@property (nonatomic, strong) NSMutableArray *USStates;


@end

@implementation StatesTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    States *alabama = [[States alloc]init];
    alabama.name = @"Alabama";
    alabama.capital = @"Montgomery";
    alabama.motto = @"We dare defend our rights.";
    alabama.flag = [UIImage imageNamed:@"Flags/alabama.png"];
    
    States *georgia = [[States alloc]init];
    georgia.name = @"Georgia";
    georgia.capital = @"Atlanta";
    georgia.motto = @"Wisdom, Justice, Moderation.";
    georgia.flag = [UIImage imageNamed:@"Flags/georgia.png"];
    
    States *florida = [[States alloc]init];
    florida.name = @"Florida";
    florida.capital = @"Tallahassee";
    florida.motto = @"In God We Trust.";
    florida.flag = [UIImage imageNamed:@"Flags/florida.png"];
    
    States *ny = [[States alloc]init];
    ny.name = @"New York";
    ny.capital = @"Albany";
    ny.motto = @"Ever Upward.";
    ny.flag = [UIImage imageNamed:@"Flags/NY.jpg"];
    
    States *cali = [[States alloc]init];
    cali.name = @"California";
    cali.capital = @"Sacramento";
    cali.motto = @"Eureka!";
    cali.flag = [UIImage imageNamed:@"Flags/Cali.jpg"];
    
    //add the states to array
    self.USStates = [NSMutableArray arrayWithObjects:alabama, georgia, florida, ny, cali, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.USStates count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = @"StateInfoCell";
    StateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    //see 56:00 in lecture video for reference to code example from last lecture
    cell.stateName.font = [UIFont boldSystemFontOfSize:14];
    cell.stateMotto.font = [UIFont italicSystemFontOfSize:12];
    
    //populate cells with data
    States *item = [self.USStates objectAtIndex:indexPath.row];
    cell.stateName.text = item.name;
    cell.stateMotto.text = item.motto;
    cell.flagImage.image = item.flag;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    if([[segue identifier] isEqualToString:@"showDetail"])
    {
        StateDetailViewController *destination = [segue destinationViewController];
        
        //get the selection
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        
        States *aState = [self.USStates objectAtIndex:myIndexPath.row];
        
        // Pass the selected object to the new view controller.
        destination.myState = aState;  
    }
    
    
    
}





















@end
