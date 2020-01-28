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
    extern _malloc
    extern _ft_strlen
    extern _ft_strcpy

_ft_strdup:
    push rbx            ;liberer rbx
    mov rbx, rdi        ;save arg
    call _ft_strlen     ;len arg
    mov rdi, rax        ;save len
    inc rdi   			;increment len for ‘\0’

    call _malloc
    cmp rax, 0
    je end

    mov rdi, rax        ;rdi devient dst
    mov rsi, rbx        ;rsi devient src

    call _ft_strcpy

end:
    pop rbx
    ret
