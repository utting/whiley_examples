function indexOf(int[] items, int item) -> (int r)
ensures r >= 0 ==> items[r] == item
ensures r >= 0 ==> all { i in 0 .. r | items[i] != item }
ensures r < 0 ==> all { i in 0 .. |items| | 
                          items[i] != item }:
    // 
    int i = 0
    while i < |items|:
        if items[i] == item:
            return i
        i = i + 1
    //
    return -1
