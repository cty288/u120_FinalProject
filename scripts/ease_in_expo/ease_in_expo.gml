function ease_in_expo(inputvalue,outputmin,outputmax,inputmax){
	return outputmax * power(2, 10 * (inputvalue / inputmax - 1)) + outputmin;
}