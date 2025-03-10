@echo off

python3 -m fontmake -i -a -o ttf -m Ezerovo-Italic.designspace
python3 -m fontmake -i -a -o otf -m Ezerovo-Italic.designspace
python3 -m fontmake -a -o variable -m Ezerovo-Italic.designspace

python fix-dsig.py .\autohinted\instance_ttf\Ezerovo-Italic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Ezerovo-Italic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Ezerovo-Italic.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Ezerovo-Italic.ttf |
python fix-dsig.py .\instance_otf\Ezerovo-Italic.otf |
python fix-dsig.py .\instance_otf\Ezerovo-Italic.otf |
python fix-dsig.py .\instance_otf\Ezerovo-Italic.otf |
python fix-dsig.py .\instance_otf\Ezerovo-Italic.otf |

python fix-dsig.py .\variable_ttf\Ezerovo-Italic-VF.ttf | python fix-dsig.py .\variable_ttf\Ezerovo-Italic-VF.ttf

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\Ezerovo-Italic-VF.ttf ..\fonts\vf\Ezerovo-Italic[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit