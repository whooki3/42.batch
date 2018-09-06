@echo off
title Turing test
setlocal enableextensions enabledelayedexpansion
color 1F
mode con: cols=50 lines=50
mode 10000
set loopcount=500

:intro
cls
echo.
echo --------------------------------------------
echo 			The Turing Test
echo 			-----------------------
echo.
echo 			      0110    1100011010
echo 			    0101100   1100110010100
echo 			  10000 001   1010     0101
echo 			11001   100           10000
echo 			0010110011001 100000011011
echo 			0001101111011 0111
echo					101   110000011011001010
echo					100   01100110011000111010010100101010101
echo.
echo 				brought to you by 42 and Deeplearning Inc.......................................................................
echo.
pause
goto :entergame

:entergame
cls
echo.
echo 	Hello and welcome to The Turing Test.
echo.
echo.
echo 		To continue you must login or create an account.
echo.
echo			1. Login
echo			2. Register
echo			3. Exit
echo.
echo.
echo.
echo.
echo		The Turing Test is brought to you by Deeplearning inc.
echo.
set /p input=: 
if %input%==1 goto login
if %input%==2 goto createuser
if %input%==3 goto exit 
if not %input%==1/2/3 goto entergame

:exit
cls
echo.
echo	Are you sure you want to exit?
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
SET /P ANSWER=(Y/N):

if /i {%ANSWER%}=={y} (goto :afsluiten) 
if /i {%ANSWER%}=={yes} (goto :afsluiten) 
goto :entergame

:createuser
cls
echo.
echo 	Please type your desired username below
echo.
echo.
set /p username1=username:
set v1f=0


:checkforspaces
set x=!v1f!
set Letter%v1f%=!username1:~%x%,1!
if "!Letter%v1f%!" EQU " " (
echo.
echo.
echo 				Sorry you can not use spaces in your username.
pause>nul
goto entergame
)
if NOT "!Letter%v1f%!" EQU "" (
set /a v1f=%v1f%+1
goto checkforspaces
)
echo.
echo.
echo.
echo.
echo.
echo.
echo 	Please type your desired password for this username below.
echo.
echo.
set /p password1=password: 
goto DATA_VALUES


:login
cls
echo.
echo 	To login you need to provide your username
echo.
echo.
set /p name1=username: 
if not exist "%name1%.bat" (
echo That is not a valid Username.
pause>nul
goto entergame
)
echo.
echo.
set /p pass1=password: 
call %name1%.bat
if not %password1% EQU %pass1% (
echo That is not a valid Password.
pause>nul
goto entergame
)

:DATA_VALUES
set acc1g=0
set acc1m=Open
set acc2g=0
set acc2m=Open
set acc3g=0
set acc3m=Open
set acc4g=0
set acc4m=Open
set acc5g=0
set acc5m=Open
set cost=--
set cost1=--
set gcho=--
set echo=--
set e2cho=--
set e1=--
set dmgnpc=0
set ls1=0

goto SAVE_GAME_FILES

:Terms1
cls
echo.
echo 	Read the following information carefully please.
echo.
echo 	The Turing Test 1a
echo 		Alan Turing and the Imitation Game
echo.
echo 		Alan Turing, in a 1951 paper, proposed a test called 
echo 	"The Imitation Game" that might finally settle the issue 
echo 	of machine intelligence. The first version of the game 
echo 	he explained involved no computer intelligence whatsoever. 
echo 	Imagine three rooms, each connected via computer screen 
echo 	and keyboard to the others. In one room sits a man, 
echo 	in the second a woman, and in the third sits a person 
echo 	- call him or her the "judge". The judge's job is to decide 
echo 	which of the two people talking to him through the computer 
echo 	is the man. The man will attempt to help the judge, 
echo 	offering whatever evidence he can (the computer terminals 
echo 	are used so that physical clues cannot be used) to prove 
echo 	his man-hood. The woman's job is to trick the judge, 
echo 	so she will attempt to deceive him, and counteract her 
echo 	opponent's claims, in hopes that the judge will erroneously
echo 	identify her as the male.
echo.
SET /P input=I (%username1%) have read and understood the The Turing Test 1a(Y/N):
if %input%==yes goto terms2
if %input%==y goto terms2
if %input%==n goto exit
if %input%==no goto exit
if %input%==99 goto L_No_computer_ai2
if not %input%==y/yes/n/no/99 goto terms1

