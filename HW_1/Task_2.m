#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int num1, num2, num3;
        
        // Ввод чисел с клавиатуры
        NSLog(@"Введите первое число:");
        scanf("%d", &num1);
        
        NSLog(@"Введите второе число:");
        scanf("%d", &num2);
        
        NSLog(@"Введите третье число:");
        scanf("%d", &num3);
        
        // Определение наибольшего числа
        int max = num1;
        if (num2 > max) {
            max = num2;
        }
        if (num3 > max) {
            max = num3;
        }
        
        // Вывод результата
        NSLog(@"Наибольшее число: %d", max);
    }
    return 0;
}