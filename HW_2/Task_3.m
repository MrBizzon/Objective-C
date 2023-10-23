// Создать массив n-фигур и вывести полную информацию о фигурах на экран.

#import <Foundation/Foundation.h>

// Определение класса "Фигура"
@interface Shape : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, assign) CGFloat area;

@end

@implementation Shape

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Создание массива фигур
        NSMutableArray *shapesArray = [[NSMutableArray alloc] init];
        
        // Создание и добавление фигур в массив
        int n = 3; // Количество фигур (можно задать любое другое значение)
        for (int i = 0; i < n; i++) {
            Shape *shape = [[Shape alloc] init];
            shape.name = [NSString stringWithFormat:@"Фигура %d", i + 1];
            shape.area = i * 10; // Площадь фигуры (можно задать другое значение)
            [shapesArray addObject:shape];
        }
        
        // Вывод информации о фигурах на экран
        for (Shape *shape in shapesArray) {
            NSLog(@"Имя: %@, Площадь: %.2f", shape.name, shape.area);
        }
    }
    return 0;
}

// Результат:

// Имя: Фигура 1, Площадь: 0.00
// Имя: Фигура 2, Площадь: 10.00
// Имя: Фигура 3, Площадь: 20.00

// Код выводит информацию о каждой фигуре в консоль, используя функцию NSLog().