#define K 4


program ads
    implicit none
    real (kind=K) :: h, P1, P2, P3
    real (kind=K), allocatable :: tab(:,:), rv(:), res(:)
    integer (kind=K) :: n, x,y
    character(10) :: val

    if (command_argument_count() .NE. 1) then
        write(*,*) "Not enough arguments"
        error stop
    end if
    call get_command_argument(1,val,x,y)   
    read(val,*) n
    write(*,*) n
    do x = 1, n
        write(*,*) x 
    end do

    allocate (tab(n,n))
    

    
end program

