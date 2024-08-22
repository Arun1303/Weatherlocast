//
//  Weatherlocast.h
//  Weatherlocast
//
//  Created by Arun V on 21/08/24.
//

#import <Foundation/Foundation.h>

//! Project version number for Weatherlocast.
FOUNDATION_EXPORT double WeatherlocastVersionNumber;

//! Project version string for Weatherlocast.
FOUNDATION_EXPORT const unsigned char WeatherlocastVersionString[];

// In this header, you should import all the public headers of your framework using statements like
#import <Weatherlocast/WeatherDetails.h>

@interface WeatherDetails : NSObject

// Public method to fetch weather details for a city
- (void)fetchWeatherForCity:(NSString *)cityName completion:(void (^)(NSDictionary *weatherData, NSError *error))completion;

@end

