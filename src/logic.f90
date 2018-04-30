#ifndef K
#define K = 4
#endif


module logic
    implicit none

    contains
    subroutine init(M, X, n, h)
        integer (kind=8), intent(in) :: n
        real (kind=K), intent(inout) :: M(0:n,0:n), X(0:n)
        real (kind=K), intent(in) :: h
        real (kind=K) :: P1, P2, P3
        integer (kind=8):: i

        P1 = 1/(h**2)
        P3 = 1/(h**2)
        P2 = -2/(h**2)

        M(:,:) = real(0, kind=K)
        do i = 1, n-1
            M(i, i) = P2
            M(i - 1, i) = P3
            M(i +1, i) = P1
        end do

        X(:) = real(0, kind=K)
        X(n) = 1

        M(0, 0) = 1
        M(n ,n) = 1

    end subroutine init

    function avg_error(X, n) result (res)
        integer (kind=8), intent(in) :: n
        real (kind=K), intent(in) :: X(0:n)
        real (kind=K) :: res
        integer (kind=8) :: i

        res = 0
        do i = 0, n
            res = res + abs(X(i) - real(i, kind=16) / real(n, kind=16))
        end do

        res = res/n
        
    end function
end module
