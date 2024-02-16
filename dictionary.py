dictionary = {"key": "value", "hi": "hello", "test": "aaa"}

print(dictionary)

if "key" in dictionary:
    print("true")

for key in dictionary:
    print(key)
    print(dictionary[key])

dictionary["ice"] = "cold"
dictionary["fire"] = "hot"

for key in dictionary:
    print(key)
    print(dictionary[key])

# get all keys
print(dictionary.keys())

# get all values
print(dictionary.values())