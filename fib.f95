PROGRAM  Fibonacci
    IMPLICIT None
    INTEGER :: FIRST, SECOND, TEMP, IX
    FIRST = 0
    SECOND = 1
    WRITE (*,*) FIRST
    WRITE (*,*) SECOND
    DO IX = 1, 45, 1
        TEMP = FIRST + SECOND
        FIRST = SECOND
        SECOND = TEMP
        WRITE (*,*) TEMP
    END DO



END PROGRAM Fibonacci
