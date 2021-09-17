function stack = pushgranule(stack, obj, attr)
len = length(stack.objs);
stack.objs{len+1} = obj;
stack.attrs{len+1} = attr;
end
