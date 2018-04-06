type pos is (int x) where x > 0

type Rect is {
  int x, int y, pos width, pos height
}

// Does rectangle a contain rectangle b?
function contains(Rect a, Rect b) -> (bool r)
ensures r == (
        a.x <= b.x &&
        b.x + b.width <= a.x + a.width &&
        a.y <= b.y && 
        b.y + b.height <= a.y + a.height): 
    // TODO: code this using if-else statements.
    return true
    