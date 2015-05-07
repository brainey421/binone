function [iterator] = binone_init(n, m)

% binone_init(m, n)
% 
% Initializes iterator for all n-by-m binary matrices with at least one 1 
% in each column.
%
% n: number of rows
% m: number of columns
% 
% iterator: initial state of iterator

% Initialize iterator
iterator.n = n;
iterator.m = m;
iterator.ii = 1;

iterator.cols = zeros(iterator.n, 2^iterator.n-1);
for ii=1:2^iterator.n-1
    rem = ii;
    for jj=1:iterator.n
        if rem >= 2^(iterator.n-jj)
            rem = rem - 2^(iterator.n-jj);
            iterator.cols(jj, ii) = 1;
        end
    end
end
