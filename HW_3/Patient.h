#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject <DoctorDelegate>

@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end