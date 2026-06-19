// Assignment: Tuples in Cairo
// Name: Hamza Qamar Ansari
// Roll No: BSCS22023

#[executable]
fn main() {
    // Declare a tuple with three elements: felt252, bool, felt252
    let tup: (felt252, bool, felt252) = (7, true, 15);

    // Print the whole tuple and each element individually
    println!("Tuple: {:?}", tup);

    // Destructure the tuple to access each element
    let (first, second, third) = tup;

    println!("First: {}", first);
    println!("Second: {}", second);
    println!("Third: {}", third);
}
