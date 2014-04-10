//
//  Q7MasterViewController.h
//  Quiz7
//
//  Created by Arek Bolton on 4/9/14.
//  Copyright (c) 2014 Arek Bolton. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
#import <CoreData/CoreData.h>

@interface Q7MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
