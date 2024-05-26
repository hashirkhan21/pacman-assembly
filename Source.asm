
INCLUDE Irvine32.inc

BUFFER_SIZE = 2000
.data

menu1 db"   .___  ___.      ___       __  .__   __.    .___  ___.  _______ .__   __.  __    __",0                      
menu2 db"   |   \/   |     /   \     |  | |  \ |  |    |   \/   | |   ____||  \ |  | |  |  |  |",0                     
menu3 db"   |  \  /  |    /  ^  \    |  | |   \|  |    |  \  /  | |  |__   |   \|  | |  |  |  |",0                     
menu4 db"   |  |\/|  |   /  /_\  \   |  | |  . `  |    |  |\/|  | |   __|  |  . `  | |  |  |  |",0                     
menu5 db"   |  |  |  |  /  _____  \  |  | |  |\   |    |  |  |  | |  |____ |  |\   | |  `--'  |",0                     
menu6 db"   |__|  |__| /__/     \__\ |__| |__| \__|    |__|  |__| |_______||__| \__|  \______/",0                      

start1 db" __              _______.___________.    ___       .______     .___________.",0                      
start2 db"/_ |            /        |           |   /   \      |   _  \   |           |  ",0                     
start3 db" | |            |   (----`---|  |----`  /  ^  \    |  |_)  |   `---|  |----`  ",0                     
start4 db" | |             \   \       |  |      /  /_\  \   |      /        |  |",0                     
start5 db" | |  __     .----)   |      |  |     /  _____  \  |  |\  \----.   |  |   ",0                     
start6 db" |_| (__)    |_______/       |__|    /__/     \__\ | _| `._____|   |__|",0                     
                                                                                                             
                                                                                                                       
help1 db" ___            __    __   _______  __      .______",0                                                         
help2 db"|__ \          |  |  |  | |   ____||  |     |   _  \",0                                                         
help3 db"   ) |         |  |__|  | |  |__   |  |     |  |_)  |",0                                                        
help4 db"  / /          |   __   | |   __|  |  |     |   ___/",0                                                         
help5 db" / /_   __     |  |  |  | |  |____ |  `----.|  |    ",0                                                         
help6 db"|____| (__)    |__|  |__| |_______||_______|| _|    ",0                                                         

hs1 db" ____            __    __   __    _______  __    __       _______.  ______   ______   .______       _______ ",0                                                         
hs2 db"|___ \          |  |  |  | |  |  /  _____||  |  |  |     /       | /      | /  __  \  |   _  \     |   ____|",0                                                         
hs3 db"  __) |         |  |__|  | |  | |  |  __  |  |__|  |    |   (----`|  ,----'|  |  |  | |  |_)  |    |  |__",0                                                        
hs4 db" |__ <          |   __   | |  | |  | |_ | |   __   |     \   \    |  |     |  |  |  | |      /     |   __|  ",0                                                         
hs5 db" ___) |  __     |  |  |  | |  | |__| | |  |  |  | .----)  |   |   `----.|  `--'  | |  |  \---|     |  |____",0                                                         
hs6 db"|____/  (__)    |__|  |__| |__|  \______| |__|  |__| |_______/     \______| \______/  | _| `._____||_______|",0                                                                                                              


h1 db" __    __   __    _______  __    __       _______.  ______   ______   .______       _______ ",0                                                         
h2 db"|  |  |  | |  |  /  _____||  |  |  |     /       | /      | /  __  \  |   _  \     |   ____|",0                                                         
h3 db"|  |__|  | |  | |  |  __  |  |__|  |    |   (----`|  ,----'|  |  |  | |  |_)  |    |  |__",0                                                        
h4 db"|   __   | |  | |  | |_ | |   __   |     \   \    |  |     |  |  |  | |      /     |   __|  ",0                                                         
h5 db"|  |  |  | |  | |__| | |  |  |  | .----)  |   |   `----.|  `--'  | |  |  \---|     |  |____",0                                                         
h6 db"|__|  |__| |__|  \______| |__|  |__| |_______/     \______| \______/  | _| `._____||_______|",0        



he1 db" __    __   _______  __      .______",0                                                         
he2 db"|  |  |  | |   ____||  |     |   _  \",0                                                         
he3 db"|  |__|  | |  |__   |  |     |  |_)  |",0                                                        
he4 db"|   __   | |   __|  |  |     |   ___/",0                                                         
he5 db"|  |  |  | |  |____ |  `----.|  |    ",0                                                         
he6 db"|__|  |__| |_______||_______|| _|    ",0       

go1 db"  _______      ___      .___  ___.  _______      ______   ____    ____  _______ .______",0      
go2 db" /  _____|    /   \     |   \/   | |   ____|    /  __  \  \   \  /   / |   ____||   _  \     ",0
go3 db"|  |  __     /  ^  \    |  \  /  | |  |__      |  |  |  |  \   \/   /  |  |__   |  |_)  |    ",0
go4 db"|  | |_ |   /  /_\  \   |  |\/|  | |   __|     |  |  |  |   \      /   |   __|  |      /     ",0
go5 db"|  |__| |  /  _____  \  |  |  |  | |  |____    |  `--'  |    \    /    |  |____ |  |\  \----.",0
go6 db" \______| /__/     \__\ |__|  |__| |_______|    \______/      \__/     |_______|| _| `._____|",0


    filename    BYTE "output.txt",0  ; Default input filename
    buffer      BYTE BUFFER_SIZE DUP(?)
    buffer2      BYTE BUFFER_SIZE+30 DUP(?)
    buffer3     db 0
    fileHandle  HANDLE ?
    bool_foo db 0
    arr_score db 10 dup(0)
    score_size db 0
    arr_name db 10 dup(0)
    name_size db 0
    score1 dw 0

grid BYTE 70 DUP(30 DUP(0))
ground BYTE "########################################################################################################################",0
ground1 BYTE "#",0ah,0
ground2 BYTE "#",0
ground3 BYTE "|",0
ground4 BYTE "-",0
ground5 BYTE " ",0
num_coins db 0
manual db 0

temp byte ?
temp1 dd ?
temp2 dd ?
temp3 dd ?
temp4 dd ?
timer dw 0
timer1 dw 0
timer2 dw 0
timer3 dw 0
timer5 dw 0
timer4 dw 0
current_move db 1
strLevel db "LEVEL: ",0
strScore BYTE "SCORE: ",0
strLIVES BYTE "LIVES: ",0
strNAME BYTE "NAME: ",0
strhs BYTE "Highscore: ",0
score dw 0
LIVES BYTE 3
LEVEL BYTE 0
xPos BYTE 20
yPos BYTE 20
xCoinPos BYTE ?
yCoinPos BYTE ?
inputChar BYTE ?
g1xpos byte 10
g1ypos byte 2
currentG1 byte 2
g2xpos byte 40
g2ypos byte 2
currentG2 byte 3
g3xpos byte 30
g3ypos byte 2
currentG3 byte 4

g4xpos db 1
g4ypos db 1
currentG4 byte 2

g5xpos db 68 
g5ypos db 8
currentg5 byte 2

fxpos db 11
fypos db 2
fbool db 0
teleportx1 db 67 
teleporty1 db 1
teleportx db 1
teleporty db 14
hy dw 400
hx dw 200

string1 db "ENTER YOUR NAME PLEASE: ",0
string2 db "Danke ",0

name1 db 10 dup(0),0


pacman11 db " @@@@@@@   @@@@@@   @@@@@@@ @@@@@@@@@@   @@@@@@  @@@  @@@ ",0
pacman2 db " @@!  @@@ @@!  @@@ !@@      @@! @@! @@! @@!  @@@ @@!@!@@@ ",0
pacman3 db " @!@@!@!  @!@!@!@! !@!      @!! !!@ @!@ @!@!@!@! @!@@!!@! ",0
pacman4 db " !!:      !!:  !!! :!!      !!:     !!: !!:  !!! !!:  !!! ",0
pacman5 db "  :        :   : :  :: :: :  :      :    :   : : ::    :  ",0


                                        
pacman123 db".xxxxx",0                      
          db"xxxxxxx",0       
          db"xxxxx",0       
          db"xxxxxxx",0       
          db".xxxxx",0,0       
    
pacman1234 db".......",0                      
          db"........",0       
          db"........",0       
          db"........",0       
          db"........",0,0    



pacman  db "                   .:--==================-:..",0                
        db "               .--============================-:",0             
        db "            .-=======================     =======-.",0          
        db "          :-=========================     =========-:",0        
        db "        :============================     ============:",0      
        db "      .-================================================.",0    
        db "     :===================================================:",0   
        db "    -=====================================================-",0  
        db "   -====================================================:.",0   
        db "  :================================================-:.",0       
        db " .=============================================-:.",0           
        db " -=========================================-:.",0               
        db " ======================================-:.",0                
        db ".==================================-:. ",0                   
        db ":==============================-:.",0                          
        db ":===============================-:.",0                          
        db ".===================================-:.",0                     
        db "=======================================-:.",0                 
        db " :==========================================-:.",0              
        db "  -=============================================-:.",0          
        db "  .=================================================-:.",0      
        db "   :====================================================-:.",0  
        db "    :=====================================================:",0  
        db "     .===================================================.",0   
        db "       :===============================================-",0     
        db "        .-===========================================-.",0      
        db "          .-=======================================-.",0        
        db "             :-=================================-:",0           
        db "                .:-=========================--:",0              
        db "                    .:--===============--:.",0,0


