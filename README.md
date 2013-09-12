DeviceLocationManager
=====================

Simple ObjC NSObject to capsulize CLLocationManager

# Usage

// ViewController.m

#import "DeviceLocation.h"

DeviceLocation *deviceLocation = [[DeviceLocation alloc] init];
deviceLocation.delegate = self

```objc
- (void)userLocationDidUpdate:(CLLocation *)newLocation oldLocation:(CLLocation *)oldLocation
{
  // do things here <-	
}
```
