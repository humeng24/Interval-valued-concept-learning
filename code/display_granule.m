function display_granule( stack )
len = length(stack.objs);
str = [];
for o = 1 : len
    str = [str '({' num2str(stack.objs{o}) '}, \t{'];
    lu = stack.attrs{o};
    for a = 1 : length(lu.lower)
        str = [str '<a' num2str(a), ',[' num2str(lu.lower(a)) ',' num2str(lu.upper(a)) ']>,'];
    end
    str(end) = [];
    str = [str '})\t\n'];
end
sprintf(str)
end

