local active = GetPort(1)
local deactive = GetPort(2)
local spinny = GetPartFromPort(3, "Motor")
local speed = 0
local incval = 1

active:Connect("Triggered", function()
    if speed ~= -1 and speed ~= 100 then
        speed = speed + incval
    end
    if speed == -1 then
        speed = 0
    end
    if speed == 101 then
        speed = 100
    end
    spinny:Configure({ Ratio = speed })
end)

deactive:Connect("Triggered", function()
    negativeinc = incval * -1
    if speed ~= -1 and speed ~= 100 then
        speed = speed + negativeinc
    end
    if speed == -1 then
        speed = 0
    end
    if speed == 101 then
        speed = 100
    end
    spinny:Configure({ Ratio = speed })
end)
