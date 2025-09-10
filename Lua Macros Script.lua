--nameing the device for easier refrence later

lmc_device_set_name('macroboard','3EC69E1')
lmc_print_devices()

--minimizeing the script to tray 

lmc.minimizeToTray = true
lmc_minimize()

--[[big if-elseif for the different buttons of the macroboard,
buttons are "read" using their id number, or when a string is written, if I couldn't find the id number]]--

lmc_set_handler('macroboard', function(button,direction)
  if (direction == 1) then return end
  if (button == 49 ) then
    lmc_send_keys('gl hf', 10)

    elseif (button == 50) then
      lmc_send_keys('gg wp', 50)

    elseif (button == 51) then
      lmc_send_keys('gg ez', 50)

    elseif (button == string.byte('4')) then
      lmc_send_input(CTRL, 0, 0)
      lmc_send_input(SHIFT, 0, 0)
      lmc_send_input(m, 0, 0)
      lmc_send_input(CTRL, 0, 1)
      lmc_send_input(SHIFT, 0, 1)
      lmc_send_input(m, 0, 1)

    elseif (button == string.byte('T')) then
      lmc_send_keys('{CTRL} {SHIFT} d', 10)

    elseif (button == 32) then
      lmc_send_keys('/weather clear', 50)

    elseif (button == 13) then
      lmc_send_keys('/time set 0', 50)

    elseif (button == 89) then
      lmc_send_keys('//copy', 50)

    elseif (button == 85) then
      lmc_send_keys('//paste', 50)

      elseif (button == 75) then
      lmc_send_keys('//undo', 50)

    elseif (button == 76) then
      lmc_send_keys('//redo', 50)

    elseif (button == 86) then
      lmc_send_keys('', 50)

    elseif (button == 78) then
      lmc_send_keys('https://youtube.com', 50)

    elseif (button == 77) then
      lmc_send_keys('https://messenger.com', 50)

    elseif (button == 70) then
      lmc_send_keys('//stack', 50)

    elseif (button == 71) then
      lmc_send_keys('//fill', 50)

    elseif (button == 74) then
      lmc_send_keys('//set', 50)

    elseif (button == 34) then
      lmc_send_keys('/give @p minecraft:barrier_block', 50)

    elseif (button == 18) then
      lmc_send_keys('{ENTER}', 50)

  end
end
)
