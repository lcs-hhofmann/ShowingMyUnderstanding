/*:
 [Previous](@previous) / [Next](@next)
 
 # Put it all together
 
 Create an example that sequence, conditionals, and iteration to produce a simple image.
 
 The image need not be eye-catching or elaborate – it should simply demonstrate your ability to combine these programming structures.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

//hue
let hue = random(from: 1, toButNotIncluding: 361)

//background
for i in stride(from: 0, to: 310, by: 5) {
    let bright = i + 100
    canvas.lineColor = Color.init(hue: hue, saturation: 100, brightness: bright, alpha: 100)
    canvas.defaultLineWidth = 5
    canvas.drawLine(fromX: i, fromY: 0, toX: i, toY: i+10)
}

// Make and abstarct looking thing

//make the center somewhere off to the side
canvas.translate(byX: 65, byY: -60)

//number
let number = random(from: 1, toButNotIncluding: 4)

//he loop and colour
for degree in stride(from: 0, to: 360, by: 1) {
    let brightness = degree * 10
    canvas.fillColor = Color.init(hue: hue, saturation: 100, brightness: brightness, alpha: 100)
    
    //conditionals
    if number == 1 {
    canvas.drawRectangle(centreX: 3, centreY: 10, width: 10, height: 10)
    }; if number == 2 {
        canvas.drawEllipse(centreX: 3, centreY: 10, width: 10, height: 10)
    }
    if number == 3 {canvas.drawRectangle(centreX: 5, centreY: 12, width: 10, height: 20)}
    
    //make it move weirdly
        canvas.translate(byX: +20, byY: +20)
    canvas.rotate(by: Degrees(degree))
}

canvas.borderColor = Color.white
//colour
for degree in stride(from: 0, to: 360, by: 1) {
    let brightness = degree * 10
    canvas.fillColor = Color.init(hue: hue, saturation: 100, brightness: brightness, alpha: 100)
    
    //conditionals
    if number == 1 {
        canvas.drawRectangle(centreX: 97, centreY: 90, width: 10, height: 10)
    }; if number == 2 {
        canvas.drawEllipse(centreX: 97, centreY: 90, width: 10, height: 10)
    }
    if number == 3 {canvas.drawRectangle(centreX: 95, centreY: 88, width: 10, height: 20)}
    
    //move
    canvas.translate(byX: -20, byY: -20)
    canvas.rotate(by: Degrees(degree))
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
