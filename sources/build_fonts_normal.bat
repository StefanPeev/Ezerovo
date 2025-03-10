@echo off

python3 -m fontmake -i -a -o ttf -m Ezerovo.designspace
python3 -m fontmake -i -a -o otf -m Ezerovo.designspace
python3 -m fontmake -a -o variable -m Ezerovo.designspace

python fix-dsig.py .\autohinted\instance_ttf\Ezerovo-Regular.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Ezerovo-Medium.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Ezerovo-SemiBold.ttf |
python fix-dsig.py .\autohinted\instance_ttf\Ezerovo-Bold.ttf |
python fix-dsig.py .\instance_otf\Ezerovo-Regular.otf |
python fix-dsig.py .\instance_otf\Ezerovo-Medium.otf |
python fix-dsig.py .\instance_otf\Ezerovo-SemiBold.otf |
python fix-dsig.py .\instance_otf\Ezerovo-Bold.otf |

python fix-dsig.py .\variable_ttf\Ezerovo-VF.ttf | python fix-dsig.py .\variable_ttf\Ezerovo-VF.ttf

move .\autohinted\instance_ttf\*.ttf ..\fonts\ttf\
move .\instance_otf\*.otf ..\fonts\otf\
move .\variable_ttf\Ezerovo-VF.ttf ..\fonts\vf\Ezerovo[wght].ttf
rmdir .\autohinted\instance_ttf\
rmdir .\autohinted\
rmdir .\instance_otf\
rmdir .\variable_ttf\
python ..\fonts\generate-woff-woff2.py
exit