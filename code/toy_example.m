function toy_example()
%% This is a toy example.

%% data
lower = [1.2 0.3 1.3 3.1; 
         1.3 0.4 1.7 3.3;
         0.8 0.1 1.3 2.8;
         0.4 0.4 1.4 2.6;];
upper = [1.5 0.7 1.5 3.7; 
         1.8 0.5 2.4 4.1;
         1.5 0.9 1.6 3.7;
         1.9 0.8 2.9 4.2;];
data.lower = lower;
data.upper = upper;
%% atttributes
attr.lower = [1.1 0.3 1.3 3.1];
attr.upper = [2.3 0.8 3.2 5.2];
%% objects
objects = [2 4];
%% process
%% O-IvCL
granules = concept2obj(data, objects);
display_granule(granules);
%% IvA-IvCL
granules = concept2attr(data, attr);
display_granule(granules);


%% --the first way
stack = concept_case1(data, objects, attr);
display_granule(stack);
granules = concept_case3(stack, data);
display_granule(granules);
%% --the second way
stack = concept_case2(data, objects, attr);
display_granule(stack);
granules = concept_case4(stack, data);
display_granule(granules);
end

