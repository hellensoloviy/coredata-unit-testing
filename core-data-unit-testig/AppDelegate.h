//
//  AppDelegate.h
//  core-data-unit-testig
//
//  Created by Hellen Soloviy on 1/15/19.
//  Copyright © 2019 HellySolovii. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

