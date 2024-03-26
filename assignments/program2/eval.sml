fun eval [] x_value:real = 0.0
| eval (head::tail) x_value:real = foldr (fn (num, res) => (res + num) * x_value) 0.0 tail + head;

