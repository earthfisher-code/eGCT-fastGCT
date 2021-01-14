function [Product] = KernelFunctionARMA(A,B)

 Product = A*B'; %linear kernel

%% Gasussian kernel
% [row1,col1] = size(A);
% [row2,col2] = size(B);
% for i = 1:row1
%     for j = 1:row2
%         Product(i,j) = exp(-norm(A(i,:)-B(j,:))^2/(2*(1^2)));
%     end
% end

end