
#num of string occurences
def num_occur(list):
    dict = {}
    for word in list:
        if word in dict:
            dict[word] += 1
        else:
            dict[word] = 1
    
    for key in dict:
        print(key, dict[key])

word_list = ["apple", "banana", "apple", "orange", "banana", "apple"]
        
num_occur(word_list)
    