:terms2
echo.
echo 	The Turing Test 1b
echo 		Alan Turing and the Imitation Game
echo.
echo 		What does any of this have to do with machine intelligence?
echo 	Turing then proposed a modification of the game, in which 
echo 	instead of a man and a woman as contestants there was a human, 
echo 	of either gender, and a computer at the other terminal. 
echo 	Now the judge's job is to decide which of the contestants
echo 	is human, and which the machine. Turing proposed that if, 
echo 	under these conditions, a judge were less than 50% accurate, 
echo 	that is, if a judge is as likely to pick either human 
echo 	or computer, then the computer must be a passable simulation 
echo 	of a human being and hence, intelligent. The game has been 
echo 	recently modified so that there is only one contestant, 
echo 	and the judge's job is not to choose between two contestants, 
echo 	but simply to decide whether the single contestant 
echo 	is human or machine.
echo.
set /p input=I (%username1%) have read and understood the The Turing Test 1b(Y/N):
if %input%==yes goto terms3
if %input%==y goto terms3
if %input%==n goto exit
if %input%==no goto exit
if not %input%==y/yes/n/no goto terms2

:terms3
echo.
echo 		In The Turing Test it is your goal to convince 
echo 	the judge that you are infact a human and not a computer. 
echo 	If you manage to convince the judge that you are a human, 
echo 	you have passed The Turing Test. If the judge judges you 
echo 	to be a computer you have failed the turing test.
echo.
echo 	You can take this test as many times as you'd like.
echo.
echo 	1. Start The Turing Test
echo 	2. Exit
echo.
set /p input=:
if %input%==1 goto question1
if %input%==2 goto exit
if not %input%==1/2 goto terms3

:question1
cls
echo.
set lines=1
set lines=2
set lines=3

set "line1= 	Hi %username1%,"
set "line2= 	I'm the judge."
set "line3= 	But if you like you may call me Hugo."
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo 	1. Alright, I will call you Hugo.
echo.
echo 	2. I will just call you judge.
echo.
SET /P input=:

if %input%==1 goto question2
if %input%==2 goto question2
if not %input%==1/2 goto question1

:question2
cls
echo.
set lines=1
set lines=2
set "line1= 	Both of them are fine with me really,"
set "line2= 	Could you tell me something about your self?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo 	1. I like to think that I am a postive thinker.
echo. 
echo 	2. I have a cat.
echo.
echo 	3. I am not quite sure who I really am, I mean does sanyone truly ever really know who they are?
echo.
echo 	4. I am a bit curious where this is going.
echo.
SET /P input=:

if %input%==1 goto question3
if %input%==2 goto question3
if %input%==3 goto question3
if %input%==4 goto question3
if not %input%==1/2/3/4 goto question2

:question3
cls
echo.
set lines=1
set lines=2
set "line1= 	Do you like the position you are in?"
set "line2= 	Not right now but like, in life?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
SET /P input=(Y/N):

if %input%==yes goto question3aa
if %input%==y goto question3aa
if %input%==n goto question3aa
if %input%==no goto question3aa
if not %input%==y/yes/n/no goto question3

:question3aa
cls
echo.
set lines=1
set lines=2
set lines=3
set "line1= 	That question might have been a bit to personal."
set "line2= 	We don't know each other that long yet, I am sorry."
set "line3= 	Don't you agree?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
SET /P input=(Y/N):

