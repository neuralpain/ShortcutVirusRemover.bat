:		Shortcut Virus Remover - NI: Removal of shortcut viruses in batch and more
:		Copyright (C) 2016 BEAST_PROGRAMMING
:
:		This program is free software: you can redistribute it and/or modify
:		it under the terms of the GNU General Public License as published by
:		the Free Software Foundation, either version 3 of the License, or
:		(at your option) any later version.
:
:		This program is distributed in the hope that it will be useful,
:		but WITHOUT ANY WARRANTY; without even the implied warranty of
:		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
:		GNU General Public License for more details. 
:
:		You should have received a copy of the GNU General Public License
:		along with this program.  If not, see GNUGPL.txt.

@echo off
title Shortcut Virus Remover - NI [%date% @ %time%]
color 17

::(__DO_NOT_TAMPER_WITH_UAC_Prompt_CODE__)::

:UAC_Prompt
	NET SESSION >nul 2>&1 && goto noUAC
	set n=%0 %*
	set n=%n:"=" ^& Chr(34) ^& "%
	echo Set objShell = CreateObject("Shell.Application")>"%tmp%\cmdUAC.vbs"
	echo objShell.ShellExecute "cmd.exe", "/c start " ^& Chr(34) ^& "." ^& Chr(34) ^& " /d " ^& Chr(34) ^& "%CD%" ^& Chr(34) ^& " cmd /c %n%", "", "runas", ^1>>"%tmp%\cmdUAC.vbs"
	echo Not Admin, Attempting to elevate...
	cscript "%tmp%\cmdUAC.vbs" //Nologo
	del "%tmp%\cmdUAC.vbs"

::(__DO_NOT_TAMPER_WITH_UAC_Prompt_CODE__)::

:begin
	mode 45,10
	cls
	echo LOADING Shortcut Virus Remover
	echo.
	echo PLEASE WAIT
	timeout /t 0 > null
	
	:loop1
		for /L %%n in (1,1,15) do (
			cls
			echo LOADING Shortcut Virus Remover
			echo.
			echo PLEASE WAIT /
			timeout /t 0 /nobreak > null
			cls
			echo LOADING Shortcut Virus Remover
			echo.
			echo PLEASE WAIT -
			timeout /t 0 /nobreak > null
			cls
			echo LOADING Shortcut Virus Remover
			echo.
			echo PLEASE WAIT \
			timeout /t 0 /nobreak > null
		)
	cls
	echo LOADING Shortcut Virus Remover
	echo.
	echo PLEASE WAIT *
	timeout /t 1 /nobreak > null

:basicinfo
	mode 57,12
	color 17
	cls
	echo.
	echo   This software is brought to you by BEAST_PROGRAMMING
	echo       ~ The Beast Within Us Shall Write The Code ~
	echo.
	echo  This program is free software.
	echo  This program IS PROVIDED WITHOUT WARRANTY, EITHER
	echo  EXPRESSED OR IMPLIED.
	echo.
	echo  This program is copyrighted under the terms of 
	echo  GPLv3: see "show license" option in program menu or
	echo  see "GNUGPL.txt" in program folder.
	timeout /t 10 /nobreak > null

:pro_name
	mode 31,3
	cls 
	echo.
	echo  SHORTCUT VIRUS REMOVER v0.4.6
	timeout /t 1 /nobreak > null
	mode 31,4
	echo.
	echo  SHORTCUT VIRUS REMOVER v0.4.6
	echo  Copyright (C) 2016
	timeout /t 1 /nobreak > null
	mode 31,5
	echo.
	echo  SHORTCUT VIRUS REMOVER v0.4.6
	echo  Copyright (C) 2016
	echo  All rights reserved.
	timeout /t 6 /nobreak > null

