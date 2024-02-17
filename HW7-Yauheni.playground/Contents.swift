import UIKit

//MARK: - Class Person ----------------

class Person {
    var name: String
    var surname: String
    var age: Int
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}

//MARK: - Class Director  ----------------
class Director: Person {
    var experience: Int
    var rating: Int
    
    init(name: String, surname: String, age: Int, experience: Int, rating: Int) {
        self.experience = experience
        self.rating = rating
        super.init(name: name, surname: surname, age: age)
    }
}

//MARK: - Class Address  ----------------
class Address {
    var x: Double
    var y: Double
    var streetName: String
    
    init(x: Double, y: Double, streetName: String) {
        self.x = x
        self.y = y
        self.streetName = streetName
    }
}

//MARK: - Class Student  ----------------
class Student: Person {
    var klass: Int
    var predmet: [(String, Int)]
    
    // Конструктор со всеми параметрами и дефолтными значениями для некоторых из них
    init(name: String, surname: String, age: Int = 11, klass: Int = 5, predmet: [(String, Int)] = [("Рисование", 5), ("Физра", 4)]) {
        self.klass = klass
        self.predmet = predmet
        super.init(name: name, surname: surname, age: age)
    }
    
//MARK: - метод выводящий информацию о студенте в формате "Фамилия Имя (Класс) предмет: оценка"  ----------------
   
    func printInfoStudent() {
        print()
        print("\(surname) \(name) (Класс: \(klass))")
        for predmet in predmet {
            print("\(predmet.0): \(predmet.1)")
        }
    }
}

//MARK: Class Student end  ----------------
   

//MARK: Class School и метод вывода информации о школе ----------------

class School {
    var students: [Student]
    var name: String
    var address: Address
    var director: Director
    
    init(students: [Student], name: String, address: Address, director: Director) {
        self.students = students
        self.name = name
        self.address = address
        self.director = director
    }
    
//MARK: функция вывода информации о Всей школе
    func printInfoSchool() {

        print("Название школы: \(name)")
        print("Адресс школы в координатах : \(address.streetName), (\(address.x), \(address.y))")
        print("Директор: \(director.surname) \(director.name), age: \(director.age), experience: \(director.experience), rating: \(director.rating) \n")
       
        print("Ученики школы:")
        for student in students {
            student.printInfoStudent()
        }
    }
}

//MARK:  ---------------- Заполняем базу о школе

let director = Director(name: "Людмила", surname: "Петровна", age: 52, experience: 15, rating: 5)
let address = Address(x: 55.123, y: 37.456, streetName: "Славинского ул.")
let student1 = Student(name: "Кирилл", surname: "Барский", klass: 6, predmet: [("Математика", 3), ("Физра", 5), ("История", 3)])
let student2 = Student(name: "Маша", surname: "Воронина", age: 16, klass: 9, predmet: [("Английский", 5), ("Биология", 5), ("История", 4)])
let student3 = Student(name: "Вася", surname: "Иванов", age: 14, klass: 7, predmet: [("Английский", 3), ("Биология", 3), ("История", 3)])
let school = School(students: [student1, student2, student3], name: "Школа №70", address: address, director: director)

//MARK:  ---------------- Выводим информацию о школе
school.printInfoSchool()
