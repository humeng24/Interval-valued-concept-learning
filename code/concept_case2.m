function [ stack ] = concept_case2(data, obj, attr)
%% case 2
% data with two attribtues (data.lower and data.upper are two matrices)
% obj is an object set.
% attr is an interval-valued attribute set (attr.lower and attr.upper are two vectors)
[olen, ~] = size(data.lower);
c_attr = obj2attr(data, obj);
c_obj = attr2obj(data, attr, olen);
stack.objs = []; 
% (1)
s_obj_1 = attr2obj(data, c_attr, olen);
s_attr_1 = attr2attr(c_attr, attr, 2);
stack = pushgranule(stack, s_obj_1, s_attr_1);
% (2)
s_obj_2 = obj2obj(obj, c_obj, olen, 2);
s_attr_2 = obj2attr(data, c_obj);
stack = pushgranule(stack, s_obj_2, s_attr_2);
end

