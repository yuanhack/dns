#include "domain_parse.h"

int main(int argc, char **argv)
{
    if (argc != 2) { printf("usage: %s domain\n", argv[0]); return 1; }
    char ip[256];
    char errinfo[256];
    if (domain_parse(argv[1], ip, sizeof(ip), errinfo, sizeof(errinfo)) < 0) {
        printf("%s\n", errinfo);
        return 1;
    }
    printf("%s\n", ip);
    return 0;
}