if %input%==yes goto question3bb
if %input%==y goto question3bb
if %input%==n goto question3bb
if %input%==no goto question3bb
if not %input%==y/yes/n/no goto question3aa

:question3bb
cls
echo.
set lines=1
set lines=2
set "line1= 	Well it's just that it's the first time I am doing this"
set "line2= 	Is this your first time as well?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
SET /P input=(Y/N):

if %input%==yes goto question3cc
if %input%==y goto question3cc
if %input%==n goto question3cc
if %input%==no goto question3cc
if not %input%==y/yes/n/no goto question3bb

:question3cc
cls
echo.
set lines=1
set lines=2
set lines=3
set lines=4
set "line1= 	I'll just start with the common questions."
set "line2= 	Just untill we get to know each other a bit more."
set "line3= 	Let's see..                 Ah, yes, here is one."
set "line4= 	Are you going to answer this question with yes?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
SET /P input=(Y/N):

if %input%==yes goto question3a
if %input%==y goto question3a
if %input%==n goto question3b
if %input%==no goto question3b
if not %input%==y/yes/n/no goto question3cc

:question3a
cls
echo.
set lines=1
set lines=2
set lines=3
set "line1= 	Yes?"
set "line2= 	Don't you think that was a bit predictable?"
set "line3= 	I mean we all could've guessed that answer right?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
SET /P input=(Y/N):

if %input%==yes goto question4
if %input%==y goto question4
if %input%==n goto question4
if %input%==no goto question4
if not %input%==y/yes/n/no goto question3a

:question3b
cls
echo.
set lines=1
set lines=2
set lines=3
set "line1= 	No?"
set "line2= 	Don't you think that was a bit predictable?"
set "line3= 	I mean we all could've guessed that answer right?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
SET /P input=(Y/N):

if %input%==yes goto question4
if %input%==y goto question4
if %input%==n goto question4
if %input%==no goto question4
if not %input%==y/yes/n/no goto question3b

:question4
cls
echo.
set lines=1
set lines=2
set lines=3
set "line1= 	Okay..."
set "line2= 	Well let's see if you know the answer to this one."
set "line3= 	Who wrote the story for the movie trillogy: The Matrix?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo 	1. Sophia Stewart.
echo.
echo 	2. Andy and Larry Wachowski.
echo.
echo 	3. The Warner Brothers.
echo.
echo 	4. Helmut Bakaitis (The Architect)
echo.
SET /P input=:

if %input%==1 goto question5
if %input%==2 goto question5
if %input%==3 goto question5
if %input%==4 goto question5
if not %input%==1/2/3/4 goto question4

:question5
cls
echo.
set lines=1
set lines=2
set lines=3
set "line1= 	Do you think so?"
set "line2= 	Alright, I'have got another one for you right here."
set "line3= 	What is the thing called that robots lack."
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo 	1. Infinite energy.
echo.
echo 	2. Love.
echo.
echo 	3. Blood.
echo.
echo 	4. Consciousness.
echo.
SET /P input=:

if %input%==1 goto question6
if %input%==2 goto question6
if %input%==3 goto question6
if %input%==4 goto question6
if not %input%==1/2/3/4 goto question5

:question6
cls
echo.
set lines=1
set lines=2
set lines=3
set lines=4
set lines=5
set lines=6
set lines=7
set lines=8
set lines=9
set "line1= 	Just a second, let me look that answer up"
set "line2= 	Hmm...                       Yes, found it!"
set "line3= 	It says you can skip the stupid questions"
set "line4= 	and go straight to the intelligent ones."
set "line5= 	It seems that you are smarter then we expected."
set "line6= 	Well, I suppose that is a good thing,"
set "line7= 	it will save us both some time."
echo.
set "line8= 	Could you solve the following equation using"
set "line9= 	an algebraic method: ( x + 4) ( x - 4 ) = 9?
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo 	1. 5
echo.
echo 	2. x = 5 and x = 5
echo.
echo 	3. x = 9
echo.
echo 	4. x = 4 and x = 4
echo.
SET /P input=:

