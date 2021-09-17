function robj = obj2obj(obj1, obj2, olen, model)
list1 = zeros(1, olen);
list2 = zeros(1, olen);
list1(obj1) = 1;
list2(obj2) = 1;
if(model ==1)
    robj = find(list1 & list2);
elseif(model == 2)
    robj = find(list1 | list2);
end
end

