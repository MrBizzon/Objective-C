#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Выполняем GET-запрос и обновляем TextView с полученными данными
    NSURL *url = [NSURL URLWithString:@"http://example.com/api/data"];

    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSString *responseData = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            dispatch_async(dispatch_get_main_queue(), ^{
                self.textView.text = responseData;
            });
        }
    }];
    
    [dataTask resume];
}

@end