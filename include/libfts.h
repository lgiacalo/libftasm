/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lgiacalo <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/20 16:08:28 by lgiacalo          #+#    #+#             */
/*   Updated: 2019/06/20 16:28:43 by lgiacalo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

#include <stddef.h>

/*
**	Part 1
*/

void 			ft_bzero (void *s, size_t n);

char			*ft_strcat(char *s1, const char *s2);

int				ft_isalpha(int c);
int				ft_isdigit(int c);
int				ft_isalnum(int c);
int				ft_isascii(int c);
int				ft_isprint(int c);

int				ft_tolower(int c);
int				ft_toupper(int c);

int				ft_puts(const char *s);

/*
**	Part 2 - Repeat string
*/

int				ft_strlen(const char *s);
void			*ft_memset(void *b, int c, size_t len);
void			*ft_memcpy(void *dst, const void *src, size_t n);
char			*ft_strdup(const char *s1);

/*
**	Part 3 - ft_cat
*/

void			ft_cat(int fd);

/*
**	Fonctions supplementaires
*/

int				ft_isblank(int c);
int				ft_islower(int c);
int				ft_isupper(int c);

void			*ft_memchr(const void *s, int c, size_t n);

void			ft_putchar(char c);

#endif
