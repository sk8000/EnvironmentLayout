:: Если папка с продуктом отсутствует, переходим к новой установке
if not exist "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools" goto :newinstall

:: Обновляем установленный продукт
"Cache\vs_buildtools.exe" update ^
--installPath "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools" ^
--passive --wait

:: Проводим новую установку
:newinstall
"Cache\vs_setup.exe" --passive
