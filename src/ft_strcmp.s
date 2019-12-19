; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: trbonnes <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/19 09:22:11 by trbonnes          #+#    #+#              ;
;    Updated: 2019/12/19 09:22:13 by trbonnes         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strcmp

_ft_strcmp:
	mov rax, [rdi]
	sub rax, [rsi]
	cmp rax, 0
	je cmp_zero

end:
	ret

cmp_zero:
	cmp [rsi], byte 0
	je end
	inc rsi
	inc rdi
	jmp _ft_strcmp