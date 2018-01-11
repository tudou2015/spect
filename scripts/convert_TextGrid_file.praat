# praat
# This script opens a TextGrid file and replaces it by saving the file again in "text file" format.
# The script is useful in case some of your TextGrid files have been saved as "short text files" and you don't want that to happen.
#
# Mietta Lennes 11.1.2018

form Save TextGrid again as text file (replace the existing short text file)
   sentence File "Raja-Karjalan_korpus/Ilomantsi/ilomantsi_textgrid/Ilomantsi_01nA_SKNA_503_1a.TextGrid"
endform

if right$ (file$, 9) = ".TextGrid" or right$ (file$, 9) = ".textGrid" or right$ (file$, 9) = ".textgrid"
	Read from file: file$
	Text writing preferences: "UTF-8"
	Save as text file: file$
	writeInfoLine: "Replaced: ", file$
endif
