/*:
 [Previous](@previous) / [Next](@next)
 
 # Conditionals - Practice
 
 How can conditionals be used to create output?
 
 Create an image where the characteristics depend on the result of the random number generation.
 
 When the random number is 0, the shape is a square.
 
 When the random number is 1, the shape is a circle.
  
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

// Generate a random number
let number = random(from: 0, toButNotIncluding: 2)

//hue
let hue = random(from: 0, toButNotIncluding: 361)

//make the shapes
for i in stride(from: 10, to: 300, by: 30) {
    let wowza = i + 70
    canvas.fillColor = Color.init(hue: hue, saturation: 100, brightness: wowza, alpha: 50)
    if number == 1 {canvas.drawEllipse(centreX: i, centreY: i, width: 20, height: 20)
    }
else
    { canvas.drawRectangle(centreX: i, centreY: i, width: 20, height: 20)
    }}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
