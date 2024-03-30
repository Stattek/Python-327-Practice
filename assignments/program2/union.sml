(*
Function that does a union of two lists and retains 
the ascending sorted order of them.

By David Slay and Jake Ozer
*)

(*
Takes two lists, in ascending order, and returns a list with
all of the elements of the two lists, in ascending order.
*)
fun union [] [] = []
(*If the first list is empty and the second one isn't, add the element from the second list*)
|   union [] (head2::tail2) = head2::union [] tail2
(*If the first list isn't empty but the second one is, add the element from the first list*)
|   union (head1::tail1) [] = head1::union tail1 []
(*If both lists still have elements, add the smaller element from either list*)
|   union (head1::tail1) (head2::tail2) = 
        if head1 < head2 then head1::union tail1 (head2::tail2)
        else head2::union (head1::tail1) tail2;
