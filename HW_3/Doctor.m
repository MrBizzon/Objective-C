#import "Doctor.h"

@implementation Doctor

- (void)prescribeMedicineToPatient:(Patient *)patient {
    [self.delegate doctorPrescribeMedicineToPatient:patient];
}

@end



// Patient.h

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject <DoctorDelegate>

@property (nonatomic, strong) NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end