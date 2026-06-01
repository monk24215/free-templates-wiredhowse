ipconfig /flushdns
timeout /t 1
start php -S localhost:3000 -t H:\Development\Repositories\free-templates-wiredhowse
timeout /t 2
start http://localhost:3000