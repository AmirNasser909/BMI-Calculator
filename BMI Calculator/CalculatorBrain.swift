import Foundation
import UIKit
struct CalculatorBrain {
    var bmiValue : BMI?
    mutating func calculateBMI(height:Float,weight:Float){
        let bmi = weight/(height*height)
        if(bmi<18.5){
            bmiValue = BMI(value: bmi, advise: "Eat More Pies", color: UIColor.blue)
        } else if(bmi<24.5){
            bmiValue = BMI(value: bmi, advise: "Fit as a Fiddle!!", color: UIColor.green)
        }else{
            bmiValue = BMI(value: bmi, advise: "Eat less Pies", color: UIColor.red)
        }
        
    }
    func getBMIValue()-> String{
        let bmitodecimal = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return bmitodecimal
    }
    func getAdvice()-> String{
        return bmiValue?.advise ?? "nothing"
    }
    func getColor()-> UIColor{
        return bmiValue?.color ?? UIColor.green
    }
}
