//
//  WeatherDetails.m
//  Weatherlocast
//
//  Created by Arun V on 21/08/24.
//

#import "WeatherDetails.h"


static NSString * const APIKey = @"1f37ee5a68107b58b975454d55c1cac1"; // Replace with your API key
static NSString * const BaseURL = @"https://api.openweathermap.org/data/2.5/weather";


@implementation WeatherDetails

- (void)fetchWeatherForCity:(NSString *)city completion:(void (^)(NSDictionary * _Nullable weatherData, NSError * _Nullable error))completion {
    NSString *urlString = [NSString stringWithFormat:@"%@?q=%@&appid=%@", BaseURL, city, APIKey];
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            completion(nil, error);
            return;
        }
        
        NSDictionary *weatherData = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        completion(weatherData, nil);
    }];
    [task resume];
}


@end
