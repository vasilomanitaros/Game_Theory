Strategies = ["All_C","All_D","TfT","Grim","Per_CD","Willing","Tf2T","Soft_Major", ...
              "Slow_TfT","Reverse_Pavlov","Per_nasty","Per_kind","Mistrust", ...
              "Hard_TfT","Pavlov","Hard_Major", "Gradual", "Per_CCCCD", "Prober"];
Pop12 = [0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 1000, 450, 0, 0, 0, 0, 0, 0, 0]; J=450; T = 1000;
o=find(Pop12>0);
str=Strategies(o);
Pop12=Pop12(o);
[POP3, BST, FIT] = TourTheFit2(B, str, Pop12, T, J);
J=160;
[POP4, BST, FIT] = TourTheFit2(B, str, Pop12/10, T, J);
figure;
J=450;
subplot(1,2,1); % First subplot
plot(0:J, POP3, 'LineWidth', 2);
legend(strrep(str,'_',' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time');
grid on
J=160;
% Second plot
subplot(1,2,2); % Second subplot
plot(0:J, POP4, 'LineWidth', 2); 
legend(strrep(str,'_',' '), 'Location', 'best');
xlabel('Generation');
ylabel('Number of Players');
title('Strategy Frequencies Over Time');
grid on