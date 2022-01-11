from matrices.baseMatrix import BaseMatrix
import random


# Lower-triangular matrix class.
class LowerTriangularMatrix(BaseMatrix):
    # Lower-triangular matrix size.
    __size__: int
    # Total number of non-zero elements.
    __elems_count__: int
    # Lower-triangular matrix itself.
    __elems__: list

    # Lower-triangular matrix constructor.
    def __init__(self, size: int):
        super().__init__(size)
        self.__elems_count__ = self.__size__ * (self.__size__ + 1) // 2
        self.__elems__ = []

    # Reading from file.
    def read(self, line: str):
        # Filling lower-triangular matrix with numbers.
        self.__elems__ = list(map(float, line.split()))

    # Creating randomly.
    def random_read(self):
        self.__size__ = random.randint(0, 100) + 1
        self.__elems_count__ = self.__size__ * (self.__size__ + 1) // 2
        self.__elems__ = []

        # Filling lower-triangular matrix with numbers.
        for i in range(0, self.__elems_count__):
            self.__elems__.append(random.random() * random.randint(0, 1000))

    # Outputting.
    def out(self):
        ans = 'Size: ' + str(self.__size__) + '\n'
        ans += 'Average: ' + str(self.get_average()) + '\n'
        ans += 'Lower-triangular matrix:\n'
        counter = 0

        for i in range(0, self.__size__):
            for j in range(0, self.__size__):
                if i < j:
                    ans += '0 '
                else:
                    ans += str(self.__elems__[counter]) + ' '
                    counter += 1
            ans += '\n'

        return ans

    # Getting average.
    def get_average(self) -> float:
        # Total sum of elements.
        summ = 0

        for i in range(0, self.__elems_count__):
            summ = summ + self.__elems__[i]

        return summ / self.__size__ / self.__size__
