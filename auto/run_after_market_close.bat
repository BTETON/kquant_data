REM ���̺�����
cd %~d0
cd %~dp0

REM �ȴ�ͨ���ţ��������ߺ�5��������
REM https://www.autoitscript.com/site/autoit/downloads/
REM https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3-setup.exe
REM �������°�ͨ���Ų���������������У�ֻ�ܰ�װ2017��6�·���ǰ�汾
"D:\Program Files (x86)\AutoIt3\autoit3.exe" /ErrorStdOut "%~dp0\run_tdx_stk.au3" 


REM ������Ȩ����
python.exe %~dp0..\demo_stock\A_1day\B01_export_gbbq.py
REM ������������
python.exe %~dp0..\demo_stock\A_1day\B02_export.py
REM �ϲ���������
python.exe %~dp0..\demo_stock\A_1day\B03_merge.py

REM ������Լ�������ѡ��
start %~dp0\run_for_wind_stk.bat
REM start %~dp0\run_for_5min.bat

pause