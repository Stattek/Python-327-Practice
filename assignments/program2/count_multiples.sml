fun count_multiples(num, []) = 0
| count_multiples(num, head::tail) =
    if head mod num = 0 then 1 + count_multiples(num, tail)
    else count_multiples(tail);