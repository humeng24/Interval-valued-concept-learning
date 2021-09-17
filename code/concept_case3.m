function [ granles ] = concept_case3(stack, data)
%% Case 3
% stack is a set of necessary IvIGs which are obtained by Case 1.
% data with two attribtues (data.lower and data.upper are two matrices)
[olen, ~] = size(data.lower);
granles.objs = []; %% 
len = length(stack.objs);
for g = 1 : len
    obj = stack.objs{g};
    attr = stack.attrs{g};
    c_attr = obj2attr(data, obj);
    c_obj = attr2obj(data, attr, olen);
    % (1)
    n_obj_1 = obj2obj(obj, c_obj, olen, 2);
    n_attr_1 = obj2attr(data, n_obj_1);
    granles = push(granles, n_obj_1, n_attr_1);
    % (2)
    n_attr_2 = attr2attr(attr, c_attr, 2);
    n_obj_2 = attr2obj(data, n_attr_2, olen);
    granles = push(granles, n_obj_2, n_attr_2);
end
end

