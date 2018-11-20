var randomObj = [{
	accountSettledAmount: 20,
	accountTradedAmount: 40,
	currency: 'USD'
},{
	accountSettledAmount: 20,
	accountTradedAmount: 60,
	currency: 'EUR'
},{
	accountSettledAmount:50,
	accountTradedAmount: 70,
	currency: 'USD'
},{
	accountSettledAmount: 90,
	accountTradedAmount: 30,
	currency: 'EUR'
},{
	accountSettledAmount: 0,
	accountTradedAmount: 40,
	currency: 'USD'
},{
	accountSettledAmount: 70,
	accountTradedAmount: 0,
	currency: 'GDP'
}];

//USD - TRADED:150, SETTLED: 70

var calcTradedTotal = (i) =>
{
	var tradedTotal = 0
	for(var b = 0; b < i.length; b++)
	{
		tradedTotal += i[b].accountTradedAmount;
	}
	return tradedTotal;
}
var calcSettledTotal = (i) =>
{
	var settledTotal = 0
	for(var b = 0; b < i.length; b++)
	{
		settledTotal += i[b].accountSettledAmount;
	}
	return settledTotal;
}

var calcSum = (longJson) =>
{
	var currArr = []
	for(var	i = 0; i < longJson.length; i++)
	{
		if(!currArr.includes(longJson[i].currency))
		{
			console.log(longJson[i].currency)
			currArr.push(longJson[i].currency)
		}
	}
	
	var objArr = []
	for(var	i = 0; i < currArr.length; i++)
	{
		if(currArr.includes(currArr[i]))
		{
			var j = longJson.filter(o => o.currency === currArr[i])
			console.log(JSON.stringify(j));
			var tradedTotal = calcTradedTotal(j);
			var settledTotal = calcSettledTotal(j);

			var y = {
				currency: currArr[i],
				tradedTotal: tradedTotal,
				settledTotal: settledTotal
			}	
			
			objArr.push(y);
		}
	}
	return objArr;
}


var answer = calcSum(randomObj)

answer.forEach(el => console.log(el))
