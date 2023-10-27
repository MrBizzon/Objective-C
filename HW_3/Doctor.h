#import <Foundation/Foundation.h>
#import "Patient.h"

@protocol DoctorDelegate <NSObject>

- (void)doctorPrescribeMedicineToPatient:(Patient *)patient;

@end

@interface Doctor : NSObject

@property (nonatomic, weak) id<DoctorDelegate> delegate;

- (void)prescribeMedicineToPatient:(Patient *)patient;

@end