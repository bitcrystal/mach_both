#include "testinject.h"

int main()
{
 MACH_INJECTOR_S_t n = MACH_INJECTOR_S_t_new();
 MACH__Injector__init(n);
 MACH__Injector__inject__processname(n,"testapp","testdylib.dylib");
 MACH__Injector__inject(n);
 MACH__Injector__deinit(n);
 MACH_INJECTOR_S_t_delete(n);
}
