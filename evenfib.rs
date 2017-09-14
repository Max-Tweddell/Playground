// problem 2
fn fib(x: u64) -> u64 {
    if x < 2 {
        x
    } else {
        fib(x - 1) + fib(x - 2)
    }

}

fn fast_fib(x: u64) -> u64 {
    let mut first: u64 = 0;
    let mut second: u64 = 1;
    let mut temp: u64 = 0;
    for i in 0..x {
        temp = first + second;
        first = second;
        second = temp;
    }
    first
}
fn main(){
    let xs: Vec<u64> = (1..50).collect();
    let result: Vec<u64> = xs.iter().map(|x| fast_fib((*x as u64))).filter(|x| x % 2 == 0).collect();
    println!("{:?}", result);
}
