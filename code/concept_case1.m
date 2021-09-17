function [ stack ] = concept_case1(data, obj, attr)
%% case 1
% data with two attribtues (data.lower and data.upper are two matrices)
% obj is an object set.
% attr is an interval-valued attribute set (attr.lower and attr.upper are two vectors)
[olen, ~] = size(data.lower);
c_attr = obj2attr(data, obj);
c_obj = attr2obj(data, attr, olen);
stack.objs = [];
% (1)
n_obj_1 = obj2obj(obj, c_obj, olen, 1);
n_attr_1 = attr2attr(attr, c_attr, 2);
stack = pushgranule(stack, n_obj_1, n_attr_1);
% (2)
n_obj_2 = obj2obj(obj, c_obj, olen, 2);
n_attr_2 = attr2attr(attr, c_attr, 1);
stack = pushgranule(stack, n_obj_2, n_attr_2);
% (3)
n_obj_3 = c_obj;
n_attr_3 = attr2attr(attr, c_attr, 1);
stack = pushgranule(stack, n_obj_3, n_attr_3);
% (4)
n_obj_4 = obj2obj(obj, c_obj, olen, 1);
n_attr_4 = c_attr;
stack = pushgranule(stack, n_obj_4, n_attr_4);
% (5)
n_obj_5 = attr2obj(data, c_attr, olen);
n_attr_5 = attr2attr(attr, c_attr, 1);
stack = pushgranule(stack, n_obj_5, n_attr_5);
% (6)
n_obj_6 = obj2obj(obj, c_obj, olen, 1);
n_attr_6 = obj2attr(data, c_obj);
stack = pushgranule(stack, n_obj_6, n_attr_6);
end

