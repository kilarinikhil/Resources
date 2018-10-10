x = 1:31;
for i = 1:5
    A = random('Uniform',0,4);
    phi = random('Uniform',0,2*pi);
    y = A * cos(0.5*x+phi);
    subplot(5,1,i)
    stem(x,y);
    title(strcat(strcat('A=',num2str(A)),strcat('   phi=',num2str(phi))));
    ylabel(strcat('rand',num2str(i)))';
    xlabel('n');
end
suptitle('Question 7.3');





















