--Lumnio Common API
--Must be distrubuted with the ghs API.
--Do not redistrubute
--Editing this file will create damage to all installed Lumino programs.

--Returns true for yes, false for no and nil on a invalid key.
--bool prompt - promts user for a yes/no key hit
function getYesNo(prompt)

  assert(type(prompt) == "string", "Error @ getYesNo(prompt) - prompt must be type string")

  if prompt == true then
    io.write("Hit 'y' for yes or 'n' for no.")
  end

  event, data = os.pullEvent("key")

  if data == 21 then

    return true

  elseif data == 49 then

    return false

  else
    return nil
  end

end

--Returns errors as applicable.
--str dir - file directory, str fileName - the name of the file, str toWrite - What to write.
function appendFile(dir, fileName, toWrite)

  assert(type(dir) == "string", "Error @ appendFile(dir, fileName, toWrite) - dir must be type string")
  assert(type(fileName) == "string", "Error @ appendFile(dir, fileName, toWrite) - fileName must be type string")
  assert(type(toWrite) == "string", "Error @ appendFile(dir, fileName, toWrite) - toWrite must be type string")

  finalWrite = toWrite.."\n"

  if not fs.exists(dir) then
    fs.makeDir(dir)
  end

  dirlen = string.len(dir)
  if string.byte(dir, dirlen) == 47 then
    finalDir = dir
  else
    finalDir = dir.."/"
  end

  shell.setDir(finalDir)

  file = io.open(finalDir..fileName, "a")
  file:write(finalWrite)
  file:close()
 
 end
 
 --Returns Errors if applicalbe & Unpacked table of read file
 function readFile(dir, fileName, lineRange)
 
  assert(type(dir) == "string", "Error @ readFile(dir, fileName, lineRange) - dir must be type string")
  assert(type(fileName) == "string", "Error @ readFile(dir, fileName, lineRange) - fileName must be type string")
  assert(type(toWrite) == "number", "Error @ readFile(dir, fileName, lineRange) - toWrite must be type number")
  
  stored = {}
  
  if string.byte(dir, dirlen) == 47 then
    finalDir = dir
  else
    finalDir = dir.."/"
  end
  
  assert(fs.exists(dir..fileName) == false, "Error @ readFile(dir, fileName, lineRange) - dir/fileName must be a valid directory/file name")

  file = io.open(finalDir..fileName, "r")
  
  for i = 1, lineRange do 
    store = file:read()
    stored[i] = store
  end
  
  return unpack(stored)
  
 end
 
 
 
 
 
 
 
 
 
 
 