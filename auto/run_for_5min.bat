REM ������ͨ���Ź������ص���ʷ5��������(ֻ��һ�μ���)
REM python.exe %~dp0..\demo_stock\B_5min\B01_export_5.py
REM �������ص�5��������
python.exe %~dp0..\demo_stock\B_5min\A01_export_lc5.py
REM �ϲ��¾�����
python.exe %~dp0..\demo_stock\B_5min\A02_concat_h5.py
REM �ϲ����й�Ʊ���ɾ���5��������̫���ˣ����ܵ���64λ
python.exe %~dp0..\demo_stock\B_5min\A03_merge.py

pause