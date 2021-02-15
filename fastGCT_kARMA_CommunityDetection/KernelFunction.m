function [kernelY1] = KernelFunction(H,Col2)

kernelY1 = zeros(Col2,Col2);
variance = 1;
%% gaussian
% for i = 1:Col2
%     for j = 1:Col2
%         kernelY1(i,j) = exp(-(norm(H(:,i)-H(:,j))^2)/(2*(1^2))); 
%     end
% end
%% linear
for i = 1:Col2
    for j = 1:Col2
        A = H(:,i);
        kernelY1(i,j) = A'*H(:,j); 
    end
end
end