pacman1  db "                   .:--==================-:..",0                
        db "               .--============================-:",0             
        db "            .-=======================     =======-.",0          
        db "          :-=========================     =========-:",0        
        db "        :============================     ============:",0      
        db "      .-================================================.",0    
        db "     :===================================================:",0   
        db "    -=====================================================-",0  
        db "   -======================================================:.",0   
        db "  :=======================================================-:.",0       
        db " .========================================================-:.",0           
        db " -========================================================-:.",0               
        db " =========================================================-:.",0                
        db ".==================================-:. ",0                   
        db ":==============================-:.",0                          
        db ":===============================-:.",0                          
        db ".===================================-:.",0                     
        db "==========================================================-:.",0                 
        db " :========================================================-:.",0              
        db "  -=======================================================-:.",0          
        db "  .=======================================================-:.",0      
        db "   :======================================================-:.",0  
        db "    :=====================================================:",0  
        db "     .===================================================.",0   
        db "       :===============================================-",0     
        db "        .-===========================================-.",0      
        db "          .-=======================================-.",0        
        db "             :-=================================-:",0           
        db "                .:-=========================--:",0              
        db "                    .:--===============--:.",0,0


                                        
fruit_a db".........",0                                        
mouth db"XXXXXXXXXXXXXXXXXXXXXXXXXX",0

ins1 db "WASD TO MOVE",0
ins2 db "GAME IS IN CONTINUOUS MOTION ",0
INS45 DB "YOU CAN CHNAGE IT TO MANUAL MODE WITH THE KEY M",0
INS3 DB "PRESS L TO CHANGE LEVEL",0
INS4 DB "YOU HAVE 3 LIVES SO USE THEM WELL",0
INS5 DB "ENJOY  ;)",0
INS6 DB "PRESS ANY KEY TO GO BACK TO MENU" ,0     

highscore dw 0
.code

write__ PROC
push edx
push ax
        mov dl,75
        mov dh,13
        call Gotoxy
        mov edx,OFFSET strhs
        call WriteString
        mov ax, highscore
        call Writeint

pop ax
pop edx
ret
write__ ENDP

main PROC
    
   mov edx, OFFSET filename
    call OpenInputFile
    mov fileHandle, eax

    ;Read from the file.
    mov edx, OFFSET buffer
    mov ecx, BUFFER_SIZE
    call ReadFromFile

    call readkey
    call animation
    mov eax,1000
    call delay

    call pacman_name
    mov eax,1000
    call delay

   men:
    call main_menu
    cmp al,1+"0"
    je new
    cmp al,2+"0"
    je help111
    cmp al,3+"0"
    je hs111
    jmp men
    help111:
    call clrscr
    call help_draw
    call readchar
       call clrscr
   jmp men
    hs111:
    call clrscr
    call hs_draw
    call readchar
    call clrscr
    jmp men


    ;///////////////
    new:
    mov al,level
    cmp al,2
    ja exitgame
    mov esi,offset buffer
    mov edi,offset buffer
        call check_score
    mov ax,score1
    mov highscore,ax
    call clrscr
    ; draw ground at (0,29):
    mov eax,lightblue ;(black * 16)
    mov esi,offset grid
    call SetTextColor
    mov dl,0
    mov dh,29
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    mov dl,0
    mov dh,0
    call Gotoxy
    mov edx,OFFSET ground
    call WriteString
    mov ecx,28
    mov dh,1
    l1:
    mov dl,0
    call Gotoxy
    mov edx,OFFSET ground1
    call WriteString
    ;inc dh
    loop l1

    mov ecx,28
    mov dh,1
    mov temp,dh
    l2:
    mov dh,temp
    mov dl,70
    call Gotoxy
    mov edx,OFFSET ground2
    call WriteString
    inc temp
    loop l2
  

    mov dl,71
    mov dh,29
    call GOTOXY
    mov edx,offset ground5
    call writestring
    mov xpos,20
    mov ypos,20
    mov g1xpos,10
    mov g2xpos,30
    mov g3xpos,40
    mov g1ypos,2
    mov g2ypos,2
    mov g3ypos,2
    mov fbool ,0
    mov dl,72
    mov dh,29
    call GOTOXY
    mov edx,offset ground5
    call writestring

        mov eax,yellow
        call settextcolor
        mov dl,75
        mov dh,5
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov ax,score
        call WriteInt

        mov eax,lightblue
        call settextcolor
    mov dl,71
    mov dh,0
    call GOTOXY
    mov edx,offset ground5
    call writestring

    mov dl,72
    mov dh,0
    call GOTOXY
    mov edx,offset ground5
    call writestring

    mov eax, white
    call settextcolor
    mov ecx,17
    mov temp,73
    L3:
    mov dl,temp
    mov dh,0
    call GOTOXY
    mov edx,offset ground4
    call writestring
    mov dl,temp
    mov dh,29
    call GOTOXY
    mov edx,offset ground4
    call writestring
    inc temp
    Loop l3

    mov ecx,28
    mov temp,1

    L4:
    mov dl,73
    mov dh,temp
    call GOTOXY
    mov edx,offset ground3
    call writestring
    inc temp
    LOOP l4
    ;////////////////////////////////////////////////

        mov ax,yellow
        call settextcolor
        mov dl,75
        mov dh,7
        call Gotoxy
        mov edx,OFFSET STRLEVEL
        call WriteString
        mov al,level
        call WriteInt


        mov dl,75
        mov dh,9
        call Gotoxy
        mov edx,OFFSET strlives
        call WriteString
        mov al,LIVES
        call WriteInt

        mov dl,75
        mov dh,11
        call Gotoxy
        mov edx,OFFSET strname
        call WriteString
        mov edx,offset name1
        call Writestring

        mov dl,75
        mov dh,13
        call Gotoxy
        mov edx,OFFSET strhs
        call WriteString
        mov ax, highscore
        call Writeint


    call DrawPlayer
    call DrawWalls
    call DrawGhost1
    call Randomize
    ;jmp exitgame
    mov timer,0
    mov timer1,0
    mov timer2,0
    mov timer3,0    

                    CMP LEVEL,2
            JnE JUEUEUE

        MOV DL,1
        MOV DH,14
        CALL GOTOXY
        MOV AL,"T"
        CALL WRITECHAR
        MOV DL,67
        MOV DH,1
        CALL GOTOXY
        MOV AL,"T"
        CALL WRITECHAR

        JUEUEUE:



    gameLoop:


        inc timer
        inc timer1
        inc timer2
        inc timer3
        inc timer4
        inc timer5

        mov ax,score
        cmp highscore,ax
        ja lllllllll

        mov highscore,ax
        call write__

        lllllllll:

        cmp level,0
        jne yes_
       cmp num_coins,0
       jle newlevel
       yes_:
        mov eax,yellow
        call SetTextColor
        
        call ghosts_
        call fruit
        cmp lives,0
        jle exitgame
        cmp manual,1
        jne onground
        call Readkey
        jnz A3
        mov current_move,0
        a3:
        jmp afterground

        onGround:
        call Readkey
        jz YESSIR
        mov timer,250
        Afterground:
         mov inputChar,al
        ; exit game if user types 'x':
        
        cmp inputChar,"x"
        je exitGame

        cmp inputchar,"l"
        je newLevel

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar,"m"
        jne yessir
        xor manual,1
        jmp gameloop

        YESSIR:
        cmp current_move,1
        jne yessir1
        cmp timer,250
        je moveUp

        yessir1:

        cmp current_move,2
        jne yessir3
        cmp timer,250
        je movedown

        yessir3:
        cmp current_move,3
        jne yessir4
        cmp timer,150
        je moveleft

        yessir4:
        cmp current_move,4
        jne yessir5
        cmp timer,150
        je moveright

        yessir5:
        jmp gameLoop


        moveUp:
        call coin_collision
        mov timer,0

        cmp level,2
        jne yesss3
        cmp xpos,67
        jne yesss3
        cmp ypos,2
        jne yesss3
        mov xpos,2
        mov ypos,14
        mov dl,67
        mov dh,2
        call gotoxy
        mov al," "
        call writechar
        call drawplayer
        jmp gameloop
        
        yesss3:
        mov current_move,1
        call conditional_warp_UP
        cmp dl,1
        je moveupptr
        cmp ypos,1
        je gameloop

       call up_WALL_COLLISION
       cmp dl,1
       je gameLOOP
              MOVEUPPTR:
            call UpdatePlayer
            dec yPos
            call DrawPlayer
            call coin_collision
        jmp gameLoop

        moveDown:
        call coin_collision
        mov timer,0
        mov current_move,2
        call conditional_warp_down
        cmp dl,1
        je movedownptr
        cmp ypos,28
        je gameloop
       call down_WALL_COLLISION
       cmp dl,1
       je gameloop
       movedownptr:
        call UpdatePlayer
        inc yPos
        call DrawPlayer
        call coin_collision       
       jmp gameLoop

        moveLeft:
        mov timer,0
        cmp level,2
        jne yesss2
        cmp xpos,2
        jne yesss2
        cmp ypos,14
        jne yesss2

        mov xpos,67
        mov ypos,2

        mov dl,2
        mov dh,14
        call gotoxy
        mov al," "
        call writechar
        call drawplayer
        jmp gameloop

        yesss2:
        mov current_move,3
        cmp ypos,13
        jne moveleftL1
        cmp ypos,14
        jne moveleftL1
        cmp xpos,1
        jne moveleftL1
        mov xpos,99

        moveLEftL1:
        cmp xpos,1
        je gameloop
 

       call left_WALL_COLLISION
       cmp dl,1
       je gameloop

        call UpdatePlayer
        dec xPos
        call DrawPlayer
        call coin_collision
        jmp gameLoop

        moveRight:
        mov timer,0
        mov current_move,4
        cmp xpos, 69
        je gameloop
        call right_WALL_COLLISION
        cmp dl,1
               je gameloop
        call UpdatePlayer
        inc xPos
        call DrawPlayer
        call coin_collision
        jmp gameLoop

    jmp gameLoop

    game_lppp:
    mov Timer,0
    jmp gameLoop

        newLevel:
    inc level
    call reset_gen
    mov al,level
    cmp al,3
    jb new

    exitGame:
    call endanimation
    call file_handling

    call clrscr
    mov eax,lightMagenta
    call settextcolor
    mov dh,0
    mov dl,10
    mov ecx,offset go1
    call menudraw

        mov dl,40
        mov dh,10
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov ax,score
        call WriteInt

    call readchar
    exit
