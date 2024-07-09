include irvine32.inc
include macros.inc

.data

P_set db 'D'

Live_check db 3 

levelTracker db 4
level_count DD 1

powerBooster db 100 
power db ?        
speed dw 100

GhostNo EQU 4   ;TOTAL GHOSTS

 ghost_size EQU SIZEOF enemy


store DD 0
store2 DD 0
store3 DD 0

INPUT DD 0

Gamer byte 20 DUP (?)
;store db ?

                        ;;;;;;;;;;STRUCT;;;;;;;;;;;;;;;;
                        
    struc_ghost STRUCT
        col     db 26
        row     db 9
        up      db 0
        down    db 0
        left    db 0
        right   db 1
        delay   dw 0
        hrow    db 26
        hcol    db 9
    struc_ghost ENDS

     struc_moves STRUCT
         up    db 0
         down  db 0
         left  db 0
         right db 0
     struc_moves ENDS

     pa_mov struc_moves <1,0,0,0>
     enemy struc_ghost GhostNo DUP(<26,9,0,0,0,1,26,9>)
                       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

                         




    
   




; key controls
VK_W     EQU   000000057h   ; Up
VK_A     EQU   000000041h   ; Left
VK_S     EQU   000000053h   ; Down
VK_D     EQU   000000044h   ; Right
VK_P     EQU   000000050h   ; P key

GetKeyState PROTO, nVirtKey:DWORD








            ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL1


            
        GridRow equ 19
        GridCol equ 53
        rowlvl1 db 13
        collvl1 db 26
        Total_score DD 0  
        points DD 0

lvl1    BYTE "                                                     "
        BYTE "                                                     "
        BYTE "                                                     "
        BYTE "+---------------------------------------------------+"
        BYTE "| . . . . . .  . . . . . . . . .  .  . . . . . . .  |"
        BYTE "| . . . . .  . . . . . . . . . . . . . . . . . . .  |"
        BYTE "| . -------- . | . -------+------- . | . -------- . |"
        BYTE "| . . . . .  . . . . . .  | . . . .  . . . . . . .  |"
        BYTE "+----------+ . +-------   |   -------+ . +----------+"
        BYTE "           | . |                     | . |           "
        BYTE "~----------+ . |   +-------------+   | . +----------~"
        BYTE "  . . . . . .      |      G      |     . . . . . . . "
        BYTE "~----------+ . |   +-------------+   | . +----------~"
        BYTE "           | . |                     | . |           "
        BYTE "+----------+ . |   -------+-------   | . +----------+"
        BYTE "| . . . . .  . . . . . . . . . . . .   . . . . .  . |"
        BYTE "+---. .  . . . . . ---------------. .  . . . -------+"
        BYTE "| . . . . . . . . . . . . . . . . . . . . . . . . . |"
        BYTE "+---------------------------------------------------+", 0

       ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




                   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL1

        Gridrowlvl2 EQU 22
        Gridcollvl2 EQU 53
        rowlvl2 db 13   
        collvl2 db 26 
        points2 DD 0



lvl2    BYTE "+---------------------------------------------------+"
        BYTE "| . . . . . .  . . . . . . . . .  .  . . . . . . .  |"
        BYTE "| O . . +------+ . . . .  | . . . . .  . +------+ O |"
        BYTE "| . . . . . B . .  . . .  | . . . .  . . . . B .  . |"
        BYTE "| . . . +------+ . . . .  | . . . . .  . +------+ . |"
        BYTE "| . . . . .  . . . . . . . . . . . . . . . . . . .  |"
        BYTE "| . --------------------------------------------- . |"
        BYTE "| . . .   .  . . . . . .  | . . . .  . . . . . . .  |"
        BYTE "+----------+ . +-------   |   -------+ . +----------+"
        BYTE "           | . |                     | . |           "
        BYTE "           | . |   +-------------+   | . |           "
        BYTE "           | .     |     G G     |     . |           "
        BYTE "           | . |   +-------------+   | . |           "
        BYTE "           | . |                     | . |           "
        BYTE "+----------+ . |   -------+-------   | . +----------+"
        BYTE "| . . . . . . . . . . . . | . . . . . . . . . . . . |"
        BYTE "| . -----------   . . . . | . . . .  ------------ . |"
        BYTE "| . . . . . .  . . . . . . . . . . . | . . . . . .  |"
        BYTE "|   -------- .   . --------------- . | . --------   +"
        BYTE "| O . . . . .  . . . . . . . . . . . . . . . . .  O |"
        BYTE "| . . . . . . . . . . . . . . . . . . . . . . . . . |"
        BYTE "+---------------------------------------------------+", 0


    


        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


                    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL1

        Gridrowlvl3 EQU 25
        Gridcollvl3 EQU 53
        rowlvl3 db 15  
        collvl3 db 26
        Total_score3   DD 0   
        points3 DD 0

lvl3   BYTE "+---------------------------------------------------+"
        BYTE "| . . . . . .  . . . . . . . . .  B  . . . . . . .  |"
        BYTE "| . +------+ . +------+ . | . +------+ . +------+ . |"
        BYTE "| O |      | . |      | . | . |      | . |      | O |"
        BYTE "| . +------+ . |      | . | . |------| . |      | . |"
        BYTE "| . . . . .  . +------+. . .  |      | . |------| . |"
        BYTE "| . -------  . . . . . . . .  +------+ . |      | . |"
        BYTE "| . . . . |  . | . . | .  | . . . .  . . |      | . |"
        BYTE "| . . . . |  . ------- .  | . . . .  . . +------+ . |"
        BYTE "| I . . . .  . . . . B .  | . . . B  . . . . . .  I |"
        BYTE "+----------+ . +-------   |   -------+ . +----------+"
        BYTE "           | . |                     | . |           "
        BYTE "~----------+ . |   +-------------+   | . +----------~"
        BYTE "  . . . . . .      |    G G G    |     . . . . . . . "
        BYTE "~----------+ . |   +-------------+   | . +----------~"
        BYTE "           | . |                     | .             "
        BYTE "+----------+ . |   -------+-------   | . +----------+"
        BYTE "| I . . . . . . . . . . . | . . . . . . . . . . . I |"
        BYTE "| . -------+ . -------- . | . -------  . +------- . |"
        BYTE "| . . . .  | . . . . . . . . . . . . | . | . . . .  |"
        BYTE "+------- . | . | . --------------- . | . |   -------+"
        BYTE "| . . . . . . .| . . . . . . . . . . | . . . . . .  |"
        BYTE "| O -----------+------- . | . -------+----------- O |"
        BYTE "| . . . . . . . . . . . . | B . . . . . . . . . . . |"
        BYTE "+---------------------------------------------------+", 0

  
        
   
    
.code 









;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;COMMON FUNCTION

  UserDirection PROC, up:BYTE,down:BYTE,left:BYTE,right:BYTE
        mov al, up
        mov pa_mov.up, al

        mov al, down
        mov pa_mov.down, al

        mov al, left
        mov pa_mov.left, al      
        
        mov al, right
        mov pa_mov.right, al        
        
        ret
    UserDirection ENDP

                                    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

