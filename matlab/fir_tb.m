% Define fixed-point format for 16-bit signed integers (Q15 format)
fixedPointFormat = numerictype(1, 16, 8);  % Signed, 16 bits, 15 fractional bits


% For Coefficient
C_file = fopen('C.txt', 'r');
if C_file == -1
    error('Failed to open C.txt');
end

% C = fi(zeros(1, 64), fixedPointFormat);
C = zeros(1, 64);

for i = 1:64
    C(i) = fscanf(C_file, '%f', 1);
    if isempty(C(i))
        error('C.txt does not contain enough data (expected 64 lines)');
    end
    % C(i) = fi(line, fixedPointFormat);
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
    d_in = fscanf(inputFile, '%f', 1);
    if isempty(d_in)
        break;
    end

    % d_in = fi(d_in, fixedPointFormat);
    [d_out, valid_out] = fir(coreEn, d_in, valid_in, rstn, C);
    rstn = false;

    % output
    if valid_out
        fprintf(outputFile, '%f\n', double(d_out));
    else
        fprintf(outputFile, '0\n');
    end

    break;
end

% Close files
fclose(inputFile);
fclose(outputFile);

disp('Simulation completed. Output written to output_samples.txt.');


