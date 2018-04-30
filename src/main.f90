#ifndef K
#define K = 4
#endif


program main
    use logic
    use gauss
    implicit none
    real (kind=K) :: h
    real (kind=K), allocatable :: M(:,:), X(:)
    integer (kind=8) :: n
    character(10) :: val

    if (command_argument_count() .NE. 1) then
        write(*,*) "Not enough arguments"
        error stop
    end if
    call get_command_argument(1,val)   
    read(val,*) n

    h = real(1.0/n, kind=K)

    allocate (M(0:n,0:n))
    allocate (X(0:n))
    
    call init(M, X, n, h)
    call eliminate(M, X, n)

    write(*,*) avg_error(X,n)

    if (allocated(M)) deallocate(M)
    if (allocated(X)) deallocate(X)

    
end program

