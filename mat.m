%number 1%
my_group = readtable("C:\Users\HP\OneDrive\Desktop\MATLAB EXCEL SHEET.xlsx");
%Outputting this excel sheet into a new one%
writetable(my_group,'MEB2_GROUP3.xlsx');
%Outputting plots in the above information%
names_cat = categorical(my_group.FULLNAME,my_group.FULLNAME);
n_age = my_group.AGE;
bar(names_cat,n_age);
xlabel('Names of Student');
ylabel('AGES');
xlabel('Names of Student');
tribe_counts = groupcounts(my_group,'TRIBE');
figure;
bar(categorical(tribe_counts.TRIBE),tribe_counts.GroupCount);
title('distribution by tribe');
xlabel('tribe');
ylabel('Count');
%Outputting a plot of hobbies of the students%
hobby_counts = groupcounts(my_group,'HOBBIES');
figure;
bar(categorical(hobby_counts.HOBBIES),hobby_counts.GroupCount);