//
//  ViewController.m
//  Converter
//
//  Created by Sergey Lavrov on 04.02.2019.
//  Copyright © 2019 +1. All rights reserved.
//

#import "ViewController.h"

double convertKmHourToMeterSecond(double kmHourValue){
    double meterSecondValue;
    meterSecondValue = 1000 * kmHourValue / 3600;
    return meterSecondValue;
}

double convertKmHourToKnots(double kmHourValue){
    double knotsValue;
    knotsValue = 1.852 * kmHourValue;
    return knotsValue;
}

double convertKmHourToMileHour(double kmHourValue){
    double mileHourValue;
    mileHourValue = 1.609 * kmHourValue;
    return mileHourValue;
}


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    if(self.segmentController.selectedSegmentIndex == 0){
        double unitTwoValue = convertKmHourToMeterSecond(userInput);
        [buf appendString: [@(unitTwoValue) stringValue] ];
    }
    else if(self.segmentController.selectedSegmentIndex == 1){
        double unitTwoValue = convertKmHourToKnots(userInput);
        [buf appendString: [@(unitTwoValue) stringValue] ];
    }
    else {
        double unitTwoValue = convertKmHourToMileHour(userInput);
        [buf appendString: [@(unitTwoValue) stringValue] ];
    }

    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
