// def fib(num)
//   previous_fib = 0
//   current_fib = 1
//   num.times do |num|
//   	previous_fib, current_fib = current_fib, current_fib + previous_fib
//   end
//   [previous_fib, num]
// end

// def fib_digit_length(num)
// 	answers = [0,0]
// 	index = 1
// 	while answers[0].to_s.length < num
// 		index += 1
// 		answers = fib(index)
// 	end
// 	answers[1]
// end

function fib(num){
	var previousFib = 0;
	var currentFib = 1;
	for(var i = 0; i < num; i++){
		var temp = currentFib;
		currentFib = previousFib;
		previousFib = currentFib + temp;
	}
	return [previousFib, num]
}


function fibDigitLength(num) {
	var answers = [0,0];
	for (var i = 0; answers[0].toString().length < num; i++) {
		answers = fib(i);
	};
	return answers;
}















function fib(num) {
	var previousFib = 0;
	var currentFib = 1;
	for (var i = 0; i < num; i++) {
		var temp = previousFib;
		previousFib = currentFib;
		currentFib = currentFib + temp
	};
	return [previousFib, num];
}

function fibDigitLength(num) {
	var answers = [0,0];
	for (var i = 0; answers[0].toString().length < num; i++) {
		answers = fib(i);
	};
	return answers;
}









