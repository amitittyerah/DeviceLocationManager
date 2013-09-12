//
//  DeviceLocation.h
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@protocol DeviceLocationDelegate <NSObject>
@required
- (void) userLocationDidUpdate: (CLLocation*)newLocation oldLocation:(CLLocation *)oldLocation;
@end

@interface DeviceLocation : NSObject <CLLocationManagerDelegate>
{
    
}

@property (nonatomic,retain) CLGeocoder *geocoder_;
@property (nonatomic,retain) CLPlacemark *placemark;
@property (nonatomic,retain) CLLocationManager *locationManager;
@property (nonatomic,retain) CLLocation *userLocation;
@property (retain) id delegate;


@end
