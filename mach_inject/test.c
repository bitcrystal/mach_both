#include "windows_inject.h"
#include "windows_inject.c"

int main()
{
	file_to_char_pointer("bootstrap.dylib","bootstrap_dylib.c");
}
