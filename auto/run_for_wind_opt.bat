REM ���̺�����
cd %~d0
cd %~dp0
REM ���µ�����������Լ���������е���

"D:\Program Files (x86)\AutoIt3\autoit3.exe" /ErrorStdOut "%~dp0\run_tdx_opt.au3"

pause

REM ����50��Ȩ�嵥
python.exe %~dp0..\demo_option\A01_download_option_info.py
REM ����put call ratio
python.exe %~dp0..\demo_option\B01_50etf_put_call_ratio.py

pause