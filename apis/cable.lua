--Lumnio Cables API
--Must be distrubuted with the ghs API.
--Do not redistrubute
--Editing this file will create damage to all installed Lumino programs.

sides = {
  "top",
  "bottom",
  "left",
  "right",
  "front",
  "back"
}

--Returns no values.
--num time - time pulse lasts in seconds, str side - side to send pulse to, any inverse - acts as a NOT gate on the pulse any 
function redPulse(time, side, invesre)

  assert(type(time) == "number", "Error @ redpulse(time, side) - time must be a interger")
  assert(time % 1 == 0, "Error @ redPulse(time, side) - time must be a multiple of 1")
  assert(type(side) == "string", "Error @ redpulse(time, side) - side mustbe a valid side" )
  
  if side == sides[1] then --Builds value for the below assert() was too lazy to do a if val ot val2 or val3 3. cp pasting did the trick.
    typeCheck = true
  elseif side == sides[2] then
    typeCheck = true
  elseif side == sides[3] then
    typeCheck = true
  elseif side == sides[4] then
    typeCheck = true
  elseif side == sides[5] then
    typeCheck = true
  elseif side == sides[6] then
    typeCheck = true
  else
    tpyeCheck = false
  end
  
  assert(typeCheck == false, "Error @ redpulse(time, side) - side mustbe a valid side")
  
  if inverse == false or inverse == nil then
    rs.setOutput(side, true)
    sleep(time)
    rs.setOutput(side, false)
  else
    rs.setOutput(side, false)
    sleep(time)
    rs.setOutput(side, true)
  end
 
 end

--Returns no values.
--num time - time pulse lasts in seconds, str side - side to send pulse to, string color - what color to pulse, any inverse - acts as a NOT gate on the pulse any 
function colorPulse(time, side, color, invesre)

  assert(type(time) == "number", "Error @ colorpulse(time, side) - time must be a interger")
  assert(time % 1 == 0, "Error @ colorPulse(time, side) - time must be a multiple of 1")
  assert(type(side) == "string", "Error @ colorpulse(time, side) - side mustbe a valid side" )
  
  if side == sides[1] then --Builds value for the below assert() was too lazy to do a if val ot val2 or val3 3. cp pasting did the trick.
    typeCheck = true
  elseif side == sides[2] then
    typeCheck = true
  elseif side == sides[3] then
    typeCheck = true
  elseif side == sides[4] then
    typeCheck = true
  elseif side == sides[5] then
    typeCheck = true
  elseif side == sides[6] then
    typeCheck = true
  else
    tpyeCheck = false
  end
  
  assert(typeCheck == false, "Error @ colorpulse(time, side) - side mustbe a valid side")
  
  --TODO Build a assert for testing valid color inputs.
  
  if inverse == false or inverse == nil then
    rs.setBundledOutput(side, colors.combine(rs.getBundledInput(side), color))
    sleep(time)
    rs.setBundledOutput(side, colors.subtract(rs.getBundledInput(side), color))
  else
    rs.setBundledOutput(side, colors.subtract(rs.getBundledInput(side), color))
    sleep(time)
    rs.setBundledOutput(side, colors.combine(rs.getBundledInput(side), color))
  end
 
end

--No inputs and does not return
function colorReset()
  for i = 1,6 do
    side = sides[1]
    rs.setBundledOutput(side, 0)
  end
end