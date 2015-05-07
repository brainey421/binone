function hasnext = binone_hasnext(iterator)

% binone_hasnext(iterator)
% 
% Returns whether the iterator has another n-by-m binary matrix with at 
% least one 1 in each column.
%
% iterator: current state of iterator
% 
% hasnext: whether iterator has another matrix

if iterator.ii <= (2^iterator.n-1)^iterator.m
    hasnext = true;
else
    hasnext = false;
end
