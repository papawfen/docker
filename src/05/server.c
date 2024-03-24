#include <fcgi_stdio.h>
#include <fcgi_config.h>
#include <fcgiapp.h>
#include <stdio.h>

int main(void) {
  while (FCGI_Accept() >= 0) {
    printf("Content-Type: text/html\r\n");
    printf("\r\n");
    printf("Hello world!\r\n");
  }
  return 0;
}