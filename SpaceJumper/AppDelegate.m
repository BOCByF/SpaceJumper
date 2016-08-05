//
//  AppDelegate.m
//  SpaceJumper
//
//  Created by Shelton Han on 5/08/2016.
//  Copyright © 2016 BOC. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@property (strong, nonatomic) NSStatusItem *statusItem;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    self.statusItem.image = [NSImage imageNamed:@"SpaceJumper"];
    self.statusItem.highlightMode = NO;
    [self.statusItem setAction:@selector(itemClicked:)];
    
}

- (void)itemClicked:(id)sender {
    NSEvent *event = [NSApp currentEvent];
    if([event modifierFlags] & NSControlKeyMask) {
        [[NSApplication sharedApplication] terminate:self];
        return;
    }
    // Open mission control
    system(@"open -a \"Mission Control\"".UTF8String);
    
}

@end
