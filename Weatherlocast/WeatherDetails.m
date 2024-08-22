//
//  WeatherDetails.m
//  Weatherlocast
//
//  Created by Arun V on 21/08/24.
//

#import "Weatherlocast.h"

@implementation WeatherDetails

- (void)fetchWeatherForCity:(double)latitude longitude:(double)longitude completion:(void (^)(NSDictionary *weatherData, NSError *error))completion {
    // Replace with your actual API key
    static NSString * const APIKey = @"1f37ee5a68107b58b975454d55c1cac1";
    NSString *urlString = [NSString stringWithFormat:@"https://api.openweathermap.org/data/3.0/onecall?lat=%f&lon=%f&appid=%@", latitude, longitude, APIKey];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            if (completion) {
                completion(nil, error);
            }
            return;
        }
        
        NSError *jsonError;
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
        
        if (jsonError) {
            if (completion) {
                completion(nil, jsonError);
            }
            return;
        }
        
        // Call completion block with weather data
        if (completion) {
            completion(json, nil);
        }
    }];
    
    [task resume];
}

@end