main ENDP

DrawPlayer PROC
    ; draw player at (xPos,yPos):
    mov eax,yellow ;(blue*16)
    call SetTextColor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al,"X"
    call WriteChar
    ret
DrawPlayer ENDP

UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP

ghosts_ proc
cmp level,0 
jne L1
call ghost1_move2
        call ghost_col
ret
        l1:
        
        cmp level,0
        jne L2
        call ghost1_move
         call ghost_col
        ret
        L2:
        cmp level,1
        jg l3
        call ghost1_move
        call ghost2_move
        call ghost3_move
        call ghost_col
ret
     l3:
        call ghost1_move
        call ghost2_move
        call ghost3_move
        call ghost4_move
        call ghost5_move
        call ghost_col

ghosts_ endp

ghost1_move2 Proc
    

      start_:
    cmp currentG1, 1
    je l1

    cmp currentG1, 2
    je l2

    ret

    l1:
    mov dx,hx
    cmp timer1, 250
    jl l1end
    cmp g1ypos ,1
    je zaend
    call updateghost1
    dec g1ypos
    mov timer1,0
    call drawghost1
    l1end:
    ret

    l2:
        mov dx,hx
    cmp timer1, 250
    jl l2end
    cmp g1ypos ,28
    je zaend
    call updateghost1
    inc g1ypos
    mov timer1, 0
    call drawghost1
    l2end:
    ret

    zaend:
    cmp currentG1, 1
    je l3
    mov currentG1,1
    ret
    l3:
    mov currentG1, 2

ret
ghost1_move2 ENDP

fruit proc
cmp level,1
jl endls1
cmp fbool,1
je endls

call createRandomCoin
movzx eax,fxpos
movzx ebx,fypos
call Update_Grid2
call DrawCoin
mov fbool,1

endls:
mov al,fxpos
cmp xpos,al
jne endls1
mov al,fypos
cmp ypos,al
jne endls1
add score,40
movzx eax,xpos
movzx ebx,ypos 
call Update_Grid
mov fbool,0

        mov eax,yellow
        call settextcolor
        mov dl,75
        mov dh,5
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov ax,score
        call WriteInt

endls1:
ret
fruit endp

DrawCoin PROC
    mov eax,yellow ;(red * 16)
    call SetTextColor
    mov dl,fxpos
    mov dh,fypos
    call Gotoxy
    mov al,"@"
    call WriteChar
    ret
DrawCoin ENDP

CreateRandomCoin PROC
 L1:   
    mov eax,68
    call RandomRange
        inc eax
    mov fxpos,al
    mov eax,28
        call RandomRange
    inc eax
    mov fypos ,al
    movzx eax,fxpos
    movzx ebx,fypos
    call check3
    cmp al,0
    je end_
    inc eax
    cmp eax,69
    je l1
    cmp al,0
    je end_
    jmp l1

    end_:
    ret
CreateRandomCoin ENDP

coin1 proc

mov eax,3
mov ebx,3
mov ecx,59
L1:
mov dl,al
mov dh,bl
call gotoxy
push ax
    inc num_coins
    mov al,"."
    call WriteChar
pop ax
call update_grid2
inc eax
Loop l1

mov eax,3
mov ebx,20
mov ecx,59
L2:
mov dl,al
mov dh,bl
call gotoxy
push ax
    inc num_coins
    mov al,"."
    call WriteChar
pop ax
call update_grid2
inc eax
Loop l2
ret
coin1 endp

DrawWalls PROC
    mov eax, lightblue
    call SetTextColor

    cmp level,0
    jne l1
    mov hx,200
    mov hy,400
    call level1_maze
    call coin1
    ret

    L1:
    cmp level,1
    jne Done
        mov hx,100
    mov hy,200
    call level_maze
    call coin_gen_
    ret

    Done:
    cmp level,2
    jne Done2
        mov hx,150
    mov hy,250
    call level2_maze
    call coin_gen_

    done2:
    ret
DrawWalls ENDP


;rect eax ebx ecx edx

LRshape PROC
push eax
push ebx
push ecx
call vert
add ebx,ecx
call hor

pop ecx
pop ebx
pop eax

ret
LRSHAPE ENDP

rshape PROC
push eax
push ebx
push ecx
call hor
add eax,ecx
call vert

pop ecx
pop ebx
pop eax

ret
Rshape endp

rect PROC
push eax
push ebx
push ecx
push edx
L1:
push edx
push ecx
mov ecx,edx
call Hor
pop ecx
pop edx
inc ebx
Loop l1
    pop edx
    pop ecx
    pop ebx
    pop eax
ret

rect ENDP


DoubleHor PROC
    push eax
    push ebx
    push ecx
    call Hor
    inc ebx
    pop ecx
    call Hor
    pop ebx
    pop eax


    ret
DOUBLEHor ENDP

Doublevert PROC
    push eax
    push ebx
    push ecx
    call vert
    inc eax
    call vert
    pop ecx
    pop ebx
    pop eax
    ret
DOUBLEvert ENDP


tSHAPE PROC
    push eax
    push ebx
    push ecx

mov temp3,eax
mov temp4,ebx
mov ecx,8
call hor
mov eax,temp3
mov ebx,temp4
inc ebx
mov ecx,8
call hor
mov eax,temp3
mov ebx,temp4
add eax,3
add ebx,2
mov temp3,eax
mov temp4,ebx
call box1

mov eax,temp3
mov ebx,temp4

add ebx,2
call box1

    pop ecx
    pop ebx
    pop eax
RET
TSHAPE ENDP

BOX1 proc
    push eax
    push ebx
    push ecx

MOV ECX,2
call Hor
INC EBX
MOV ECX,2
CALL HOR

    pop ecx
    pop ebx
    pop eax

RET
BOX1 ENDP

LShape PROC
    push eax
    push ebx
    push ecx

mov temp3,eax
mov temp4,ebx
call box1
mov eax,temp3
mov ebx,temp4
add ebx,2
call box1
mov eax,temp3
mov ebx,temp4
add ebx,4
call box1


mov eax,temp3
mov ebx,temp4
add ebx,4
add eax,2
call box1
mov eax,temp3
mov ebx,temp4
add ebx,4
add eax,4
call box1


    pop ecx
    pop ebx
    pop eax

ret
LSHAPE ENDP

RLShape PROC
        push eax
    push ebx
    push ecx

mov temp3,eax
mov temp4,ebx
call box1
mov eax,temp3
mov ebx,temp4
add ebx,2
call box1
mov eax,temp3
mov ebx,temp4
add ebx,4
call box1
mov eax,temp3
mov ebx,temp4
add eax,2
call box1
mov eax,temp3
mov ebx,temp4
add eax,4
call box1


    pop ecx
    pop ebx
    pop eax
ret
RLSHAPE ENDP

Tri1 PROC
    push ecx
push eax
push ebx
L1:
push ecx
push eax
push ebx
call hor
pop ebx
pop eax
pop ecx
inc eax
dec ebx
Loop l1

pop ebx
pop eax
pop ecx
ret
TRI1 ENDP

Tri2 PROC
push ecx
push eax
push ebx
L1:
call hor
dec ebx
Loop l1
pop ebx
pop eax
pop ecx
ret
TRI2 ENDP


Hor PROC
    push eax
    push ebx
    push ecx
    L1:
    push eax
    push ebx
    mov temp1,eax
    mov temp2,ebx
    mov dh, bl
    mov dl, al
    call Gotoxy
    mov al, "#"
    call WriteChar
    mov eax,temp1
    mov ebx,temp2
    call update_GRID1
    pop ebx
    pop eax
    inc eax
    Loop L1
    pop ecx
    pop ebx
    pop eax
    ret
Hor ENDP

Vert PROC
    push eax
    push ebx
    push ecx
    L1:
    push eax
    push ebx
    mov temp1,eax
    mov temp2,ebx
    mov dh, bl
    mov dl, al
    call Gotoxy
    mov al, "#"
    call WriteChar
    mov eax,temp1
    mov ebx,temp2
    call update_GRID1
    pop ebx
    pop eax
    inc ebx
    Loop L1
    pop ecx
    pop ebx
    pop eax

    ret
vert ENDP

tri3 Proc

    push eax
    push ebx
    push ecx

    L1:
    push ecx
    call hor
    inc eax
    inc ebx
    pop ecx
    Loop L1

    pop eax
    pop ebx
    pop ecx

ret
tri3 endp

;/////////////////////////////////////////////////////COL

up_WALL_COLLISION PROC
    movzx ecx, xpos
    movzx edx, ypos
    dec edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
