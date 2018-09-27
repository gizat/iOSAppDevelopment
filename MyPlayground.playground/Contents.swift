import UIKit

func calculateBMI(weight : Float, height : Float) {
    
    let bmi : Float = weight / pow(height, 2)
    
    if bmi > 25 {
        print("Your BMI is \(bmi). You're overweight. Get some exercise.")
    }
    else if bmi > 18.5 && bmi <= 25 {
        print("Your BMI is \(bmi). You're normal. Keep it up.")
    }
    else {
        print("Your BMI is \(bmi). You're underweight. Eat more.")
    }
    
}

calculateBMI(weight: 77.3, height: 1.83)
