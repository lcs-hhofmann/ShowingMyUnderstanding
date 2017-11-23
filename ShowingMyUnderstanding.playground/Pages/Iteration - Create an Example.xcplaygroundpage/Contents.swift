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
canvas.fillColor = Color.init(hue: 330, saturation: 74, brightness: 100, alpha: 50)
canvas.drawRectangle(centreX: 150, centreY: 150, width: 302, height: 302)


//make the shape
canvas.drawShapesWithFill = false
canvas.borderColor = Color.red
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