User_InputP PROC

    stay:

     mov ah, 0
        invoke GetKeyState, VK_P
        cmp ah, 0
        je con
        jne halt
        loop stay
      

        halt:
     mov esi, OFFSET INPUT
    mov ecx, SIZEOF INPUT
    call ReadChar
    mGotoxy 60, 20 
    mwrite"Game Paused. Press P to resume"
    cmp al, 'p'
    je con
    loop halt
  
        con:
        mGotoxy 60, 20
    mwrite"                                         "
    ret 
User_InputP  endp




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;COMMON FUNCTION

                                        ;;;;;;;;;;;;;;;;;;LEVEL 1 
                                        ;;;;;;;;;;;;;;;;;;;;;;;;FUNCTION



                                        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    LVL_Char PROC, x:BYTE, y:BYTE
    mov eax, 0
    mov al, x       ; ROW
    mov bl, GridCol  ; TOTAL ROW
    mul bl
    movsx bx, y
    add ax, bx      ; RESULT + COL

    mov al, lvl1[eax]

    ;maze checks
    cmp al, '|'
    je vertical

    cmp al, '-'
    je dash

    cmp al, '+'
    je plus

    ; Set ah to 1 if not '|', '-', or '+'
    mov ah, 1  
    jmp finale


    ; Set ah to 0 
    vertical:
        mov ah, 0  
        jmp finale

    dash:
        mov ah, 0  
        jmp finale

    plus:
        mov ah, 0  
        inc levelTracker
        
    finale:
    ret
LVL_Char ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  Grid_Barriers PROC, co:BYTE, r:BYTE, colAdd:BYTE, rowAdd:BYTE
    mov dl, co
    mov dh, r

    add dl, colAdd
    add dh, rowAdd

    ; return character in al and hurdle info in ah
    invoke LVL_Char, dh, dl   

    ; Check if ah is non-zero
    test ah, ah
    jz udhar

    add dl, colAdd
    ;add dh, rowAdd
    invoke LVL_Char, dh, dl

    udhar:
    ret
Grid_Barriers ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    Collectible PROC
    mov eax, 0
    mov al, rowlvl1      ; PAc ROW
    mov bl, GridCol   ; TOTAL ROW
    mul bl
    movsx bx, collvl1
    add ax, bx       ; RESULT + COL

    mov bl, lvl1[eax]

   ;MAZE CHECKS
    cmp bl, '.'
    je dot
   

    jmp finale

    dot:
        mov lvl1[eax], ' '
        INC points
        INC Total_score
        jmp finale

    
    finale:
    ret

Collectible ENDP



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Grid PROC
    mov dl, 0   ; row
    mov dh, 0   ; col

        DL_checkkaro:

            ; Check if dl != GridRow
            cmp dl, GridRow
            je basKaro

        DH_checkkaro:

            ; Check if dh != GridCol
            cmp dh, GridCol
            je DH_endkaro

            ; return char in al
            invoke LVL_Char, dl, dh   
            call WriteChar
            INC dh

            ;inner loop
            jmp DH_checkkaro 

            DH_endkaro:

        mov dh, 0
        call Crlf
        inc dl

        ;outer loop
        jmp DL_checkkaro   

        basKaro:

    ret
Grid ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

 Prev_Position PROC
    mov ecx, GhostNo
    mov edx, 0
    mov store, edx

Prev_PositionLoop:

    mov al, enemy[edx].col
    mov ah, enemy[edx].row  
    mGotoxy al, ah 
    mov  al, ' '     
    call WriteChar

    mov al, enemy[edx].col
    mov ah, enemy[edx].row
    mGotoxy al, ah   

    invoke LVL_Char, enemy[edx].row, enemy[edx].col

    call WriteChar

    add edx, SIZEOF struc_ghost 
    mov store, edx  

    loop Prev_PositionLoop

    ret
Prev_Position ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



   Enemy_Direc PROC, up:BYTE,down:BYTE,left:BYTE,right:BYTE
        mov edx, store    
        mov al, up
        mov enemy[edx].up, al

        mov al, down
        mov enemy[edx].down, al

        mov al, left
        mov enemy[edx].left, al      
        
        mov al, right
        mov enemy[edx].right, al    
        
        ret
    Enemy_Direc ENDP 

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


    
User_Input PROC

        mov ah, 0
        invoke GetKeyState, VK_S
        cmp ah, 0
        jge User_up

        cmp rowlvl1, GridRow - 1
        jl Move_Pac_D
        jmp User_up

Move_Pac_D:
        invoke Grid_Barriers, collvl1, rowlvl1, 0, 1
        cmp ah, 0
        jnz Update_D

User_up:
        ; Check VK_W
        mov ah, 0
        invoke GetKeyState, VK_W
        cmp ah, 0
        jge User_left

        cmp rowlvl1, 1
        jg Move_Pac_U
        jmp User_left

Move_Pac_U:
        invoke Grid_Barriers, collvl1, rowlvl1, 0, -1
        cmp ah, 0
        jnz Update_U

User_left:
        ; Check VK_A
        mov ah, 0
        invoke GetKeyState, VK_A
        cmp ah, 0
        jge User_right

        cmp collvl1, 1
        jg Move_Pac_L
        jmp User_right

Move_Pac_L:
        invoke Grid_Barriers, collvl1, rowlvl1, -1, 0
        cmp ah, 0
        jnz Update_L

User_right:
        ; Check VK_D
        mov ah, 0
        invoke GetKeyState, VK_D
        cmp ah, 0
        jge GridCheck

        cmp collvl1, GridCol - 1
        jl Move_Pac_R
        jmp GridCheck

Move_Pac_R:
        invoke Grid_Barriers, collvl1, rowlvl1, 1, 0
        cmp ah, 0
        jnz Update_R

GridCheck:
        ; Check and update boundaries
        cmp collvl1, 0
        jne Check_GridCol
        mov ah, GridCol - 1
        mov collvl1, ah
        jmp ReturnBack

Check_GridCol:
        cmp collvl1, GridCol - 1
        jne ReturnBack
        

ReturnBack:
        ret

Update_D:
        INC rowlvl1
        invoke UserDirection, 0, 1, 0, 0
        ret

Update_U:
        DEC rowlvl1
        invoke UserDirection, 1, 0, 0, 0
        ret

Update_L:
        DEC collvl1
        invoke UserDirection, 0, 0, 1, 0
        ret

Update_R:
        INC collvl1
        invoke UserDirection, 0, 0, 0, 1

    ret

User_Input ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Collision_LVL PROC

    mov ecx, 0
    mov edx, 0
    mov store, edx
    

check_collision:

        ; Check if ecx is less than GhostNo
        cmp ecx, GhostNo
        jge notFound

        ; Check if enemy[edx].col == col && enemy[edx].row == row
        mov al, collvl1
        mov ah, rowlvl1
        cmp enemy[edx].col, al
        jne not_collided
        cmp enemy[edx].row, ah
        jne not_collided

        ; Collided
        cmp power, 0
        jne power_collision

        ; No special power
        mov al, 1
        ret

not_collided:

        ; Move to the next struc_ghost
        add edx, SIZEOF struc_ghost
        mov store, edx
        inc ecx
        jmp check_collision

