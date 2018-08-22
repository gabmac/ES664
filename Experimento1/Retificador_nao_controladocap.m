close all
clc
clear all
str = ["1uF" "1mF" "0.5F"];
figure
Fvetor = [1*10^-6 10^-3 0.5];
for i = 1:1:3
    subplot(3,1,i);
    F = Fvetor(i);
    sim('Retificador_nao_controlado_cap.slx',[0,1/30]);
    plot(tout,Corrente(:,2));
    xlabel("Tempo (s)");
    ylabel("Corrente (A)");
    title(str(i))
end 
saveas(gcf,'SR1fcapCorrente.png')
close all
for i = 1:1:3
    subplot(3,1,i);
    F = Fvetor(i);
    sim('Retificador_nao_controlado_cap.slx',[0,1/30]);
    plot(tout,Tensao(:,2));
    xlabel("Tempo (s)");
    ylabel("Tensão (A)");
    title(str(i))
end 
saveas(gcf,'SR1fcapTensao.png')
close all
