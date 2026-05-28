-- Ruenyai HUB v2.0 - UI & Terminal Assets
local Theme = {}

Theme.Colors = {
    Red     = "\27[31m",
    DarkRed = "\27[1;31m",
    Gray    = "\27[90m",
    Green   = "\27[32m",
    Yellow  = "\27[33m",
    Reset   = "\27[0m"
}

function Theme.ProgressBar(text, seconds)
    local width = 20
    io.write(Theme.Colors.Red .. "[ SYSTEM ] " .. text .. "\n" .. Theme.Colors.Gray .. "[")
    for i = 1, width do
        os.execute("sleep " .. tostring(seconds / width)) 
        io.write(Theme.Colors.Red .. "█")
        io.flush()
    end
    print(Theme.Colors.Gray .. "] " .. Theme.Colors.Green .. " DONE" .. Theme.Colors.Reset .. "\n")
end

function Theme.PrintHeader()
    local c = Theme.Colors
    os.execute("clear") or os.execute("cls")
    print(c.DarkRed .. [[
 ██████╗ ██╗   ██╗███████╗███╗   ██╗██╗   ██╗ █████╗ ██╗    ██╗██╗   ██╗██████╗ 
 ██╔══██╗██║   ██║██╔════╝████╗  ██║╚██╗ ██╔╝██╔══██╗██║    ██║██║   ██║██╔══██╗
 ██████╔╝██║   ██║█████╗  ██╔██╗ ██║ ╚████╔╝ ███████║██║    ██║██║   ██║██████╔╝
 ██╔══██╗██║   ██║██╔══╝  ██║╚██╗██║  ╚██╔╝  ██╔══██║██║    ██║██║   ██║██╔══██╗
 ██║  ██║╚██████╔╝███████╗██║ ╚████║   ██║   ██║  ██║██║    ██║╚██████╔╝██████╔╝
 ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝╚═╝    ╚═╝ ╚═════╝ ╚═════╝ ]])
    print(c.Red .. " =======================================================================")
    print("   PROJECT: RUENYAI HUB v2.0  |  OWNER: " .. c.Reset .. "รุ่นใหญ่ HUB" .. c.Red)
    print("   STATUS: " .. c.Green .. "ONLINE" .. c.Red .. "                   |  MODULES: 5 INTEGRATED FILES")
    print(" =======================================================================" .. c.Reset)
    print(c.Gray .. "  [+] COMMANDS: [oopp] Auth บัญชี | [oopp2] ส่งเข้าแมพ | [oopp3] สั่งการบอต")
    print(c.Red .. " =======================================================================\n" .. c.Reset)
end

return Theme
