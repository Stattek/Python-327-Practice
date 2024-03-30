(*
Function to count the number of multiples of a number in a list.

By David Slay and Jake Ozer
*)

(*
Takes a num and a list and returns a count of the number of multiples of the 
first parameter.
*)
fun count_multiples(num, []) = 0
|   count_multiples(num, head::tail) =
        (*If the head is a multiple of the number, then add 1 to the next count*)
        if head mod num = 0 then 1 + count_multiples(num, tail)
        (*Otherwise, move on*)
        else count_multiples(num, tail);
