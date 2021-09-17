function [ granles ] = concept2obj( data, obj)
%% objects oriented interval-valued concept learning (O-IvCL)
[olen, ~] = size(data.lower);
granles.objs = [];
c_attr = obj2attr(data, obj);
cc_obj = attr2obj(data, c_attr, olen);
granles = push(granles, cc_obj, c_attr);
end

