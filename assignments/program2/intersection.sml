fun intersection [] []= []
|   intersection [] (head2::tail2) = []
|   intersection (head1::tail1) [] = []
|   intersection (head1::tail1) (head2::tail2) = 
        if head1 = head2 then head1::intersection tail1 (head2::tail2)
        else if head1 > head2 then intersection(head1::tail1) tail2
        else intersection tail1 (head2::tail2);