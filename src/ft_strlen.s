; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: trbonnes <marvin@42.fr>                    +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2019/12/18 16:06:25 by trbonnes          #+#    #+#              ;
;    Updated: 2019/12/18 16:06:29 by trbonnes         ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
	global _ft_strlen

_ft_strlen:
	mov rax, 0

	cmp rdi, 0
	je end
	cmp [rdi], byte 0
	je end

inc_loop:
	inc rax
	inc rdi

	cmp [rdi], byte 0
	jne inc_loop

end:
	ret