:make_logs_of_files
	if not exist %cd%\log (
		md %cd%\log
	)
	
	mode 50,8
	echo.
	echo Loading Files . . .
	if exist d:\ (
		:log.d
			cd D:
			dir /s /c /n /4 /o:gens D:\*.* > %cd%\log\log_d[%random%].txt
	:: refer to dictionary for^^^
			del null
			goto log.e
	)

	if exist e:\ (
		:log.e
			cd E:
			dir /s /c /n /4 /o:gens E:\*.* > %cd%\log\log_e[%random%].txt
			del null
			goto log.f
	)

	if exist f:\ (
		:log.f
			cd F:
			dir /s /c /n /4 /o:gens F:\*.* > %cd%\log\log_f[%random%].txt
			del null
			goto log.g
	)

	if exist g:\ (
		:log.g
			cd G:
			dir /s /c /n /4 /o:gens G:\*.* > %cd%\log\log_g[%random%].txt
			del null
			goto log.h
	)

	if exist h:\ (
		:log.h
			cd H:
			dir /s /c /n /4 /o:gens H:\*.* > %cd%\log\log_h[%random%].txt
			del null
			goto log.i
	)

	if exist i:\ (
		:log.i
			cd I:
			dir /s /c /n /4 /o:gens I:\*.* > %cd%\log\log_i[%random%].txt
			del null
			goto log.j
	)

	if exist j:\ (
		:log.j
			cd J:
			dir /s /c /n /4 /o:gens J:\*.* > %cd%\log\log_j[%random%].txt
			del null
	)
	goto main

:main
	color 17
	mode 72,14
	cls
	echo ENTER NAME OF DRIVE
	echo.
	echo Type "1" and press 'Enter' To find connected drives in Windows Explorer
	echo Type "2" and press 'Enter' To exit Shortcut Virus Remover
	echo Type in the LETTER ONLY if you know the name
	echo.
	echo *Do not try to remove the shortcut viruses on drive C:, you will
	echo receive an 'Access denied' error message and might damage your
	echo computer
	echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
	echo.
	set /p car= 
	if %car% == 1 goto unknown
	if %car% == 2 goto exit_svr
	if %car% == c goto c
	if %car% == d goto existyn
	if %car% == e goto existyn
	if %car% == f goto existyn
	if %car% == g goto existyn
	if %car% == h goto existyn
	if %car% == i goto existyn
	if %car% == j goto existyn
	if %car% == k goto existyn
	if %car% == l goto existyn
	if %car% == m goto existyn
	if %car% == q goto existyn
	if %car% == C goto c
	if %car% == D goto existyn
	if %car% == E goto existyn
	if %car% == F goto existyn
	if %car% == G goto existyn
	if %car% == H goto existyn
	if %car% == I goto existyn
	if %car% == J goto existyn
	if %car% == K goto existyn
	if %car% == L goto existyn
	if %car% == M goto existyn
	if %car% == Q goto existyn
	goto dfnr

:existyn
	if exist %car%:\ goto drivefix
	goto not_exist 

:not_exist
	mode 50,7
	cls
	echo.
	echo   The drive you have entered does not exist
	echo   Note: Type 1 to view list of available drives
	echo.
	echo   Press any key to go back and enter drive
	echo   letter again . . .
	pause > null
	goto main

:unknown
	mode 45,11
	cls
	echo LOOK FOR DRIVE LETTER BELOW:
	echo.
	wmic logicaldisk get deviceid, volumename, description
	echo.
	echo Press any key to go back . . .
	pause > null
	goto main 

:dfnr
	cls
	echo ENTER NAME OF DRIVE
	echo.
	echo Type "1" and press 'Enter' To find connected drives in Windows Explorer
	echo Type "2" and press 'Enter' To exit Shortcut Virus Remover
	echo Type in the LETTER ONLY if you know the name
	echo.
	echo *Do not try to remove the shortcut viruses on drive C:, you will
	echo receive an 'Access denied' error message and might damage your
	echo computer
	echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
	color 1c
	echo.
	echo                     XXX* INCORRECT ENTRY *XXX
	echo.
	echo             .:. Drive or Function Not Recognised .:.
	timeout /t 2 /nobreak > null
	cls
	goto main

:drivefix
	cls
	echo ENTER NAME OF DRIVE
	echo.
	echo Type "1" and press 'Enter' To find connected drives in Windows Explorer
	echo Type "2" and press 'Enter' To exit Shortcut Virus Remover
	echo Type in the LETTER ONLY if you know the name
	echo.
	echo *Do not try to remove the shortcut viruses on drive C:, you will
	echo receive an 'Access denied' error message and might damage your
	echo computer
	echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
	echo REMOVAL IN PROGRESS...
	attrib -h -r -s /s /d  %car%:\*.*
	goto end

