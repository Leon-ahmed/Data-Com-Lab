clc;
clear;
close all;

bits=input('Enter Binary data(eg:[1 0 1 1 0 1]): ');
n=length(bits);

%empty array
pt=zeros(1,n);
pole=1;
%Encodeing
for i=1:n
    if bits(i)==0
        pt(i)=pole;
        pole=-pole;
    end

end
disp('Encoded Pseudoternary :');
disp(pt);
%Decoding
dpt=zeros(1,n);
for i=1:n
    if pt(i)==0
        dpt(i)=1;
    end
end
disp('Decoded Pseudoternary :');
disp(dpt);



figure; 
%Encode Figure
subplot(2,2,1);
stairs(0:n,[pt pt(end)],'LineWidth',2,'Color','blue');
ylim([-1.5 1.5]); 
yticks([-1 0 1]);
title('Pseudoternary encodeing'); 
xlabel('Bit Index'); 
ylabel('Voltage'); 
grid on;

%Decode Figure
subplot(2,2,2);
stairs(0:n,[dpt dpt(end)],'LineWidth',2,'Color','green');
ylim([-1.5 1.5]); 
yticks([-1 0 1]);
title('Pseudoternary decodeing'); 
xlabel('Bit Index'); 
ylabel('Voltage'); 
grid on;