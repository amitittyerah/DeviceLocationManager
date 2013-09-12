//
//  DeviceLocation.m
//

#import "DeviceLocation.h"

@implementation DeviceLocation

@synthesize userLocation;
@synthesize geocoder_;
@synthesize placemark;
@synthesize locationManager;
@synthesize delegate;

static DeviceLocation *sharedInstance = nil;

-(id)init
{
    self = [super init];
    if(self) {
        locationManager = [[CLLocationManager alloc] init];
        
        geocoder_ = [[CLGeocoder alloc] init];
        locationManager.delegate = self;
        locationManager.distanceFilter = kCLDistanceFilterNone;
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
        
        [locationManager startUpdatingLocation];
        
        dispatch_queue_t locationQueue = dispatch_queue_create("User Location",NULL);
        dispatch_async(locationQueue, ^{
            
            dispatch_async(dispatch_get_main_queue(), ^{
                
            });
        });
        
    }
    
    return self;
}


-(CLLocation *)getDeviceLocation {
    return userLocation;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation {
    
    userLocation = newLocation;
    [self userLocationDidUpdate:newLocation oldLocation:oldLocation];
    
}

- (void)userLocationDidUpdate:(CLLocation *)newLocation oldLocation:(CLLocation *)oldLocation
{
    [[self delegate] userLocationDidUpdate:newLocation oldLocation:oldLocation];
}


@end
