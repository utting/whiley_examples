// In-place reverse of items in an array
function reverse(int[] xs) -> (int[] ys)
// Returned array is same size as input
ensures |xs| == |ys|
// All items in return array in reversed order
ensures all { i in 0..|xs| | xs[i] == ys[|xs|-(i+1)]}:
    //
    int i = 0
    int j = |xs| - 1
    //
    while i < j:
        //
        int tmp = xs[i]
        xs[i] = xs[j]
        xs[j] = tmp
        j = j - 1 
        i = i + 1
    //
    return xs