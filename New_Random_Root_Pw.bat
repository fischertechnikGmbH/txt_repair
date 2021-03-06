echo off
set IPADR=192.168.7.2
set USER=ROBOPro
set PASS=ROBOPro

echo When you have several TXTs, you might see a message about changed
echo host fingerprints. This is normal since all TXTs use the same IP
echo address but different host fingerprints, so just answer y below.
echo ""

Utilities\plink -ssh -pw %PASS% %USER%@%IPADR% "sudo /etc/init.d/rndpwd"

echo Please power cycle the TXT now!
echo After restart you see the new root passwort in the info menu.
echo (Assuming root passwort display is enabled)"
