function result = myFunction(input)
  % Improved error handling with specific error messages
  if input < 0
    error('Error: Input must be non-negative. Input value was %d', input);
  elseif ~isnumeric(input)
    error('Error: Input must be a numeric value.');
  end
  % More code here
  result = input * 2; % Example calculation
end

% Example of how to use the function with improved error handling
try
  result = myFunction(-5);
catch exception
  disp(['Error: ', exception.message]);
end

% Correctly assigning variable before usage
unassignedVariable = 5; % Initialize the variable
value = unassignedVariable + 10; %Now this line should run without error
disp(value); %Display the result