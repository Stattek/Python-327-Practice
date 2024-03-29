fun find_subset num [] = []
|   find_subset num (head::tail) = 
    let
        fun helper_find_subset num [] cur_list sum = []
        |   helper_find_subset num (head::tail) cur_list sum =
                if(sum + head = num) then cur_list @ [head]
                (* if adding the current element will be less than num, then 
                do a recursive call and add the current element to the cur_list*)
                else if(sum + head < num) then helper_find_subset num tail (cur_list @ [head]) (sum + head)
                else helper_find_subset num tail cur_list sum;

        val temp_list = helper_find_subset num (head::tail) [] 0
    in
        if((foldl (op +) 0 temp_list) = num) then temp_list
        else find_subset num (tail)
    end;

find_subset 10 [4, 3, 2, 12, 5];
find_subset 10 [4, 3, 2, 12, 5, 6];
find_subset 10 [4, 3, 2, 12];

foldl (op +) 0 [1,2,3];


fun helper_find_subset num [] cur_list = []
|   helper_find_subset num (head::tail) cur_list = 
    if((foldl (op +) 0 cur_list) + head = num) then cur_list @ [head]
    (* if adding the current element will be less than num, then 
    do a recursive call and add the current element to the cur_list*)
    else if((foldl (op +) 0 cur_list) + head < num) then helper_find_subset num tail (cur_list @ [head])
    else helper_find_subset num tail cur_list;

helper_find_subset 10 [4,3,2,12,5] [];

[2,3,4] @ [5] @ [4];


(foldl (op +) 0 []) + 4 = 10;
(foldl (op +) 0 []) + 4 < 10;
    [] @ [4];
(foldl (op +) 0 [4]) + 3 = 10;
(foldl (op +) 0 [4]) + 3 < 10;
    [4] @ [3];
(foldl (op +) 0 [4,3]) + 2 = 10;
(foldl (op +) 0 [4,3]) + 2 < 10;
    [4,3] @ [2];
(foldl (op +) 0 [4,3,2]) + 12 = 10;
(foldl (op +) 0 [4,3,2]) + 12 < 10;
    [4,3,2];
(foldl (op +) 0 [4,3,2]) + 5 = 10;
(foldl (op +) 0 [4,3,2]) + 5 < 10;
    [4,3,2];
(foldl (op +) 0 [4,3,2]) + 6 = 10;