mov current_move,0
mov timer,200
    mov dl, 1 ; Collision with wall
    ret

up_WALL_COLLISION ENDP

DOWN_WALL_COLLISION PROC
    movzx ecx, xpos
    movzx edx, ypos
    inc edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
mov current_move,0
mov timer,200
    mov dl, 1 ; Collision with wall
    ret

DOWN_WALL_COLLISION ENDP

Right_WALL_COLLISION PROC
    movzx ecx, xpos
    movzx edx, ypos
    inc ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
mov current_move,0
mov timer,200
    mov dl, 1 ; Collision with wall
    ret

right_WALL_COLLISION ENDP


left_WALL_COLLISION PROC
    movzx ecx, xpos
    movzx edx, ypos
    dec ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
mov current_move,0
mov timer,200
    mov dl, 1 ; Collision with wall
    ret

left_WALL_COLLISION ENDP

ghost1_up_COLLISION PROC
    movzx ecx, G1xpos
    movzx edx, G1ypos
    dec edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
mov current_move,0
mov timer1,200
    mov dl, 1 ; Collision with wall
    ret

ghost1_up_COLLISION ENDP

ghost1_down_COLLISION PROC
    movzx ecx, G1xpos
    movzx edx, G1ypos
    inc edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
mov current_move,0
mov timer1,200
    mov dl, 1 ; Collision with wall
    ret

ghost1_down_COLLISION ENDP

ghost1_right_COLLISION PROC
    movzx ecx, G1xpos
    movzx edx, G1ypos
    inc ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
mov current_move,0
mov timer1,200
    mov dl, 1 ; Collision with wall
    ret

ghost1_right_COLLISION ENDP


ghost1_left_COLLISION PROC
    movzx ecx, G1xpos
    movzx edx, G1ypos
    dec ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
mov current_move,0
mov timer1,200
    mov dl, 1 ; Collision with wall
    ret

ghost1_left_COLLISION ENDP


level2_maze PROC 

    mov dl,32
    mov dh,1
    call gotoxy
    mov al,"#"
    call writeChar

    mov dl,51
    mov ecx,5
    L1:
    mov dh,0
    call nullify
    mov dh,29
    call nullify
    dec dl
    loop l1

    mov eax,5
    mov ebx,2
    mov ecx,5
    mov edx,4
    call rect

    mov eax,40
    mov ebx,1
    mov ecx,4
    mov edx,7
    call rect
    add ebx,24
    call rect
    add eax,12
    call rect
    sub ebx,24
    call rect
    mov eax,1
    mov ebx,28
    mov ecx,10
    call tri2


    mov eax,13
    mov ebx,0
    mov ecx,4
    call vert
    inc eax
    call vert

    mov eax,6
    mov ebx,9
    call box1
    inc ebx
    inc ebx
    call box1

    mov eax,18
    mov ebx,2
    call Tshape


    mov eax,15
    mov ebx,8
    call Lshape

    mov eax,0
    mov ebx,12
    mov ecx,15
    call doubleHor

    mov eax,30
    mov ebx,1
    mov ecx,8
    call doublevert

    mov eax,24
    mov ebx,8
    mov ecx,6
    call hor

    mov eax,36
    mov ebx,5
    mov ecx,4
    call Rshape

    mov eax,34
    mov ebx,2
    mov ecx,2
    call LRSHAPE

    mov eax,1
    mov ebx,15
    mov ecx,7
    call doublehor

    mov eax ,11
    mov ebx,15
    mov ecx,6
    call doublevert

    mov eax ,15
    mov ebx,12
    mov ecx,6
    call doublevert

    mov eax ,3
    mov ebx,20
    mov ecx,10
    call doublehor

    mov eax,10
    mov ebx,22
    call Tshape

    mov eax,30
    mov ecx,10
    call doublevert

    mov eax,22
    mov ecx,10
    mov ebx, 26
    call hor


    mov eax,22
    mov ebx,18
    mov ecx,8
    mov edx,5
    call rect


    mov eax,40
    mov ebx,12
    mov ecx,20
    call doubleHor

    mov eax,32
    mov ebx,10
    call Lshape

    mov eax,27
    mov ebx,18
    mov ecx,40
    call doublehor

    mov eax,50
    sub ebx,2
    mov ecx,2
    call doublehor
    add eax,4
    sub ebx,2
    call doublehor

        mov eax,50
        mov ebx,18
        call Lshape

        sub eax,10
        call RLshape

        mov eax,52
        mov ebx,5
        mov ecx,4
        call doublevert

        mov eax,49
        mov ebx,7
        mov ecx,4
        call hor
        inc ebx
        call hor

        mov eax,44
        mov ebx,8
        mov ecx,4
        call doublevert


        mov eax,60 
        call Lshape

        mov eax,64
        mov ebx,1
        call box1

        mov eax,68
        mov ebx,1
        call box1
    
        mov eax,62
        mov ebx,2
        call box1    
        mov eax,64
        mov ebx,24
        call box1    
        mov eax,62
        mov ebx,27
        call box1    
        
        mov eax,62
        mov ebx,24
        mov ecx,5
        call doublehor

        mov eax,68
        mov ebx,27
        mov ecx,5
        L12:
        cmp ebx,19
        je be
        call box1 
        be:
        sub ebx,4
        Loop L12

        mov eax,27
        mov ebx,13
        call box1
        dec eax
        dec eax
        dec ebx
        dec ebx
        call box1

        mov eax,63
        mov ebx,22
        call box1
        dec eax
        dec eax
        dec ebx
        dec ebx
        call box1

        mov eax,65
        mov ebx,8
        mov ecx,5
        call hor

        mov eax,64
        mov ebx,9
        mov ecx,4
        call hor

        mov eax,60
        mov ebx,5
        mov ecx,5
        call hor

        mov eax,59
        mov ebx,6
        mov ecx,4
        call hor

        mov eax,33
        mov ebx,28
        mov ecx,5
        call tri1

        add eax,6
        sub ebx,5
        mov ecx,5
        call tri2

        mov eax,33
        sub ebx,3
        mov ecx,6
        call doublehor

        mov eax,30
        mov ebx,17
        call box1
        add eax,25
        call box1
        sub eax, 10
        dec ebx
        call box1

        mov eax,65
        mov ebx,4
        mov ecx,3
        call vert

        mov eax,69
        mov ebx,3
        mov ecx,1
        call vert

        mov eax,66
        mov ebx,2
        mov ecx,1
        call HOR

    mov eax,51
    mov ebx,7
    call nullify2
    call update_grid
    inc ebx
    call nullify2
    call update_grid

    mov eax,69
        call nullify2
    call update_grid



    ret
level2_maze ENDP
ghost2_up_COLLISION PROC
    movzx ecx, G2xpos
    movzx edx, G2ypos
    dec edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer2, 200
    mov dl, 1 ; Collision with wall
    ret

ghost2_up_COLLISION ENDP

ghost2_down_COLLISION PROC
    movzx ecx, G2xpos
    movzx edx, G2ypos
    inc edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer2, 200
    mov dl, 1 ; Collision with wall
    ret

ghost2_down_COLLISION ENDP

ghost2_right_COLLISION PROC
    movzx ecx, G2xpos
    movzx edx, G2ypos
    inc ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer2, 200
    mov dl, 1 ; Collision with wall
    ret

ghost2_right_COLLISION ENDP

ghost2_left_COLLISION PROC
    movzx ecx, G2xpos
    movzx edx, G2ypos
    dec ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer2, 200
    mov dl, 1 ; Collision with wall
    ret

ghost2_left_COLLISION ENDP


ghost3_up_COLLISION PROC
    movzx ecx, G3xpos
    movzx edx, G3ypos
    dec edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer3, 200
    mov dl, 1 ; Collision with wall
    ret

ghost3_up_COLLISION ENDP

ghost3_down_COLLISION PROC
    movzx ecx, G3xpos
    movzx edx, G3ypos
    inc edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer3, 200
    mov dl, 1 ; Collision with wall
    ret

ghost3_down_COLLISION ENDP

ghost3_right_COLLISION PROC
    movzx ecx, G3xpos
    movzx edx, G3ypos
    inc ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer3, 200
    mov dl, 1 ; Collision with wall
    ret

ghost3_right_COLLISION ENDP

ghost3_left_COLLISION PROC
    movzx ecx, G3xpos
    movzx edx, G3ypos
    dec ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer3, 200
    mov dl, 1 ; Collision with wall
    ret

ghost3_left_COLLISION ENDP



DrawGhost2 PROC
    ; draw player at (xPos,yPos):

    mov dl, G2xPos
    mov dh, G2yPos
    call Gotoxy
    mov al, "2"
    call WriteChar
    ret
DrawGhost2 ENDP

Ghost2_move PROC
    start_:
    cmp currentG2, 1
    je l1

    cmp currentG2,2
    je l2

    cmp currentG2,3
    je l3

    cmp currentG2,4
    je l4

    ret

    l1:
    cmp timer2, 400
    jl l1end
    cmp g2ypos ,1
    je zaend
    call ghost2_up_COLLISION
    cmp dl,1
    je Zaend
    call updateghost2
    dec g2ypos
    mov timer2,0
    call drawghost2
    l1end:
    ret

    l2:
    cmp timer2, 400
    jl l2end
    cmp g2ypos ,28
    je zaend
    call ghost2_down_COLLISION
    cmp dl,1
    je Zaend
    call updateghost2
    inc g2ypos
    mov timer2,0
    call drawghost2
    l2end:
    ret


    l3:
    cmp timer2, 200
    jl l3end
    cmp g2xpos ,69
    je zaend
    call ghost2_right_COLLISION
    cmp dl,1
    je Zaend
    call updateghost2
    inc g2xpos
    mov timer2,0
    call drawghost2
    l3end:
    ret


    l4:
    cmp timer2, 200
    jl l4end
    cmp g2xpos ,1
    je zaend
    call ghost2_left_COLLISION
    cmp dl,1
    je Zaend
    call updateghost2
    dec g2xpos
    mov timer2,0
    call drawghost2
    l4end:
    ret

    zaEND:
    mov  eax,4  ;
    call RandomRange ;
    inc eax
    mov currentG2,al
    ret
