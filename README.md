# pianobook
Pianobook renaming script

This script renames sample files. This includes a custom prefix, the pitch and the articulation.

Example: 0001.wav --> pianobook_v1_C0_p.wav

<--Set up (similar to installing a program)-->

Get the path to the folder the script is in (Mac: alt-left-click —> Copy as pathname)
Open the terminal or any other command line

Enter: sudo chmod 755 FILEPATH_TO_THE_SCRIPT/renaming.sh

<--Set up done-->

<--Usage-->
Record instrument (obviously)
Export notes seperately (cut and export them as instructed in Christian's tutorial, just leave out the renaming part)

Get the path to the folder you exported your audiofiles into (Mac: alt-left-click —> Copy as pathname)
Get the path to the folder this script is in (Mac: alt-left-click —> Copy as pathname)

Enter (in the terminal): PATH_TO_FOLDER_W_SCRIPT/renaming.sh AUDIO_FILE_FORMAT CUSTOM_PREFIX PATH_TO_FOLDER_W_SAMPLES

AUDIO_FILE_FORMAT is the format of the audio files (I think it's aif by default in logic)
CUSTOM_PREFIX you can choose a custom filename
PATH_TO_FOLDER_W_SAMPLES I think that one is obvious as well as PATH_TO_FOLDER_W_SCRIPT

In my case it looked like this: /Users/yannick/Documents/Scripts/renaming.sh aif pianobook_v1 /Users/yannick/Documents/Samples/MyPiano


I hope this is somewhat clear to understand.


Important: My script relies on the fact that there are 36 audio files in the folder (12 quiet(piano), 12 louder(forte), 12 release triggers), there shouldn’t be any other file(s) in that folder.
           Besides that, it relies on the fact that the audio files are recorded (and that way exported) from C0 to F6 in a cycle of fifth.
           And the velocity layers are recorded in the following order: piano, forte, release triggers.
           
Of course this could be edited and everything could be made even more configurable (e.g. enabling more velocity layers).