power_collision:

        ; Special power is active
        add Total_score, 100

        ; Update enemy position and delay
        mov al, enemy[edx].col
        mov ah, enemy[edx].row
        mGotoxy al, ah
        mov al, ' '
        call WriteChar

        mov enemy[edx].col, 23
        mov enemy[edx].row, 9
        mov enemy[edx].delay, 50
        invoke Enemy_Direc, 0, 0, 0, 1
        mov al, 0
        ret

notFound:

        ; No collision found
        mov al, 0
        ret

Collision_LVL ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Set_Enemy PROC
    mov ecx, 0
    mov edx, 0
    mov store, edx

Set_EnemyLoop:

    
    cmp ecx, GhostNo
    jge done

   
    call Randomize
    mov eax, 1
    call RandomRange

   
    cmp eax, 0
    je UserDirectionDown

   
    invoke Enemy_Direc, 0, 0, 0, 1
    jmp delay_set

UserDirectionDown:

  
    invoke Enemy_Direc, 0, 0, 1, 0

delay_set:

    ; Set delay using RandomRange
    mov eax, 30
    call RandomRange
    mov enemy[edx].delay, ax

    ; Move to the next struc_ghost
    add edx, SIZEOF struc_ghost
    mov store, edx
    inc ecx

    ; Repeat the loop
    jmp Set_EnemyLoop

done:
    ret

Set_Enemy ENDP




                                                        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;for level 2
                                                        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;for level 2
                                                        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;for level 2
                                                       



    LVL_Char2 PROC, xPos:BYTE, yPos:BYTE
    mov eax, 0
    mov al, xPos     ; ROW
    mov bl, Gridcollvl2  ; TOTAL ROW
    mul bl
    movsx bx, yPos
    add ax, bx       ; RESULT + COL

    mov al, lvl2[eax]

    ; Check if al is '|', '-', or '+'
    cmp al, '|'
    je vertical2

    cmp al, '-'
    je dash2

    cmp al, '+'
    je plus2

    ; Set ah to 1 if not '|', '-', or '+'
    mov ah, 1 
    jmp finale2


    ; Set ah to 0 
    vertical2:
        mov ah, 0  
        jmp finale2

    dash2:
        mov ah, 0  
        jmp finale2

    plus2:
        mov ah, 0  
        
    finale2:
    ret

LVL_Char2 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Grid_Barriers2 PROC, co:BYTE, r:BYTE, colAdd:BYTE, rowAdd:BYTE
    mov dl, co
    mov dh, r

    add dl, colAdd
    add dh, rowAdd

    ; return character in al and hurdle info in ah
    invoke LVL_Char2, dh, dl    

    ; Check if ah is non-zero
    test ah, ah
    jz udhar2

    add dl, colAdd
    ;add dh, rowAdd
    invoke LVL_Char2, dh, dl

    udhar2:
    ret
Grid_Barriers2 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Collectible2 PROC
    mov eax, 0
    mov al, rowlvl2     ; ROW
    mov bl, Gridcollvl2  ; TOTAL ROW
    mul bl
    movsx bx, collvl2
    add ax, bx      ; RESULT + COL

    mov bl, lvl2[eax]

    ;MAZE CHECKS
    cmp bl, '.'
    je dot2


    cmp bl, 'O'
    je pallet2

    cmp bl, 'B'
    je bonus2


    jmp finale2

    dot2:
        mov lvl2[eax], ' '
        INC points2
        INC Total_score
        jmp finale2

    pallet2:
        mov lvl2[eax], ' '
        mov bl,powerBooster
        mov power, bl
        jmp finale2


    bonus2:
         mov lvl2[eax], ' '
         mov esi, offset Total_score
         mov al, [esi]
         add al,10
         mov [esi], al
         jmp finale2

    finale2:
    ret

Collectible2 ENDP



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Grid2 PROC
    mov dl, 0   ; row
    mov dh, 0   ; col

        DL_checkkaro2:

            ; Check if dl != GridRow
            cmp dl, Gridrowlvl2
            je basKaro2

        DH_checkkaro2:
            ; Check if dh != GridCol
            cmp dh, Gridcollvl2
            je DH_endkaro2

            ; return char in al
            invoke LVL_Char2, dl, dh   
            call WriteChar
            INC dh

            ;inner loop
            jmp DH_checkkaro2  

            DH_endkaro2:

        mov dh, 0
        call Crlf
        inc dl

        ;outer loop
        jmp DL_checkkaro2  

        basKaro2:

    ret
Grid2 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Prev_Position2 PROC
    mov ecx, GhostNo
    mov edx, 0
    mov store2, edx

Prev_PositionLoop2:

    mov al, enemy[edx].col
    mov ah, enemy[edx].row  
    mGotoxy al, ah 
    mov  al, ' '     
    call WriteChar

    mov al, enemy[edx].col
    mov ah, enemy[edx].row
    mGotoxy al, ah   

    invoke LVL_Char2, enemy[edx].row, enemy[edx].col

    call WriteChar

    add edx, SIZEOF struc_ghost 
    mov store2, edx  

    loop Prev_PositionLoop2

    ret
Prev_Position2 ENDP



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    Enemy_Direc2 PROC, up:BYTE,down:BYTE,left:BYTE,right:BYTE
        mov edx, store2    
        mov al, up
        mov enemy[edx].up, al

        mov al, down
        mov enemy[edx].down, al

        mov al, left
        mov enemy[edx].left, al      
        
        mov al, right
        mov enemy[edx].right, al    
        
        ret
    Enemy_Direc2 ENDP 

    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


    
 User_Input2 PROC
        ; Check VK_S
        mov ah, 0
        invoke GetKeyState, VK_S
        cmp ah, 0
        jge User_up2

        cmp rowlvl2, Gridrowlvl2 - 1
        jl Move_Pac_D2
        jmp User_up2

Move_Pac_D2:
        invoke Grid_Barriers2, collvl2, rowlvl2, 0, 1
        cmp ah, 0
        jnz Update_D2

User_up2:
        ; Check VK_W
        mov ah, 0
        invoke GetKeyState, VK_W
        cmp ah, 0
        jge User_left2

        cmp rowlvl2, 1
        jg Move_Pac_U2
        jmp User_left2

Move_Pac_U2:
        invoke Grid_Barriers2, collvl2, rowlvl2, 0, -1
        cmp ah, 0
        jnz Update_U2

User_left2:
        ; Check VK_A
        mov ah, 0
        invoke GetKeyState, VK_A
        cmp ah, 0
        jge User_right2

        cmp collvl2, 1
        jg Move_Pac_L2
        jmp User_right2

Move_Pac_L2:
        invoke Grid_Barriers2, collvl2, rowlvl2, -1, 0
        cmp ah, 0
        jnz Update_L2

User_right2:
        ; Check VK_D
        mov ah, 0
        invoke GetKeyState, VK_D
        cmp ah, 0
        jge GridCheck2

        cmp collvl2, Gridcollvl2 - 1
        jl Move_Pac_R2
        jmp GridCheck2

Move_Pac_R2:
        invoke Grid_Barriers2, collvl2, rowlvl2, 1, 0
        cmp ah, 0
        jnz Update_R2

