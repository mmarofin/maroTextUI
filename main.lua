local debug = false -- change to true to enable commands

-- show export
function TextUI(message, msgType, key)
    SendNUIMessage({
        action = "show",
        message = message,
        type = msgType or "info", -- default green
        key = key or "E"             -- default E
    })
end

-- hide export (pretty simple i know)
function HideUI()
    SendNUIMessage({
        action = "hide"
    })
end

exports('TextUI', TextUI)
exports('HideUI', HideUI)

if debug then
    RegisterCommand("showtextui", function()
        TextUI("Stlač pre interakciu!", "info", "E") -- no when you press E it won't go away and I'm not gonna add a while true loop into such a simple script
    end)

    RegisterCommand("hidetextui", function()
        HideUI()
    end)
end