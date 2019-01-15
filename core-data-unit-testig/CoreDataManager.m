//
//  CoreDataManager.m
//  core-data-unit-testig
//
//  Created by Hellen Soloviy on 1/15/19.
//  Copyright © 2019 HellySolovii. All rights reserved.
//

#import "CoreDataManager.h"
#import <CoreData/CoreData.h>
#import "AppDelegate.h"

@interface CoreDataManager()

@property (strong, nonatomic) NSPersistentContainer* container;
@property (strong, nonatomic) NSManagedObjectContext* backgroundContext;


@end

@implementation CoreDataManager


//Persistant storage in tests should be created with NSInMemoryStoreType container type 
- (instancetype)initWith {
    AppDelegate *appDelegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
    self.container = appDelegate.persistentContainer;
    self.container.viewContext.automaticallyMergesChangesFromParent = YES;
    
    self.backgroundContext = self.container.newBackgroundContext;
    return self;
}

- (void) save {
    if ([self.backgroundContext hasChanges]) {
        @try {
            [_backgroundContext save: nil];
        } @catch  (NSException *exception) {
            NSLog(@"error");
        }
    }
}

@end
