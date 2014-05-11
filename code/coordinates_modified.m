%INFO: Funktion liest Vektor mit Koordinaten ein und gibt Distanzmatrix (als obere Dreiecksmatrix)
%
%
%INPUT: koordinatenvektro in der form (Nr., x-coord, y-coord)
%
%OUTPUT: Distanzmatrix


function[data_set] = coordinates()

[filename, pathname] = uigetfile('*.txt', 'Please select a city environment');
     if isequal(filename, 0)
        disp('User selected ''Cancel''')
        
     else
        disp(['User selected ', fullfile(pathname, filename)])
        delimiterIn = ' ';
        headerlinesIn = 6;
        cities = importdata(filename,delimiterIn,headerlinesIn);
        koordinaten = cities.data;

       
     end


     
	no_cities = length (koordinaten);
	data_set = zeros(no_cities);

	for haupt=1:(no_cities-1)

		for jj = (haupt+1):no_cities

			data_set(haupt, jj) = round(sqrt( (koordinaten(haupt, 2) - koordinaten(jj, 2))^2 + (koordinaten(haupt, 3) - koordinaten(jj, 3))^2 ));

		end %for jj

	end %for haupt
    
    data_set;
    
end

