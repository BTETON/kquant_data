REM ���̺�����
cd %~d0
cd %~dp0

REM ���װ�˶���汾��Python,��Ҫָ��·��
PATH d:\Users\Kan\Anaconda3;d:\Users\Kan\Anaconda3\Scripts;d:\Users\Kan\Anaconda3\Library\bin;%PATH%

python.exe --version

REM ����Ʒ�ֲֳ�
python.exe %~dp0..\demo_future\A02_download_futureoir.py
REM �ϲ�Ʒ�ֲֳ�
python.exe %~dp0..\demo_future\A03_merge_futureoir.py


REM pause