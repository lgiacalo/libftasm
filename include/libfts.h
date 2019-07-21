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

void 			ft_bzero (void *s, size_t n);
char			*ft_strcat(char *s1, const char *s2);
int				ft_isalpha(int c);
int				ft_isdigit(int c);
int				ft_isalnum(int c);
int				ft_isascii(int c);
int				ft_isprint(int c);

int				ft_isblank(int c);
int				ft_islower(int c);
int				ft_isupper(int c);

#endif
