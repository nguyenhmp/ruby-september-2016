var count = 0
function climbingStairs(num, stepsArr, arr){
	if(!arr) arr = []
	if(sumOfArr(stepsArr) == num){
		var newArray = new Array
		for (var i = 0; i < stepsArr.length; i++) {
			newArray[i] = stepsArr[i]
		}
		arr.push(newArray)
		return arr
	}	else {
		stepsArr.push(1)
		climbingStairs(num, stepsArr, arr)
		stepsArr.pop()
		stepsArr.push(2)
		if (sumOfArr(stepsArr) <= num) {
			climbingStairs(num, stepsArr, arr)
		}
		stepsArr.pop()
		return arr
	}
}

console.log(climbingStairs(6,[]))

function sumOfArr(stepsArr){
	sum = 0
	for (var i = 0; i < stepsArr.length; i++) {
		sum += stepsArr[i]
	}
	return sum
}
function doublePangram(str){
	var arrLetters = ['b','c']//...
	for (var i = 0; i < str.length; i++) {
		if(arrLetters.includes(str[i])){
			str = str.replace(str[i], "")
			arrLetters.splice(arrLetters.indexOf(str[i]))// TODO
		}
	}
	return arrLetters.length == 0
}
function pangram(str){
	var object = {}
	for (var i = 0; i < str.length; i++) {
		//TO DO SEAN:Test that char code is between a-z and A-Z
		object[str[i]]=1
	}
	return Object.keys(object).length == 26
}
console.log(pangram("acdefghijklmnopqrstuvwxza"))

function encode(str){
	var encode = ""
	for (var i = 0; i < str.length; i++) {
		if (str[i] == str[i+1]){
			var count = 1
			for (var k = i; k < str.length; k++) {
				if (str[k] == str[k+1]){
					count++
					i++
				}else{
					break
				}
			}
			encode += str[i] + count
		}else{
			encode += str[i] + "1"
		}
	}
	return encode
}
console.log(encode("aaabbbccddd"))

