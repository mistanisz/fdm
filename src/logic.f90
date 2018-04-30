#ifndef K
#define K = 4


module logic
    implicit none

    contains
    subroutine init(M, P1, P2, P3, n, X)
        integer (kind=8), intent(in) :: n
        real (kind=K), intent(inout) :: M(:,:), X(:)
        real (kind=K), intent(in) :: P1, P2, P3
        integer (kind=8):: i

        M(:,:) = real(0, kind=K)
        do i = 1, n-1
            M(i, i) = P2
            M(i - 1, i) = P3
            M(i +1, i) = P1
        end do

        X(:) = real(0, kind=K)
        X(n-1) = 1

        M(0, 0) = 1
        M(n ,n) = 1

    end subroutine init

    subroutine compute(M, n, h)
        integer (kind=8), intent(in) :: n
        real (kind=K), allocatable :: M(:,:), (:)
        real (kind=K) :: P1, P2, P3, h



end module
