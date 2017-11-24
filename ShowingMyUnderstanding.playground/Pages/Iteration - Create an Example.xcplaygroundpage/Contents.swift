/*:
 [Previous](@previous) / [Next](@next)
 
 # Iteration - Create an Example
 
 Create an example where some aspect of the resulting image depends on using a iteration (loops) to create an image.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

//background
for i in stride(from: 0, to: 300, by: 1) {
    let hue = i
    canvas.lineColor = Color.init(hue: hue, saturation: 100, brightness: 100, alpha: 100)
    canvas.drawLine(fromX: -100010, fromY: 0, toX: 300, toY: i)
}


//make the shape
canvas.drawShapesWithFill = false
canvas.borderColor = Color.white
canvas.defaultBorderWidth = Int(1.95)
canvas.translate(byX: 150, byY: 150)
for degrees in stride(from: 0, to: 360, by: 10) {
    canvas.drawEllipse(centreX: 0, centreY: 50, width: 110, height: 110)
    canvas.rotate(by: Degrees(degrees))
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
