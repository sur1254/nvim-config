-- ============================================================
--  Plugins entry point — dipanggil dari core/setup.lua
--  Memuat semua modul UI custom
-- ============================================================

local function safe_require(name)
  local ok, mod = pcall(require, name)
  if not ok then return end
  if type(mod) == "table" and mod.setup then
    mod.setup()
  end
end

safe_require("ui.winbar")
safe_require("ui.menu")
safe_require("ui.disable_italic")
