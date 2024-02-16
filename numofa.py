
# Online Python - IDE, Editor, Compiler, Interpreter
#num of a in a string

def num_a(word):
    count = 0
    for char in word:
        if char == 'a':
            count += 1
    return count

print(num_a("baaabaaacvdsa"))