Ghost2_move ENDP

g2_check PROC
    movzx ecx, g2xpos
    movzx edx, g2ypos
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 2
    je collidedWithWall

collisionEnd:
    xor cl, cl
    ret

collidedWithWall:
    mov cl, 1
    ret

g2_check ENDP

UpdateGhost2 PROC
    mov dl, G2xPos
    mov dh, G2yPos
    call Gotoxy
    push cx
    call g2_check
    cmp cl, 1
    je yes
    mov al, " "
    call WriteChar
    pop cx
    ret

        cmp level,2
    jne yes2
    yes:

        cmp g2xpos,1
    jne yes1
    cmp g2ypos,14
    jne yes1
    mov al,"T"
    call writechar
    pop cx
    ret
    yes1:
        cmp g2xpos,67
    jne yes2
    cmp g2ypos,1
    jne yes2
    mov al,"T"
    call writechar
    pop cx
    ret
    yes2:

    mov al,fxpos
    cmp G2xpos,al
    jne l1
        mov al,fypos
    cmp G2ypos,al
    jne L1
        mov al, "@"
    call WriteChar
        pop cx
    ret
    L1:
    mov al,"."
    call writechar
    pop cx
    ret
UpdateGhost2 ENDP

DrawGhost3 PROC
    ; draw player at (xPos,yPos):

    mov dl, G3xPos
    mov dh, G3yPos
    call Gotoxy
    mov al, "3"
    call WriteChar
    ret
DrawGhost3 ENDP


Ghost3_move PROC
    start_:
    cmp currentG3, 1
    je l1

    cmp currentG3, 2
    je l2

    cmp currentG3, 3
    je l3

    cmp currentG3, 4
    je l4

    ret

    l1:
        mov dx,hy
    cmp timer3, dx
    jl l1end
    cmp g3ypos, 1
    je zaend
    call ghost3_up_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost3
    dec g3ypos
    mov timer3, 0
    call drawghost3
    l1end:
    ret

    l2:
        mov dx,hy
    cmp timer3, dx
    jl l2end
    cmp g3ypos, 28
    je zaend
    call ghost3_down_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost3
    inc g3ypos
    mov timer3, 0
    call drawghost3
    l2end:
    ret

    l3:
        mov dx,hx
    cmp timer3, dx
    jl l3end
    cmp g3xpos, 69
    je zaend
    call ghost3_right_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost3
    inc g3xpos
    mov timer3, 0
    call drawghost3
    l3end:
    ret

    l4:
        mov dx,hx
    cmp timer3, dx
    jl l4end
    cmp g3xpos, 1
    je zaend
    call ghost3_left_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost3
    dec g3xpos
    mov timer3, 0
    call drawghost3
    l4end:
    ret

    zaEND:
    mov eax, 4
    call RandomRange
    inc eax
    mov currentG3, al
    ret
Ghost3_move ENDP

g3_check PROC
    movzx ecx, g3xpos
    movzx edx, g3ypos
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 2
    je collidedWithWall

collisionEnd:
    xor cl, cl
    ret

collidedWithWall:
    mov cl, 1
    ret

g3_check ENDP

UpdateGhost3 PROC
    mov dl, G3xPos
    mov dh, G3yPos
    call Gotoxy
    push cx
    call g3_check
    cmp cl, 1
    je yes
    mov al, " "
    call WriteChar
    pop cx
    ret
        cmp level,2
    jne yes2
    yes:

        cmp g3xpos,1
    jne yes1
    cmp g3ypos,14
    jne yes1
    mov al,"T"
    call writechar
    pop cx
    ret
    yes1:
        cmp g3xpos,67
    jne yes2
    cmp g3ypos,1
    jne yes2
    mov al,"T"
    call writechar
    pop cx
    ret
    yes2:

    mov al,fxpos
    cmp G3xpos,al
    jne l1
        mov al,fypos
    cmp G3ypos,al
    jne L1
        mov al, "@"
    call WriteChar
        pop cx
    ret
    l1:
    mov al, "."
    call WriteChar
    pop cx
    ret
UpdateGhost3 ENDP

ghost_col PROC


        mov dl , g1xpos
        cmp xpos,dl
        jne no
        mov dl , g1ypos
        cmp ypos,dl
        je COLLISION_YES
         cmp level,0
         jg no
         ret
        no:
        mov dl , g2xpos
        cmp xpos,dl
        jne no1
        mov dl , g2ypos
        cmp ypos,dl
        je COLLISION_YES
        no1:
        mov dl , g3xpos
        cmp xpos,dl
        jne no2
        mov dl , g3ypos
        cmp ypos,dl
        je COLLISION_YES
        jmp no2
        collision_yes:
        dec lives
        mov dl,75
        mov dh,9
        call Gotoxy
        mov edx,OFFSET strlives
        call WriteString
        mov al,LIVES
        call WriteInt
        mov xpos,20
        mov ypos,20
        no2:
         cmp level,1
         jg no3
         ret
         no3:
         mov dl , g4xpos
        cmp xpos,dl
        jne no4
        mov dl , g4ypos
        cmp ypos,dl
        je COLLISION_YES2
        no4:
        mov dl , g5xpos
        cmp xpos,dl
        jne no5
        mov dl , g5ypos
        cmp ypos,dl
        je COLLISION_YES2
        jmp no5
        collision_yes2:
        dec lives
        mov dl,75
        mov dh,9
        call Gotoxy
        mov edx,OFFSET strlives
        call WriteString
        mov al,LIVES
        call WriteInt
        mov xpos,20
        mov ypos,20

        no5:
        ret
ghost_col ENDP


DrawGhost1 PROC
    ; draw player at (xPos,yPos):

    mov dl,G1xPos
    mov dh,G1yPos
    call Gotoxy
    mov al,"1"
    call WriteChar
    ret
DrawGhost1 ENDP

Ghost1_move PROC
    start_:
    cmp currentG1, 1
    je l1

    cmp currentG1, 2
    je l2

    cmp currentg1, 3
    je l3

    cmp currentg1, 4
    je l4

    ret

    l1:
    mov dx,hx
    cmp timer1, dx
    jl l1end
    cmp g1ypos ,1
    je zaend
    call ghost1_up_COLLISION
    cmp dl,1
    je Zaend
    call updateghost1
    dec g1ypos
    mov timer1, 0
    call drawghost1
    l1end:
    ret

    l2:
        mov dx,hx
    cmp timer1, dx
    jl l2end
    cmp g1ypos ,28
    je zaend
    call ghost1_down_COLLISION
    cmp dl,1
    je Zaend
    call updateghost1
    inc g1ypos
    mov timer1, 0
    call drawghost1
    l2end:
    ret

    l3:
        mov dx,hy
    cmp timer1, dx
    jl l3end
    cmp g1xpos ,69
    je zaend
    call ghost1_right_COLLISION
    cmp dl,1
    je Zaend
    call updateghost1
    inc g1xpos
    mov timer1, 0
    call drawghost1
    l3end:
    ret

    l4:
    mov dx,hy
    cmp timer1, dx
    jl l4end
    cmp g1xpos ,1
    je zaend
    call ghost1_left_COLLISION
    cmp dl,1
    je Zaend
    call updateghost1
    dec g1xpos
    mov timer1, 0
    call drawghost1
    l4end:
    ret

    zaEND:
    mov  eax,4  ;
    call RandomRange ;
    inc eax
    mov currentg1, al
    ret
Ghost1_move ENDP

g1_check PROC
    movzx ecx, g1xpos
    movzx edx, g1ypos
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 2
    je collidedWithWall

    
collisionEnd:
    xor cl,cl
    ret

collidedWithWall:
mov cl,1
        ret

g1_check ENDP

UpdateGhost1 PROC
    mov dl,G1xPos
    mov dh,G1yPos
    call Gotoxy
    push cx
    call g1_check
    cmp cl,1
    je yes
    mov al," "
    call WriteChar
    pop cx
    ret

    yes:

    cmp g1xpos,1
    jne yes1
    cmp g1ypos,14
    jne yes1
    mov al,"T"
    call writechar
    pop cx
    ret
    cmp level,2
    jne yes2
    yes1:
        cmp g1xpos,67
    jne yes2
    cmp g1ypos,1
    jne yes2
    mov al,"T"
    call writechar
    pop cx
    ret
    yes2:
        mov al,fxpos
    cmp G1xpos,al
    jne l1
        mov al,fypos
    cmp G1ypos,al
    jne L1
        mov al, "@"
    call WriteChar
    pop cx
    ret
    l1:
    mov al,"."
    call WriteChar
    pop cx
    ret
UpdateGhost1 ENDP

level1_maze PROC

   mov eax,13
   mov ebx,7 
   mov ecx,8
   call hor
   add ebx,8
   call hor
    sub ebx,8
    mov ecx,9
    call vert
    add eax,8
    call vert

    mov eax,lightblue
