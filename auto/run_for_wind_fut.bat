REM ���̺�����
cd %~d0
cd %~dp0

REM ���װ�˶���汾��Python,��Ҫָ��·��
PATH d:\Users\Kan\Anaconda3;d:\Users\Kan\Anaconda3\Scripts;d:\Users\Kan\Anaconda3\Library\bin;%PATH%

python.exe --version

REM �������������嵥
python.exe %~dp0..\demo_future\B02_download_trade_hiscode.py
REM ���ؽ��������к�Լ(read_csv)
python.exe %~dp0..\demo_future\C01_download_sectors.py
REM ���º�Լ��Լ����������������(read_csv)
python.exe %~dp0..\demo_future\D01_download_ipo_last_trade_trading.py

REM pause