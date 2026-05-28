-- Ruenyai HUB v2.0 - Command Module [oopp2]
local Session = require("session")
local Theme = require("theme")
local c = Theme.Colors

local Module = {}

function Module.Execute()
    print(c.DarkRed .. "┌──( SYSTEM: MAP SCANNER & INJECTOR V2 )" .. c.Reset)
    io.write(c.DarkRed .. "├──" .. c.Gray .. " วางลิงก์แมพ Roblox: " .. c.Reset)
    local map_link = io.read()
    print(c.DarkRed .. "└──" .. c.Reset)
    
    local extracted_id = map_link:match("games/(%d+)") or map_link:match("(%d+)")
    if not extracted_id then
        print(c.Red .. "[!] ERROR: รูปแบบลิงก์ไม่ถูกต้อง ไม่สามารถค้นหา Place ID ได้" .. c.Reset)
        return
    end
    
    print("\n" .. c.DarkRed .. " ╔═════════════════ MAP DATABASE ANALYSIS ═════════════════╗")
    print(c.Red .. "   • TARGET PLACE ID  : " .. c.Reset .. extracted_id)
    print(c.Red .. "   • MAP NAME DETECTED: " .. c.Reset .. "Blox Fruits / Grand Piece (Simulated)")
    print(c.Red .. "   • SERVER SECURITY  : " .. c.Yellow .. "BYPASSED BY RUENYAI" .. c.Reset)
    print(c.DarkRed .. " ╚═════════════════════════════════════════════════════════╝\n")
    
    if not Session.IsOnline then
        print(c.Red .. "[!] ปฏิเสธระบบ! ต้องพิมพ์คำสั่ง oopp เพื่อออนรหัสก่อนส่งเข้าแมพ" .. c.Reset)
        return
    end
    
    io.write(c.Yellow .. "[?] ต้องการให้รหัส [" .. Session.Username .. "] เข้าไปในแมพนั้นหรือไม่? (y/n): " .. c.Reset)
    local confirm = io.read():lower()
    
    if confirm == "y" then
        Session.MapID = extracted_id
        Session.CurrentMap = "Target-Map (ID: " .. extracted_id .. ")"
        print("")
        Theme.ProgressBar("INJECTING TELEPORT PACKETS INTO GAME CLIENT", 3.0)
        print(c.Green .. "[+] นำรหัส [" .. Session.Username .. "] เข้าสู่แมพเป้าหมายสำเร็จ!" .. c.Reset)
    else
        print(c.Gray .. "[-] ยกเลิกกระบวนการส่งรหัส" .. c.Reset)
    end
end

return Module
