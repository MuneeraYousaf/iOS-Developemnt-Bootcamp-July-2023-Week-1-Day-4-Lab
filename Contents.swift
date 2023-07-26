import UIKit

var greeting = "Hello, playground"

//MARK: Task 1: Understanding Data Types

// Declare an enum Gender with cases for male, female, and other.

enum Gender{
    case male
    case female
    case other
}
// Create a struct Car with properties for make, model, and year.
struct Car {
    var make: String
    var model: String
    var year: Int
}

//Define a class Person with properties for name, age, and gender, and car.

class Person{
    var name: String
    var age: Int
    var gender: Gender
    var car: Car
    init( name: String,
         age: Int,
         gender: Gender,
         car: Car ) {
        self.name = name
        self.age = age
        self.gender = gender
        self.car = car
    }
    func printSelf(){
        print ("Name of customer: ", name, "Age", age, "Gender", gender, "Car", car )
    }
    
}

// Create at least two instance of each type and print them.

var porscheCarInformation: Car = Car(make: "Porsche", model: "Boxster", year: 1996)
var mercedesBenzCarInformation: Car = Car(make: "Mercedes-Benz", model: "GLC", year: 2022)

var femaleGender: Gender = .female
var maleGender: Gender = .male

var firstSellerInformation: Person = Person(name: "Muneera", age: 24, gender: femaleGender, car: porscheCarInformation)

var secondSellerInformation: Person = Person(name: "Ali", age: 22, gender: maleGender, car: mercedesBenzCarInformation)

print(firstSellerInformation.printSelf())
print(secondSellerInformation.printSelf())


//MARK: Task 2: Memory Management

//Create a class BankAccount with a balance property.

class BankAccount {

    var balance: Double
    
    init (balance: Double){
        self.balance = balance
    }
//Implement a method to deposit money and another to withdraw money, handling negative balances.
    
    func depositMoney(amount:Double){
        if(balance >= 0){
                    balance = balance + amount
            print ("The balance after deposit money ", balance)
        }
       
    }
    func withdrawMoney(amount:Double){
        if(balance >= 0){
            balance -= amount
            print ("The balance after withdraw money ", balance)
        }
      
    }
}

// Test the class using different instances, considering reference types and memory management.
var bankAccountBalance : BankAccount = BankAccount(balance: 2000)
bankAccountBalance.depositMoney(amount: 1000)
bankAccountBalance.withdrawMoney(amount: 300)

var withdrawMoney: BankAccount = BankAccount(balance: 50000)
withdrawMoney.withdrawMoney(amount: 500)

//MARK: Task 3: Error Handling

enum LoginError: Error{
    case invalidUsername
    case invalidPassword
}

//Create a function login that takes username and password as arguments and throws a LoginError if invalid.
func login(username: String, password: String  ) throws  {
    
    if username == "Muneera" &&  password == "123"{
        print ("login valid")
    }
    else if username != "Muneera" || password != "123" {
        throw LoginError.invalidUsername
//        LoginError.invalidUsername
    }
    
        
    
}


// Use do-try-catch blocks to handle errors when calling the login function.
do {
    
    let loginTest = try login(username: "M", password: "123")
} catch {
    print(error)
    
}



