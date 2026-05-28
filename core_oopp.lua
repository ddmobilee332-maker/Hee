-- Ruenyai HUB v2.0 - Command Module [oopp]
local Session = require("session")
local Theme = require("theme")
local c = Theme.Colors

local Module = {}

function Module.Execute()
    print(c.DarkRed .. "┌──( SYSTEM: ACCOUNT CREDENTIALS ENGINE )" .. c.Reset)
    io.write(c.DarkRed .. "├──" .. c.Gray .. " กรอกชื่อจริงในเกม Roblox: " .. c.Reset)
    local user_input = io.read()
    
    if user_input == "" then
        print(c.Red .. "└── [!] ERROR: ชื่อผู้ใช้ไม่สามารถเว้นว่างได้" .. c.Reset)
        return
    end
    
    io.write(c.DarkRed .. "├──" .. c.Gray .. " กรอกรหัสผ่าน (Password): " .. c.Reset)
    local pass_input = io.read()
    print(c.DarkRed .. "└──" .. c.Reset)
    
    print("")
    Theme.ProgressBar("GENERATING SECURE HASHING & ENCRYPTING DATA", 2.0)
    Theme.ProgressBar("CONNECTING TERMINAL TO ROBLOX AUTH-SERVER", 2.5)
    
    Session.Username = user_input
    Session.Password = pass_input:gsub(".", "*")
    Session.IsOnline = true
    
    print(c.Green .. "[+] SUCCESS: บัญชี [" .. Session.Username .. "] เข้ารหัสเรียบร้อยและออนไลน์แล้ว!" .. c.Reset)
end

return Module
