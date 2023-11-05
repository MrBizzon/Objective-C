// Написать класс Робот со свойствами: x, y, name. Координаты и имя соответственно.
// Необходимо сохранить объект робота в userDefaults и считать из него в виде TextView (или в консоль 
// при технических сложностях).
// Сохранить информацию о роботе в файл с названием таким же как имя робота и считать содержимое файла, далее, 
// отобразить в виде TextView (или в консоль при технических сложностях).


#import <Foundation/Foundation.h>

@interface Robot : NSObject

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, strong) NSString *name;

@end

@implementation Robot

- (instancetype)init {
    self = [super init];
    if (self) {
        _x = 0;
        _y = 0;
        _name = @"";
    }
    return self;
}

@end

// Сохранение объекта робота в userDefaults
Robot *robot = [[Robot alloc] init];
robot.x = 10;
robot.y = 20;
robot.name = @"Robot1";

NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
[defaults setObject:robotData forKey:@"RobotData"];
[defaults synchronize];

// Считывание объекта робота из userDefaults
NSData *savedRobotData = [defaults objectForKey:@"RobotData"];
Robot *savedRobot = [NSKeyedUnarchiver unarchiveObjectWithData:savedRobotData];
NSLog(@"Saved Robot: x:%f, y:%f, name:%@", savedRobot.x, savedRobot.y, savedRobot.name);

// Сохранение информации о роботе в файл
NSString *fileName = savedRobot.name;
NSString *filePath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0] stringByAppendingPathComponent:fileName];

NSString *robotInfo = [NSString stringWithFormat:@"x:%f, y:%f, name:%@", savedRobot.x, savedRobot.y, savedRobot.name];
NSData *fileData = [robotInfo dataUsingEncoding:NSUTF8StringEncoding];
[fileData writeToFile:filePath atomically:YES];

// Чтение содержимого файла
NSData *loadedData = [NSData dataWithContentsOfFile:filePath];
NSString *loadedRobotInfo = [[NSString alloc] initWithData:loadedData encoding:NSUTF8StringEncoding];
NSLog(@"Loaded Robot: %@", loadedRobotInfo);