import UIKit


// задание 1.Создайте два массива. Первый от 0 до 14, второй от 14 до 30. Объедините их в один
//массив.
///


var massive1 = Array (1...13)
var massive2 = Array (14...30)
var massive3 = massive1 + massive2
print(massive3)


// задание 2.Создать функцию, которая принимает массив int. Возвести все Int в квадрат. Возвратить новый массив.

let array = [Int] (1...5)
func Kvadrat (inputArray: [Int]) -> [Int] {
  var outputArray = [Int] ()
  for number in inputArray {
    outputArray.append (number * number)
  }
  return outputArray
}

let KvadratMassive = Kvadrat (inputArray: array)
print (KvadratMassive)



//Создать функцию, которая принимает массив int. Возвратить новый массив с только четными элементами.
let arrayNumber = [5, 12, 16, 22, 14, 21]
func arrayNumChet(_ checkNumber: [Int]) -> [Int] {
    return arrayNumber.filter({ $0 % 2 == 0 })
}
print(arrayNumChet(arrayNumber))


//Написать 3 примера с использованием .map

let numbers = [3, 5, 6, 9, 10]
let numbersKvadrat = numbers.map({$0*$0})
print(numbersKvadrat)

let country = ["Belarus", "France", "USA"]
let countryLetter = country.map({$0.count})
print(countryLetter)

let countryM = ["Belarus", "France", "USA"]
let countryFerstL = country.map({$0.first!})
print(countryFerstL)


//Написать 2 примера с использованием .filter

var filtrNumbers = [30, 8, 11, 23, 16]
var NumbersUP = filtrNumbers.filter({$0 > 12})
print(NumbersUP)


let chetNum = filtrNumbers.filter({$0 % 2 == 0})
print(chetNum)



//Написать 2 примера с использованием .compactMap
let NumbCM = ["7", "String3", "String2", "5", "3", "String3"]
let CountChar = ["sdgasgdjas", "sdasdasd", "sdasdsadaassd"]
print(NumbCM.compactMap({ Int($0) }))
print(CountChar.compactMap({ Int($0.count) }))



//Написать 2 примера с .sort

var massive = [2, 1, 7, 8, 3]
massive.sort()
print(massive)


var namesSortA: [String] = ["Yauheni", "Kirill", "Anya", "Yana", "Tom"]
namesSortA.sort()
print(namesSortA)

//Написать 2 примера с .sorted

var massiveStd =  [2, 15, 9, 76, 3]
let massiveStdSorted = massiveStd.sorted(by: >)
print(massiveStdSorted)

var massiveStd2 =  [2, 15, 9, 76, 3]
let massiveStdSorted2 = massiveStd2.sorted(by: <)
print(massiveStdSorted2)
