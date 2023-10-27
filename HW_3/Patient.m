#import "Patient.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)doctorPrescribeMedicineToPatient:(Patient *)patient {
    NSLog(@"%@ received prescription from doctor and took the medicine.", patient.name);
}

@end