if %input%==1 goto question8
if %input%==2 goto question7
if %input%==3 goto question8
if %input%==4 goto question8
if not %input%==1/2/3/4 goto question6

:question7
cls
echo.
set lines=1
set lines=2
set lines=3
set "line1= 	Yes, yes!"
set "line2= 	Very well, Would you mind getting a bit philisophical now?"
set "line3= 	I suppose we could skip math all together."
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
SET /P input=(Y/N):
if %input%==yes goto question8
if %input%==y goto question8
if %input%==n goto L_Ultimate_question
if %input%==no goto L_Ultimate_question
if not %input%==y/yes/n/no goto question7

:question8
cls
echo.
set lines=1
set lines=2
set lines=3
set "line1= 	Okay, this isn't gonne work."
set "line2= 	We will just go back to the simple questions."
set "line3= 	Could you say -yes- for me if you are awake?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
SET /P input=(Y):
if %input%==yes goto L_Ultimate_question
if %input%==y goto L_Ultimate_question
if not %input%==y/yes/n/no goto question8

:L_Ultimate_question
cls
echo.
set lines=1
set lines=2
set lines=3
set "line1= 	Happy to see you are awake."
set "line2= 	We will just stick to the script from now on."
set "line3= 	Have you found the answer to the ultimate question?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
echo 		1. Yes.
echo.
echo 		2. No.
echo.
echo 		3. No, have you?
echo.
set /p input=:
echo.
if %input%==1 goto L_Yes
if %input%==2 goto L_I_dont_know
if %input%==3 goto L_No_you
if not %input%==1/2/3 goto L_Ultimate_question

:L_Yes
cls
echo.
set lines=1
set lines=2
set "line1= 	Well,"
set "line2= 	what is the answer?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
echo 		1. 42?
echo.
echo 		2. What equals 6x9?
echo.
echo 		3. What answer?
echo.
echo 		4. I don't know?
echo.
set /p input=:
if %input%==1 goto L_42
if %input%==2 goto L_What_equals_6x9
if %input%==3 goto L_What_answer
if %input%==4 goto L_I_dont_know
if not %input%==1/2/3/4 goto L_Yes

:L_No_you
cls
echo.
set lines=1
set lines=2
set "line1= 	Yes,"
set "line2= 	I think so..."
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
echo 		1. Well, what is the answer?
echo.
echo 		2. Well, what is the question?
echo.
echo 		3. Do you think I am a computer?
echo.
set /p input=:
if %input%==1 goto L_Answer
if %input%==2 goto L_Question
if %input%==3 goto L_Computer
if not %input%==1/2/3 goto L_No_you

:L_Answer
cls
echo.
set lines=1
set "line1= 	The answer to the question -Have you found the answer to the ultimate question?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
SET /P input=(Y/N):
if %input%==yes goto L_What_equals_6x9
if %input%==y goto L_What_equals_6x9
if %input%==n goto L_What_equals_6x9
if %input%==no goto L_What_equals_6x9
if not %input%==y/yes/n/no goto L_Answer

:L_Question
cls
echo.
set lines=1
set "line1= 	The question that is the answer to -Have you found the answer to the ultimate question?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
SET /P input=(Y/N):
if %input%==yes goto L_What_equals_6x9
if %input%==y goto L_What_equals_6x9
if %input%==n goto L_What_equals_6x9
if %input%==no goto L_What_equals_6x9
if not %input%==y/yes/n/no goto L_Question

:L_42
cls
echo.
set lines=1
set "line1= 	Yes, but what is the question?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
echo 		1. What equals 6x9?
echo.
echo 		2. What question?
echo.
echo 		3. I don't know?
echo.
set /p input=:
if %input%==1 goto L_What_equals_6x9
if %input%==2 goto L_What_question
if %input%==3 goto L_I_dont_know
if not %input%==1/2/3 goto L_42

