

fun find_subset sum lst =
    let
        fun findSubsetHelper (0, _, acc) = rev acc 
          | findSubsetHelper (_, [], _) = []       
          | findSubsetHelper (sum, x::xs, acc) =
            let
                val included = findSubsetHelper (sum - x, xs, x::acc)
                val excluded = findSubsetHelper (sum, xs, acc)
            in
                if included = [] then excluded else included
            end

    in
        findSubsetHelper (sum, lst, [])
    end
