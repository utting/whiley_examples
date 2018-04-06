function f(int x, int y) -> (int r, int s)
ensures r == y && s == 2 * x:
    x = 2 * x + y
    y = x - y
    x = x - y
    return x, y
