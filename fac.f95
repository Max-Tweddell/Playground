PROGRAM work

    RECURSIVE FUNCTION fact(i) RESULT(j)
        INTEGER :: i
        INTEGER :: j
        IF (i == 1) THEN
            j = 1
        ELSE
            j = i * fact(i)
        END IF
    END FUNCTION fact

END PROGRAM work
