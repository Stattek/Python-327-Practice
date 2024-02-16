# assignment
x = 5
y = x + 12
print(y)


# multiple assignment
test_1 = test_2 = 3
print(test_1, test_2)


# immutable object copying
immut_1 = 5  # an integer is an immutable type
immut_2 = immut_1
print(immut_1, immut_2)
immut_1 = 23
print(immut_1, immut_2)


# mutable object copying
list_1 = [1, 2, 3]
list_2 = list_1  # list_1 and list_2 point to the same list
print(list_1, list_2)
list_1 = "no longer a list"
print(list_1, list_2)


# booleans
print(bool(False))
print(bool(1))
print(bool(0.0))
print(bool(231))


# integers
print(5)
print(0)


# type()
print(type(2))  # gets the type of variable this literal is. It should be an integer
print(type("hello"))
print(type(21.5))

# isinstance()
print(isinstance(7, int))
print(isinstance("gefefsfdgsd", str))
print(isinstance(24.2, bool))
