package com.example.bai_2;

public class Caculator {
    public static float caculate(float firstNum, float secondNum, String operator) {
        switch (operator) {
            case "Add":
                return firstNum + secondNum;
            case "Sub":
                return firstNum - secondNum;
            case "Multi":
                return firstNum * secondNum;
            case "Div":
                if(secondNum != 0){
                    return firstNum / secondNum;
                }else {
                    throw new RuntimeException("Can't divide by zero");
                }
            default:
                throw new RuntimeException("Invalid operation");
        }
    }
}
