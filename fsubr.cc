#include <cstdio>
#include <cstdlib>

float subtract(float in1, float in2)
{
    float ret = 0.0;
    asm ("fsubr %2, %0" : "=&t" (ret) : "%0" (in1), "u" (in2));
    return ret;
}

int main(int argc, char* argv[])
{
    printf("%f\n",subtract(atof(argv[1]), atof(argv[2])));
}
