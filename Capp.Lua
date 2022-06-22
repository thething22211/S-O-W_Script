if not getgenv then
    _G.getgenv = function()
        return _G
    end
end
if not syn then
    getgenv().syn = {
        request = function(t)
            return http_request(t)
        end,
        protect_gui = function(object) end
    }
    getgenv().isfile = function(t)
        return pcall(function()
            readfile(t)
        end)
    end
    getgenv().delfile = function() end
end

pcall(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/thething22211/S-O-W_Script/main/FAKE.Lua?token=GHSAT0AAAAAABV2HUAQ6TDLBOR3NDFZIKU6YVTTJHQ'))()
end)
