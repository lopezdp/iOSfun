//
//  ViewController.m
//  TableViewsICE1
//
//  Created by David P. Lopez on 10/29/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *dwarfs;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.dwarfs = @[@"Sleepy", @"Sneezy", @"Bashful", @"Happy", @"Doc", @"Grumpy", @"Dopey", @"Thorin", @"Dorin", @"Nori", @"Ori", @"Balin", @"Dwalin", @"Fili", @"Kili", @"Olin", @"Gloin", @"Bifur", @"Bofur", @"Bombur"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dwarfs count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //represent the type of cell
    static NSString *simpleTableIdentifier = @"SimpleTableIdentifier";
    
    //ask the table to reuse previously used cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = self.dwarfs[indexPath.row];
    
    //place image at all rows
    UIImage *image = [UIImage imageNamed:@"star"];
    cell.imageView.image = image;
    
    //highlight selected row with a different image
    UIImage *highlightedImage = [UIImage imageNamed:@"star2"];
    cell.imageView.highlightedImage = highlightedImage;
    
    //change font size
    cell.textLabel.font = [UIFont boldSystemFontOfSize:12];
    
    
    
    if(indexPath.row < 7)
        cell.detailTextLabel.text = @"Mr.Disney";
    else
        cell.detailTextLabel.text = @"Mr. Tolkien";
    
    return cell;
    
}

//group rows by 4
-(NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return indexPath.row % 4;
}


-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0)
    {
        return nil;
    }
    else
        return indexPath;
}


// change row height
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 5)
    {
        return 35;
    }else{
        return 55;
    }
}





-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *rowValue = self.dwarfs[indexPath.row];
    NSString *msg = [[NSString alloc]initWithFormat:@"You selected %@", rowValue];
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"Row selected: " message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Yes I did" style:UIAlertActionStyleDefault handler:nil];
    
    [controller addAction:cancelAction];
    [self presentViewController:controller animated:YES completion:nil];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


@end






















