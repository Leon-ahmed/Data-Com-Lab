clc; %clear workspace command
clear;% clear var
close all; %Close all window

bits=input('Enter binary data: ');
n=length(bits);

%empty array 
ami=zeros(1,n);

pole=1;

%Encode
for  i=1:n
   if bits(i)==1
       ami(i)=pole;
       pole=-pole;
   end
end

disp(ami);


%Decode
decode=zeros(1,n);
for i=1:n
   if ami(i)~=0
       decode(i)=1;
   end


end
disp(decode);


figure
subplot(2,2,1);
stairs(0:n,[ami ami(end)],'LineWidth',2);
ylim([-1.5 1.5]);
yticks([-1 0 1]);
title('AMI Encoding');
xlabel('Bit Index');
ylabel('Voltage');
grid on
