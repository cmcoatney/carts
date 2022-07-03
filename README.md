# Pico-8 Game Development 

1. Icebreaker
Puzzle game based on Nat-Geo's Puzzle Explorer. Follow Sophie the penguin as she navigates her environment to get some food (fish) and go home each day (igloo).

## Installation & Configuration
\*\*\* This actually works to open folder
cd "/Users/matthewcoatney/Library/Application Support/pico-8"

https://www.lexaloffle.com/bbs/?tid=3187

There's a direct solution to changing the cart directory, no symlink required. Open ~/Library/Application Support/pico-8/config.txt in a text editor, and look for "root_path". The "Library" is hidden in Finder by default, but you can use Finder's Go > Go to Folder... menu option to get there.

Be sure that Pico-8 is not running when you edit config.txt. Pico-8 writes this file based on its in-memory settings when it quits, so it'll undo changes made while it is running.

Keyboard maestro script:

1. launch iTerm2
2. Execute AppleScript

tell application "iTerm"
set newWindow to (create window with default profile)
tell current session of newWindow
write text "cd /Users/matthewcoatney/Library/Application Support/pico-8/carts"
write text "code ."
write text "/Applications/PICO-8.app/Contents/MacOS/pico8 -run $\*"
end tell
end tell
