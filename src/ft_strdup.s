; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: trbonnes <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/19 13:45:10 by trbonnes          #+#    #+#              ;
;    Updated: 2019/12/19 13:45:14 by trbonnes         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc

_ft_strdup:
	mov	rbx, rdi
	call _ft_strlen
	mov	rdi, rax
	inc	rdi
	
	call _malloc
	cmp rax, 0
	je end

	mov rdi, rax
	mov rsi, rbx

	call _ft_strcpy

end:
	ret
