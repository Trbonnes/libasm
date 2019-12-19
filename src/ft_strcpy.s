; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: trbonnes <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/18 17:08:53 by trbonnes          #+#    #+#              ;
;    Updated: 2019/12/18 17:08:54 by trbonnes         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcpy

_ft_strcpy:
	mov rax, rdi

	cmp rsi, 0
	je end

cpy_loop:
	mov rcx, [rsi]
	mov [rdi], rcx
	cmp [rsi], byte 0
	je end
	inc rsi
	inc rdi
	jmp cpy_loop


end:
	ret
