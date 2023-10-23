// Создать производные классы: Rectangle (прямоугольник), Circle (круг), Triangle (треугольник) со своими методами 
// вычисления площади и периметра.

#import <Foundation/Foundation.h>

@interface Shape : NSObject

- (instancetype)initWithName:(NSString *)name;

- (float)calculateArea;
- (float)calculatePerimeter;

@end

@implementation Shape

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (float)calculateArea {
    return 0;
}

- (float)calculatePerimeter {
    return 0;
}

@end

@interface Rectangle : Shape

@property (nonatomic) float width;
@property (nonatomic) float height;

@end

@implementation Rectangle

- (instancetype)initWithName:(NSString *)name width:(float)width height:(float)height {
    self = [super initWithName:name];
    if (self) {
        _width = width;
        _height = height;
    }
    return self;
}

- (float)calculateArea {
    return self.width * self.height;
}

- (float)calculatePerimeter {
    return 2 * (self.width + self.height);
}

@end

@interface Circle : Shape

@property (nonatomic) float radius;

@end

@implementation Circle

- (instancetype)initWithName:(NSString *)name radius:(float)radius {
    self = [super initWithName:name];
    if (self) {
        _radius = radius;
    }
    return self;
}

- (float)calculateArea {
    return M_PI * self.radius * self.radius;
}

- (float)calculatePerimeter {
    return 2 * M_PI * self.radius;
}

@end

@interface Triangle : Shape

@property (nonatomic) float sideA;
@property (nonatomic) float sideB;
@property (nonatomic) float sideC;

@end

@implementation Triangle

- (instancetype)initWithName:(NSString *)name sideA:(float)sideA sideB:(float)sideB sideC:(float)sideC {
    self = [super initWithName:name];
    if (self) {
        _sideA = sideA;
        _sideB = sideB;
        _sideC = sideC;
    }
    return self;
}

- (float)calculateArea {
    float semiPerimeter = (self.sideA + self.sideB + self.sideC) / 2;
    return sqrtf(semiPerimeter * (semiPerimeter - self.sideA) * (semiPerimeter - self.sideB) * (semiPerimeter - self.sideC));
}

- (float)calculatePerimeter {
    return self.sideA + self.sideB + self.sideC;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *rectangle = [[Rectangle alloc] initWithName:@"Rectangle" width:5 height:3];
        NSLog(@"Area of %@: %.2f", rectangle.name, [rectangle calculateArea]);
        NSLog(@"Perimeter of %@: %.2f", rectangle.name, [rectangle calculatePerimeter]);
        
        Circle *circle = [[Circle alloc] initWithName:@"Circle" radius:2];
        NSLog(@"Area of %@: %.2f", circle.name, [circle calculateArea]);
        NSLog(@"Perimeter of %@: %.2f", circle.name, [circle calculatePerimeter]);
        
        Triangle *triangle = [[Triangle alloc] initWithName:@"Triangle" sideA:3 sideB:4 sideC:5];
        NSLog(@"Area of %@: %.2f", triangle.name, [triangle calculateArea]);
        NSLog(@"Perimeter of %@: %.2f", triangle.name, [triangle calculatePerimeter]);
    }
    return 0;
}

// Результат:

// Area of Rectangle: 15.00
// Perimeter of Rectangle: 16.00
// Area of Circle: 12.57
// Perimeter of Circle: 12.57
// Area of Triangle: 6.00
// Perimeter of Triangle: 12.00