data_set = coordinates_modified();

data_set = data_set + data_set';
summe = 0;
traj = [1 22 8 26 31 28 3 36 35 20 2 29 21 16 50 34 30 9 49 10 39 33 45 15 44 42 40 19 41 13 25 14 24 43 7 23 48 6 27 51 46 12 47 18 4 17 37 5 38 11 32 1
];
for ii = 1:length(data_set)
    
    traj(ii)
    traj(ii+1)
    summe = summe + data_set(traj(ii), traj(ii+1));
    
end

summe