:c
	::danger preventage/warning message
	mode 65,12
	cls
	echo.
	echo.
	echo                             WARNING!
	echo.
	echo.
	echo Failure to adhere to these instructions:
	timeout /t 2 /nobreak > null
	mode 70,7
	cls
	color f
	echo.
	echo.
	echo    *Do not try to remove the shortcut viruses on drive C:, you may 
	echo    receive an 'Access denied' error message and might damage your   
	echo    computer                                                         
	timeout /t 6 /nobreak > null
	mode 65,12
	color 17
	cls
	echo.
	echo.
	echo                             WARNING!
	echo.
	echo.
	echo Failure to adhere to these instructions, will result in serious
	echo problems.
	timeout /t 1 /nobreak > null

	:warning
		::choice?
		cls
		echo.
		echo.
		echo                             WARNING!
		echo.
		echo.
		echo Failure to adhere to these instructions, will result in serious
		echo problems.
		echo.
		echo 1 continue
		echo 2 go back
		echo.
		set /p warning=
		if %warning% == 1 goto c*
		if %warning% == 2 goto main
		goto warning

	:c*
		mode 72,14
		cls
		echo ENTER NAME OF DRIVE
		echo.
		echo Type "1" and press 'Enter' To find connected drives in Windows Explorer
		echo Type "2" and press 'Enter' To exit Shortcut Virus Remover
		echo Type in the LETTER ONLY if you know the name
		echo.
		echo *Do not try to remove the shortcut viruses on drive C:, you will
		echo receive an 'Access denied' error message and might damage your
		echo computer
		echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
		echo REMOVAL IN PROGRESS...
		attrib -h -r -s /s /d  c:\*.*
		pause
		goto end

:end
	cls
	echo ENTER NAME OF DRIVE
	echo.
	echo Type "1" and press 'Enter' To find connected drives in Windows Explorer
	echo Type "2" and press 'Enter' To exit Shortcut Virus Remover
	echo Type in the LETTER ONLY if you know the name
	echo.
	echo *Do not try to remove the shortcut viruses on drive C:, you will
	echo receive an 'Access denied' error message and might damage your
	echo computer
	echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
	echo Removal Complete!
	timeout /t 1 /nobreak > null
	echo.
	echo Next . . .
	pause > null
	
	mode 73,18
	cls
	echo ENTER NAME OF DRIVE
	echo.
	echo Type "1" and press 'Enter' To find connected drives in Windows Explorer
	echo Type "2" and press 'Enter' To exit Shortcut Virus Remover
	echo Type in the LETTER ONLY if you know the name
	echo.
	echo *Do not try to remove the shortcut viruses on drive C:, you will
	echo receive an 'Access denied' error message and might damage your
	echo computer
	echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
	echo Removal Complete!
	echo.
	echo Now, delete the replicant files (shortcuts) made by the virus
	echo The replicant file has a curved arrow at the bottom-left corner with the
	echo same name and icon as your original file
	timeout /t 1 /nobreak > null
	echo.
	mode 73,20
	cls
	echo ENTER NAME OF DRIVE
	echo.
	echo Type "1" and press 'Enter' To find connected drives in Windows Explorer
	echo Type "2" and press 'Enter' To exit Shortcut Virus Remover
	echo Type in the LETTER ONLY if you know the name
	echo.
	echo *Do not try to remove the shortcut viruses on drive C:, you will
	echo receive an 'Access denied' error message and might damage your
	echo computer
	echo ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
	echo Removal Complete!
	echo.
	echo Now, delete the replicant files (shortcuts) made by the virus
	echo The replicant file has a curved arrow at the bottom-left corner with the
	echo same name and icon as your original file
	timeout /t 1 /nobreak > null
	echo.
	echo Be careful that you do not delete your working files!
	timeout /t 1 /nobreak > null
	echo.
	echo Continue . . .
	pause > null

:make_dot_lnks list
	if not exist %cd%\lnk (
		md %cd%\lnk
	)
	mode 50,8
	echo.
	echo Creating Archive . . .
