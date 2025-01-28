function result = myFunction(input)
  % Some code here that might cause an error
  if input < 0
    error('Input must be non-negative');
  end
  % More code here
  result = input * 2; % Example calculation
end

% Example of how to use the function
try
  result = myFunction(-5);
catch exception
  disp(['Error: ', exception.message]);
end

% Another uncommon error: using a variable before it's assigned
value = unassignedVariable + 10;  %Error if unassignedVariable is not assigned before this line