GridCheck2:
        ; Check and update boundaries
        cmp collvl2, 0
        jne Check_GridCol2
        mov ah, Gridcollvl2 - 1
        mov collvl2, ah
        jmp ReturnBack2

Check_GridCol2:
        cmp collvl2, Gridcollvl2 - 1
        jne ReturnBack2
   

ReturnBack2:
    ret

Update_D2:
        INC rowlvl2
        invoke UserDirection, 0, 1, 0, 0
        ret

Update_U2:
        DEC rowlvl2
        invoke UserDirection, 1, 0, 0, 0
        ret

Update_L2:
        DEC collvl2
        invoke UserDirection, 0, 0, 1, 0
        ret

Update_R2:
        INC collvl2
        invoke UserDirection, 0, 0, 0, 1

    ret

User_Input2 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




Set_Enemy2 PROC
    mov ecx, 0
    mov edx, 0
    mov store2, edx

Set_EnemyLoop2:

    ; Check if ecx is less than GhostNo
    cmp ecx, GhostNo
    jge done2

    ; Call Randomize and RandomRange
    call Randomize
    mov eax, 1
    call RandomRange

    ; Check if eax is 0
    cmp eax, 0
    je UserDirectionDown2

    ; eax is not 0, set direction up
    invoke Enemy_Direc2, 0, 0, 0, 1
    jmp delay_set2

UserDirectionDown2:

    ; eax is 0, set direction down
    invoke Enemy_Direc2, 0, 0, 1, 0

delay_set2:

    ; Set delay using RandomRange
    mov eax, 30
    call RandomRange
    mov enemy[edx].delay, ax

    ; Move to the next struc_ghost
    add edx, SIZEOF struc_ghost
    mov store2, edx
    inc ecx

    ; Repeat the loop
    jmp Set_EnemyLoop2

done2:
    ret

Set_Enemy2 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


 Collision_LVL2 PROC
    mov ecx, 0
    mov edx, 0
    mov store2, edx
    


check_collision2:

    ; Check if ecx is less than GhostNo
    cmp ecx, GhostNo
    jge notFound2

    ; Check if enemy[edx].col == col && enemy[edx].row == row

    mov al, collvl2
    mov ah, rowlvl2
    cmp enemy[edx].col, al
    jne not_collided2
    cmp enemy[edx].row, ah
    jne not_collided2

    ; Collided

    cmp power, 0
    jne power_collision2

    ; No special power

    mov al, 1
    ret

not_collided2:

    ; Move to the next struc_ghost
    add edx, SIZEOF struc_ghost
    mov store2, edx
    inc ecx
    jmp check_collision2

power_collision2:

    ; Special power is active
    add Total_score, 100

    ; Update enemy position and delay
    mov al, enemy[edx].col
    mov ah, enemy[edx].row
    mGotoxy al, ah
    mov al, ' '
    call WriteChar

    mov enemy[edx].col, 23
    mov enemy[edx].row, 9
    mov enemy[edx].delay, 50
    invoke Enemy_Direc, 0, 0, 0, 1
    mov al, 0
    ret

notFound2:

    ; No collision found
    mov al, 0
    ret

Collision_LVL2 ENDP






                                                                                    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; for level 3
                                                                                    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; for level 3
                                                                                    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; for level 3
                                                                                    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; for level 3
                                                                              
    LVL_Char3 PROC, x:BYTE, y:BYTE
    mov eax, 0
    mov al, x        ; ROW
    mov bl, Gridcollvl3  ; TOTAL ROW
    mul bl
    movsx bx, y
    add ax, bx        ; RESULT + COL

    mov al, lvl3[eax]

    ; Checks
    cmp al, '|'
    je vertical3 

    cmp al, '-'
    je dash3

    cmp al, '#'
    je plus

    ; Set ah to 1 if not '|', '-', or '+'
    mov ah, 1 
    jmp finale3

    vertical3:
        mov ah, 0  
        jmp finale3

    dash3:
        mov ah, 0  
        jmp finale3

    plus:
        mov ah, 0 
  
    finale3:
    ret

LVL_Char3 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


Grid_Barriers3 PROC, co:BYTE, r:BYTE, colAdd:BYTE, rowAdd:BYTE
    mov dl, co
    mov dh, r

    add dl, colAdd
    add dh, rowAdd

    invoke LVL_Char3, dh, dl    ; return character in al and hurdle info in ah

    ; Check if ah is non-zero
    test ah, ah
    jz udhar3

    add dl, colAdd
    ;add dh, rowAdd
    invoke LVL_Char3, dh, dl

    udhar3:
    ret
Grid_Barriers3 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Collectible3 PROC
    mov eax, 0
    mov al, rowlvl3     
    mov bl, Gridcollvl3 
    mul bl
    movsx bx, collvl3
    add ax, bx  

    mov bl, lvl3[eax]

 ;MAZE CHECKS   
    cmp bl, '.'
    je dot3  

    cmp bl, 'O'
    je pallet3

    cmp bl, 'I'
    je lives3

    cmp bl, 'B'
    je bonus3


    jmp finale3

    dot3:
        mov lvl3[eax], ' '
        INC points3
        INC Total_score
        jmp finale3

    pallet3:
        mov lvl3[eax], ' '
        mov bl,powerBooster
        mov power, bl
         jmp finale3

    lives3:
         mov lvl3[eax], ' '
         mov esi, offset Live_check
         mov al, [esi]
         inc al
         mov [esi],al
         jmp finale3

     bonus3:
         mov lvl3[eax], ' '
         mov esi, offset Total_score
         mov al, [esi]
         add al,10
         mov [esi], al
         jmp finale3

    finale3:
    ret

Collectible3 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Grid3 PROC
    mov dl, 0   ; row
    mov dh, 0   ; col

        DL_checkkaro3:

            ; Check if dl != GridRow
            cmp dl, Gridrowlvl3
            je basKaro3

        DH_checkkaro3:

            ; Check if dh != GridCol
            cmp dh, Gridcollvl3
            je DH_endkaro3

            ; return char in al
            invoke LVL_Char3, dl, dh   
            call WriteChar
            INC dh

            ;inner loop
            jmp DH_checkkaro3  

            DH_endkaro3:

        mov dh, 0
        call Crlf
        inc dl

        ;outer loop
        jmp DL_checkkaro3  

        basKaro3:

    ret
Grid3 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    


     Prev_Position3 PROC
    mov ecx, GhostNo
    mov edx, 0
    mov store3, edx

Prev_PositionLoop3:

    mov al, enemy[edx].col
    mov ah, enemy[edx].row  
    mGotoxy al, ah 
    mov  al, ' '     
    call WriteChar

    mov al, enemy[edx].col
    mov ah, enemy[edx].row
    mGotoxy al, ah   

    invoke LVL_Char3, enemy[edx].row, enemy[edx].col

    call WriteChar

    add edx, SIZEOF struc_ghost 
    mov store3, edx  

    loop Prev_PositionLoop3

    ret