REM -------------------------------------------------------------------------
REM 	if exist d:\ (
REM 		:dot_lnk.d
REM 			cd D:
REM 			dir /s /c /n /4 /o:gens D:\*.lnk > dot_lnk_d.txt
REM 			del null
REM 			goto dot_lnk.e
REM 	)
REM 
REM 	if exist e:\ (
REM 		:dot_lnk.e
REM 			cd E:
REM 			dir /s /c /n /4 /o:gens E:\*.lnk > dot_lnk_e.txt
REM 			del null
REM 			goto dot_lnk.f
REM 	)
REM 
REM 	if exist f:\ (
REM 		:dot_lnk.f
REM 			cd F:
REM 			dir /s /c /n /4 /o:gens F:\*.lnk > dot_lnk_f.txt
REM 			del null
REM 			goto dot_lnk.g
REM 	)
REM 
REM 	if exist g:\ (
REM 		:dot_lnk.g
REM 			cd G:
REM 			dir /s /c /n /4 /o:gens G:\*.lnk > dot_lnk_g.txt
REM 			del null
REM 			goto dot_lnk.h
REM 	)
REM 
REM 	if exist h:\ (
REM 		:dot_lnk.h
REM 			cd H:
REM 			dir /s /c /n /4 /o:gens H:\*.lnk > dot_lnk_h.txt
REM 			del null
REM 			goto dot_lnk.i
REM 	)
REM 
REM 	if exist i:\ (
REM 		:dot_lnk.i
REM 			cd I:
REM 			dir /s /c /n /4 /o:gens I:\*.lnk > dot_lnk_i.txt
REM 			del null
REM 			goto dot_lnk.j
REM 	)
REM 
REM 	if exist j:\ (
REM 		:dot_lnk.j
REM 		cd J:
REM 		dir /s /c /n /4 /o:gens J:\*.lnk > dot_lnk_j.txt
REM 		del null
REM 	)
REM -------------------------------------------------------------------------

	if exist %car%:\ (
		:dot_lnk
		cd %car%:
		dir /s /c /n /4 /o:gens %car%:\*.lnk > %cd%\lnk\dot_lnk_%car%[%random%].txt
		del null
	)

	:continue_after_archive
		mode 25,7
		cls
		echo.
		echo.
		echo.
		echo      Continue . . .
		pause > null
		goto main

:exit_svr
	
	:savestate
		mode 23,7
		cls
		echo.
		echo.
		echo.
		echo      SAVING STATE
		timeout /t 1 /nobreak > null
		mode 25,7
		cls
		echo.
		echo.
		echo.
		echo      SAVING STATE *
		timeout /t 0 /nobreak > null
		mode 27,7
		cls
		echo.
		echo.
		echo.
		echo      SAVING STATE . *
		timeout /t 0 /nobreak > null
		mode 29,7
		cls
		echo.
		echo.
		echo.
		echo      SAVING STATE . . *
		timeout /t 0 /nobreak > null
		
		:loop2
			for /L %%n in (1,1,20) do (
				cls
				echo.
				echo.
				echo.
				echo      SAVING STATE * . .
				timeout /t 0 /nobreak > null
				cls
				echo.
				echo.
				echo.
				echo      SAVING STATE . * .
				timeout /t 0 /nobreak > null
				cls
				echo.
				echo.
				echo.
				echo      SAVING STATE . . *
				timeout /t 0 /nobreak > null
			)
		cls
		echo.
		echo.
		echo.
		echo            DONE!
		timeout /t 2 /nobreak > null

	:goodbye
		mode 23,7
		cls
		echo.
		echo.
		echo.
		echo      G
		timeout /t 0 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GO
		timeout /t 0 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GOO
		timeout /t 0 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GOOD
		timeout /t 0 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GOODB
		timeout /t 0 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GOODBY
		timeout /t 0 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GOODBYE
		timeout /t 0 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GOODBYE :
		timeout /t 0 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GOODBYE :-
		timeout /t 0 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GOODBYE :-)
		timeout /t 3 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GOODBYE ;-)
		timeout /t 1 /nobreak > null
		cls
		echo.
		echo.
		echo.
		echo      GOODBYE :-)
		timeout /t 3 /nobreak > null
		del null
		exit