call settextcolor
    
mov eax ,25
mov ebx,7
mov ecx,10
call hor
mov eax,35
mov ebx,7
mov ecx,9
call vert
mov eax,40
mov ebx,7
mov ecx,7
call hor
add ebx,4
call hor
add ebx,4
call hor
mov ebx,7
mov ecx,4
call vert
mov eax,46
mov ebx,11
mov ecx,4
call vert

mov eax,30
mov ebx,2
mov ecx,1
call hor

mov eax,40
call hor


ret
level1_maze ENDP

level_maze PROC

mov ecx,200
l1:
push ecx
    call randomize
    mov eax,25
    call randomrange
    inc eax
    mov ebx,eax
    mov eax,5
    call randomrange
    mov ecx,6
    mov edx,6
    mov edx,eax
    mov eax,50
    add eax,10
    call randomrange
    call random_gen

pop ecx
loop l1
    
    mov ecx,27
    mov eax,10
    mov ebx,2
    l2:
    mov eax,10
    call nullify2
    call update_grid
    mov eax,30
    call nullify2
    call update_grid
    mov eax,40
    call nullify2
    call update_grid

    inc ebx
    loop l2

    mov eax,20
    mov ebx,1
    mov ecx,27

    l3:
    cmp ebx,20
    je en_
    call nullify2
    en_:
    call update_grid
    inc ebx  
    loop l3

   mov eax,1
    mov ebx,20
    mov ecx,65

    l4:
    cmp eax,20
    je en1_
    call nullify2
    en1_:
    call update_grid
    inc eax  
    loop l4


ret
level_maze ENDP

random_gen PROC
push eax
call randomize
    mov eax,11
    call randomrange
    cmp eax,0
    jg l1
    pop eax
    call tri1
    ret
    l1:
    cmp eax,1
    jg l2
    pop eax
    call tri2
    ret
    l2:
    cmp eax,2
    jg l3
    pop eax
    call doublehor
    ret
    l3:
    cmp eax,3
    jg l4
    pop eax
    call RLshape
    ret
    l4:
    cmp eax,4
    jg l5
    pop eax
    call Lshape
    ret
    l5:
    cmp eax,5
    jg l6
    pop eax
    call Rshape
    ret
    l6:
    cmp eax,6
    jg l7
    pop eax
    call lRshape
    ret
    l7:
    cmp eax,7
    jg l8
    pop eax
    call tshape
    ret
    l8:
    cmp eax,8
    jg l9
    pop eax
    call LRshape
    ret
    l9:
    cmp eax,9
    jg l10
    pop eax
    call doublehor
    ret
    l10:
    cmp eax,10
    jg l11
    pop eax
    call doublevert
    ret
    l11:

pop eax
ret
random_gen ENDP


NULLIFY PROC
push dx
    call Gotoxy
    mov al, " "
    call writechar
    pop dx
ret
NULLIFY ENDP


UPDATE_GRID1 PROC
    push edx
    mov edx, eax
    imul edx, 30
    add edx, ebx
    mov BYTE PTR [esi + edx], 1
    pop edx
    ret
UPDATE_GRID1 ENDP


UPDATE_GRID2 PROC
    push edx
    mov edx, eax
    imul edx, 30
    add edx, ebx
    mov BYTE PTR [esi + edx],2
    pop edx
    ret
UPDATE_GRID2 ENDP

UPDATE_GRID PROC
    push edx
    mov edx, eax
    imul edx, 30
    add edx, ebx
    mov  byte ptr[esi + edx],0
    pop edx
    ret
UPDATE_GRID ENDP

check3 PROC
    push edx
    mov edx, eax
    imul edx, 30
    add edx, ebx
    mov al,[esi + edx]
    pop edx
    ret
check3 ENDP

coin_collision PROC

    movzx ecx, xpos
    movzx edx, ypos
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 2
    je collidedWithWall

collisionEnd:

    ret

collidedWithWall:
        movzx eax,xpos
        movzx ebx,ypos
        call update_grid
        dec num_coins
        inc score

        mov eax,yellow
        call settextcolor
        mov dl,75
        mov dh,5
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov ax,score
        call WriteInt

        ret
coin_collision ENDP

coin_gen_ PROC
        mov eax,white
        call SetTextColor
mov eax,1
mov ebx,2
mov ecx,27
L2:
push eax
push ecx
mov ecx,35
cmp ebx,29
jg l2_end
L1:
cmp eax,70
jg l1_end
mov temp,al
call check3
cmp al,1
je l1_not
mov al,temp
mov dl,al
mov dh,bl
call gotoxy
push ax
inc num_coins
    mov al,"."
    call WriteChar
pop ax
call update_grid2
l1_not:
mov al,temp
add eax,2
l1_end:

Loop L1
l2_end:
pop ecx
pop eax
inc ebx

Loop L2

ret
coin_gen_ ENDP

NULLIFY2 PROC
    push eax
    push ebx
    mov dl, al
    mov dh, bl
    call Gotoxy
    mov al, " "
    call writechar
    pop ebx
    pop eax
    ret
NULLIFY2 ENDP

reset_gen PROC
    mov eax, 1
    mov ebx, 1
    mov ecx, 28 ; Rows
L1:
    push ecx
    mov ecx, 69 ; Columns
L2:
    call NULLIFY2
    call UPDATE_GRI ; Assuming you want to update the grid to 0
    inc eax
    Loop L2
    mov eax,1
    pop ecx
    inc ebx
    Loop L1
    ret
reset_gen ENDP

UPDATE_GRI PROC
    push edx
    mov edx, eax
    imul edx, 30
    add edx, ebx
    mov byte ptr [esi + edx], 0
    pop edx
    ret
UPDATE_GRI ENDP




conditional_warp_UP PROC
cmp level,2
jne endlo
cmp ypos,1
jne endlo
cmp xpos,51
jg endlo
cmp xpos,47
jl endlo

    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar

mov ypos,29
mov dl,1
ret

endlo:
xor dl,dl
ret
conditional_warp_UP ENDP

conditional_warp_down PROC
cmp level,2
jne endlo
cmp ypos,28
jne endlo
cmp xpos,51
jg endlo
cmp xpos,47
jl endlo

    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar

mov ypos,1
mov dl,1
ret

endlo:
xor dl,dl
ret
conditional_warp_down ENDP

DrawGhost5 PROC
    ; draw player at (xPos,yPos):
    mov dl, G5xPos
    mov dh, G5yPos
    call Gotoxy
    mov al, "5"
    call WriteChar
    ret
DrawGhost5 ENDP

Ghost5_move PROC
    start_:
    cmp currentG5, 1
    je l1

    cmp currentG5, 2
    je l2

    cmp currentG5, 3
    je l3

    cmp currentG5, 4
    je l4

    ret

    l1:
    mov dx, hx
    cmp timer5, dx
    jl l1end
    cmp G5yPos, 1
    je zaend
    call ghost5_up_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost5
    dec G5yPos
    mov timer5, 0
    call drawghost5
    l1end:
    ret

    l2:
    mov dx, hx
    cmp timer5, dx
    jl l2end
    cmp G5yPos, 28
    je zaend
    call ghost5_down_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost5
    inc G5yPos
    mov timer5, 0
    call drawghost5
    l2end:
    ret

    l3:
    mov dx, hy
    cmp timer5, dx
    jl l3end
    cmp G5xPos, 69
    je zaend
    call ghost5_right_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost5
    inc G5xPos
    mov timer5, 0
    call drawghost5
    l3end:
    ret

    l4:
    mov dx, hy
    cmp timer5, dx
    jl l4end
    cmp G5xPos, 1
    je zaend
    call ghost5_left_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost5
    dec G5xPos
    mov timer5, 0
    call drawghost5
    l4end:
    ret

    zaEND:
    mov eax, 4
    call RandomRange
    inc eax
    mov currentG5, al
    ret
Ghost5_move ENDP

g5_check PROC
    movzx ecx, G5xPos
    movzx edx, G5yPos
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 2
    je collidedWithWall

collisionEnd:
    xor cl, cl
    ret

collidedWithWall:
    mov cl, 1
    ret

g5_check ENDP

UpdateGhost5 PROC
    mov dl, G5xPos
    mov dh, G5yPos
    call Gotoxy
    push cx
    call g5_check
    cmp cl, 1
    je yes
    mov al, " "
    call WriteChar
    pop cx
    ret

    yes:
    cmp G5xPos, 1
    jne yes1
    cmp G5yPos, 14
    jne yes1
    mov al, "T"
    call writechar
    pop cx
    ret

    cmp level, 2
    jne yes2

    yes1:
    cmp G5xPos, 67
    jne yes2
    cmp G5yPos, 1
    jne yes2
    mov al, "T"
    call writechar
    pop cx
    ret

    yes2:
    mov al, fxpos
    cmp G5xPos, al
    jne l1
    mov al, fypos
    cmp G5yPos, al
    jne l1
    mov al, "@"
    call WriteChar
    pop cx
    ret

    l1:
    mov al, "."
    call WriteChar
    pop cx
    ret
UpdateGhost5 ENDP

DrawGhost4 PROC
    ; draw player at (xPos,yPos):
    mov dl, G4xPos
    mov dh, G4yPos
    call Gotoxy
    mov al, "4"
    call WriteChar
    ret
DrawGhost4 ENDP

