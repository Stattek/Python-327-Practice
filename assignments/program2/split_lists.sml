(*
Function that splits a list of tuples of 3 elements into a tuple
of 3 lists.

By David Slay and Jake Ozer
*)

(*
Takes a list of tuples with 3 elements each, with any type
and returns a tuple of three lists.

All elements of type 'a will be put into their own list,
all elements of type 'b will also be put into their own list,
and all elements of type 'c will be put into their own list.

This will result in a tuple of 3 lists, with the first containing
all of type a', the second with all of type 'b, and the third with
all of type 'c.
*)
fun split_lists (tuple_list : ('a * 'b * 'c) list) = 
    let
        (*Create all of the lists*)
        val first_list = foldr (fn (element, the_list) => #1 element::the_list) [] tuple_list;
        val second_list = foldr (fn (element, the_list) => #2 element::the_list) [] tuple_list;
        val third_list = foldr (fn (element, the_list) => #3 element::the_list) [] tuple_list;
    in
        (*put these lists into tuples*)
        (first_list, second_list, third_list)
    end;
