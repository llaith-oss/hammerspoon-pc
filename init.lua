-- -------------------------------------------------------------------------------------
-- Goals:
--
-- GTD = Extension of Getting Things Done (trying to get organized)
--        (http://lifehacker.com/productivity-101-a-primer-to-the-getting-things-done-1551880955)
--
-- Augment cut/copy/paste functions with shortcuts that are more efficient
-- Launch favorite browser with hyper+space (or bring forward already open window)
-- Open a new terminal window
-- Allow paste into password fields that block paste operation
-- Use PC shortcut behavior including inside the Microsoft Remote Desktop (RDP) app (cut/copy/paste, cursor movement) (a work in progress)
-- Add a convenient function to lock the Mac, displaying the user menu without sleeping first
-- GTD: Open a Grab selection session and copy the result to the clipboard
-- -------------------------------------------------------------------------------------
hs.console.clearConsole()

hs.hotkey.alertDuration=0
hs.hints.showTitleThresh = 0
hs.window.animationDuration = 0

require '3rdparty'
require 'config_pckeys'
require 'functions'
require 'screen_grab'
require 'taps_flagsChanged'
require 'taps_keyDown'
require 'taps_keyUp'

-- Key combo user enters replaced with a different combo- per application
-- Define/Edit shortcuts for a each application context (incl. default shotcut for all contexts)
require 'actions'

-- Set up your shortcuts here
require 'bindings'

-- See README for known issues!

-- -------------------------------------------------------------------------------------
-- Add your own here (or require a Lua file (in this directory) or your own)



-- -------------------------------------------------------------------------------------

hs.alert.show('Config loaded')
