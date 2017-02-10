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
newDateobj

dateString = "Thu, 08 Oct 2015 09:22:33 GMT"
dateFormaterObj.dateFormat = "EEE, dd MM yyy HH:mm:ss zzz"
newDateobj = dateFormaterObj.date(from: dateString)

// Dates for compatison test 
dateFormaterObj.dateFormat = "EEE MMM dd yyy HH:mm"
dateString = "Fri Mar 10 2017 05:00"
var firstDateObj = dateFormaterObj.date(from: dateString)

dateFormaterObj.dateFormat = "MMM dd yyy HH:mm"
var eventStartTimeString = "Mar 10 2017 8:00"
var eventEndTimeString = "Mar 10 2017 9:00"

var eventStartTime = dateFormaterObj.date(from: eventStartTimeString)
eventStartTime








