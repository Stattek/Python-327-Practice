(*
Function to evaluate polynomials

By David Slay and Jake Ozer
*)

(*
Function that finds the result for a polynomial with a passed
in value for the x value.

The list of reals represents the polynomial, with the first
element being the coefficient with an x to the power 0 and 
the next being the coefficient with an x to the power of 1.
*)
fun eval [] x_value:real = 0.0
(*
Evaluates the x values for each polynomial, starting from the right and
then adds the leftmost value at the end.
*)
| eval (head::tail) x_value:real = foldr (fn (num, result) => (result + num) * x_value) 0.0 tail + head;
