function isPalindrome(int[] chars) -> (bool r)
ensures r <==> all { k in 0..|chars| | 
                chars[k] == chars[|chars|-(k+1)] }: 
    int i = 0
    int j = |chars|
    while i < j:
        j = j - 1
        if chars[i] != chars[j]:
            return false
        i = i + 1
    return true