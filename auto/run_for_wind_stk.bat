REM ���µ�����������Լ���������е���

REM ������ҵ����
python.exe %~dp0..\demo_stock\A_1day\B04_download_sectors_st.py
REM �ϲ���ҵ����
python.exe %~dp0..\demo_stock\A_1day\B05_merge_sector_daily.py
REM ���¹�Ʊipo��Ϣ
python.exe %~dp0..\demo_stock\A_1day\C01_ipo_date.py
REM ���¡��ϲ��ܹɱ�����Ϣ
python.exe %~dp0..\demo_stock\A_1day\D01_download_total_shares.py
python.exe %~dp0..\demo_stock\A_1day\D02_merge_total_shares.py
REM ���ر���������
REM python.exe %~dp0..\demo_stock\A_1day\D03_download_report.py
REM python.exe %~dp0..\demo_stock\A_1day\D04_download_pb_lf.py

pause