//
//  LandmarkTableViewController.m
//  LandmarksApp
//
//  Created by David P. Lopez on 11/7/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "LandmarkTableViewController.h"
#import "LandmarkTableViewCell.h"
#import "LandmarkDetailsViewController.h"
#import "Landmarks.h"

@interface LandmarkTableViewController ()
@property (nonatomic, strong) NSMutableArray *WeirdLandmarks;

@end

@implementation LandmarkTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //add a title to table view
    self.navigationItem.title = @"10 Weirdest Miami Landmarks";
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    Landmarks *sloth = [[Landmarks alloc]init];
    sloth.LMDetailName = @"The Science Museum Sloth";
    sloth.LMDetailYearBuilt = @"1960";
    sloth.LMDetailAddress = @"3280 S. Miami Ave., Miami, FL";
    sloth.LMDetailDescription = @"If you've driven up the northbound lanes of South Dixie Highway to the junction with I-95, you've undoubtedly seen this hulking fellow. Perhaps you've asked yourself: My God, what is that confused-looking creature? And why does he have such a peculiar grin? We can't explain the grin, but this 20-foot-tall concrete curiosity is a statue of the now-extinct giant land sloth, a huge, apparently silly-looking mammal that wandered the Earth, embracing invisible friends, until about 5,000 years ago. Presumably, they were just as lovably slow and goofy as the three-toed sloths of today. In a decision-making process that can be described only as unclear, the museum's powers that be decided the first sight to greet visitors upon their arrival to the planetarium for their annual field trip should be no less than an unsettling reproduction of a giant land sloth. Unfortunately, the big guy might not be long for this world, because the new Miami Science Museum will soon open at its new home in Museum Park, so be sure to give him a hug next time you pass by.";
    sloth.LMImage = [UIImage imageNamed:@"Landmarks/sloth.jpg"];
    
    Landmarks *torso = [[Landmarks alloc]init];
    torso.LMDetailName = @"Fernando Botero's \"Torso\"";
    torso.LMDetailYearBuilt = @"1992";
    torso.LMDetailAddress = @"301 Biscayne Blvd., Miami, FL";
    torso.LMDetailDescription = @"Botero is an unequivocal genius. His style is both playful and powerful, and to this day, some of the artist's works carry in their message a degree of gravity and social commentary that other artists often spend their whole lives pursuing. \n \n That said, this piece seems odd in the context of its placement. Dropped nearly on the sidewalk along Biscayne Boulevard, the colossal bronze body with no legs, arms, or head towers over passersby amid the palm trees and bustling streets of downtown, subtle as a great black monolith. It is undoubtedly a beautiful work of art and a fine jab at all the self-centered morons who spend hours flexing in front of the mirror with their iPhone, trying to capture the perfect picture of their newly embellished tan line. Social commentary ahead of its time. But still, pretty weird in its current context.";
    torso.LMImage = [UIImage imageNamed:@"Landmarks/torso.jpg"];
    
    Landmarks *dinosaurOf79St = [[Landmarks alloc]init];
    dinosaurOf79St.LMDetailName = @"The Dinosaur of 79 St";
    dinosaurOf79St.LMDetailYearBuilt = @"unknown";
    dinosaurOf79St.LMDetailAddress = @"7915 NW 5 Ct., Miami, FL";
    dinosaurOf79St.LMDetailDescription = @"There are a great many things that seem more than slightly off along the long artery that is 79th Street, which is constantly pumping weirdness from Hialeah Park to its eventual termination point at the corner of Collins Avenue and 71st Street. What are these clay faces being molded, removed, and replaced along light poles? What strange course of events led to there being more used car lots on this one road than in most small cities? Who is CRAZY EDDY and why does he want to sell me his furniture so desperately? \n \n Just as curious as any other point of strangeness, but sitting a bit higher, is the dinosaur that rests atop the Entourage bus lot just east of I-95. This lot, like so many of its neighboring establishments, used to be the site of a used-car dealership. The dinosaur, probably a based-out, skinnier cousin of Tyrannosaurus rex, was its homely mascot. Presumably made of papier-mâche and an assortment of old mufflers and dead iguanas, it's certainly effective at drawing the attention from drivers as they cruise, dumbfounded, into the rear end of the Toyota Camry ahead of them. Interestingly enough, when the car salesmen closed up shop, the new tenants didn't seem to mind the Jurassic ambassador, and thus the dinosaur remains at the top of the food chain among the unsettling and amusing predators of 79th.";
    dinosaurOf79St.LMImage = [UIImage imageNamed:@"Landmarks/dino.jpg"];
    
    Landmarks *coppertoneGirl = [[Landmarks alloc]init];
    coppertoneGirl.LMDetailName = @"The Coppertone Girl";
    coppertoneGirl.LMDetailYearBuilt = @"1958";
    coppertoneGirl.LMDetailAddress = @"7310 Biscayne Blvd., Miami, FL";
    coppertoneGirl.LMDetailDescription = @"I love the Coppertone girl. She's a wonderful piece of nostalgia, a colorful throwback to the days of Pan Am and Jackie Gleason, and a bare-assed, ageless visage from old Miami. The fact that the 30-foot-tall advertisement has stood the test of time since 1958 is amazing and should bring a smile to your face anytime you see her and the feisty little dog nipping at her bikini bottom. \n \n But she is undoubtedly out of her time. The weird here is again contextual -- a giant image of a bemused little blond white girl in pigtails is more than a little out of place standing between the Chop Shop and the old Boulevard Club strip joint. The sign sits atop a building that now houses a pole-dancing gym. But bless that sprawling plastic child's inanimate soul -- she carries that stride on in good humor in spite of it all, day after day.";
    coppertoneGirl.LMImage = [UIImage imageNamed:@"Landmarks/cToneGirl.jpg"];
    
    Landmarks *brittoBallPalm = [[Landmarks alloc]init];
    brittoBallPalm.LMDetailName = @"Britto's Beach Ball & Palm Trees";
    brittoBallPalm.LMDetailYearBuilt = @"2009";
    brittoBallPalm.LMDetailAddress = @"1131 5 St., Miami Beach, FL";
    brittoBallPalm.LMDetailDescription = @"Oh, Romero, what a vomitous body of work he has amassed. Britto's so-called work amounts to hundreds of cookie-cutter shapes drawn by a 12-year-old idiot and painted by a fountain of candy Crayola jissom. Many of these pieces can be found around Miami, but among the most obscenely trite is the Beach Ball and Palm Trees statue in front of the Fifth and Alton shopping center. \n \n This gargantuan piece of trash greets motorists as they exit the MacArthur Causeway and enter South Beach, much the same way as cancer greets visitors upon entering the cooling baths of fissile waste at a nuclear power plant. The massive structure is not only heinously ugly but also impressively unoriginal, even for the likes of a man of Britto's inimitably stopping stature. On this prime corner, which ought to have been covered with a new and stimulating work of art, sits instead the most played-out piece of Miami Beach imagery conceivable. This landmark (for lack of a better word) is weird for a number of reasons, not the least of which is the simple yet puzzling fact that it hasn't been razed.";
    brittoBallPalm.LMImage = [UIImage imageNamed:@"Landmarks/brittoBPalms.jpg"];
    
    Landmarks *coralCastle = [[Landmarks alloc]init];
    coralCastle.LMDetailName = @"Coral Castle";
    coralCastle.LMDetailYearBuilt = @"1920";
    coralCastle.LMDetailAddress = @"28655 S. Dixie Hwy., Homestead, FL";
    coralCastle.LMDetailDescription = @"Nothing makes for a weird and enduring landmark like a weird, romantic old Latvian. Edward Leedskalnin was the man who built Coral Castle, originally known as Rock Gate Park, from 1,100 tons of coral oolite and limestone over the course of three decades -- and created his very own mythos in the process. Coral Castle, which has everything from stone furniture to rock representations of the cosmos, is surrounded by folklore: that it was conceived after he was rejected by a lover at the age of 16 (which inspired Billy Idol to film a music video there in the '80s); that he was able to create it single-handedly because he, as he allegedly put it, 'learned the secrets of the pyramids''; and that it was built with the use of 'reverse magnetism' and a 'perpetual motion holder,' among a range of other tales. What is certain is that Leedskalnin accomplished something in the early decades of the 20th Century that stood unflinchingly and undisturbed through every hurricane season since -- including a direct hit from Andrew -- and for which, to date, there is no explanation. Secrets of the pyramids indeed.";
    coralCastle.LMImage = [UIImage imageNamed:@"Landmarks/CoralCastle.jpg"];
    
    Landmarks *chevyOnBuilding = [[Landmarks alloc]init];
    chevyOnBuilding.LMDetailName = @"Chevy Caprice on Building Facade";
    chevyOnBuilding.LMDetailYearBuilt = @"1990";
    chevyOnBuilding.LMDetailAddress = @"3801 Biscayne Blvd., Miami, FL";
    chevyOnBuilding.LMDetailDescription = @"When the Miami-based company Propmasters was commissioned to install a Miami-Dade Police cruiser, light bar and all, for the opening of the Miami Police Museum on Biscayne Boulevard and NE 38th Street, they soundly completed the task. So soundly in fact, that today, many years since the museum's closing, the Caprice still hangs firmly on the wall, having held a constant 90-degree orientation that has set it apart from every other car in Miami (outside of mystical drivers of Hialeah). The building it nests upon is now a medical supply office affiliated with Jackson Memorial Hopsital, and the former squad car has shed its stripes, lights, and police regalia. In fact, it appears to be sprouting foliage from the door handles, which we can only assume will continue to extend over the next 60 years and envelop the east side of the 3800 block.";
    chevyOnBuilding.LMImage = [UIImage imageNamed:@"Landmarks/chevy.jpg"];
    
    Landmarks *dancer = [[Landmarks alloc]init];
    dancer.LMDetailName = @"The Dancing Silhouette";
    dancer.LMDetailYearBuilt = @"2012";
    dancer.LMDetailAddress = @"100 Chopin Plaza., Miami, FL";
    dancer.LMDetailDescription = @"It's not easy for a building to stand out in downtown, what with the geometrically bevelled splendor of the Southeast Financial Building and the gracefully ascending curvature of the Miami Tower. It takes something fairly radical to catch one's eye amid that splendid skyline. What kind of radical? Well, if you were to light two sides of your building with 19 stories' worth of LEDs and use them to produce the image of a vivacious, gyrating dancer chick on a nightly basis, that might just about do it. \n \n It just so happens that's what the InterContinental Miami did in its recent $30 million renovation, a move that would incontrovertibly sully Miami's image as a city of purity and dignity, tainting its good name with sex and the degradation of women. Next, people will start to think we do drugs down here.";
    dancer.LMImage = [UIImage imageNamed:@"Landmarks/dancer.jpg"];
    
    Landmarks *amertec = [[Landmarks alloc]init];
    amertec.LMDetailName = @"Amertec Building";
    amertec.LMDetailYearBuilt = @"1967";
    amertec.LMDetailAddress = @"149 W 21 St., Hialeah, FL";
    amertec.LMDetailDescription = @"Easily one of the weirdest-looking buildings in the city, the abandoned Amertec Building is all the weirder for how unbelievably inconspicuous it is. Obviously, if you're heading west on 21st and you're looking at the plain, square warehouses on your right, you'll notice this incongruous, undulating organism of a building. But if you're just driving along, minding your own wheel and listening to WLRN or Radio Mambí, you'd be shocked how readily you can pass the place and never know it's there. \n \n But once you do realize it's there and you have the time to stop and take it in for all its fanciful colors and curvilinear progressions of sprayed concrete, you're left with the question that looms in everyone's mind when they come across this building: How on Earth did this spring up in Hialeah, of all places?";
    amertec.LMImage = [UIImage imageNamed:@"Landmarks/hialeah.jpg"];
    
    Landmarks *fins = [[Landmarks alloc]init];
    fins.LMDetailName = @"Submarine Fins at Pelican Harbor";
    fins.LMDetailYearBuilt = @"2002";
    fins.LMDetailAddress = @"1275 NE 79 St., Miami Beach, FL";
    fins.LMDetailDescription = @"This holds the number one spot for a number of reasons, one of the most significant being how vividly most people who lived in the Miami area at the time remember the appearance of the then-mysterious fins. Suddenly, the great gray metal masses were scattered about the grass of Pelican Harbor in the middle of the JFK Causeway, and nobody knew what the hell they were. Perhaps these were an alien means of communication -- Miami's crop circles, as it were. Or maybe somebody had decided to make a bunch of sundials without putting a great deal of thought into the angles or arrangement. \n \n When Miamians began to learn that the fins had come from decommissioned submarines and were part of a Cold War memorial, the confusion merely shifted. Had there been many submarines in Biscayne Bay? Had Seven-One been a heated staging ground for U.S.-Ruso posturing back in the day? Eventually, the fins simply became an awkward part of the landscape, like a bunch of scattered asymmetrical headstones, collecting sun and reminding (as if there were any need for reminding) everyone on their way to the beach or to the mainland just how much weird is a part of the norm in this city.";
    fins.LMImage = [UIImage imageNamed:@"Landmarks/fins.jpg"];
    
    //add landmarks to array
    self.WeirdLandmarks = [NSMutableArray arrayWithObjects:sloth, torso, dinosaurOf79St, coppertoneGirl, brittoBallPalm, coralCastle, chevyOnBuilding, dancer, amertec, fins, nil];
    

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

    return [self.WeirdLandmarks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"LandmarkInfoCell";
    
    LandmarkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    //see 56:00 in lecture video for reference to code example from last lecture
    cell.LMCellName.font = [UIFont boldSystemFontOfSize:15];
    cell.LMCellLocation.font = [UIFont italicSystemFontOfSize:12];
    
    //populate cells with data
    Landmarks *item = [self.WeirdLandmarks objectAtIndex:indexPath.row];
    
    cell.LMCellName.text = item.LMDetailName;
    cell.LMCellLocation.text = item.LMDetailAddress;
    cell.LMImageView.image = item.LMImage;
    
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
    // Pass the selected object to the new view controller.
    if([[segue identifier] isEqualToString:@"showDetail"])
    {
        LandmarkDetailsViewController *destination = [segue destinationViewController];
        
        //get the user selection
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        Landmarks *aLandmark = [self.WeirdLandmarks objectAtIndex:myIndexPath.row];
        
        //pass selected object to view controller
        destination.myLM = aLandmark;
    }
    
}


@end