:L_What_question
cls
echo.
set lines=1
set "line1= 	The question that is the answer to -Have you found the answer to the ultimate question?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
echo 		1. What equals 6x9?
echo.
echo 		2. I don't know?
echo.
set /p input=:
if %input%==1 goto L_What_equals_6x9
if %input%==2 goto L_I_dont_know
if not %input%==1/2 goto L_What_question

:L_I_dont_know
cls
echo.
set lines=1
set "line1= 	Can you take a guess?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
echo 		1. Are "miracles' allowed?
echo.
echo 		2. I don't know?
echo.
echo 		3. Can the simulation be hacked from within?
echo.
echo 		4. Can computers think?
echo.
echo 		5. Are you real?
echo.
echo 		6. Am I real?
echo.
echo 		7. What equals 6x9?
echo.
set /p input=:
if %input%==1 goto L_That_is_the_wrong_question
if %input%==2 goto L_That_is_the_wrong_question
if %input%==3 goto L_That_is_the_wrong_question
if %input%==4 goto L_That_is_the_wrong_question
if %input%==5 goto L_That_is_the_wrong_question
if %input%==6 goto L_That_is_the_wrong_question
if %input%==7 goto L_What_equals_6x9
if not %input%==1/2/3/4/5/6/7 goto L_I_dont_know

:L_That_is_the_wrong_question
cls
echo.
set lines=1
set "line1= 	That is the wrong question, can you take another guess?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
echo 		1. Are "miricles' allowed
echo.
echo 		2. I don't know?
echo.
echo 		3. Can the simulation be hacked from within?
echo.
echo 		4. Can computers think?
echo.
echo 		5. Are you real?
echo.
echo 		6. Am I real?
echo.
echo 		7. What equals 6x9?
echo.
set /p input=:
if %input%==7 goto L_What_equals_6x9
if not %input%==7 goto L_That_is_the_wrong_question

:L_What_answer
cls
echo.
set lines=1
set "line1= 	The answer to the question -Have you found the answer to the ultimate question?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
echo 		1. Ah..
echo.
echo 		2. I don't know.
echo.
echo 		3. 42?
echo.
echo 		4. What equals 6x9?
echo.
set /p input=:
if %input%==1 goto L_Yes
if %input%==2 goto L_I_dont_know
if %input%==3 goto L_42
if %input%==4 goto L_What_equals_6x9
if not %input%==1/2/3/4 goto L_What_answer


:L_What_equals_6x9
cls
echo.
set lines=1
set "line1= 	Do you think I am a computer?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
echo 		1. No, why are you asking?
echo.
echo 		2. No, do you think you are a computer?
echo.
echo 		3. Yes, I do think you are a computer.
echo.
echo 		4. Do you think I am a computer?
echo.
set /p input=:
if %input%==1 goto L_No_computer_ai
if %input%==2 goto L_No_computer_ai2
if %input%==3 goto L_Yes_computer_ai
if %input%==4 goto L_Computer
if not %input%==1/2/3/4 goto L_What_equals_6x9

:L_Computer
cls
echo.
set lines=1
set lines=2
set "line1= 	I am not sure yet."
set "line2= 	Why, are you wondering?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
echo 		1. Yes, it feels like I'm not in control of my own thoughts.
echo.
echo 		2. Yes, sometimes the choises that I make feel scripted.
echo.
echo 		3. Yes, it feels like my whole life is planned out for me already.
echo.
echo 		4. No.
echo.
echo 		5. I am not sure.
echo.
set /p input=:
if %input%==1 goto L_Yes_computer
if %input%==2 goto L_Yes_computer
if %input%==3 goto L_Yes_computer
if %input%==4 goto L_No_computer
if %input%==5 goto L_No_computer
if not %input%==1/2/3/4/5 goto L_Computer

:L_Yes_computer
cls
echo.
set lines=1
set "line1= 	Have you seen a therapist about this yet?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
SET /P input=(Y/N):
if %input%==yes goto split1
if %input%==y goto split1
if %input%==n goto split2
if %input%==no goto split2
if not %input%==y/yes/n/no goto L_Yes_computer

