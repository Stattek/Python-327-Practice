fun split_lists (tuple_list : ('a * 'b * 'c) list) = 
    let
        val first_list = foldr (fn (element, the_list) => #1 element::the_list) [] tuple_list;
        val second_list = foldr (fn (element, the_list) => #2 element::the_list) [] tuple_list;
        val third_list = foldr (fn (element, the_list) => #3 element::the_list) [] tuple_list;
    in
        (first_list, second_list, third_list)
    end;

split_lists[(1,2,3)];
split_lists [(1, "a", 4.0),  (3, "b", 1.3), (19, "cat", 3.14)];