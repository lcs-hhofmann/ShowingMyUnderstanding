/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence - Create an Example
 
 Create an example where overlapping shapes combine to create an image.
 
 You can find a simple image on the Internet and attempt to reproduce it.
 
 Or, you can create your own.

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

//head
canvas.fillColor = Color.green
canvas.drawEllipse(centreX: 150, centreY: 100, width: 300, height: 200)

//mouth
canvas.fillColor = Color.red
canvas.drawEllipse(centreX: 150, centreY: 80, width: 200, height: 100)
canvas.fillColor = Color.blue
canvas.drawEllipse(centreX: 150, centreY: 80, width: 190, height: 70)
canvas.fillColor =  Color.black
canvas.drawEllipse(centreX: 150, centreY: 80, width: 180, height: 40)

// left eye
canvas.fillColor = Color.green
canvas.drawEllipse(centreX: 50, centreY: 175, width: 90, height: 100)
canvas.fillColor = Color.red
canvas.drawEllipse(centreX: 50, centreY: 175, width: 70, height: 80)
canvas.fillColor = Color.blue
canvas.drawEllipse(centreX: 50, centreY: 175, width: 50, height: 60)
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 50, centreY: 175, width: 20, height: 10)

//right eye
canvas.fillColor = Color.green
canvas.drawEllipse(centreX: 250, centreY: 175, width: 90, height: 100)
canvas.fillColor = Color.red
canvas.drawEllipse(centreX: 250, centreY: 175, width: 70, height: 80)
canvas.fillColor = Color.blue
canvas.drawEllipse(centreX: 250, centreY: 174, width: 50, height: 60)
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 250, centreY: 175, width: 20, height: 10)



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
