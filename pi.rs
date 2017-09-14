

fn pi(n: i32) -> f64{
    let mut sum :f64 = 0.0;
    let mut sign = 1.0;
    for x in 0..n {
        sum = sum + sign / (2.0*(x as f64)+1.0);
        sign *= -1.0;
    }
    sum * 4.0
}

fn main(){
    let result = pi(2001);
    println!("{}", result);
}
