fun find_subset num [] = []
|   find_subset num (head::tail) = 
    let        
        val add = if (num - head) > 0 then head::(find_subset (num - head) tail) else (find_subset num tail)
        val dont_add = find_subset num tail
    in
        (* Return the value that we find*)
        if not (add = []) then add
        else if not (dont_add = []) then dont_add
        else if num < 0 then []
        else if (num-head) >= 0 then find_subset num tail
        (* If we don't find anything, then move forward to the next point in the list *)
        else find_subset num tail
    end;

find_subset 10 [4,3,2,12,5];