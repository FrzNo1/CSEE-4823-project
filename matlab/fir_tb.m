% Define fixed-point format for 16-bit signed integers (Q15 format)
fixedPointFormat = numerictype(1, 16, 8);  % Signed, 16 bits, 15 fractional bits
scalingFactor = 2^8;


% For Coefficient
C_file = fopen('C.txt', 'r');
if C_file == -1
    error('Failed to open C.txt');
end

C = zeros(1, 64, 'like', fi(0, fixedPointFormat));

for i = 1:64
    line = fscanf(C_file, '%s', 1);
    if isempty(line)
        error('C.txt does not contain enough data (expected 64 lines)');
    end
    
    decimalValue = bin2dec(line);

    if line(1) == '1'
        decimalValue = decimalValue - 2^16;
    end
    
    C(i) = fi(decimalValue / scalingFactor, fixedPointFormat);
end

fclose(C_file);


% input and output
inputFile = fopen('input_samples.txt', 'r');
outputFile = fopen('output_samples.txt', 'w');

if inputFile == -1
    error('Failed to open input_samples.txt');
end
if outputFile == -1
    error('Failed to open output_samples.txt');
end


% Input control signals
rstn = true;
valid_in = true;
coreEn = true;

% Read inputs and run simulation
while ~feof(inputFile)
    d_in = fscanf(inputFile, '%s', 1);
    if isempty(d_in)
        break;
    end

    d_in = bin2dec(d_in);

    if d_in >= 2^15  % If the number is negative in two's complement
        d_in = d_in - 2^16;  % Convert from unsigned to signed by subtracting 2^16
    end

    d_in = fi(d_in / scalingFactor, fixedPointFormat);

    [d_out, valid_out] = fir(coreEn, d_in, valid_in, rstn, C);
    rstn = false;

    % output
    if valid_out
        fprintf(outputFile, '%f\n', double(d_out));
    else
        fprintf(outputFile, '0\n');
    end
end

% Close files
fclose(inputFile);
fclose(outputFile);

disp('Simulation completed. Output written to output_samples.txt.');


