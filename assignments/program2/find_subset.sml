(*
Function that finds a subset of the list that
add up to the first argument.

By David Slay and Jake Ozer
*)

(*
Takes a number and a list of integers and outputs the first 
subset of numbers in the list that add up to the number passed.

If no such subset exists, it returns an empty list.
*)
fun find_subset num [] = [] (*return an empty list if we reach the end of the list*)
|   find_subset num (head::tail) = 
    let
        (*temporary value to hold a list if we were to add the first element in the subset*)
        val temp = head::(find_subset (num - head) tail) 
    in
        (*If the list adds up to the parameter, then return this list*)
        if (foldl (op +) 0 temp) = num then temp
        (*Otherwise, move to the next element*)
        else find_subset num tail
    end;