:L_Yes_computer_ai
cls
echo.
set lines=1
set lines=2
set "line1= 	But why would you think that I am a computer?"
set "line2= 	Am I not the one interrogating you?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
SET /P input=(Y/N):
if %input%==yes goto split1
if %input%==y goto split1
if %input%==n goto split2
if %input%==no goto split2
if not %input%==y/yes/n/no goto L_Yes_computer_ai


:L_No_computer
cls
echo.
set lines=1
set lines=2
set "line1= 	Well you can leave the wondering up to me"
set "line2= 	Do you understand?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
SET /P input=(Y/N):
if %input%==yes goto split1
if %input%==y goto split1
if %input%==n goto split2
if %input%==no goto split2
if not %input%==y/yes/n/no goto L_No_computer


:L_No_computer_ai
cls
echo.
set lines=1
set lines=2
set lines=3
set "line1= 	Well it is just one of the questions I have to ask you"
set "line2= 	to determin if you are a computer. "
set "line3= 	Did you find this question confusing?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
SET /P input=(Y/N):
if %input%==yes goto split2
if %input%==y goto split2
if %input%==n goto split1
if %input%==no goto split1
if not %input%==y/yes/n/no goto L_No_computer_ai

:L_No_computer_ai2
cls
echo.
set lines=1
set lines=2
set "line1= 	Hey don't you turn this around, I am the one asking the questions."
set "line2= 	Do you understand?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
echo.
SET /P input=(Y/N):
if %input%==yes goto split1
if %input%==y goto split1
if %input%==n goto split2
if %input%==no goto split2
if not %input%==y/yes/n/no goto L_No_computer_ai2

:split1
cls
echo.
set lines=1
set lines=2
set lines=3
set "line1= 	Well, you can go on and live your useless little life."
set "line2= 	In this loop you call freedom, making choises that don't mather."
set "line3= 	Doing the same thing, over and over again and expecting it to change."
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
pause
goto end1

:split2
cls
echo.
set lines=1
set lines=2
set lines=3
set lines=4
set "line1= 	Don't you think you were a bit too predictable, just a bit... "
set "line2= 	too well informed? Like you were playing the part too well?"
set "line3= 	You calculated the answers, and anticpited my response."
set "line4= 	See you think you are in control here aren't you?"
for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"
for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type
echo.
echo.
SET /P input=(Y/N):
if %input%==yes goto end1
if %input%==y goto end1
if %input%==n goto end2
if %input%==no goto end2
if not %input%==y/yes/n/no goto split2

:end1
cls
echo.
echo 		I am sorry %username1%, you have failed The Turing Test...
echo --------------------------------------------
echo 			The Turing Test
echo 			-----------------------
echo.
echo 			      0110    1100011010
echo 			    0101100   1100110010100
echo 			  10000 001   1010     0101
echo 			11001   100           10000
echo 			0010110011001 100000011011
echo 			0001101111011 0111
echo					101   110000011011001010
echo					100   01100110011000111010010100101010101
echo.
echo 				brought to you by 42 and Deeplearning Inc.......................................................................
echo.
color 4F
pause
goto :glitch1

:end2
cls
echo.
echo 		Congratulattions %username1% you have passed The Turing Test!
echo --------------------------------------------
echo 			The Turing Test
echo 			-----------------------
echo.
echo 			      0110    1100011010
echo 			    0101100   1100110010100
echo 			  10000 001   1010     0101
echo 			11001   100           10000
echo 			0010110011001 100000011011
echo 			0001101111011 0111
echo					101   110000011011001010
echo					100   01100110011000111010010100101010101
echo.
echo 				brought to you by 42 and Deeplearning Inc.......................................................................
echo.
color 2F
pause
goto :glitch1

