import random
from matrices.matrix import Matrix
from matrices.diagonalMatrix import DiagonalMatrix
from matrices.lowerTriangularMatrix import LowerTriangularMatrix


# Container class.
class Container:
    # Container size.
    __size__: int
    # Container itself.
    __container__: list

    # Container constructor.
    def __init__(self, size: int):
        self.__size__ = size
        self.__container__ = []

    # Reading from file.
    def file_in(self, lines: list):
        counter = 0
        for i in range(0, self.__size__):
            matrix_type = int(lines[counter])
            counter += 1
            num = int(lines[counter])
            counter += 1

            if matrix_type == 0:
                m = Matrix(num)
                m.read(lines[counter])
                self.__container__.append(m)
                counter += 1
            elif matrix_type == 1:
                dm = DiagonalMatrix(num)
                dm.read(lines[counter])
                self.__container__.append(dm)
                counter += 1
            else:
                ltm = LowerTriangularMatrix(num)
                ltm.read(lines[counter])
                self.__container__.append(ltm)
                counter += 1

    # Creating randomly.
    def random_in(self):
        for i in range(0, self.__size__):
            matrix_type = random.randint(0, 3)

            if matrix_type == 0:
                m = Matrix(0)
                m.random_read()
                self.__container__.append(m)
            elif matrix_type == 1:
                dm = DiagonalMatrix(0)
                dm.random_read()
                self.__container__.append(dm)
            else:
                ltm = LowerTriangularMatrix(0)
                ltm.random_read()
                self.__container__.append(ltm)

    # Outputting.
    def out(self) -> str:
        ans = 'Number of elements: ' + str(self.__size__) + '\n'
        ans += '-' * 20 + '\n'

        for item in self.__container__:
            ans += '\n\n'
            ans += item.out()
            ans += '\n\n'

        ans += '-' * 20 + '\n'
        return ans

    # Sorting.
    def sorting(self):
        for i in range(0, self.__size__ - 1):
            # Current minimum.
            min_ind = i

            for j in range(i + 1, self.__size__):
                if self.__container__[j].get_average() < \
                        self.__container__[min_ind].get_average():
                    min_ind = j

            # Swapping.
            self.__container__[min_ind], self.__container__[i] = \
                self.__container__[i], self.__container__[min_ind]
