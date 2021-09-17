function [ granles ] = concept_case4(stack, data)
%% Case 4
% stack is a set of sufficient IvIGs which are obtained by Case 2.
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
    s_obj_1 = obj2obj(obj, c_obj, olen, 1);
    s_attr_1 = obj2attr(data, s_obj_1);
    granles = push(granles, s_obj_1, s_attr_1);
    % (2)
    s_attr_2 = attr2attr(attr, c_attr, 1);
    s_obj_2 = attr2obj(data, s_attr_2, olen);
    granles = push(granles, s_obj_2, s_attr_2);
end
end