Prev_Position3 ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


    Enemy_Direc3 PROC, up:BYTE,down:BYTE,left:BYTE,right:BYTE
        mov edx, store3    
        mov al, up
        mov enemy[edx].up, al

        mov al, down
        mov enemy[edx].down, al

        mov al, left
        mov enemy[edx].left, al      
        
        mov al, right
        mov enemy[edx].right, al    
        
        ret
    Enemy_Direc3 ENDP 




    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


 User_Input3 PROC
        ; Check VK_S
        mov ah, 0
        invoke GetKeyState, VK_S
        cmp ah, 0
        jge User_up3

        cmp rowlvl3, Gridrowlvl3 - 1
        jl Move_Pac_D3
        jmp User_up3

Move_Pac_D3:
        invoke Grid_Barriers3, collvl3, rowlvl3, 0, 1
        cmp ah, 0
        jnz Update_D3

User_up3:
        ; Check VK_W
        mov ah, 0
        invoke GetKeyState, VK_W
        cmp ah, 0
        jge User_left3

        cmp rowlvl3, 1
        jg Move_Pac_U3
        jmp User_left3

Move_Pac_U3:
        invoke Grid_Barriers3, collvl3, rowlvl3, 0, -1
        cmp ah, 0
        jnz Update_U3

User_left3:
        ; Check VK_A
        mov ah, 0
        invoke GetKeyState, VK_A
        cmp ah, 0
        jge User_right3

        cmp collvl3, 1
        jg Move_Pac_L3
        jmp User_right3

Move_Pac_L3:
        invoke Grid_Barriers3, collvl3, rowlvl3, -1, 0
        cmp ah, 0
        jnz Update_L3

User_right3:
        ; Check VK_D
        mov ah, 0
        invoke GetKeyState, VK_D
        cmp ah, 0
        jge GridCheck3

        cmp collvl3, Gridcollvl3 - 1
        jl Move_Pac_R3
        jmp GridCheck3

Move_Pac_R3:
        invoke Grid_Barriers3, collvl3, rowlvl3, 1, 0
        cmp ah, 0
        jnz Update_R3

GridCheck3:
        ; Check and update boundaries
        cmp collvl3, 0
        jne Check_GridCol3
        mov ah, Gridcollvl3 - 1
        mov collvl3, ah
        jmp ReturnBack3

Check_GridCol3:
        cmp collvl3, Gridcollvl3 - 1
        jne ReturnBack3
        

ReturnBack3:
    ret

Update_D3:
        INC rowlvl3
        invoke UserDirection, 0, 1, 0, 0
        ret

Update_U3:
        DEC rowlvl3
        invoke UserDirection, 1, 0, 0, 0
        ret

Update_L3:
        DEC collvl3
        invoke UserDirection, 0, 0, 1, 0
        ret

Update_R3:
        INC collvl3
        invoke UserDirection, 0, 0, 0, 1
        ret

User_Input3 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  Collision_LVL3 PROC
    mov ecx, 0
    mov edx, 0
    mov store3, edx
    


check_collision3:

    ; Check if ecx is less than GhostNo
    cmp ecx, GhostNo
    jge notFound3

    ; Check if enemy[edx].col == col && enemy[edx].row == row
    mov al, collvl3
    mov ah, rowlvl3
    cmp enemy[edx].col, al
    jne not_collided3
    cmp enemy[edx].row, ah
    jne not_collided3

    ; Collided

    cmp power, 0
    jne power_collision3

    ; No special power

    mov al, 1
    ret

not_collided3:

    ; Move to the next struc_ghost
    add edx, SIZEOF struc_ghost
    mov store3, edx
    inc ecx
    jmp check_collision3

power_collision3:

    ; Special power is active
    add Total_score, 100

    ; Update enemy position and delay
    mov al, enemy[edx].col
    mov ah, enemy[edx].row
    mGotoxy al, ah
    mov al, ' '
    call WriteChar

    mov enemy[edx].col, 23
    mov enemy[edx].row, 9
    mov enemy[edx].delay, 50
    invoke Enemy_Direc, 0, 0, 0, 1
    mov al, 0
    ret

notFound3:

    ; No collision found
    mov al, 0
    ret

Collision_LVL3 ENDP



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;






Set_Enemy3 PROC
    mov ecx, 0
    mov edx, 0
    mov store3, edx

Set_EnemyLoop3:

    ; Check if ecx is less than GhostNo
    cmp ecx, GhostNo
    jge done3

    ; Call Randomize and RandomRange
    call Randomize
    mov eax, 1
    call RandomRange

    ; Check if eax is 0
    cmp eax, 0
    je UserDirectionDown3

    ; eax is not 0, set direction up
    invoke Enemy_Direc3, 0, 0, 0, 1
    jmp delay_set3

UserDirectionDown3:

    ; eax is 0, set direction down
    invoke Enemy_Direc3, 0, 0, 1, 0

delay_set3:

    ; Set delay using RandomRange
    mov eax, 30
    call RandomRange
    mov enemy[edx].delay, ax

    ; Move to the next struc_ghost
    add edx, SIZEOF struc_ghost
    mov store3, edx
    inc ecx

    ; Repeat the loop
    jmp Set_EnemyLoop3

done3:
    ret

