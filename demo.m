%% Lists all n-by-m binary matrices with at least one 1 in each column.

n = 2;
m = 2;

iterator = binone_init(n, m);
while binone_hasnext(iterator)
    [A, iterator] = binone_getnext(iterator);
    A
end