Ghost4_move PROC
    start_:
    cmp currentG4, 1
    je l1

    cmp currentG4, 2
    je l2

    cmp currentG4, 3
    je l3

    cmp currentG4, 4
    je l4

    ret

    l1:
    mov dx, hx
    cmp timer4, dx
    jl l1end
    cmp G4yPos, 1
    je zaend
    call ghost4_up_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost4
    dec G4yPos
    mov timer4, 0
    call drawghost4
    l1end:
    ret

    l2:
    mov dx, hx
    cmp timer4, dx
    jl l2end
    cmp G4yPos, 28
    je zaend
    call ghost4_down_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost4
    inc G4yPos
    mov timer4, 0
    call drawghost4
    l2end:
    ret

    l3:
    mov dx, hy
    cmp timer4, dx
    jl l3end
    cmp G4xPos, 69
    je zaend
    call ghost4_right_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost4
    inc G4xPos
    mov timer4, 0
    call drawghost4
    l3end:
    ret

    l4:
    mov dx, hy
    cmp timer4, dx
    jl l4end
    cmp G4xPos, 1
    je zaend
    call ghost4_left_COLLISION
    cmp dl, 1
    je Zaend
    call updateghost4
    dec G4xPos
    mov timer4, 0
    call drawghost4
    l4end:
    ret

    zaEND:
    mov eax, 4
    call RandomRange
    inc eax
    mov currentG4, al
    ret
Ghost4_move ENDP

g4_check PROC
    movzx ecx, G4xPos
    movzx edx, G4yPos
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 2
    je collidedWithWall

collisionEnd:
    xor cl, cl
    ret

collidedWithWall:
    mov cl, 1
    ret

g4_check ENDP

UpdateGhost4 PROC
    mov dl, G4xPos
    mov dh, G4yPos
    call Gotoxy
    push cx
    call g4_check
    cmp cl, 1
    je yes
    mov al, " "
    call WriteChar
    pop cx
    ret

    yes:
    cmp G4xPos, 1
    jne yes1
    cmp G4yPos, 14
    jne yes1
    mov al, "T"
    call writechar
    pop cx
    ret

    cmp level, 2
    jne yes2

    yes1:
    cmp G4xPos, 67
    jne yes2
    cmp G4yPos, 1
    jne yes2
    mov al, "T"
    call writechar
    pop cx
    ret

    yes2:
    mov al, fxpos
    cmp G4xPos, al
    jne l1
    mov al, fypos
    cmp G4yPos, al
    jne l1
    mov al, "@"
    call WriteChar
    pop cx
    ret

    l1:
    mov al, "."
    call WriteChar
    pop cx
    ret
UpdateGhost4 ENDP



ghost4_up_COLLISION PROC
    movzx ecx, G4xpos
    movzx edx, G4ypos
    dec edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer4, 200
    mov dl, 1 ; Collision with wall
    ret

ghost4_up_COLLISION ENDP

ghost4_down_COLLISION PROC
    movzx ecx, G4xpos
    movzx edx, G4ypos
    inc edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer4, 200
    mov dl, 1 ; Collision with wall
    ret

ghost4_down_COLLISION ENDP

ghost4_right_COLLISION PROC
    movzx ecx, G4xpos
    movzx edx, G4ypos
    inc ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer4, 200
    mov dl, 1 ; Collision with wall
    ret

ghost4_right_COLLISION ENDP

ghost4_left_COLLISION PROC
    movzx ecx, G4xpos
    movzx edx, G4ypos
    dec ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer4, 200
    mov dl, 1 ; Collision with wall
    ret

ghost4_left_COLLISION ENDP


ghost5_up_COLLISION PROC
    movzx ecx, G5xpos
    movzx edx, G5ypos
    dec edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer5, 200
    mov dl, 1 ; Collision with wall
    ret

ghost5_up_COLLISION ENDP

ghost5_down_COLLISION PROC
    movzx ecx, G5xpos
    movzx edx, G5ypos
    inc edx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer5, 200
    mov dl, 1 ; Collision with wall
    ret

ghost5_down_COLLISION ENDP

ghost5_right_COLLISION PROC
    movzx ecx, G5xpos
    movzx edx, G5ypos
    inc ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer5, 200
    mov dl, 1 ; Collision with wall
    ret

ghost5_right_COLLISION ENDP

ghost5_left_COLLISION PROC
    movzx ecx, G5xpos
    movzx edx, G5ypos
    dec ecx 
    mov ebx, ecx
    imul ebx, 30
    add ebx, edx
    mov al, BYTE PTR [esi + ebx]
    cmp al, 1
    je collidedWithWall

collisionEnd:
    xor dl, dl ; No collision
    ret

collidedWithWall:
    mov current_move, 0
    mov timer5, 200
    mov dl, 1 ; Collision with wall
    ret

ghost5_left_COLLISION ENDP


calc_score PROC
    push ax
    cmp score_size, 1
    jne L2
    mov ax,0
    mov al,arr_score
    sub al,"0"
    mov score1,ax
    jmp l5
    L2:
    cmp score_size,2
    jne L3
    mov ax,0
    mov al,arr_score
    sub al,"0"
    imul ax,10
    mov score1,ax
    movzx ax,arr_score+1
    sub al,"0"
    add score1,ax
    jmp l5
    L3:
    cmp score_size,3
    jne L4    
     mov ax,0
    mov al,arr_score
    sub al,"0"
    imul ax,100
    mov score1,ax
    movzx ax,arr_score+1
    sub al,"0"
    imul ax,10
    add score1,ax
    movzx ax,arr_score+2
    sub ax,"0"
    add score1,ax
    jmp l5
    l4:
     mov ax,0
    mov al,arr_score
    sub al,"0"
    imul ax,1000
    mov score1,ax
    movzx ax,arr_score+1
    sub al,"0"
    imul ax,100
    add score1,ax
    movzx ax,arr_score+2
    sub ax,"0"
    imul ax,10
    add score1,ax
        movzx ax,arr_score+3
    sub ax,"0"
    add score1,ax
    l5:
    pop ax
    ret
calc_score ENDP

check_score PROC
    push esi
    push edi
    mov ecx,0
    mov edi,offset arr_name
    mov bool_foo ,0
    l1:
    mov al," "
    cmp [esi],al
    jne l2 
    inc bool_foo
    inc esi
    mov edi, offset arr_score

    l2:
    cmp bool_foo , 0
    jne l3
    mov al,[esi]
    mov [edi],al
    inc name_size

    l3:
    cmp bool_foo , 1
    jne l4
    mov al,[esi]
    mov [edi],al
    inc score_size

    l4:
    inc esi
    inc edi
    cmp bool_foo,2
    jne end_
    mov ecx,1
    end_:
    JECXZ l1
    pop edi
    pop esi
    call calc_score
ret
check_SCORE ENDP

add_name proc
push esi
push edi
    mov esi,edi
    mov edi,offset name1
    l2:
    mov al,[edi]
    mov [esi],al
    inc esi 
    inc edi
    mov al,0
    cmp [edi],al
    jne l2
    pop edi
    pop esi
    ret
add_name ENDP

add_score proc
push esi
push edi
mov esi,edi
    mov al," "
    mov [esi],al
    inc esi
     mov ax, score
     mov dx,score 

     mov bl,100
     div bl
     movzx ax,al
     mov bl,10
     div bl
     movzx ax,al
     add al,"0"
    mov [esi],al
    inc esi

    mov ax,dx
    mov bl,10
    div bl
    movzx ax,al

    mov bl,10
    div bl
    mov bh,ah
    movzx ax,al
    div bl
    add ah,"0"
    mov [esi],ah
    inc esi
    add bh,"0"
    mov [esi],bh
    inc esi
    mov ax,score
    div bl
        add ah,"0"
    mov [esi],ah
    inc esi


    l3:

        pop edi
    pop esi
    ret
add_score ENDP

copy_buff PROC
mov esi,offset buffer
mov edi,offset buffer2
mov ecx,buffer_size

L1:
cmp ecx,buffer_size
je llll
cmp buffer3,1
je l13
mov al,0ah
cmp [esi],al
jne l2
mov al,[esi]
mov [edi],al
inc esi
inc edi
dec ecx
llll:
push ecx
call check_score
pop ecx
mov ax,score1
cmp ax,score
jg l2
    l11:
    call add_name 
    loop4:
    mov al,0
    cmp [edi],al
    je l5
    inc edi
    jmp loop4
    l5:
    call add_score
    loop5:
    mov al,0
    cmp [edi],al
    je loop6
    inc edi
    jmp loop5
    loop6:
    mov bl," "
    mov [edi],bl
    inc edi
    mov bl,level
    add bl,"0"
    mov [edi],bl
    inc edi
    mov bl,0ah
    mov [edi],bl
    inc edi
    mov buffer3,1
    jmp end_
    l3:
    l8:


l2:
    mov al,32
    cmp [esi],al
    je l12
    jmp l13
    l12:
    mov al,32
    cmp [esi+1],al
    je l11
    l13:
    mov al,[esi]
    mov [edi],al
    inc edi
    inc esi
end_:
dec ecx
cmp ecx,0
jne l1

ret
copy_buff endP


