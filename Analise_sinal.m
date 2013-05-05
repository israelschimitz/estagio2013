%----ANÁLISE PARA COLETA COMPLETA!-------

%caminho = input('caminho = ');
%sinal = xlsread ('caminho');

%armazena o conteúdo da coleta armazenada na planilha do excel, na 
%variavel "sinal". A planilha deve conter apenas valores. Ou apenas uma 
%linha com a indicação dos canais.
sinal = xlsread('C:\Israel\Engenharia Elétrica\Disciplinas\Estágio\Aquisição - LabView\lvm\Sincronizados\Marcelo\marcelo letras completo.xls');

%armazena o tempo em "t" - primeira coluna do lvm do Labview.
%o caracter (') tranforma o vetor de coluna em linha.
%Isso irá facilitar o tratamento dos dados.
t=sinal(:,1)';

%%%----------eletrodos-------------------------------%%%%
%tranposição dos canais do Labview para o sistema 10-20.
%CH0 -> C3
%CH1 -> C4
%CH2 -> P3
%CH3 -> P4
%CH4 -> T5
%CH5 -> T6
%CH6 -> O1
%CH7 -> O2
%%%---------------------------------------------------%%%%

%armazena cada coluna do canal do Labview na sua respectiva posição 10-20.
%o caracter (') tranforma o vetor de coluna em linha.
%Isso irá facilitar o tratamento dos dados.
C3=sinal(:,2)';
C4=sinal(:,3)';
P3=sinal(:,4)';
P4=sinal(:,5)';
T5=sinal(:,6)';
T6=sinal(:,7)';
O1=sinal(:,8)';
O2=sinal(:,9)';


%agregação do sinal da letra do estimulo a cada eletrodo.
%Em geral são 200 ms para exibição do caractere e 2000 ms por intervalo.
%*consultar programa de estimulo

%--------ELETRODO C3 / CH0--------------
letra_A_C3= C3(2000:2199);
fundo_A_C3= C3(2200:4199);

letra_a_C3= C3(4200:4399);
fundo_a_C3= C3(4400:6399);

letra_G_C3= C3(6400:6599);
fundo_G_C3= C3(6600:8599);

letra_g_C3= C3(8600:8799);
fundo_g_C3= C3(8800:10799);

letra_E_C3= C3(10800:10999);
fundo_E_C3= C3(11000:12999);

letra_e_C3= C3(13000:13199);
fundo_e_C3= C3(13200:15199);

letra_2_C3= C3(15200:15399);
fundo_2_C3= C3(15400:17399);

letra_b_C3= C3(17400:17599);
fundo_b_C3= C3(17600:19599);

letra_B_C3= C3(19600:19799);
fundo_B_C3= C3(19800:21799);

letra_5_C3= C3(21800:21999);
fundo_5_C3= C3(22000:23999);

%--------ELETRODO C4 / CH1--------------
letra_A_C4= C4(2000:2199);
fundo_A_C4= C4(2200:4199);

letra_a_C4= C4(4200:4399);
fundo_a_C4= C4(4400:6399);

letra_G_C4= C4(6400:6599);
fundo_G_C4= C4(6600:8599);

letra_g_C4= C4(8600:8799);
fundo_g_C4= C4(8800:10799);

letra_E_C4= C4(10800:10999);
fundo_E_C4= C4(11000:12999);

letra_e_C4= C4(13000:13199);
fundo_e_C4= C4(13200:15199);

letra_2_C4= C4(15200:15399);
fundo_2_C4= C4(15400:17399);

letra_b_C4= C4(17400:17599);
fundo_b_C4= C4(17600:19599);

letra_B_C4= C4(19600:19799);
fundo_B_C4= C4(19800:21799);

letra_5_C4= C4(21800:21999);
fundo_5_C4= C4(22000:23999);

%--------ELETRODO P3 / CH2--------------
letra_A_P3= P3(2000:2199);
fundo_A_P3= P3(2200:4199);

letra_a_P3= P3(4200:4399);
fundo_a_P3= P3(4400:6399);

letra_G_P3= P3(6400:6599);
fundo_G_P3= P3(6600:8599);

letra_g_P3= P3(8600:8799);
fundo_g_P3= P3(8800:10799);

letra_E_P3= P3(10800:10999);
fundo_E_P3= P3(11000:12999);

letra_e_P3= P3(13000:13199);
fundo_e_P3= P3(13200:15199);

letra_2_P3= P3(15200:15399);
fundo_2_P3= P3(15400:17399);

letra_b_P3= P3(17400:17599);
fundo_b_P3= P3(17600:19599);

letra_B_P3= P3(19600:19799);
fundo_B_P3= P3(19800:21799);

letra_5_P3= P3(21800:21999);
fundo_5_P3= P3(22000:23999);


%--------ELETRODO P4 / CH3--------------
letra_A_P4= P4(2000:2199);
fundo_A_P4= P4(2200:4199);

letra_a_P4= P4(4200:4399);
fundo_a_P4= P4(4400:6399);

letra_G_P4= P4(6400:6599);
fundo_G_P4= P4(6600:8599);

letra_g_P4= P4(8600:8799);
fundo_g_P4= P4(8800:10799);

letra_E_P4= P4(10800:10999);
fundo_E_P4= P4(11000:12999);

letra_e_P4= P4(13000:13199);
fundo_e_P4= P4(13200:15199);

letra_2_P4= P4(15200:15399);
fundo_2_P4= P4(15400:17399);

letra_b_P4= P4(17400:17599);
fundo_b_P4= P4(17600:19599);

letra_B_P4= P4(19600:19799);
fundo_B_P4= P4(19800:21799);

letra_5_P4= P4(21800:21999);
fundo_5_P4= P4(22000:23999);


%--------ELETRODO T5 / CH4--------------
letra_A_T5= T5(2000:2199);
fundo_A_T5= T5(2200:4199);

letra_a_T5= T5(4200:4399);
fundo_a_T5= T5(4400:6399);

letra_G_T5= T5(6400:6599);
fundo_G_T5= T5(6600:8599);

letra_g_T5= T5(8600:8799);
fundo_g_T5= T5(8800:10799);

letra_E_T5= T5(10800:10999);
fundo_E_T5= T5(11000:12999);

letra_e_T5= T5(13000:13199);
fundo_e_T5= T5(13200:15199);

letra_2_T5= T5(15200:15399);
fundo_2_T5= T5(15400:17399);

letra_b_T5= T5(17400:17599);
fundo_b_T5= T5(17600:19599);

letra_B_T5= T5(19600:19799);
fundo_B_T5= T5(19800:21799);

letra_5_T5= T5(21800:21999);
fundo_5_T5= T5(22000:23999);


%--------ELETRODO T6 / CH5--------------
letra_A_T6= T6(2000:2199);
fundo_A_T6= T6(2200:4199);

letra_a_T6= T6(4200:4399);
fundo_a_T6= T6(4400:6399);

letra_G_T6= T6(6400:6599);
fundo_G_T6= T6(6600:8599);

letra_g_T6= T6(8600:8799);
fundo_g_T6= T6(8800:10799);

letra_E_T6= T6(10800:10999);
fundo_E_T6= T6(11000:12999);

letra_e_T6= T6(13000:13199);
fundo_e_T6= T6(13200:15199);

letra_2_T6= T6(15200:15399);
fundo_2_T6= T6(15400:17399);

letra_b_T6= T6(17400:17599);
fundo_b_T6= T6(17600:19599);

letra_B_T6= T6(19600:19799);
fundo_B_T6= T6(19800:21799);

letra_5_T6= T6(21800:21999);
fundo_5_T6= T6(22000:23999);

%--------ELETRODO O1 / CH6--------------
letra_A_O1= O1(2000:2199);
fundo_A_O1= O1(2200:4199);

letra_a_O1= O1(4200:4399);
fundo_a_O1= O1(4400:6399);

letra_G_O1= O1(6400:6599);
fundo_G_O1= O1(6600:8599);

letra_g_O1= O1(8600:8799);
fundo_g_O1= O1(8800:10799);

letra_E_O1= O1(10800:10999);
fundo_E_O1= O1(11000:12999);

letra_e_O1= O1(13000:13199);
fundo_e_O1= O1(13200:15199);

letra_2_O1= O1(15200:15399);
fundo_2_O1= O1(15400:17399);

letra_b_O1= O1(17400:17599);
fundo_b_O1= O1(17600:19599);

letra_B_O1= O1(19600:19799);
fundo_B_O1= O1(19800:21799);

letra_5_O1= O1(21800:21999);
fundo_5_O1= O1(22000:23999);


%--------ELETRODO O2 / CH7--------------
letra_A_O2= O2(2000:2199);
fundo_A_O2= O2(2200:4199);

letra_a_O2= O2(4200:4399);
fundo_a_O2= O2(4400:6399);

letra_G_O2= O2(6400:6599);
fundo_G_O2= O2(6600:8599);

letra_g_O2= O2(8600:8799);
fundo_g_O2= O2(8800:10799);

letra_E_O2= O2(10800:10999);
fundo_E_O2= O2(11000:12999);

letra_e_O2= O2(13000:13199);
fundo_e_O2= O2(13200:15199);

letra_2_O2= O2(15200:15399);
fundo_2_O2= O2(15400:17399);

letra_b_O2= O2(17400:17599);
fundo_b_O2= O2(17600:19599);

letra_B_O2= O2(19600:19799);
fundo_B_O2= O2(19800:21799);

letra_5_O2= O2(21800:21999);
fundo_5_O2= O2(22000:23999);


%-----------Calculo FFT--------------------------------
%armazena os dados que serão calculados em "dados"
dados = fundo_2_O2;

%armazena o tamanho do vetor
L = length(dados);

%frequencia de amostragem [Hz]
fs=1000;

%procura qual é a potência de 2 (2^x) na qual 
%mais se aproxima do tamanho de L. Isso otimiza o 
%tempo de calculo do algoritmo em até 100x.
%Por exemplo, o algoritmo é mais rapido com a quantidade de 1024 (2^10)    
%pontos do que um com 1000 pontos.
p = 2^nextpow2(L);

%calcula a fft do conteudo de "dados" com a quantidade de pontos 2^p  
Y = fft(dados,p);

%descarta as amostras negativas - da metade pra frente.
indiceNyquist = p/2+1;
Y = Y (1:indiceNyquist);

%por ser a soma dos termos, a FFT deve ser dividido pela 
%quantidade de pontos.
Y = Y/p;

%quando a frequencia é espelhada no plano negativo,
%ela divide por 2 a amplitude. Agora que desprezamos 
%plano negativo, precisamos compensar e multiplicar por 2.
%a partir do segundo termo, pois o primeiro é o DC
%de frequencia = 0.
Y(2:end) = 2* Y(2:end);

%calcula a magnitude 
%abs retora a magnitude para numeros complexos
magnitude = abs(Y);

%resolução de frequencia
deltaf = fs/p;

%eixo x - range de frequencias
fx = [0:indiceNyquist-1]*deltaf;

plot(fx, magnitude); 
%axis ([0 65 0 .2]);
grid on; 
xlabel('Frequência [Hz]'); 
ylabel('Magnitude [Unidade]'); 

[magMax,indexMax] = sort(magnitude,'descend');
top10mag = magMax(1:10);
freqMax = indexMax(1:10);
top10freq = fx(freqMax);

top10=[top10mag ; top10freq];

a=trapz(fx,magnitude);

area(fx,magnitude);
energia=sum(magnitude.^2);
