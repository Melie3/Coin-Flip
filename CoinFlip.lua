--Coin Flip was originally made by Adam9812. It is Public Domain.

--Coin Flip 0.7.2

function setup()
    
    flipNumber = math.random(1,2)
    flipAmount = 0
    headsAmount = 0
    tailsAmount = 0
    
    parameter.action("Flip Coin",flip)
    
    parameter.watch("flipNumber")
    parameter.watch("flipAmount")
    parameter.watch("headsAmount")
    parameter.watch("tailsAmount")
    
end

function draw()
    
    background(40, 40, 50)
    stroke(0, 0, 0, 255)
    fill(98, 68, 55, 255)
    
    ellipse(WIDTH/2,HEIGHT/2,141)
    
    fill(0, 0, 0, 255)
    
    if flipNumber == 1 then
        text("Heads")
        else
        text("Tails")
        
    end
    
    fontSize(11)
    font("Copperplate-Light")
    text("In Codea we trust",WIDTH/2,HEIGHT/2 - 38)
    
end

function flip()
    
    flipNumber = math.random(1,2)
    flipAmount = flipAmount + 1
    
    if flipNumber == 1 then
        headsAmount = headsAmount + 1
        
        else
        
        tailsAmount = tailsAmount + 1
        
    end
end
