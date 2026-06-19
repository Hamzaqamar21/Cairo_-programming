# Tuples in Cairo

This guide covers the concept of **Tuples** in the Cairo programming language, how they differ from other data structures, how to use them, and a detailed walkthrough of the implementation.

---

## What is a Tuple in Cairo?

A **tuple** is a compound type that groups together multiple values of different types into a single, structured value. 

### Key Characteristics:
1. **Fixed Length:** Once a tuple is declared, its size cannot grow or shrink.
2. **Heterogeneous Types:** A tuple can contain elements of different types (e.g., `felt252`, `bool`, `u32`, or even other tuples).
3. **Value Type:** Tuples are allocated on the stack and passed by value.

---

## Declaring and Using Tuples

### 1. Declaration Syntax
A tuple is written as a comma-separated list of types inside parentheses:
```cairo
let my_tuple: (felt252, bool, u32) = (42, true, 100);
```

### 2. The Unit Type (Empty Tuple)
An empty tuple is written as `()` and represents the **unit type**. It has exactly one value, which is also written as `()`. It is returned implicitly by expressions that do not return any other value.

---

## Accessing Tuple Elements (Destructuring)

Unlike some other languages (such as Rust or Python), Cairo does not support direct index-based dot notation access (like `tup.0` or `tup.1`). Instead, Cairo relies on **destructuring** (pattern matching) to access the individual elements of a tuple.

### 1. Full Destructuring
To access all elements, unpack the tuple into separate variables:
```cairo
let tup = (7, true, 15);
let (first, second, third) = tup;

// Now 'first', 'second', and 'third' can be used as individual variables
```

### 2. Selective Destructuring
If you only need some of the values, use the underscore (`_`) to ignore the values you do not need:
```cairo
let tup = (7, true, 15);
let (_, second, _) = tup; // Only extracts the boolean value
```

---

## How the Program Works

Here is a step-by-step walkthrough of the implementation in `tuples.cairo`:

1. **Tuple Declaration:** 
   We declare a tuple named `tup` containing three elements with types `felt252`, `bool`, and `felt252` respectively, and initialize it with `(7, true, 15)`.
   ```cairo
   let tup: (felt252, bool, felt252) = (7, true, 15);
   ```
2. **Printing the Entire Tuple:**
   We print the entire tuple using the debug formatting specifier `{:?}`:
   ```cairo
   println!("Tuple: {:?}", tup);
   ```
3. **Destructuring:**
   Since Cairo does not support index member access on tuples, we destructure the tuple into three separate variables (`first`, `second`, and `third`):
   ```cairo
   let (first, second, third) = tup;
   ```
4. **Printing Individual Elements:**
   We print each variable individually using standard string interpolation `{}`:
   ```cairo
   println!("First: {}", first);
   println!("Second: {}", second);
   println!("Third: {}", third);
   ```

---

## Running the Program

From inside the assignment folder (`Hamza_Qamar_Ansari_Tuples`), compile and run the program using Scarb:
```bash
scarb execute
```

### Expected Output:
```text
Tuple: (7, true, 15)
First: 7
Second: true
Third: 15
```

---

## References
- **The Cairo Book** — Chapter on Basic Types (Tuples)
- **Scarb Documentation** — Working with executable packages
