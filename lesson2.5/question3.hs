foo a = a

bar = const foo

baz x = const True

quux = let x = x in x

corge = "Sorry, my value was changed"

grault x 0 = x
grault x y = x

garply = grault 'q'

waldo = foo