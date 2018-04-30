#define K 4


program main
    use logic
    implicit none
    real (kind=K) :: h, P1, P2, P3
    real (kind=K), allocatable :: M(:,:), X(:)
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

    allocate (M(0:n,0:n))
    allocate (X(0:n))
    

    
end program

