-- Konfigurasi Key
local key = "kaitunkey123"

-- Ambil key dari Pastebin (harus sama dengan 'key' di atas)
local pastebinKey = game:HttpGet("https://pastebin.com/raw/8kEbkZ8x")

-- Cek key
if pastebinKey ~= key then
    game.Players.LocalPlayer:Kick("Key Salah!")
    return
end

-- Kalau key cocok, jalanin fitur di bawah ini
getgenv().Configuration = {
    ["Kaitan Mode"] = {
        Enabled = true,
        AutoFarm = true,
    },
    ["SeverHop"] = {
        Enabled = true,
        Lower = 4,
    },
    ["Join Team"] = {
        Enabled = true,
        Join_CF_First = true,
        Team = "Home_RW", -- Ganti sesuai kebutuhan
    },
    ["FPS Limit"] = {
        Enabled = false,
        FPS = 15,
    },
    ["Redeem Code"] = true,
}

-- Contoh tampilan bahwa script aktif
print("Script berhasil dijalankan dengan key yang benar!")
