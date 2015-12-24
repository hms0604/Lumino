--Lumnio Peripheral API
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

--Returns a string of the FIRST side with a monitor
--Returns nil if no device is found.
function getMonitorSide()
    for i = 0,6 do in ipairs(sides)
        if peripheral.getType() == monitor then
            return sides
        else
            return nil
        end
    end
end


--Returns a string of the FIRST side with a drive
--Returns nil if no device is found.
function getDriveSide()
    for i = 0,6 do in ipairs(sides)
        if peripheral.getType() == drive then
            return sides
        else
            return nil
        end
    end
end

--Returns a string of the FIRST side with a monitor
--Returns nil if no device is found.
function getModemSide()
    for i = 0,6 do in ipairs(sides)
        if peripheral.getType() == modem then
            return sides
        else
            return nil
        end
    end
end