Set_Enemy3 ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  Display_enemy PROC                   
        mov ecx, 0
        mov edx, 0
        mov store, edx
        
        .WHILE ecx < GhostNo        
            .IF enemy[edx].delay != 0
                DEC enemy[edx].delay
            .ELSE            
                .IF enemy[edx].left
                    invoke Grid_Barriers, enemy[edx].col, enemy[edx].row, -1, 0
                    .IF ah
                        mov edx, store
                        DEC enemy[edx].col
                    .ENDIF
                .ELSEIF enemy[edx].right
                    invoke Grid_Barriers, enemy[edx].col, enemy[edx].row, 1, 0
                    .IF ah
                        mov edx, store                     
                        INC enemy[edx].col
                    .ENDIF
                .ELSEIF enemy[edx].up
                    invoke Grid_Barriers, enemy[edx].col, enemy[edx].row, 0, -1
                    .IF ah
                        mov edx, store                     
                        DEC enemy[edx].row
                    .ENDIF
                .ELSEIF enemy[edx].down
                    invoke Grid_Barriers, enemy[edx].col, enemy[edx].row, 0, 1
                    .IF ah
                        mov edx, store                     
                        INC enemy[edx].row
                    .ENDIF
                .ENDIF    
                
                mov edx, store
                
                ; Trigger when hurdle is found
                .IF ah == 0         
                    call Randomize
                    mov  eax,2
                    call RandomRange
                    
                    ; UP DOWN LEFT RIGHT
                    mov edx, store
                    
                    .IF enemy[edx].down == 1
                        .IF eax
                            invoke Enemy_Direc, 0,0,1,0 
                        .ELSE
                            invoke Enemy_Direc, 0,0,0,1                 
                        .ENDIF
                    .ELSEIF enemy[edx].up == 1
                        .IF eax
                            invoke Enemy_Direc, 0,0,1,0 
                        .ELSE
                            invoke Enemy_Direc, 0,0,0,1                 
                        .ENDIF
                    .ELSEIF enemy[edx].right == 1
                        .IF eax
                            invoke Enemy_Direc, 1,0,0,0 
                        .ELSE
                            invoke Enemy_Direc, 0,1,0,0                 
                        .ENDIF
                    .ELSEIF enemy[edx].left == 1
                        .IF eax
                            invoke Enemy_Direc, 1,0,0,0 
                        .ELSE
                            invoke Enemy_Direc, 0,1,0,0                 
                        .ENDIF
                    .ENDIF
                   
                .ENDIF
            .ENDIF
            
            mov al, enemy[edx].col
            mov ah, enemy[edx].row
                
            mGotoxy al, ah                            
            .IF power == 0
                mWrite "G" 
            .ELSE    
                mWrite "X" 
            .ENDIF
                                            
            add edx, SIZEOF struc_ghost 
            mov store, edx            
                
            inc ecx
        .ENDW    
        
        ret
    Display_enemy ENDP  




  Display_enemy2 PROC                   
        mov ecx, 0
        mov edx, 0
        mov store2, edx
        
        .WHILE ecx < GhostNo        
            .IF enemy[edx].delay != 0
                DEC enemy[edx].delay
            .ELSE            
                .IF enemy[edx].left
                    invoke Grid_Barriers2, enemy[edx].col, enemy[edx].row, -1, 0
                    .IF ah
                        mov edx, store2
                        DEC enemy[edx].col
                    .ENDIF
                .ELSEIF enemy[edx].right
                    invoke Grid_Barriers2, enemy[edx].col, enemy[edx].row, 1, 0
                    .IF ah
                        mov edx, store2                     
                        INC enemy[edx].col
                    .ENDIF
                .ELSEIF enemy[edx].up
                    invoke Grid_Barriers2, enemy[edx].col, enemy[edx].row, 0, -1
                    .IF ah
                        mov edx, store2                     
                        DEC enemy[edx].row
                    .ENDIF
                .ELSEIF enemy[edx].down
                    invoke Grid_Barriers2, enemy[edx].col, enemy[edx].row, 0, 1
                    .IF ah
                        mov edx, store2                     
                        INC enemy[edx].row
                    .ENDIF
                .ENDIF    
                
                mov edx, store2
                
                ; Trigger when hurdle is found
                .IF ah == 0         
                    call Randomize
                    mov  eax,2
                    call RandomRange
                    
                    ; UP DOWN LEFT RIGHT
                    mov edx, store2
                    
                    .IF enemy[edx].down == 1
                        .IF eax
                            invoke Enemy_Direc2, 0,0,1,0 
                        .ELSE
                            invoke Enemy_Direc2, 0,0,0,1                 
                        .ENDIF
                    .ELSEIF enemy[edx].up == 1
                        .IF eax
                            invoke Enemy_Direc2, 0,0,1,0 
                        .ELSE
                            invoke Enemy_Direc2, 0,0,0,1                 
                        .ENDIF
                    .ELSEIF enemy[edx].right == 1
                        .IF eax
                            invoke Enemy_Direc2, 1,0,0,0 
                        .ELSE
                            invoke Enemy_Direc2, 0,1,0,0                 
                        .ENDIF
                    .ELSEIF enemy[edx].left == 1
                        .IF eax
                            invoke Enemy_Direc2, 1,0,0,0 
                        .ELSE
                            invoke Enemy_Direc2, 0,1,0,0                 
                        .ENDIF
                    .ENDIF
                   
                .ENDIF
            .ENDIF
            
            mov al, enemy[edx].col
            mov ah, enemy[edx].row
                
            mGotoxy al, ah                            
            .IF power == 0
                mWrite "G" 
            .ELSE    
                mWrite "X" 
            .ENDIF
                                            
            add edx, SIZEOF struc_ghost 
            mov store2, edx            
                
            inc ecx
        .ENDW    
        
        ret
    Display_enemy2 ENDP  




         Display_enemy3 PROC                   
        mov ecx, 0
        mov edx, 0
        mov store3, edx
        
        .WHILE ecx < GhostNo        
            .IF enemy[edx].delay != 0
                DEC enemy[edx].delay
            .ELSE            
                .IF enemy[edx].left
                    invoke Grid_Barriers3, enemy[edx].col, enemy[edx].row, -1, 0
                    .IF ah
                        mov edx, store3
                        DEC enemy[edx].col
                    .ENDIF
                .ELSEIF enemy[edx].right
                    invoke Grid_Barriers3, enemy[edx].col, enemy[edx].row, 1, 0
                    .IF ah
                        mov edx, store3                     
                        INC enemy[edx].col
                    .ENDIF
                .ELSEIF enemy[edx].up
                    invoke Grid_Barriers3, enemy[edx].col, enemy[edx].row, 0, -1
                    .IF ah
                        mov edx, store3                     
                        DEC enemy[edx].row
                    .ENDIF
                .ELSEIF enemy[edx].down
                    invoke Grid_Barriers3, enemy[edx].col, enemy[edx].row, 0, 1
                    .IF ah
                        mov edx, store3                     
                        INC enemy[edx].row
                    .ENDIF
                .ENDIF    
                
                mov edx, store3
                
                ; Trigger when hurdle is found
                .IF ah == 0         
                    call Randomize
                    mov  eax,2
                    call RandomRange
                    
                    ; UP DOWN LEFT RIGHT
                    mov edx, store3
                    
                    .IF enemy[edx].down == 1
                        .IF eax
                            invoke Enemy_Direc3, 0,0,1,0 
                        .ELSE
                            invoke Enemy_Direc3, 0,0,0,1                 
                        .ENDIF
                    .ELSEIF enemy[edx].up == 1
                        .IF eax
                            invoke Enemy_Direc3, 0,0,1,0 
                        .ELSE
                            invoke Enemy_Direc3, 0,0,0,1                 
                        .ENDIF
                    .ELSEIF enemy[edx].right == 1
                        .IF eax
                            invoke Enemy_Direc3, 1,0,0,0 
                        .ELSE
                            invoke Enemy_Direc3, 0,1,0,0                 
                        .ENDIF
                    .ELSEIF enemy[edx].left == 1
                        .IF eax
                            invoke Enemy_Direc3, 1,0,0,0 
                        .ELSE
                            invoke Enemy_Direc3, 0,1,0,0                 
                        .ENDIF
                    .ENDIF
                   
                .ENDIF
            .ENDIF
            
            mov al, enemy[edx].col
            mov ah, enemy[edx].row
                
            mGotoxy al, ah                            
            .IF power == 0
                mWrite "G" 
            .ELSE    
                mWrite "X" 
            .ENDIF
                                            
            add edx, SIZEOF struc_ghost 
            mov store3, edx            
                
            inc ecx
        .ENDW    
        
        ret
    Display_enemy3 ENDP  


                                                                                    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;DISPLAY

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TITLE

    Title_menu PROC

    mov eax, yellow
    call SetTextColor
   

    mov dh, 10
    mov dl, 26
    call gotoxy 
    mwrite " ____      _       _____   __  __       _       _    _", 0


    mov dh, 11
    mov dl, 26
    call gotoxy 
    mwrite "|  _ \    / \     / ____| |  \/  |     / \     | \  | |", 0


    mov dh, 12
    mov dl, 26
    call gotoxy 
    mwrite "| |_) |  / _ \    | |     | |\/| |    / _ \    |  \ | |", 0


    mov dh, 13
    mov dl, 26
    call gotoxy 
    mwrite "|  __/  / ___ \   | |     | |  | |   / ___ \   |   \| |", 0


    mov dh, 14
    mov dl, 26
    call gotoxy 
    mwrite "| |    / /   \ \  | |___  | |  | |  / /   \ \  | |\   |", 0


    mov dh, 15
    mov dl, 26
    call gotoxy 
    mwrite "|_|   /_/     \_\ \_____| |_|  |_| /_/     \_\ |_| \__|", 0

    mov dh, 19
    mov dl, 39
    call gotoxy


    mwrite "Player's name: ", 0
    mov edx, OFFSET Gamer
    mov ecx, SIZEOF Gamer
    call ReadString
    ret
