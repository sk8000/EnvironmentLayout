:: Если папка с продуктом отсутствует, переходим к новой установке
if not exist "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community" goto :newinstall

:: Обновляем установленный продукт
"Cache\vs_community.exe" update ^
--installPath "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community" ^
--passive --wait

:: Проводим новую установку
:newinstall
"Cache\vs_setup.exe" --passive
