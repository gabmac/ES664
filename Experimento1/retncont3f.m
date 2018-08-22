close all
clc
str = ["Diodo 1" "Diodo 2" "Diodo 3" "Diodo 4" "Diodo 5" "Diodo 6"];
figure
vetor = [D1(:,2)'; D2(:,2)'; D3(:,2)'; D4(:,2)'; D5(:,2)'; D6(:,2)'];
j = 1;
for i = 1:1:6
    subplot(3,2,i);
    plot(tout,vetor(i,:));
    title(str(i));
    xlabel("Tempo (s)");
    ylabel("Tensão (V)");
end 
saveas(gcf,'SDiodosR3f.png')
close all

figure
title("Carga");
subplot(2,1,1)
plot(tout,TCarga(:,2));
title("Tensão - Carga");
xlabel("Tempo (s)");
ylabel("Tensão (V)");
subplot(2,1,2)
plot(tout,CCarga(:,2));
title("Corrente - Carga");
xlabel("Tempo (s)");
ylabel("Corrente (A)");
saveas(gcf,'SCargaR3f.png')
close all

i = 1;
figure;
vetorf = [F1(:,2)'; F2(:,2)'; F3(:,2)'];
str1 = ["Fonte 1" "Fonte 2" "Fonte 3"]
for i = 1:1:3
    subplot(3,1,i);
    plot(tout,vetorf(i,:));
    title(str1(i));
    xlabel("Tempo (s)");
    ylabel("Tensão (V)");
end 
saveas(gcf,'SFonteR3f.png')
close all