function [A, iterator] = binone_getnext(iterator)

% binone_hasnext(iterator)
% 
% Returns the iterator's next n-by-m binary matrix with at least one 1 
% in each column.
%
% iterator: current state of iterator
% 
% A: iterator's next matrix
% iterator: next state of iterator

A = zeros(iterator.n, iterator.m);
if binone_hasnext(iterator)
    div = iterator.ii-1;
    for jj=1:iterator.m
        rem = mod(div, 2^iterator.n-1);
        div = floor(div/(2^iterator.n-1));
        A(:, iterator.m-jj+1) = iterator.cols(:, rem+1);
    end
    iterator.ii = iterator.ii + 1;
end