Title_menu ENDP



title_lvl1 PROC

    mov eax, red
    call SetTextColor
  
    mGotoxy 60, 1

    mwrite" _       ______ __       __  ______  _          _",  0
    mGotoxy 60, 2
    mwrite"| |     |  ___| \ \     / / |  ____|| |        / |", 0
    mGotoxy 60, 3
    mwrite"| |     | |___   \ \   / /  | |___  | |        | |" , 0
    mGotoxy 60, 4
    mwrite"| |     |  ___|   \ \_/ /   |  ___| | |        | |" , 0

    mGotoxy 60, 5
    mwrite "| |____ | |____    \   /    | |____ | |____    | |", 0
    mGotoxy 60, 6
    mwrite"|______||______|    \_/     |______||______|   |_|", 0


    ret
title_lvl1 ENDP


title_lvl2 PROC

   mov eax, cyan
    call SetTextColor
  
    mGotoxy 60, 1

    mwrite " _      ______  __       __  ______  _           __", 0
    mGotoxy 60, 2
    mwrite "| |     |  __|  \ \     / / |  ____|| |          | \ ", 0
    mGotoxy 60, 3
    mwrite "| |     | |___   \ \   / /  | |___  | |           ) | ", 0
    mGotoxy 60, 4
    mwrite "| |     |  ___|   \ \_/ /   |  ___| | |          / / ", 0
    mGotoxy 60, 5
    mwrite "| |____ | |____    \   /    | |____ | |____     / /_", 0
    mGotoxy 60, 6
    mwrite "|______||______|    \_/     |______||______|   |____|", 0




    ret
title_lvl2 ENDP


title_lvl3 PROC

   mov eax, lightmagenta
    call SetTextColor
  
    mGotoxy 60, 1

    mwrite " _      ______  __       __  ______  _         _____", 0
    mGotoxy 60, 2
    mwrite "| |     |  ___| \ \     / / |  ____|| |        |    \  ", 0
    mGotoxy 60, 3
    mwrite "| |     | |___   \ \   / /  | |___  | |         __)  | ", 0
    mGotoxy 60, 4
    mwrite "| |     |  |      \ \_/ /   |  ___| | |        |    < ", 0
    mGotoxy 60, 5
    mwrite "| |____ | |____    \   /    | |____ | |____     ___) |", 0
    mGotoxy 60, 6
    mwrite "|______||______|    \_/     |______||______|   |_____/", 0



    ret
title_lvl3 ENDP


  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;TITLE


                                                                                                ;;;;;MENU
MENU PROC
    call clrscr

    mov eax, lightcyan
    call SetTextColor
    mov dh, 6
    
   mov dh, 7
    mov dl, 35
    call gotoxy
    mwrite"||\      //| ||/\/\/\ ||\      | ||      /", 0
    mov dh, 8
    mov dl, 35
    call gotoxy
    mwrite"|| \    // | ||       || \     | ||      \", 0
 mov dh, 9
    mov dl, 35
    call gotoxy
    mwrite"||  \  //  | ||       ||  \    | ||      /", 0
 mov dh, 10
    mov dl, 35
    call gotoxy
    mwrite"||   \//   | ||/\/\/\ ||   \   | ||      \", 0
 mov dh, 11
    mov dl, 35
    call gotoxy
    mwrite"||         | ||       ||    \  | ||      /", 0
 mov dh, 12
    mov dl, 35
    call gotoxy
    mwrite"||         | ||       ||     \ | ||      \", 0
 mov dh, 13
    mov dl, 35
    call gotoxy
    mwrite"||         | ||/\/\/\ ||      \| \\_____//", 0


    mov dh, 16
    mov dl, 38
    call gotoxy
    mwrite"Press 'P' to start the game ... ", 0

    mov dh, 17
    mov dl, 38
    call gotoxy
    mwrite"Press 'M' to preview instructions ...", 0
    
    mov esi, OFFSET INPUT
    mov ecx, SIZEOF INPUT
    call ReadChar
  
    mov dl, "m"

    cmp dl, al
    je instruction
    jne game
    instruction:
    call Maunal

    game:   
    call clrscr
    call Level1
    ret
MENU ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



Maunal PROC

    call clrscr
    mov eax, red
    call SetTextColor

     call crlf
    mov dh, 9
    mov dl, 35
    call gotoxy
    mwrite"Press W: P_set moves up in the maze.", 0

    mov dh, 10
    mov dl, 35
    call gotoxy
     mwrite"Press S : Pacman moves down in the maze.", 0

    mov dh, 11
    mov dl, 35
    call gotoxy
    mwrite"Press D : Pacman moves right in the maze.", 0

    mov dh, 12
    mov dl, 35
    call gotoxy
     mwrite"Press A: Pacman moves left in the maze.", 0
   
    mov dh, 15
    mov dl, 36
    call gotoxy
    mwrite"       Game Rules! ", 0
    mov dh, 17
    mov dl, 12
    call gotoxy
    mwrite" * Eat all the '.' to Level Up."
    mov dh, 18
    mov dl, 12
    call gotoxy
    mwrite" * Colliding With Ghosts Decreases Your Lives, Avoid Colliding!!! ."
    mov dh, 19
    mov dl, 12
    call gotoxy
    mwrite" * Eat Pellets to Eat Ghost & Get Bonus."

    mov dh, 21
    mov dl, 42
    call gotoxy
    mwrite"Press Any Key..."

    mov edx, OFFSET INPUT
    mov ecx, SIZEOF INPUT
    call ReadString

    thend:
    call MENU
Maunal ENDP


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL 1

   Level1 PROC

  
     call clrscr

    mov eax, cyan
    call SetTextColor
   
    mWrite " "
    mGotoxy 30, 10
    mWrite "  "
    mGotoxy 50, 20
 
    call ClrScr

    call Set_Enemy
    call Grid


  start_again:

 
     
    call Display_enemy
    call Collision_LVL
    
    
    cmp al, 0
    jnz GameOver


    call User_Input
    call User_InputP
    call Collectible
    mGotoxy collvl1, rowlvl1

    cmp power, 0
    jne boost
    mov al, P_set
    jmp PrintChar

boost:
    mov al, 1
    DEC power

