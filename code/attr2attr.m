function rattr = attr2attr(attr1, attr2, model)
if(model == 1) 
    rattr.lower = min(attr1.lower, attr2.lower);
    rattr.upper = max(attr1.upper, attr2.upper);
elseif(model == 2) 
    len = length(attr1.lower);
    lower = zeros(1, len);
    upper = zeros(1, len);
    for a = 1 : len
        if( attr1.lower(a)  > attr2.upper(a) || attr1.upper(a)  < attr2.lower(a) )
            lower(a) = +inf;
            upper(a) = -inf;
        else
            lower(a) = max(attr1.lower(a), attr2.lower(a));
            upper(a) = min(attr1.upper(a), attr2.upper(a));
        end
    end
    rattr.lower = lower;
    rattr.upper = upper;
end
end

