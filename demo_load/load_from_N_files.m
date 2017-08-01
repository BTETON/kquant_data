%% h5��ʽ���ݶ�ȡ
path = 'D:\DATA_STK\daily\'

% ʱ�����Լ���ݣ�Ŀǰʹ��csv��ȽϷ��㣬�Ժ��и��õ��ٻ�
file = [path,'DateTime.csv'];
DateTime = readtable(file);
file = [path,'Symbol.csv'];
Symbol = readtable(file,'Format','%s%s%s%s%s');
Symbol2 = table2cell(Symbol);

% ��ǰ��Ȩ����
file = [path,'forward_factor.h5'];
forward_factor = h5read(file,'/forward_factor');
forward_factor = forward_factor'; % MATLAB���ж��ĺܶ����ݶ���Ҫת��
% ���Ȩ
file = [path,'backward_factor.h5'];
backward_factor = h5read(file,'/backward_factor');
backward_factor = backward_factor';

file = [path,'Open.h5'];
open = h5read(file,'/Open');
open = open';

file = [path,'High.h5'];
high = h5read(file,'/High');
high = high';

file = [path,'Low.h5'];
low = h5read(file,'/Low');
low = low';

file = [path,'Close.h5'];
close = h5read(file,'/Close');
close = close';

OFTD = open.*forward_factor;
HFTD = high.*forward_factor;
LFTD = low.*forward_factor;
CFTD = close.*forward_factor;

