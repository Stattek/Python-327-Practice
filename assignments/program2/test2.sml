fun find_subset num [] = []
| find_subset 0 _ = []
| find_subset num (head::tail) =
    let
        fun find_subset_helper num [] _ = []
        | find_subset_helper 0 _ result = result;
        | find_subset_helper num (head::tail) result =
        val add_num = find_subset_helper (num-head) tail head::result;
        val dont_add_num = find_subset_helper num tail
    in
        
    end;