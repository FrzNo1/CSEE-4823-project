% fir.m
% Function implementing FIR filter based on the equation:
% y[n] = sum(bi * x[n-i]), where bi are filter coefficients

function [d_out, valid_out] = fir(coreEn, d_in, valid_in, rstn, C)
	% Initialize persistent variables to maintain values between function calls
	persistent x Sum

	% Check coreEn condition
	if coreEn
		% Reset Sum for each call
		Sum = 0;

		% Check if rstn is true; if so, reset x
		if rstn
		    x = zeros(1, 64);
		end

		% Shift values in x for the new cycle
		for i = 63:-1:2
		    x(i) = x(i-1);
		end

		% Set x[1] based on valid_in signal
		if valid_in
		    x(1) = d_in;
		else
		    x(1) = 0;
		end

		% Calculate Sum
		for i = 0:63
		    Sum = Sum + C(i+1) * x(64-i);
		    
		end

		% Set d_out and valid_out based on valid_in
		if valid_in
		    d_out = Sum;
		    valid_out = 1;
		else
		    d_out = 0;
		    valid_out = 0;
		end
	end
end
