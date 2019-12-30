#!/bin/sed -f
s/\r$//g
1s/.*/\L&/
1s/caption_eng/caption_en/
1s/ /_/
1s/dc_2019_winner/dc_winner/
1s/pro-democracy_%/percentage_democracy/
s/🟡/democracy/g
s/🔵/establishment/g
s/⚪/nonpartisan/g
s/、/, /g
s/%$//g
s/I__//g
