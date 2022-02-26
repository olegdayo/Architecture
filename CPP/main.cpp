#include <iostream>
#include <cstring>
#include "baseMatrix.h"
#include "container.h"

// Main function, here the program starts.
int main(int argc, char **argv) {
    time_t start;
    time_t finish;
    start = clock();
    // Random seed.
    srand(time(NULL));
    // Checking if it is right number of args.
    if (argc == 4) {
        // File input.
        if (strcmp(argv[1], "-f") == 0) {
            // Both files.
            FILE *input_file;
            FILE *output_file;

            input_file = fopen(argv[2], "r");
            output_file = fopen(argv[3], "w");

            // Access check.
            if ((input_file == NULL) || (output_file == NULL)) {
                printf("%s\n", "Files cannot be found or opened!");
                fclose(input_file);
                fclose(output_file);
                return 0;
            }

            // Checking if file is empty.
            fseek(input_file, 0, SEEK_END);
            int length = ftell(input_file);
            if (length == 0) {
                printf("%s\n", "The input file is empty!");
                return 0;
            }

            rewind(input_file);

            // Number of matrices.
            int num;

            fscanf(input_file, "%d", &num);

            Container *cont = new Container(num);
            printf("%s\n", "Container has been created.");

            cont->In(input_file);
            printf("%s\n", "Container has been filled.");

            cont->Out(output_file);
            cont->Sort();
            printf("%s\n", "Container has been sorted.");

            fprintf(output_file, "%s\n", "Now container is sorted!");
            cont->Out(output_file);

            fclose(input_file);
            fclose(output_file);

            finish = clock();
            printf("Timer: %dms\n", (int)difftime(finish, start) * 1000 / CLOCKS_PER_SEC);
            //Random input.
        } else if (strcmp(argv[1], "-n") == 0) {
            FILE *output_file;

            // Random number of matrices.
            int random_number = rand() % std::atoi(argv[2]) + 1;

            output_file = fopen(argv[3], "w");

            // Access check.
            if (output_file == NULL) {
                printf("%s\n", "Files cannot be found or opened!");
                fclose(output_file);
                return 0;
            }

            Container *cont = new Container(random_number);
            printf("%s\n", "Container has been created.");

            cont->RandomIn(random_number);
            printf("%s\n", "Container has been randomly filled.");

            cont->Out(output_file);
            cont->Sort();
            printf("%s\n", "Container has been sorted.");

            fprintf(output_file, "%s\n", "Now container is sorted!");
            cont->Out(output_file);

            fclose(output_file);

            finish = clock();
            printf("Timer: %dms\n", (int)difftime(finish, start) * 1000 / CLOCKS_PER_SEC);
        } else {
            printf("Unknown argument: %s\n", argv[1]);
        }
    } else {
        printf("%s\n", "Wrong number of arguments!");
        printf("Needed: %d\n", 4);
        printf("Got: %d\n", argc);
    }
    return 0;
}
