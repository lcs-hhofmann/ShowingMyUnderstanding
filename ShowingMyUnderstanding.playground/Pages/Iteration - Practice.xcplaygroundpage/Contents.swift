/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Practice
 
 How can loops be used to make a program more effient?
 
 How can loops be used to create an interesting image from repeated patterns?
 
 Here is an example image:
 
 ![tire-tracks](tire-tracks.png "Tire Tracks")
 
 Try creating this image for practice.
 
 You should only require 6 lines of code at most to produce the image.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

for x in stride(from: 10, to: 290, by: 50) {
    for y in stride(from: 275, to: 50, by: -101) {
    canvas.drawRectangle(centreX: x, centreY: y, width: 20, height: 10)
    }}

for x in stride(from: 30, to: 310, by: 50) {
    for y in stride(from: 255, to: 30, by: -101) {
        canvas.drawRectangle(centreX: x, centreY: y, width: 20, height: 10)
    }}



// Replace this comment and add your code below...


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
