function result = myFunction(input)
  % Check for invalid input
  if input < 0
    error('Input must be non-negative');
  end
  
  % Handle potential division by zero
  if input == 0
    result = Inf; % Or handle it appropriately, e.g., using a warning
    warning('Division by zero detected. Returning Inf.');
  else
    result = someCalculation(input);
  end
end

function output = someCalculation(x)
  % Avoid division by zero
  output = x / (x==0) + (x~=0)*x; %conditional statement to handle 0
end