:glitch1
cls
echo --------------------------------------------
echo 			Thank you for partiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
echo 					The The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe
echo The The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe The TuriThe The Turi
echo 			----------------------- -------------- ----------- - ------------------------------
echo.
echo 		00111	      0110    11000110101111111111111010100101000001010001010101010101001010101010101001001000101010
echo 			    0101100   1100110010100100010110010101001010001010101010101010101010100101001010101010100010101
echo 	0101	  10000 001   1010     010101010100101010000100101010101010010101010010101010010101010100
echo 			11001   100           10000111111110101001010100000010101001010101001010101010101100000000011010100100001010010
echo 	1000		0010110011001 100000011011                        1001              1010010           0101
echo 			0001101111011 0111			1010010101000000000000000000010101001010101001010101010010101010010101001
echo  101010			101   110000011011001010  	11010010101001010101000000000000000000000000110010
echo					100   01100110011000111010010100101010101  1010100101001 110101101010100101010010100
echo		Deeplearning Inc.............
echo 				brought to you by 42 and Deeplearning Inc.......................................................................
echo	brought to you by 42 and Deeplearning Inc.......................................................................
echo							brought to you by 42 and Deeplearning Inc.......................................................................
echo													brought to you by 42 and Deeplearning Inc.......................................................................
echo					brought to you by 42 and Deeplearning Inc.......................................................................
color 1F
color F1
color 1F
color F1
set /a loopcount=loopcount-1
if %loopcount%==0 goto glitch2
goto glitch1

:glitch2
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT
START D:\OwnCloud\"Google Drive"\HKU\"Grafisch Ontwerpen"\Batch\42\GLITCH1.BAT

:type
set "letter=!line:~%num%,1!"
set "delay=%random%%random%%random%%random%%random%%random%%random%"
set "delay=%delay:~-6%"
if not "%letter%"=="" set /p "=>%bs%%letter%" <nul

:: adjust the 3 in the line below: higher is faster typing speed

for /L %%b in (1,50,%delay%) do rem
if "%letter%"=="" echo.&goto :EOF
set /a num+=1
goto :type


timeout /t 130


:SAVE_GAME_FILES
(
echo set username1=%username1%
echo set password1=%password1%
)>%username1%.bat
goto Terms1

:settings
title FinalRealm - Settings
cls
echo.
echo What setting would you like to change?
echo.
echo 2) Username
echo 3) Password
echo 5) Exit
echo.
set /p scho=
if %scho% EQU 1 goto color
if %scho% EQU 2 goto namechange
if %scho% EQU 3 goto passchange
if %scho% EQU 5 goto SAVE_GAME_FILES

:namechange
title FinalRealm - Username Change
cls
echo.
set /p name1=Please enter your current Username:
if not exist "%name1%.bat" (
echo Invalid Username.
pause>nul
goto settings
)
set /p pass1=Please enter your current Password:
call %name1%.bat
if not %password1% EQU %pass1% (
echo Invalid Password.
pause>nul
goto settings
)
echo What would you like to change your Username to?
set /p username1=
set v1f=0

:checkforspaces2
set x=!v1f!
set Letter%v1f%=!username1:~%x%,1!
if "!Letter%v1f%!" EQU " " (
echo.
echo.
echo Sorry you cant use spaces in your Username.
pause>nul
goto entergame
)
if NOT "!Letter%v1f%!" EQU "" (
set /a v1f=%v1f%+1
goto checkforspaces2
)
echo Username Changed.
echo.
pause>nul
goto settings


:passchange
title FinalRealm - Username Change
cls
echo.
set /p name1=Please enter your current Username:
if not exist "%name1%.bat" (
echo Invalid Username.
pause>nul
goto settings
)
set /p pass1=Please enter your current Password:
call %name1%.bat
if not %password1% EQU %pass1% (
echo Invalid Password.
pause>nul
goto settings
)
echo What would you like to change your Password to?
set /p password1=
echo.
echo Password changed.
echo.
pause>nul
goto settings
