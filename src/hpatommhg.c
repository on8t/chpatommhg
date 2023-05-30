#include "ui.h"

#include "logic/hpa_to_mm_hg.h"

int main(int argc, char* argv[]) {
    return ui(argc, argv, hpa_to_mm_hg);
}
