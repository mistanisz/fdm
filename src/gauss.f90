#ifndef K
#define K = 4
#endif


module gauss
    implicit none

    contains
    subroutine eliminate(M, X, N)
        integer (kind=K), intent(in) :: N
        integer (kind=8) :: I, J
        real (kind=K), intent(inout) :: M(:,:), X(:)
        real (kind=K) :: c
    
        do I = 0, N
            do J =0, N
                if (I .NE. J) then
                    c = M(I, J) / M(I,I)
                    M(:,J) = M(:,J) - c * M(:,I)
                    X(J) = X(J) - c*X(I)
                end if
            end do
        end do

    end subroutine

end module
