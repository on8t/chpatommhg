#include <stdio.h>
#include <stdlib.h>

#include "ui.h"

#define EXITERR(msg, code) do { puts(msg); exit(code); } while(0)

int ui(int argc, char* argv[], double (*calc)(double)) {
    if (argc == 0) EXITERR("no arguments", -1);

    double input = 0;
    sscanf(argv[1], "%lf", &input);

    double result = calc(input);

    printf("%lf\n", result);

    return 0;
}
