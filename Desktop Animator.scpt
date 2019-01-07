(*author : Matti Schneider
*Creation date : 24/09/2007
*Last modified : 23/12/2007
*
*This script uses ScreenSaverEngine to display the current screen saver as the background image.
*)

set isRunning to do shell script "top -l 1 | grep -q ScreenSave; echo $?"
if isRunning is equal to "1" then
	do shell script "/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &> /dev/null &"
else
	quit application "ScreenSaverEngine"
end if
quit
