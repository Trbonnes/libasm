/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: trbonnes <trbonnes@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/18 16:44:56 by trbonnes          #+#    #+#             */
/*   Updated: 2020/01/28 14:22:29 by trbonnes         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libasm.h"

void	test_strlen(void)
{
	printf("\nstrlen\n");
	printf("-------------------MINE-------------------\n");
	printf("%zu \n", ft_strlen("Hello"));
	printf("%zu \n", ft_strlen(""));
	printf("%zu \n", ft_strlen("Helloooooooooooooooooooooooooo Woooooooooooooooooooooooooooooooooorld !"));
	printf("-------------------TRUE-------------------\n");
	printf("%zu \n", strlen("Hello"));
	printf("%zu \n", strlen(""));
	printf("%zu \n", strlen("Helloooooooooooooooooooooooooo Woooooooooooooooooooooooooooooooooorld !"));
}

void	test_strcpy(void)
{
	char *dst = NULL;

	printf("\nstrcpy\n");
	printf("-------------------MINE-------------------\n");
	dst = malloc(sizeof(char) * 1);
	printf("%s \n", ft_strcpy(dst, ""));
	free(dst);
	dst = malloc(sizeof(char) * 6);
	printf("%s \n", ft_strcpy(dst, "Hello"));
	free(dst);
	dst = malloc(sizeof(char) * 100);
	printf("%s \n", ft_strcpy(dst, "Helloooooooooooooooooooooooooo Woooooooooooooooooooooooooooooooooorld !"));
	free(dst);
	printf("-------------------TRUE-------------------\n");
	dst = malloc(sizeof(char) * 1);
	printf("%s \n", strcpy(dst, ""));
	free(dst);
	dst = malloc(sizeof(char) * 6);
	printf("%s \n", strcpy(dst, "Hello"));
	free(dst);
	dst = malloc(sizeof(char) * 100);
	printf("%s \n", strcpy(dst, "Helloooooooooooooooooooooooooo Woooooooooooooooooooooooooooooooooorld !"));
	free(dst);
}

void	test_strcmp(void)
{
	printf("\nstrcmp\n");
	printf("-------------------MINE-------------------\n");
	printf("%d \n", ft_strcmp("Hello", "Hello"));
	printf("%d \n", ft_strcmp("H", "Hello World !"));
	printf("%d \n", ft_strcmp("Hello World !", "H"));
	printf("%d \n", ft_strcmp("", ""));
	printf("%d \n", ft_strcmp("", "Hello"));
	printf("%d \n", ft_strcmp("Hello", ""));
	printf("%d \n", ft_strcmp("Hello", "FFF"));
	printf("%d \n", ft_strcmp("FFF", "Hello"));
	printf("-------------------TRUE-------------------\n");
	printf("%d \n", strcmp("Hello", "Hello"));
	printf("%d \n", strcmp("H", "Hello World !"));
	printf("%d \n", strcmp("Hello World !", "H"));
	printf("%d \n", strcmp("", ""));
	printf("%d \n", strcmp("", "Hello"));
	printf("%d \n", strcmp("Hello", ""));
	printf("%d \n", strcmp("Hello", "FFF"));
	printf("%d \n", strcmp("FFF", "Hello"));
}

void	test_write(void)
{
	printf("\nwrite\n");
	printf("-------------------MINE-------------------\n");
	printf("%zd \n", ft_write(1, "Hello\n", 6));
	printf("%zd \n", ft_write(1, "Hello World !\n", 15));
	printf("%zd \n", ft_write(1, "", 0));
	printf("%zd \n", ft_write(3, "Nope\n", 5));
	printf("-------------------TRUE-------------------\n");
	printf("%zd \n", write(1, "Hello\n", 6));
	printf("%zd \n", write(1, "Hello World !\n", 15));
	printf("%zd \n", write(1, "", 0));
	printf("%zd \n", write(3, "Nope\n", 5));
}

void	test_read(void)
{
	char buffer[100];

	printf("\nread\n");
	printf("-------------------MINE-------------------\n");
	printf("%zd \n", ft_read(1, buffer, 6));
	printf("%s\n", buffer);
	printf("%zd \n", ft_read(1, buffer, 15));
	printf("%s\n", buffer);
	printf("%zd \n", ft_read(1, buffer, 0));
	printf("%s\n", buffer);
	printf("%zd \n", ft_read(3, buffer, 15));
	printf("%s\n", buffer);
	printf("-------------------TRUE-------------------\n");
	printf("%zd \n", read(1, buffer, 6));
	printf("%s\n", buffer);
	printf("%zd \n", read(1, buffer, 15));
	printf("%s\n", buffer);
	printf("%zd \n", read(1, buffer, 0));
	printf("%s\n", buffer);
	printf("%zd \n", read(3, buffer, 15));
	printf("%s\n", buffer);
}

void	test_strdup(void)
{
	char *dst = NULL;

	printf("\nstrdup\n");
	printf("-------------------MINE-------------------\n");
	printf("%s \n", (dst = ft_strdup("Hello")));
	printf("//freeing dst//\n");
	free(dst);
	printf("//dst freed//\n");
	printf("%s \n", (dst = ft_strdup("Hello World !")));
	printf("//freeing dst//\n");
	free(dst);
	printf("//dst freed//\n");
	printf("%s \n", (dst = ft_strdup("")));
	printf("//freeing dst//\n");
	free(dst);
	printf("//dst freed//\n");
	printf("%s \n", (dst = ft_strdup("Helloooooooooooooooooooooooooo Woooooooooooooooooooooooooooooooooorld !")));
	printf("//freeing dst//\n");
	free(dst);
	printf("//dst freed//\n");
	printf("-------------------TRUE-------------------\n");
	printf("%s \n", (dst = strdup("Hello")));
	printf("//freeing dst//\n");
	free(dst);
	printf("//dst freed//\n");
	printf("%s \n", (dst = strdup("Hello World !")));
	printf("//freeing dst//\n");
	free(dst);
	printf("//dst freed//\n");
	printf("%s \n", (dst = strdup("")));
	printf("//freeing dst//\n");
	free(dst);
	printf("//dst freed//\n");
	printf("%s \n", (dst = strdup("Helloooooooooooooooooooooooooo Woooooooooooooooooooooooooooooooooorld !")));
	printf("//freeing dst//\n");
	free(dst);
	printf("//dst freed//\n");
}

int main(void)
{
	test_strlen();
	test_strcpy();
	test_strcmp();
	test_write();
	test_read();
	test_strdup();
	return (0);
}