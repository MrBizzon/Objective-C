// Реализовать класс робота (Robot). В классе должны быть свойства координаты x, y (по умолчанию в начале 0, 0) 
// и метод run. Метод принимает блок, в зависимости от сообщения в блоке (up, down, left, right) робот движется 
// в соответствующем направлении (изменяется его текущая координата). Сообщения в блоках возвращается только в виде 
// строк (up, down, left, right).
// Продемонстрировать движение робота по прямоугольной системе координат.

#import <Foundation/Foundation.h>

@interface Robot : NSObject

@property int x;
@property int y;

- (void)run:(NSString *)direction;

@end

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        _x = 0;
        _y = 0;
    }
    return self;
}

- (void)run:(NSString *)direction {
    if ([direction isEqualToString:@"up"]) {
        self.y++;
    } else if ([direction isEqualToString:@"down"]) {
        self.y--;
    } else if ([direction isEqualToString:@"left"]) {
        self.x--;
    } else if ([direction isEqualToString:@"right"]) {
        self.x++;
    } else {
        NSLog(@"Unknown direction");
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [[Robot alloc] init];
        
        [robot run:@"up"];
        [robot run:@"right"];
        [robot run:@"down"];
        [robot run:@"left"];
        
        NSLog(@"Robot's coordinates: (%d, %d)", robot.x, robot.y);
    }
    return 0;
}


// Результат:

// Robot's coordinates: (1, 0)