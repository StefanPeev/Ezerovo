@echo off

python3 -m fontmake -i -a -o ttf -m Ezerovo.designspace
python3 -m fontmake -i -a -o ttf -m Ezerovo-Italic.designspace
python3 -m fontmake -i -a -o otf -m Ezerovo.designspace
python3 -m fontmake -i -a -o otf -m Ezerovo-Italic.designspace

exit