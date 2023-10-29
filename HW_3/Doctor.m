#import "Doctor.h"

@implementation Doctor

- (void)prescribeMedicineToPatient:(Patient *)patient {
    [self.delegate doctorPrescribeMedicineToPatient:patient];
}

@end

