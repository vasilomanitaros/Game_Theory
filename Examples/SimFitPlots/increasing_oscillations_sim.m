Strategies = ["All_C","All_D","TfT","Grim","Per_CD","Willing","Tf2T","Soft_Major", ...
              "Slow_TfT","Reverse_Pavlov","Per_nasty","Per_kind","Mistrust", ...
              "Hard_TfT","Pavlov","Hard_Major", "Gradual", "Per_CCCCD", "Prober"];
Pop5 = [0, 0, 0, 0, 400, 0, 0, 200, 0, 0, 300, 0, 0, 0, 0, 0, 0, 0, 0]; J=450; T = 1000;
o=find(Pop5>0);
str=Strategies(o);
Pop5=Pop5(o);
[POP, BST, FIT] = TourSimFit(B, str, Pop5, T, J);
figure;
plot(0:J, POP, 'LineWidth', 2);
legend(strrep(str,'_',' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time');
grid on