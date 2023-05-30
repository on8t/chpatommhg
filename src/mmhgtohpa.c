#include "ui.h"

#include "logic/mm_hg_to_hpa.h"

int main(int argc, char* argv[]) {
    return ui(argc, argv, mm_hg_to_hpa);
}