PrintChar:
    call WriteChar

    invoke Sleep, speed

    call Prev_Position

    mGotoxy collvl1, rowlvl1
    mov al, ' '
    call WriteChar

    call title_lvl1





    levl1:
     mGotoxy 60, 9
    mWrite "Player:"
    mov edx, offset Gamer
    mov ecx, SIZEOF Gamer
    call writeString


        mGotoxy 60, 10
    mWrite "Total_score:"
    mov eax, Total_score
    call WriteInt

    mGotoxy 60, 11
    mWrite "Food Eaten:"
    mov eax, points
    call WriteInt

    
        

    cmp points, 10 ;160

    JE thend

    mGotoxy 60, 12
    mov esi, offset Live_check
    mov al, [esi]
     cmp al,0
    je Gameover
    mWrite "Lives count:"
    call writeint
    cmp al,0
   
    jne start_again

    mov collvl1, 26
    mov rowlvl1, 13
    call Set_Enemy



    jmp start_again



     GameOver:
         
    mov esi, offset Live_check
    mov al, [esi]
    cmp al,0
    dec Live_check
         je theFinale
         jnz start_again


    

         thend:
     INC level_count
     cmp level_count, 3
     jl Level2

    Level1 endp



    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LVEL2
  
 
Level2 PROC

call clrscr

    mov eax, green
    call SetTextColor
   
   
    mWrite " "
    mGotoxy 30, 10
    mWrite "  "
    mGotoxy 50, 20
    call WaitMsg
    call ClrScr

    call Set_Enemy2
    call Grid2


  start_again2:
     
    call Display_enemy2
    call Collision_LVL2

    cmp al, 0
    jnz GameOver2

    call User_Input2
    call User_InputP
    call Collectible2
    mGotoxy collvl2, rowlvl2

    cmp power, 0
    jne boost
    mov al, P_set
    jmp display

boost:
    mov al, 1
    DEC power

display:
    call WriteChar

    invoke Sleep, speed

    call Prev_Position2

    mGotoxy collvl2, rowlvl2
    mov al, ' '
    call WriteChar


    
   call title_lvl2

   mGotoxy 60, 10
    mWrite "Player:"
    mov edx, offset Gamer
    mov ecx, SIZEOF Gamer
    call writeString


    mGotoxy 60, 11
    mWrite "Total_score:"
    mov eax, Total_score
    call WriteInt

    mGotoxy 60, 12
    mWrite "Food Eaten:"
    mov eax, points2
    call WriteInt

    
    cmp points2, 15  ; 238

                  JE thend

    mGotoxy 60, 13
    mov esi, offset Live_check
    mov al, [esi]
     cmp al,0
    je Gameover2
    mWrite "Lives count:"
    call writeint
    cmp al,0
   
                    jne start_again2

    mov collvl2, 26
    mov rowlvl2, 13
    call Set_Enemy2



        
                    jmp start_again2


   

     GameOver2:
         
    mov esi, offset Live_check
    mov al, [esi]
    cmp al,0
    dec Live_check
         je theFinale
         jnz start_again2

    Level2 endp



    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL3

    Level3 PROC

    call clrscr

    mov eax, brown
    call SetTextColor
   
   
    mWrite " "
    mGotoxy 30, 10
    mWrite "  "
    mGotoxy 50, 20
    call WaitMsg
    call ClrScr

    call Set_Enemy3
    call Grid3


                                start_again3:
     
    call Display_enemy3
    call Collision_LVL3 
    cmp al, 0
    jnz GameOver3

    call User_Input3
    call User_InputP
    call Collectible3
    mGotoxy collvl3, rowlvl3
    cmp power, 0

    jne boost
    mov al, P_set


    jmp display

boost:
    mov al, 1
    DEC power


display:
    call WriteChar
    invoke Sleep, speed

    call Prev_Position3
    mGotoxy collvl3, rowlvl3
    mov al, ' '
    call WriteChar

   call title_lvl3



                    ;;;;;;;;;;;;;;;;;;LEVEL DETAILS
    mGotoxy 60, 10
    mWrite "Player:"
    mov edx, offset Gamer
    mov ecx, SIZEOF Gamer
    call writeString

    mGotoxy 60, 11
    mWrite "Total_score:"
    mov eax, Total_score
    call WriteInt

    mGotoxy 60, 12
    mWrite "Food Eaten:"
    mov eax, points3
    call WriteInt

    
        

    cmp points3, 20 ;232
    JE thend2

    mGotoxy 60, 13
    mov esi, offset Live_check
    mov al, [esi]
     cmp al,0
    je Gameover3
    mWrite "Lives Count:"
    call writeint
    cmp al,0
   
    jne start_again3

    mov collvl3, 26
    mov rowlvl3, 13
    call Set_Enemy3

    jmp start_again3


   

     GameOver3:
         
    mov esi, offset Live_check
    mov al, [esi]
    cmp al,0
    dec Live_check
         je theFinale
         jnz start_again3

    Level3 endp



     thend:
      call ClrScr
     INC level_count
     cmp level_count, 2
     je  Level2

      cmp level_count, 3
       je  Level3
       jne final_check
     

     thend2:
      call ClrScr
     INC level_count
      cmp level_count, 3
       je  Level3
       jne final_check
      
  
  final_check:
  mov eax, points
    call WriteInt
   cmp Live_check, 0
   jg theFinale2
   je theFinale


   
   


     theFinale2:
        call ClrScr
        call Leaderboard
       
        mGotoxy 50, 7
        mWrite "You Win"
        

        mGotoxy 50, 9
        mov edx, offset Gamer
         mov ecx, SIZEOF Gamer
          call writeString
        mGotoxy 62, 9
        mWrite "Total Total_score:" 
        mov eax, Total_score
        call WriteInt

        mov esi, offset points2
        mov eax, [esi]
        add points, eax

        mGotoxy 50, 11
        mWrite "Total Food Eaten:" 
        mov eax, points
        call Writeint
        jmp program_end




        theFinale:
        call ClrScr

        call Leaderboard
       
        mGotoxy 35, 7
        mWrite "Game End, You ran out  of Life"
        

        mGotoxy 35, 9
         mWrite "Player:"
          mov edx, offset Gamer
            mov ecx, SIZEOF Gamer
            call writeString
        mGotoxy 35, 10
        mWrite "Total Total_score:" 
        mov eax, Total_score
        call WriteInt

        mov esi, offset points2
        mov eax, [esi]
        add points, eax
          jmp program_end

        Leaderboard Proc

         mGotoxy 50, 6
        mWrite "Name        Score "

        mGotoxy 49, 7
        mWrite "* Shahmeer :   1437 "
        

        mGotoxy 50, 9
        mov edx, offset Gamer
         mov ecx, SIZEOF Gamer
          call writeString
        mGotoxy 56, 9
        mov eax, Total_score
        call WriteInt


        mGotoxy 50, 10
        mWrite "* Nouman :   950 "
        

        mGotoxy 50, 11
        mWrite "* Zaid  :   665 "
        ret
        Leaderboard EndP
         
                                ;;;;;;;;;;;;;;;;;;;MAIN

main PROC 

        call clrscr
        call Title_menu
        call clrscr
        call MENU
        call ClrScr
        call Level1 
        
       
        
main ENDP

                         ;;;;;;;;;;;;;;;;;;;MAIN
program_end:
END main