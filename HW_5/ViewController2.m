#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (IBAction)buttonPressed:(id)sender {
    // Получаем данные из текстовых полей
    NSString *text1 = self.textField1.text;
    NSString *text2 = self.textField2.text;
    
    // Выполняем POST-запрос с передачей данных
    NSURL *url = [NSURL URLWithString:@"http://example.com/api/post"];

    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [request setHTTPMethod:@"POST"];
    [request setHTTPBody:[[NSString stringWithFormat:@"param1=%@&param2=%@", text1, text2] dataUsingEncoding:NSUTF8StringEncoding]];
    
    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            NSLog(@"Error: %@", error);
        } else {
            NSString *responseData = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"Response: %@", responseData);
        }
    }];
    
    [dataTask resume];
}

@end