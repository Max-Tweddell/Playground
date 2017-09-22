
<?php

echo "hello world \n";

echo 4 ** 4 ** 4 ;


echo "this is pi \n";

function pifn($n) {
    $sum = 0;
    $sign = 1;
    for ($i = 0; $i < $n; $i++) {
        $sum += $sign / (2.0*$i+1.0);
        $sign *= -1;
    };
    return (4.0 * $sum);
}
echo pifn(2000);
?>
