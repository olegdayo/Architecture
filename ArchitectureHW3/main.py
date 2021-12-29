from container import Container
import random
import sys
import os
import time
import resource


def main(argv: list):
    # Container.
    global cont
    # Number of arguments.
    argc = len(argv)

    # Checking the number of arguments.
    if argc == 4:
        # File input.
        if argv[1] == '-f':
            # Trying to open files.
            try:
                input_file = open(argv[2], 'r')
                output_file = open(argv[3], 'w')

                if input_file is None or output_file is None:
                    raise FileNotFoundError

            except:
                print('Files cannot be found or opened!')
                return

            # Checking if file is empty.
            if os.stat(argv[2]).st_size == 0:
                print('Input file is empty!')
                input_file.close()
                output_file.close()
                return

            # Creating container.
            input_lines = input_file.readlines()
            cont = Container(int(input_lines[0]))
            print('Container has been created!')

            # Filling container.
            input_lines = input_lines[1:]
            cont.file_in(input_lines)
            print('Container has been filled!')

            # Not sorted output.
            output_file.write('Given container:\n')
            output_file.write(cont.out())

            # Sorting.
            cont.sorting()
            print('Container has been sorted!')

            # Sorted output.
            output_file.write('Now the sorted container:\n')
            output_file.write(cont.out())

            # Closing.
            input_file.close()
            output_file.close()
            print('End!')

        # Random input.
        elif argv[1] == '-n':
            # Trying to open file.
            try:
                output_file = open(argv[3], 'w')

                if output_file is None:
                    raise FileNotFoundError

            except:
                print('Files cannot be found or opened!')
                return

            # Creating container.
            cont = Container(int(argv[2]))
            print('Container has been created!')

            # Filling container.
            cont.random_in()
            print('Container has been filled!')

            # Not sorted output.
            output_file.write('Given container:\n')
            output_file.write(cont.out())

            # Sorting.
            cont.sorting()
            print('Container has been sorted!')

            # Sorted output.
            output_file.write('Now the sorted container:\n')
            output_file.write(cont.out())

            # Closing.
            output_file.close()
            print('End!')

        else:
            print('Unknown argument:', argv[1])
            return
    else:
        print('Wrong number of arguments!')
        print('Needed:', 4)
        print('Got:', argc)
        return


# Container.
cont = None

if __name__ == '__main__':
    # Start time.
    start = time.time()
    # Pure random.
    random.seed()
    main(sys.argv)
    # End Time.
    end = time.time()
    # Time.
    print(str(int((end - start) * 1000)) + 'ms')
    # Memory.
    print(str(resource.getrusage(resource.RUSAGE_SELF).ru_maxrss / 1000000) + 'MB')
