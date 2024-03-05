@echo off
net user Administrator /active:yes
echo Do not make the username the same as your normal account.
set /p "user=Enter Username: "
echo The password doesn't need to be too hard to guess, just something you'll know.
set /p "pass=Enter Password: "
net user Administrator %pass%
wmic useraccount where name='Administrator' rename %user%
echo Use this login in the "Other User" section to use your Administrator account.
echo To log into your school account, go to the "Other User" section and use your
echo school email and school password.
set /p "idk=Do you understand? (y/n) "