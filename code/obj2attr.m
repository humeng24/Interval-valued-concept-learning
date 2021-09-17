function attr = obj2attr(data, obj)
attr.lower = min(data.lower(obj,:), [], 1);
attr.upper = max(data.upper(obj,:), [], 1);
end
