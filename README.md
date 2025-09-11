# Lua-Macros-Script
A small script I made a while ago in Lua, for the program Lua Macros, it allows you to turn a second keyboard into a programmable macro board. The idea was inspired by a, really old at this point, Youtube video by Taran Van Hemert.

First couple of lines have to do with assigning a name to the second keyboard for reference later in the code. You will have to find the appropriate device id in windows which can be a bit tricky, but once you do you're ready to go

Then a couple more commands so that the programm minimizes to tray, so that it's out of sight.

Finally a big if-elseif "block" in order to recognize a keypress, either through the id number of a key (this may require some guesswork) or through a string being written instead of a specific key (at that the time I found that somewhat easier), adn telling the programm to send certain keypresses, expressed as a string, second number in the parenthesis is miliseconds of delay between keypresses. 


