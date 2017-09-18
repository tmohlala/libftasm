#ifndef LIBFTS_H
# define LIBFTS_H

#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

void    _ft_puts(char *str);
size_t  _ft_strlen(char *str);
void    _ft_bzero(void *str, size_t n);
char    *_ft_strcat(char *dest, const char *src);
int     _ft_islower(int c);
int     _ft_isupper(int c);
int     _ft_isascii(int c);
int     _ft_isalpha(int c);
int     _ft_isdigit(int c);
int     _ft_isalpha(int c);
int     _ft_isprint(int c);
int     _ft_isalnum(int c);
int     _ft_toupper(int c);
int     _ft_tolower(int c);
void    *_ft_memset(void *b, int c, size_t len);
void    *_ft_memcpy(void *dest, const void *src, size_t n);
char    *_ft_strdup(const char *s);

#endif