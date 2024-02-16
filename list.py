my_list = ["Josh", "Test", 24]  # this is an example of a list
print(my_list)


# multi-dimensional arrays
list_of_lists = [["josh", "peck"], ["john", "doe"]]
print(list_of_lists)
for list in list_of_lists:
    print(list)


def keep_odd(number_list):
    odd_list = []  # to hold the odd numbers

    for number in number_list:
        if number % 2 != 0:
            odd_list.append(number)

    return odd_list


print(keep_odd([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]))


def keep_odd_efficiently(number_list):
    return [num for num in number_list if num % 2 != 0]
    # a very pythonic way of writing a return statement
    # Also, it is much more efficient

