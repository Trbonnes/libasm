; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_read.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: trbonnes <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/19 13:45:24 by trbonnes          #+#    #+#              ;
;    Updated: 2019/12/19 13:45:25 by trbonnes         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_read

_ft_read:
	;rdi -> fd (arg 1)
	;rsi -> buffer (arg 2)
	;rdx -> size (arg 3)
	;rax -> return value tjrs automatiquement mise par le syscall
	mov rax, 0x2000003
	syscall
	jc error
	ret

error :
	mov rax, -0x1
	ret
