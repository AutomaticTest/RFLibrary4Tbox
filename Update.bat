@echo off

echo This bat script is used for update program

set scandisk=c d e f g h i

rem 更新ShecklockLibrary程序
git fetch -p
git merge origin/master
echo ---Done to update ShecklockLibrary---

for %%i in (%scandisk%) do (
    if exist %%i:\Python27\Lib\site-packages (
        rem 更新TBoxLibrary程序
        cd %%i:\Python27\Lib\site-packages\TBoxLibrary
        git clean -df
		git fetch -p
		git reset --hard origin/master

		rem 更新RIDE程序
		xcopy /y %%i:\Python27\Lib\site-packages\TBoxLibrary\Patches\RIDE\testrunnerplugin.py %%i:\Python27\Lib\site-packages\robotide\contrib\testrunner\testrunnerplugin.py
    )
)

@pause
