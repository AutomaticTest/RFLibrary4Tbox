@echo off

echo This bat script is used for update program

rem 更新ShecklockLibrary程序
git fetch -p
git merge origin/master
echo ---Done to update ShecklockLibrary---

rem 更新TBoxLibrary程序
for /r c:\ %%d in (Python27) do (
    if exist %%d (
	    cd %%d\Lib\site-packages\TBoxLibrary
	    git clean -df
		git fetch -p
		git reset --hard origin/master
		goto :exit
	)
)
for /r d:\ %%d in (Python27) do (
    if exist %%d (
	    cd %%d\Lib\site-packages\TBoxLibrary
	    git clean -df
		git fetch -p
		git reset --hard origin/master
		goto :exit
	)
)

:exit
echo ---Done to update TBoxLibrary---
@pause
