#!/bin/bash
## Function to get path from name

get_full_path_from_window_name(){
	array=($1)
	working_directory=${array[0]}
}

working_directory=$HOME
#echo $working_directory  ## /home/aliaa
#sleep 2;
focus_pid=$(xdotool getactivewindow)		## or getwindowfocus
#echo $(xdotool getwindowname $focus_pid)
#echo $focus_pid ## long pid number 8 digits
pids=$(xdotool search --classname "Thunar")
#echo $pids ## long pid numbers 8 digits
for pid in $pids; do
if [[ $pid == $focus_pid ]]; then
	#echo "Found Thunar window in focus"
	title=$(xdotool getwindowname $pid)
	#echo $title
	get_full_path_from_window_name $title
	#echo $working_directory		
fi
done

exo-open --working-directory $working_directory --launch TerminalEmulator
