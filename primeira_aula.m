## Declarar variável e exibir a variável: omitir o ponto e virgula
a = 10

## Declarar variável e não exibir a variável: colocar ponto e virgula
b = 10;

## Por padrão utiliza a forma shot (5 digitos depois da virgula)
1/7

format long ## Exibir com 15 casas decimais

1/7

format short

## O comando diary permite gravar em um arquivo texto um diário (ou um registro)
## de tudo que for feito dentro do octave
## Exemplo:
y = sin(8*pi/9)

# diary registro_primeira_aula.txt ## Salvando a partir daqui

x = 25;
v = sin(x)^2 + cos(x)^2;

# diary off ## Encerra o salvamento em disco

## funcoes aritimeticas
exp(x); # e^x
abs(x); # conseno (x em graus)
tan(x); # tangente (x em radianos)
tand(x); # tangente (x em graus)
## Entre outros

disp ("Ex1 ============================== ")
## Exericio
~0
~1
~4
[1 0 1]&[1 0 0]
[1 3 4]&[1 2 1]

1 + (4 <= 5)
x = 4; y = x; x == y
x = 3; y = 4; x == y
1 < 4; y = ans; z = y == 1

## Intervalo (VETOR E MATRIZ)

## vetor com intervalo
x = 1:0.5:10 ## de 1 até 10 variando de 0.5 em 0.5

y = x .^2

## Limpar todas as variáveis da memória
clearvars

## Limpando uma variável específica
clearvars('x')

## Limpar tudo da memória
clear
disp ("Ex2 ============================== ")
## Exercicio 2
a = 3
b = -2
c = -1

delta = ((b^2) - (4 * a * c))

x = (-b + sqrt(delta))/(2*a)

3*x^2 + 2*x - 1 == x

x = (-b - sqrt(delta))/(2*a)

3*x^2 + 2*x - 1 == x

disp (" ============================== ")
## Matriz
clear

a = [1 2 3 ; 5 6 7; 8 9 0]

a = [1 2 3 4; 5 6 7 8; 9 0 8 7]

a' ## Transposta da matriz

## Calculo com matriz
clear

# Multiplicação
A = [1 2 3 4; 5 6 7 8; 9 0 8 7]

B = [1 2; 3 4; 5 6; 7 8]

A * B

# Multiplicação ponto a ponto

# A .* B

## Estrutura condicional

i = 2;

if ( i == 1 )
  disp ("Hello !");
  elseif (i == 2)
    disp("Good bye!");
  elseif (1 == 3)
    disp( "Adios!")
  else
    disp("Tchau! ");
endif

## Estrutua dos loops
clear

for (i = 1:5)
  i
endfor

for (i = 1:2:8)
  i
endfor

for (i = 10:-3:1)
  i
endfor

## Funções
clear

x = [-100 -10 -5 -3 -1 0 1 2 3]

## Função [qual o retorno] = nome (parametro(s) de entrada)
function [y] = f1(x)
  y = x.^3 - 9*x +3;
endfunction

y = f1(x)


f2 = @(x) x.^3 - 9*x + 3

## Switch case

idade_usuario = input('Digite sua idade: ')
switch (idade_usuario)
  case num2cell([18:21])
    disp('Usuário no grupo 1');
  case num2cell([22:30])
    disp('Usuário no Grupo 2');
  case num2cell([31:40])
    disp('Usuário no Grupo 3');
  case num2cell([41:50])
    disp('Usuário no Grupo 4');
  case num2cell([51:60])
    disp('Usuário no Grupo 5');
  otherwise
    disp('Usuário não cumpre requerimentos. Desculpe!');
end

## Plotando gráficos
clear

x = 0:1:10;

plot(x, sin(x))

x = 0:0.1:10;

plot(x, sin(x))

## Plotando gráficos 3D

t = -3*pi:0.1:3*pi;

sint = sin(t);

cost = cos(t);

plot3(t, sint, cost);

## Plotando com estilos diferentes

x = linspace(0, 2*pi, 100);
plot(x, cos(x), 'o'); ## Mudar o estilo da linha

## Plotando mais de um gráfico em uma janela
clear

k = -2*pi:0.1:2*pi;
plot(k, sin(k), 'linewidth', 8, k, cos(k), 'linewidth', 4)
legend('sin(k)', 'cos(k)'
legend('boxoff')

## Plotando diferentes gráficos no mesmo eixo
x = 0:0.1:4*pi
plot(x, sin(x), 'linewidth', 3)

hold all ## Comando que permite que insira varios comandos na mesma janela

plot(x, cos(x), '--', 'linewidth', 3)
plot(x, tan(x), '-.', 'linewidth', 3)
plot(x, exp(x), ':', 'linewidth', 3)
plot(x, log(x), '*', 'linewidth', 3)
axis([0, 10, -2, 4])
legend('Seno', 'Cosseno', 'Tangente', 'Exponencial', 'Logaritmo')
legend('boxoff')

hold off ## Parar de contactenar gráficos

## Plotando diferentes gráficos na mesma janela porém em eixos diferentes
x = -2*pi:0.1:2*pi;

# Gráfico 1
subplot(2,1,1)
plot(x, sin(x), '.r', 'linewidth', 3)
axis([-3*pi, 4*pi, -3, 1.5])
title('Gráficos de sin(x)')
xlabel('x')
ylabel('Seno de x')

# Gráfico 2
subplot(2, 1, 2)
plot(x, cos(x), '-.m', 'linewidth', 3)
axis([-2.5*pi, 2.1*pi, -1.5, 2.5])
title(['Gráfico de cos(x).')
xlabel('x')
ylabel('Cosseno de x')

