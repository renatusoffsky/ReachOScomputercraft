-- Set the background color to blue
term.setBackgroundColor(colors.blue)

-- Clear the screen
term.clear()

-- Set the text color to black
term.setTextColor(colors.black)

-- Display the "OS Setup" text at the top
term.setCursorPos(1, 1)
print("OS Setup")

-- Display the "Testing and exiting..." text at the bottom
local screenWidth, screenHeight = term.getSize()
term.setCursorPos(1, screenHeight)
print("installing and exiting...")

-- Wait for 5 seconds (5000 milliseconds)
os.sleep(5)

-- Clear the screen again
term.clear()

-- Move os.lua from folder "thesetup" to the hard disk
local sourcePath = "/thesetup/os.lua"
local targetPath = "/startup.lua"
fs.move(sourcePath, targetPath)

-- Exit the program
os.queueEvent("terminate")
