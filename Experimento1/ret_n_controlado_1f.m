close all
clc
str = ["Diodo 1" "Diodo 2" "Diodo 3" "Diodo 4"];
figure
vetor = [D1(:,2)'; D2(:,2)'; D3(:,2)'; D4(:,2)'];
for i = 1:1:4
    subplot(4,1,i);
    plot(tout,vetor(i,:));
    title(str(i));
    xlabel("Tempo (s)");
    ylabel("Tensão (V)");
end 
saveas(gcf,'SDiodosR1f.png')
close all

figure
title("Carga");
subplot(2,1,1)
plot(tout,TLoad(:,2));
title("Tensão - Carga");
xlabel("Tempo (s)");
ylabel("Tensão (V)");
subplot(2,1,2)
plot(tout,CCarga(:,2));
title("Corrente - Carga");
xlabel("Tempo (s)");
ylabel("Corrente (A)");
saveas(gcf,'SCargaR1f.png')
close all

plot(tout,Source(:,2));
title("Fonte");
xlabel("Tempo (s)");
ylabel("Tensão (V)");
saveas(gcf,'SFonteR1f.png')
close all
