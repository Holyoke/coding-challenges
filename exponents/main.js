var swap = function(str, i, j) {
	return str.replace( str[i], str[j]);
}

var reverse = function (str, i , j) {
 	var mid = i + Math.floor((j - i) / 2);
 	var back = j + 1;

 	var i, front, back; 
 	for (i = 0; i < str.length; i++) {
 		front = str[i];
 		back--;
 		if (front === back) { continue; }

 		swap(str, front, back);
 	}
 	return null; 
}

function = reverse_word(str, i , j) {
	
}



