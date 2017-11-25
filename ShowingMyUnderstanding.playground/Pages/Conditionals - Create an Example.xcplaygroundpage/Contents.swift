/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a conditional statement to respond to random number generation.
  
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

canvas.drawShapesWithBorders = false

// Generate a random number
let number = random(from: 0, toButNotIncluding: 3)

//hue
let hue = random(from: 0, toButNotIncluding: 361)

//make the squares
for c in stride(from: 15, to: 300, by: 30) {
    for y in stride(from: 15, to: 300, by: 30){
        let brightness = (100 - c / 3) + (100 - y / 3)
        canvas.fillColor = Color(hue: hue, saturation: 80, brightness: brightness, alpha: 100)
        if number == 1 {
            canvas.drawEllipse(centreX: c, centreY: y, width: 20, height: 20)
        }; if number == 2 {
            canvas.lineColor = Color(hue: hue, saturation: 80, brightness: brightness, alpha: 100)
            canvas.drawLine(fromX: c, fromY: y, toX: c+3, toY: c+4)
        }
        else { canvas.drawRectangle(centreX: c, centreY: y, width: 20, height: 20)
        }}}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
