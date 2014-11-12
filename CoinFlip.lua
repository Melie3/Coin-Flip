--Coin Flip was originally made by Adam9812. It is Public Domain.

--Coin Flip 0.7.5

function setup()
    
    --Sets up code
    
    flipAmount = 0
    headsAmount = 0
    tailsAmount = 0
    
    flip()
    
    parameter.action("Flip Coin",flip)
    
    parameter.watch("flipNumber")
    parameter.watch("flipAmount")
    parameter.watch("headsAmount")
    parameter.watch("tailsAmount")
    
end

function draw()
    
    --Sets color
    
    background(40, 40, 50)
    stroke(167, 37, 23, 255)
    fill(153, 77, 44, 255)
    
    --Sets width of stroke
    
    strokeWidth(2)
    
    --Creates Coin
    
    ellipse(WIDTH/2,HEIGHT/2,141)
    
    --Text Paramaters
    
    fill(1, 1, 1, 255)
    fontSize(21)
    
    --Sets text
    
    if flipNumber == 1 then
        text("Heads",WIDTH/2,HEIGHT/2)
        else
        text("Tails",WIDTH/2,HEIGHT/2)
        
    end
    
    fontSize(11)
    font("Copperplate-Light")
    text("In Codea we trust",WIDTH/2,HEIGHT/2 - 38)
    
end

function flip()
    
    --Generates Coin flipping
    
    flipNumber = math.random(1,2)
    flipAmount = flipAmount + 1
    
    
    if flipNumber == 1 then
        headsAmount = headsAmount + 1
        
        else
        
        tailsAmount = tailsAmount + 1
        
    end
end
