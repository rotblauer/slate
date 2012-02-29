//
//  WindowSnapshot.m
//  Slate
//
//  Created by Jigish Patel on 2/28/12.
//  Copyright 2012 Jigish Patel. All rights reserved.
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see http://www.gnu.org/licenses

#import "WindowSnapshot.h"
#import "Constants.h"

@implementation WindowSnapshot

@synthesize appName, title, topLeft, size;

- (id)init {
  self = [super init];
  return self;
}

- (id)initWithAppName:(NSString *)theAppName title:(NSString *)theTitle topLeft:(NSPoint)theTopLeft size:(NSSize)theSize {
  self = [self init];
  if (self) {
    [self setAppName:theAppName];
    [self setTitle:theTitle];
    [self setTopLeft:theTopLeft];
    [self setSize:theSize];
  }
  return self;
}

- (NSDictionary *)toDictionary {
  return [NSDictionary dictionaryWithObjectsAndKeys:
          appName, APP_NAME,
          title, TITLE,
          [NSNumber numberWithFloat:topLeft.x], X,
          [NSNumber numberWithFloat:topLeft.y], Y,
          [NSNumber numberWithFloat:size.width], WIDTH,
          [NSNumber numberWithFloat:size.height], HEIGHT, nil];
}

- (void)dealloc {
  [self setAppName:nil];
  [self setTitle:nil];
  [super dealloc];
}

@end
