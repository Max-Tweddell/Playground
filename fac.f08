
recursive function fact(i) result(j)
    integer, intent(in) :: i
    integer(kind=32) :: j
    if (i == 1) then
        j = 1
    else
        j = i * fact(i - 1)
    end if
end function fact

PROGRAM Factorial
    IMPLICIT NONE
    INTEGER(kind=32) :: fact
    print *, fact(45)

END PROGRAM Factorial
