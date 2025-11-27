@echo off
echo "Welcome to pixelated's Windows Core Files Fixer."
timeout /t 2 /nobreak >nul
echo "Admin is needed for this script to run."
timeout /t 1 /nobreak >nul
echo "Running SFC And DISM scans... this may take a long time"
timeout /t 2 /nobreak >nul
sfc /scannow
echo "SFC Scanning complete! Now doing DISM..."
timeout /t 1 /nobreak >nul
DISM /Online /CleanupImage /RestoreHealth
timeout /t 1 /nobreak >nul
echo "SFC and DISM commands done!"
timeout /t 1 /nobreak >nul
echo "After this, you need to restart your computer to apply changes."
pause