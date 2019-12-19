; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_write.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: trbonnes <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/19 10:54:43 by trbonnes          #+#    #+#              ;
;    Updated: 2019/12/19 10:54:44 by trbonnes         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_write

_ft_write:
	;rdi -> fd (arg 1)
	;rsi -> buffer (arg 2)
	;rdx -> size (arg 3)
	;rax -> return value tjrs automatiquement mise par le syscall
	mov rax, 0x2000004
	syscall
	ret
