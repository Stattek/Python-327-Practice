(*
Function that finds the intersection of two lists

By David Slay and Jake Ozer
*)

(*
Takes two lists, in ascending order, and returns a list of all
elements that are in both lists, in ascending order.
*)
fun intersection [] []= []
(*If either of the lists is empty, return an empty list*)
|   intersection [] (head2::tail2) = []
|   intersection (head1::tail1) [] = []
(*If both lists are still full, then look for the same elements*)
|   intersection (head1::tail1) (head2::tail2) = 
        (*if the elements are the same, then add this element to the list*)
        if head1 = head2 then head1::intersection tail1 (head2::tail2)
        (*If the first head is larger than the second head, then move the second list forward*)
        else if head1 > head2 then intersection(head1::tail1) tail2
        (*Assume that the second head is larger than the first head, and move the second first list forward*)
        else intersection tail1 (head2::tail2);
