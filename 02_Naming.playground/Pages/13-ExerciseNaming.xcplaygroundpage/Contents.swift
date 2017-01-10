/*:
 ## Exercise: Good Names
 
 You’ve inherited some code from another programmer, who never had a chance to take the _App Development with Swift_ course. All you found was a note with the following written on it:
 
 > **Truck loading guide**
 >
 > Pallets of oranges weigh 100lbs
 >
 > Pallets of watermelons weigh 200lbs
 >
 > Have to load up the left then right of the truck and keep it as balanced. How many on each side? Melons always go together.
*/
let palletsOfOranges = 14
let palletsofWatermelons = 3
let palletsOfOrangesWeight = 100
let palletsOfWatermelonsWeight = 200
let totalOrangeWeight = palletsOfOranges * palletsOfOrangesWeight
let totalWatermelonWeight = palletsofWatermelons * palletsOfWatermelonsWeight
let totalTruckLoad = totalOrangeWeight + totalWatermelonWeight
let es = totalTruckLoad / 2
let lhso = es / palletsOfOrangesWeight
let rhso = palletsOfOranges - lhso


//: - experiment: Rewrite the code so that it makes sense without needing a note. Use meaningful names and comments.






/*:
 _Copyright (C) 2016 Apple Inc. All Rights Reserved.\
 See LICENSE.txt for this sample’s licensing information._
 */
//:[Previous](@previous)  |  page 14 of 14
