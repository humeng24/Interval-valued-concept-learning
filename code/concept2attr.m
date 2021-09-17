function [ granles ] = concept2attr( data, attr)
%% Interval-valued attributes oriented interval-valued concept learning (IvA-IvCL)
[olen, ~] = size(data.lower);
granles.objs = [];
c_obj = attr2obj(data, attr, olen);
cc_attr = obj2attr(data, c_obj);    
granles = push(granles, c_obj, cc_attr);
end

