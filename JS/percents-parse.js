var percents = ['percent1=00.000','percent2=01.000','percent3=00.060','percent4=00.002','percent5=00.090','percent6=00.060','percent7=00.009','percent8=00.650'];

var dictionary = {};

for(var i of percents)
{
	var splitString = i.split('=');
	dictionary[splitString[0]] = splitString[1];
}

console.log(JSON.stringify(dictionary));

var sum = 0;
for(var[key, value] of Object.entries(dictionary)){
	sum += parseFloat(value);
	var converted = Math.floor(value * 100).toFixed(1) + '%';
	dictionary[key] = converted;
}

console.log(Math.floor(sum * 100).toFixed(1) + '%');

console.log(JSON.stringify(dictionary));
