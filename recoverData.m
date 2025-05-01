function X_rec = recoverData(Z, U, K)
%RECOVERDATA Recovers an approximation of the original data when using the 
%projected data
%   X_rec = RECOVERDATA(Z, U, K) recovers an approximation the 
%   original data that has been reduced to K dimensions. It returns the
%   approximate reconstruction in X_rec.
%

% You need to return the following variables correctly.
m=size(Z, 1);
n=size(U, 1);
X_rec = zeros(m,n);

              
U_reduced=U(:,1:K);
for i=1:m
 z=(Z(i,:))';
 x_rec=U_reduced*z;
 X_rec(i,:)=x_rec';
end

% =============================================================

end
