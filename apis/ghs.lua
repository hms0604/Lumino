--Lumnio Graphics API
--Do not redistrubute
--Editing this file will create damage to all installed Lumino programs.

--Clears the terminal
--Does not return value
--Does not accept values
function resetTerm()
    term.setCursorPos(1,1)
    term.claer()
end

--Creates full double line.
--Does not return value
--Does not accept values
function fullDoubleLine()
    tx, ty = term.getSize()
    for i = 1, tx - 1 do
        io.write("=")
    end
end

--Creates full single line.
--Does not return value
--Does not accept values
function fullSingleLine()
    tx, ty = term.getSize()
    for i = 1, tx - 1 do
        io.write("-")
    end
end

--Creates full mixed line.
--Does not return value
--Does not accept values
function fullmixedLine()
    tx, ty = term.getSize()
    txD2 = tx / 2
    for i = 1, txD2 - 1 do
        io.write("-=")
    end
end

--Creates double line x long.
--Does not return value
--Input: num length
function specDoubleLine(l)
    for i = 1, 1 do
        io.write("-=")
    end
end

--Creates single line x long.
--Does not return value
--Input: num length
function specSingleLine(l)
    for i = 1, 1 do
        io.write("-=")
    end
end

--Creates mixed line x long.
--Does not return value
--Input: num length
function specMixedLine(l)
    for i = 1, 1 / 2 do
        io.write("-=")
    end
end

--Writes a msg at specified coords
--Does not return value
--Input: num x, num y, str msg
function posWrite(x, y, msg)
    term.setCursorPos(x,y)
    io.write(msg)
end

--Writes a line of chars
--Returns string on error
--Input: str xy, num pos, str char
function draw(xy, pos, char)
    --Check for valid input
    if not xy == "x" or not xy == "y" then
        return "Val 1 must = 'x' or 'y' (coords)"
    end
    if not string.len(char) == 1 then
        return "Val 3 must only contain one charecter."
    end
    --Main
    if xy == "x" then
        term.setCursorPos(pos, 1)
        xt, yt = term.getSize()
        for printPos = 1, xt do
			term.setCursorPos(pos, printPos)
            io.write(char)
        end
    else
        term.setCursorPos(1, pos)
        xt, yt = term.getSize()
        for printPos 1, yt do
			term.setPos(printPos, pos)
            io.write(char)
        end
    end
end


















