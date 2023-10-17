#import <Foundation/Foundation.h>

void solveQuadraticEquation(double a, double b, double c) {
    double discriminant = b * b - 4 * a * c;
    
    if (discriminant > 0) {
        double root1 = (-b + sqrt(discriminant)) / (2 * a);
        double root2 = (-b - sqrt(discriminant)) / (2 * a);
        NSLog(@"Roots are real and different.");
        NSLog(@"Root1 = %f", root1);
        NSLog(@"Root2 = %f", root2);
    } else if (discriminant == 0) {
        double root = -b / (2 * a);
        NSLog(@"Roots are real and equal.");
        NSLog(@"Root = %f", root);
    } else {
        NSLog(@"Roots are complex and different.");
        double realPart = -b / (2 * a);
        double imaginaryPart = sqrt(-discriminant) / (2 * a);
        NSLog(@"Root1 = %f + %fi", realPart, imaginaryPart);
        NSLog(@"Root2 = %f - %fi", realPart, imaginaryPart);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Quadratic equation: x^2 – 8x + 12 = 0
        double a1 = 1;
        double b1 = -8;
        double c1 = 12;
        solveQuadraticEquation(a1, b1, c1);
        
        // Quadratic equation: 12x^2 – 4x + 2 = 0
        double a2 = 12;
        double b2 = -4;
        double c2 = 2;
        solveQuadraticEquation(a2, b2, c2);
        
        // Quadratic equation: x^2 – 100x - 2 = 0
        double a3 = 1;
        double b3 = -100;
        double c3 = -2;
        solveQuadraticEquation(a3, b3, c3);
    }
    return 0;
}

// Результат:

// Roots are real and different.
// Root1 = 6.000000
// Root2 = 2.000000

// Roots are complex and different.
// Root1 = 0.166667 + 0.301511i
// Root2 = 0.166667 - 0.301511i

// Roots are real and different.
// Root1 = 100.000000
// Root2 = -0.020000