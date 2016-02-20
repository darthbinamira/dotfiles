import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)

main = do
	xmonad defaults {
		manageHook = manageDocks <+> manageHook defaultConfig
		, layoutHook = avoidStruts $ layoutHook defaultConfig
	}

defaults = defaultConfig {
	terminal    = "terminator"
	, modMask     = mod4Mask
	, borderWidth = 0
	, normalBorderColor = "#444444"
	, focusedBorderColor = "#999999"
}

