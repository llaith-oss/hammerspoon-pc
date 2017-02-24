-- -------------------------------------------------------------------------------------
-- Sample-Configurations
-- https://github.com/Hammerspoon/hammerspoon/wiki/Sample-Configurations


-- -------------------------------------------------------------------------------------
-- Thanks to gwww for these goodies"
-- https://github.com/gwww/dotfiles/blob/master/_hammerspoon/init.lua

local configFileWatcher = nil
local appWatcher = nil

-- Reload config automatically
function reloadConfig()
  configFileWatcher:stop()
  configFileWatcher = nil
  appWatcher:stop()
  appWatcher = nil
  hs.reload()
end

configFileWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig)
configFileWatcher:start()


-- -------------------------------------------------------------------------------------
-- Thanks to vic for the smart app laucher
-- https://github.com/vic/.hammerspoon/blob/master/ext/application.lua
-- See also application.lua

-- Launch Chrome or focus it if already running
-- Then, uncomment the rest of the lines in the paragraph for powerful goodness
local module = {}
local smartLaunchOrFocus = require('application').smartLaunchOrFocus
-- Launch Chrome or cycle through open windows
hs.hotkey.bind(ultra, 'space', function() smartLaunchOrFocus('Google Chrome') end)
