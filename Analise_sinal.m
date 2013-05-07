% ANÁLISE PARA COLETA COMPLETA

%armazena o conteúdo da coleta armazenada na planilha do excel, na 
%variavel "sinal". A planilha deve conter apenas valores. Ou apenas uma 
%linha com a indicação dos canais.
sinal = xlsread('C:\Israel\Engenharia Elétrica\Disciplinas\Estágio\Aquisição - LabView\Coletas\Sincronizados\Marcelo\marcelo letras completo.xls');

%armazena o tempo em "t" - primeira coluna do lvm do Labview.
%o caracter (') tranforma o vetor de coluna em linha.
%Isso irá facilitar o tratamento dos dados.
t=sinal(:,1)';

%Descrição dos eletrodos 
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
A_C3= C3(2000:2799);
a_C3= C3(4200:4999);
G_C3= C3(6400:7199);
g_C3= C3(8600:9399);
E_C3= C3(10800:11599);
e_C3= C3(13000:13799);
Dois_C3= C3(15200:15999);
b_C3= C3(17400:18199);
B_C3= C3(19600:20399);
Cinco_C3= C3(21800:22599);

%--------ELETRODO C4 / CH1--------------
A_C4= C4(2000:2799);
a_C4= C4(4200:4999);
G_C4= C4(6400:7199);
g_C4= C4(8600:9399);
E_C4= C4(10800:11599);
e_C4= C4(13000:13799);
Dois_C4= C4(15200:15999);
b_C4= C4(17400:18199);
B_C4= C4(19600:20399);
Cinco_C4= C4(21800:22599);

%--------ELETRODO P3 / CH2--------------
A_P3= P3(2000:2799);
a_P3= P3(4200:4999);
G_P3= P3(6400:7199);
g_P3= P3(8600:9399);
E_P3= P3(10800:11599);
e_P3= P3(13000:13799);
Dois_P3= P3(15200:15999);
b_P3= P3(17400:18199);
B_P3= P3(19600:20399);
Cinco_P3= P3(21800:22599);

%--------ELETRODO P4 / CH3--------------
A_P4= P4(2000:2799);
a_P4= P4(4200:4999);
G_P4= P4(6400:7199);
g_P4= P4(8600:9399);
E_P4= P4(10800:11599);
e_P4= P4(13000:13799);
Dois_P4= P4(15200:15999);
b_P4= P4(17400:18199);
B_P4= P4(19600:20399);
Cinco_P4= P4(21800:22599);

%--------ELETRODO T5 / CH4--------------
A_T5= T5(2000:2799);
a_T5= T5(4200:4999);
G_T5= T5(6400:7199);
g_T5= T5(8600:9399);
E_T5= T5(10800:11599);
e_T5= T5(13000:13799);
Dois_T5= T5(15200:15999);
b_T5= T5(17400:18199);
B_T5= T5(19600:20399);
Cinco_T5= T5(21800:22599);

%--------ELETRODO T6 / CH5--------------
A_T6= T6(2000:2799);
a_T6= T6(4200:4999);
G_T6= T6(6400:7199);
g_T6= T6(8600:9399);
E_T6= T6(10800:11599);
e_T6= T6(13000:13799);
Dois_T6= T6(15200:15999);
b_T6= T6(17400:18199);
B_T6= T6(19600:20399);
Cinco_T6= T6(21800:22599);

%--------ELETRODO O1 / CH6--------------
A_O1= O1(2000:2799);
a_O1= O1(4200:4999);
G_O1= O1(6400:7199);
g_O1= O1(8600:9399);
E_O1= O1(10800:11599);
e_O1= O1(13000:13799);
Dois_O1= O1(15200:15999);
b_O1= O1(17400:18199);
B_O1= O1(19600:20399);
Cinco_O1= O1(21800:22599);

%--------ELETRODO O2 / CH7--------------
A_O2= O2(2000:2799);
a_O2= O2(4200:4999);
G_O2= O2(6400:7199);
g_O2= O2(8600:9399);
E_O2= O2(10800:11599);
e_O2= O2(13000:13799);
Dois_O2= O2(15200:15999);
b_O2= O2(17400:18199);
B_O2= O2(19600:20399);
Cinco_O2= O2(21800:22599);


%-----------Calculo FFT--------------------------------
%armazena os dados que serão calculados em "dados"
dados = A_O2;

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

top10=[top10mag ; top10freq]

a=trapz(fx,magnitude)

area(fx,magnitude);
energia=sum(magnitude.^2)

%report

%dlmwrite(top10,top10,'pbm')

%imwrite(top10,top10,'pbm')

