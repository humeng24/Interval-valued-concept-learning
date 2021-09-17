function obj = attr2obj(data, attr, olen)
objs = zeros(1, olen);
for x = 1 : olen
    res = data.lower(x,:) >= attr.lower & data.upper(x,:) <= attr.upper;
    if(res)
        objs(x) = 1;
    end
end
obj = find(objs);
end
