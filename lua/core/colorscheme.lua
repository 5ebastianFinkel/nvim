local colorscheme = "kanagawa"
--"tokyonight-storm"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  print("The colorscheme ".. colorscheme .. " is not found!")
  return
end