file_handling PROC
   
    mov al,32
    cmp buffer,al
    jne lll
    
    mov edi,offset buffer2
    call add_name

    dec edi
    ll:
    inc edi
    mov al,0
    cmp [edi],al
    jne ll
    
        call add_score


      dec edi
    l2:
    inc edi
    mov al,0
    cmp [edi],al
    jne l2
    
    mov al," "
    mov [edi],al
    inc edi
    
    mov al,level
    add al,"0"
    mov [edi],al
    inc edi
      mov al,0ah
    mov [edi],al
    inc edi

    jmp llll

    lll:
    mov eax, fileHandle
    call CloseFile
    
    call copy_buff
     mov edx,OFFSET filename
    call createoutputfile
    mov filehandle,eax
    mov edx,OFFSET buffer2
    mov ecx,buffer_size+30
    call WriteToFile
    mov eax, fileHandle
    call CloseFile

    ret

        llll:
            mov eax, fileHandle
    call CloseFile
     mov edx,OFFSET filename
    call createoutputfile
    mov filehandle,eax
    mov edx,OFFSET buffer2
    mov ecx,buffer_size+30
    call WriteToFile
    mov eax, fileHandle
    call CloseFile

    ret
file_handling endp

drawpacman proc
mov eax,yellow
call settextcolor

mov al,0
mov ah,0
mov edx,offset pacman
mov edi,offset pacman
l1:
mov dh,ah
mov dl,al
call gotoxy
mov edx,edi
call writestring
dec edi
l2:
inc edi
mov bl,0
cmp [edi],bl
jne l2
inc ah
inc edi
mov bl,0
cmp [edi],bl
jne l1

ret
drawpacman endp


drawpacman2 proc
mov eax,yellow
call settextcolor

mov al,0
mov ah,0
mov edx,offset pacman1
mov edi,offset pacman1
l1:
mov dh,ah
mov dl,al
call gotoxy
mov edx,edi
call writestring
dec edi
l2:
inc edi
mov bl,0
cmp [edi],bl
jne l2
inc ah
inc edi
mov bl,0
cmp [edi],bl
jne l1

mov eax,white
call settextcolor
mov dl,32
mov dh,14
call gotoxy
mov edx,offset mouth
call writestring

mov dl,32
mov dh,15
call gotoxy
mov edx,offset mouth
call writestring


mov dl,32
mov dh,13
call gotoxy
mov edx,offset mouth
call writestring


mov dl,32
mov dh,16
call gotoxy
mov edx,offset mouth
call writestring

ret
drawpacman2 endp




draw_fruit PROC
push eax
push edx
mov eax,white 
call settextcolor
mov eax,edx
call gotoxy
mov edx,offset fruit_a
call writestring
mov edx,eax
inc dh
mov eax,edx
call gotoxy
mov edx,offset fruit_a
call writestring
mov edx,eax
inc dh
mov eax,edx
call gotoxy
mov edx,offset fruit_a
call writestring
mov edx,eax
inc dh
mov eax,edx
call gotoxy
mov edx,offset fruit_a
call writestring
mov edx,eax
inc dh
mov eax,edx
pop edx
pop eax
ret
draw_fruit ENdP

animation PROC

call drawpacman

mov dl,44
mov dh,13
call draw_fruit

mov dl,64
mov dh,13
call draw_fruit

mov dl,84
mov dh,13
call draw_fruit

mov dl,104
mov dh,13
call draw_fruit

mov eax,1000
call delay
call clrscr
call drawpacman2

mov dl,64
mov dh,13
call draw_fruit

mov dl,84
mov dh,13
call draw_fruit

mov dl,104
mov dh,13
call draw_fruit

mov eax,1000
call delay
call clrscr

call drawpacman

mov dl,44
mov dh,13
call draw_fruit

mov dl,64
mov dh,13
call draw_fruit

mov dl,84
mov dh,13
call draw_fruit

mov eax,1000
call delay
call clrscr

call drawpacman2
mov dl,64
mov dh,13
call draw_fruit

mov dl,84
mov dh,13
call draw_fruit

mov eax,1000
call delay
call clrscr

call drawpacman

mov dl,44
mov dh,13
call draw_fruit

mov dl,64
mov dh,13
call draw_fruit

mov eax,1000
call delay
call clrscr

call drawpacman2

mov dl,64
mov dh,13
call draw_fruit
mov eax,1000
call delay
call clrscr


call drawpacman 



mov dl,44
mov dh,13
call draw_fruit

mov eax,1000
call delay
call clrscr

call drawpacman2


mov eax,1000
call delay
call clrscr


ret
animation ENDP


pacman_name proc
    mov eax,red
    call settextcolor
    mov dl,30
    mov dh,10
    call gotoxy
    mov edx,offset pacman11
    call writestring

    mov dl,30
    mov dh,11
    call gotoxy
    mov edx,offset pacman2
    call writestring

        mov dl,30
    mov dh,12
    call gotoxy
    mov edx,offset pacman3
    call writestring

    mov dl,30
    mov dh,13
    call gotoxy
    mov edx,offset pacman4
    call writestring

    mov dl,30
    mov dh,14
    call gotoxy
    mov edx,offset pacman5
    call writestring

    mov dl,30
    mov dh,16
    call gotoxy
    mov edx,offset string1
    call writestring
    mov dl,30
    mov dh,17
    call gotoxy
    mov edx,offset name1
    mov ecx,10
    call readstring
        mov dl,30
    mov dh,18
    call gotoxy
    mov edx,offset string2
    call writestring
    mov edx,offset name1
    call writestring

    mov eax,1000
    call delay
    call clrscr

ret
pacman_name ENDP


new___ proc
push ax
    dec ecx
    l1:
        inc ecx
    mov al,0
    cmp [ecx],al
    jne l1
        inc ecx
    pop ax
ret
new___ endp
menudraw proc
    mov al,dl
    mov ah,dh
    call gotoxy
    mov edx,ecx
    call writestring
        call new___
    inc ah
    mov dl,al
    mov dh,ah
    call gotoxy
    mov edx,ecx
    call writestring
        call new___
    inc ah
    mov dl,al
    mov dh,ah
    call gotoxy
    mov edx,ecx
    call writestring
    call new___
    inc ah
    mov dl,al
    mov dh,ah
    call gotoxy
    mov edx,ecx
    call writestring
    call new___
    inc ah
    mov dl,al
    mov dh,ah
    call gotoxy
    mov edx,ecx
    call writestring
    call new___
     inc ah
    mov dl,al
    mov dh,ah
    call gotoxy
    mov edx,ecx
    call writestring

    ret
menudraw endp


main_menu PROC

    mov eax,yellow
    call settextcolor

    mov dl, 15
    mov dh,0
    mov ecx,offset menu1
    call menudraw

    mov dl, 5
    mov dh,7
    mov ecx,offset start1
    call menudraw

    mov dl,5
    mov dh,14
    mov ecx,offset help1
    call menudraw

    
    mov dl,5
    mov dh,21
    mov ecx,offset hs1
    call menudraw

    call readchar
ret
main_menu ENDP


endanimation PROC

mov al,0
mov ah,0
mov esi,eax
l3:
mov esi,eax
l1:
push eax
push esi
push ecx

mov ecx,offset pacman123
call end_pacman

mov eax,500
call delay
pop ecx
pop esi

push esi
push ecx

mov ecx,offset pacman1234
call end_pacman

pop ecx
pop esi

pop eax
add al,7
mov esi,eax
cmp al,120
jb l1
mov al,0
add ah,5
cmp ah,28
jb l3

call clrscr

ret
endanimation endp


end_pacman PROC
mov edi,ecx
mov al,0
mov bl,"."
dec edi
mov ecx,esi
l1:
inc edi
mov al,0
cmp [edi],al
je l5
cmp [edi],bl
jne l3
mov eax,black
call settextcolor
jmp l2
l3:
mov eax,yellow
call settextcolor
l2:
mov dl,cl
mov dh,ch
call gotoxy
mov al,[edi]
call writechar
mov al,0
inc cl
cmp [edi],al
jne l1
l5:
mov ecx,esi
mov ch,dh
inc ch
cmp [edi+1],al
jne l1


ret
end_pacman ENDP



HELP_DRAW proc
MOV EAX,MAGENTA
CALL SETTEXTCOLOR
MOV DL,40
MOV DH,0
MOV ECX,OFFSET HE1
CALL MENUDRAW

MOV DH,8
MOV DL,50
CALL GOTOXY
MOV EDX,OFFSET INS1
CALL WRITESTRING

MOV DH,10
MOV DL,42
CALL GOTOXY
MOV EDX,OFFSET INS2
CALL WRITESTRING

MOV DH,12
MOV DL,35
CALL GOTOXY
MOV EDX,OFFSET INS45
CALL WRITESTRING


MOV DH,14
MOV DL,45
CALL GOTOXY
MOV EDX,OFFSET INS3
CALL WRITESTRING


MOV DH,16
MOV DL,40
CALL GOTOXY
MOV EDX,OFFSET INS4
CALL WRITESTRING

mov Dh,20
mov dl,52
call gotoxy
mov edx,offset ins5
call writestring

mov eax,white
call settextcolor
mov Dh,22
mov dl,43
call gotoxy
mov edx,offset ins6
call writestring


RET
HELP_DRAW endp





hs_draw PROC

MOV EAX,cyan
CALL SETTEXTCOLOR
MOV DL,15
MOV DH,0
MOV ECX,OFFSET H1
CALL MENUDRAW
mov esi,offset buffer

call check_score
mov ax,score1
mov highscore,ax

mov esi,offset buffer
mov ecx,3
mov dh,8
mov dl,15
l2:

l1:
inc esi
call gotoxy
mov al,[esi]
call writechar
inc dl
mov bl,0ah
cmp [esi],bl
jne l1
inc dh
inc dh
mov dl,15
loop l2


mov eax,white
call settextcolor
mov Dh,22
mov dl,43
call gotoxy
mov edx,offset ins6
call writestring


call readchar
ret
hs_draw endp





END main