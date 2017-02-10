//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let currentDate = NSDate()

// This has been renamed to date formater
let dateFormaterObj = DateFormatter()

// full style conversion  day
dateFormaterObj.dateFormat = "EEE, MMM, dd, yyy"
var convertedDate = dateFormaterObj.string(from: currentDate as Date)

// Converting from a string to a date obj 
var dateString = "24-12-2015 23:59"
dateFormaterObj.dateFormat = "dd-MM-yyy HH:mm"
var newDateobj = dateFormaterObj.date(from: dateString)



