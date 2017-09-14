
FUNCTION pi(n) RESULT(sum)
  INTEGER, intent(in) :: n
  REAL(kind=8) :: sum
  INTEGER :: sign
  INTEGER :: i
  i = 0
  sign = 1
  sum = 0
  DO WHILE (i < n)
     sum = sum + sign / (2.0*i+1.0)
     sign = -sign
     i = i + 1
  END DO
  sum = sum * 4.0
END FUNCTION pi



PROGRAM Pinumbers
  IMPLICIT NONE
  REAL(kind=8) :: pi
  PRINT *, pi(1000000000)
END PROGRAM Pinumbers
