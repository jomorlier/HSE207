clear all
r = 0:0.1:4;

zeta = 0.1:0.2:1;

for i = 1:length(zeta)
    A(i,:) = 1./sqrt((1-r.^2).^2 + (2*zeta(i)*r).^2);
end
figure(1);  clf
plot(r,A)
xlabel('\gamma','fontsize',16)
ylabel('A','fontsize',14)
legend('0.1','0.3','0.5','0.7','0.9')

%%

for i = 1:length(zeta)
    phi(i,:) = -atan2((2*zeta(i).*r),(1-r.^2));
%     phi(i,:) = -atan2d((2*zeta(i).*r)./(1-r.^2));
end

figure(2);  clf
plot(r,phi)
xlabel('\gamma','fontsize',16)
ylabel('\Phi','fontsize',16)
legend('0.1','0.3','0.5','0.7','0.9')

%%

r = 2;
zeta = 0.2;
Z = 1/((1-r^2) + j*(2*zeta*r));
angle(Z)