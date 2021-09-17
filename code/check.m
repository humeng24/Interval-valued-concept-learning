function flag = check(c_attr, ccc_attr)
res = c_attr.lower == ccc_attr.lower & c_attr.upper == ccc_attr.upper; 
flag = min(res);
end
