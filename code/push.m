function stack = push(stack, cc_obj, ccc_attr)
len = length(stack.objs);
if(len==0) %% 空栈
    stack.objs{1}= cc_obj;
    stack.attrs{1} = ccc_attr;
else  %% 判断栈中是否已经存在，不存在加入
    flag = 1;
    for x = 1 : len
        eqlen = length(stack.objs{x}) == length(cc_obj);
        if(eqlen)
            res = sort(stack.objs{x}) == sort(cc_obj);
            if(res)
                flag = 0;
                break;
            end
        end
    end
    if(flag)
        stack.objs{len+1} = cc_obj;
        stack.attrs{len+1} = ccc_attr;
    end
end
end

