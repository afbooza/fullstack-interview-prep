var calcNonRepeat = (given_string) => 
{
	let dict = {}
	for(let i of given_string)
	{
		if(i in dict)
		{
			dict[i] += 1
		}
		else{
			dict[i] = 1
		}	
	}
	for(let i of given_string)
	{
		if(dict[i] === 1)
			return i;
	}
	return null;

}

var answer = calcNonRepeat('aaccd');

console.log(answer);