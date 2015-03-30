def largestContinuousSum(arr):
	if len(arr)==0:
		return
	maxSum = currentSum = arr[0]
	start = tstart = end = 0
	for pos in range(1, len(arr)):

		if(arr[pos] > currentSum + arr[pos]):
			tstart = pos
			currentSum = arr[pos]
		else:
			currentSum += arr[pos]

	if(currentSum > maxSum):
		maxSum = currentSum
		start = tstart
		end = pos

		return maxSum,start,end
