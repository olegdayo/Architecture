from matrices.baseMatrix import BaseMatrix
import random


# Usual matrix class.
class Matrix(BaseMatrix):
    # Usual matrix size.
    __size__: int
    # Usual matrix itself.
    __matr__: list

    # Usual matrix constructor.
    def __init__(self, size: int):
        super().__init__(size)
        self.__matr__ = []

    # Reading from file.
    def read(self, line: str):
        self.__matr__ = []
        counter = 0
        nums = list(map(float, line.split()))

        # Filling usual matrix with numbers.
        for i in range(0, self.__size__):
            self.__matr__.append([])
            for j in range(0, self.__size__):
                self.__matr__[i].append(nums[counter])
                counter += 1

    # Creating randomly.
    def random_read(self):
        self.__size__ = random.randint(0, 100) + 1
        self.__matr__ = []

        # Filling usual matrix with numbers.
        for i in range(0, self.__size__):
            self.__matr__.append([])
            for j in range(0, self.__size__):
                self.__matr__[i].append(random.random() * random.randint(0, 1000))

    # Outputting.
    def out(self) -> str:
        ans = 'Size: ' + str(self.__size__) + '\n'
        ans += 'Average:' + str(self.get_average()) + '\n'
        ans += 'Matrix:\n'

        for i in range(0, self.__size__):
            for j in range(0, self.__size__):
                ans += str(self.__matr__[i][j]) + ' '
            ans += '\n'

        return ans

    # Getting average.
    def get_average(self) -> float:
        # Total sum of elements.
        summ = 0

        for i in range(0, self.__size__):
            for j in range(0, self.__size__):
                summ += self.__matr__[i][j]

        return summ / self.__size__ / self.__size__
