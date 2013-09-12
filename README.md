DeviceLocationManager
=====================

Simple ObjC NSObject to capsulize CLLocationManager

# Usage

// ViewController.m

```objc
#import "DeviceLocation.h"

DeviceLocation *deviceLocation = [[DeviceLocation alloc] init];
deviceLocation.delegate = self

- (void)userLocationDidUpdate:(CLLocation *)newLocation oldLocation:(CLLocation *)oldLocation
{
  // do things here <-	
}
```
