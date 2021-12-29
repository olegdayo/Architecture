import random


# Creating input.txt from 01 to 10.
for h in range(1, 11):
    # Creating file.
    fileName = 'input' + ('0' if (h < 10) else '') + str(h) + '.txt'
    f = open(fileName, 'w')

    # Creating from 1 to 10 matrix.
    for i in range(0, random.randint(1, 10)):
        # Creating matrix type.
        line = ''
        type = random.randint(1, 3)
        line = line + str(type) + '\n'
        
        # Creating matrix size.
        size = random.randint(1, 100)
        line = line + str(size) + '\n'
        
        # Filling matrixes according to type.
        if (type == 1):
            for j in range(0, size):
                for jj in range(0, size):
                    line = line + str(random.random() * random.randint(0, 100)) + ' '
                line = line + '\n'
        elif (type == 2):
            for j in range(0, size):
                line = line + str(random.random() * random.randint(0, 100)) + ' '
            line = line + '\n'
        else:
            for j in range(0, size * (size + 1) // 2):
                line = line + str(random.random() * random.randint(0, 100)) + ' '
            line = line + '\n'
        # Writing it into file.
        f.write(line)
    
    # Closing file.
    f.close()
