from matrices.baseMatrix import BaseMatrix
import random


# Diagonal matrix class.
class DiagonalMatrix(BaseMatrix):
    # Diagonal matrix size.
    __size__: int
    # Diagonal matrix itself.
    __diag__: list

    # Diagonal matrix constructor.
    def __init__(self, size: int):
        super().__init__(size)
        self.__diag__ = []

    # Reading from file.
    def read(self, line: str):
        # Filling diagonal matrix with numbers.
        self.__diag__ = list(map(float, line.split()))

    def random_read(self):
        self.__size__ = random.randint(0, 100) + 1
        self.__diag__ = []

        # Filling diagonal matrix with numbers.
        for i in range(0, self.__size__):
            self.__diag__.append(random.random() * random.randint(0, 1000))

    # Outputting.
    def out(self):
        ans = 'Size: ' + str(self.__size__) + '\n'
        ans += 'Average: ' + str(self.get_average()) + '\n'
        ans += 'Diagonal matrix:\n'

        for i in range(0, self.__size__):
            for j in range(0, self.__size__):
                if i == j:
                    ans += str(self.__diag__[i]) + ' '
                else:
                    ans += '0 '
            ans += '\n'

        return ans

    # Getting average.
    def get_average(self) -> float:
        # Total sum of elements.
        summ = 0

        for i in range(0, self.__size__):
            summ = summ + self.__diag__[i]

        return summ / self.__size__ / self.__size__
