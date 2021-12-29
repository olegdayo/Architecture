# Base matrix class.
class BaseMatrix:
    # Base matrix size.
    __size__: int

    # Base matrix constructor.
    def __init__(self, size: int):
        self.__size__ = size
