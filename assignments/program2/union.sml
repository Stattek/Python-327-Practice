(*

*)
fun union [] [] = []
|   union [] (head2::tail2) = head2::union [] tail2
|   union (head1::tail1) [] = head1::union tail1 []
|   union (head1::tail1) (head2::tail2) = 
        if head1 < head2 then head1::union tail1 (head2::tail2)
        else head2::union (head1::tail1) tail2;
