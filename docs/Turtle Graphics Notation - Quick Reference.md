# Turtle Graphics Notation - Quick Reference

# Symbols
`non-numeric-no-spaces`

# Variables
-  `←` – Assignment.

# Procedures
- `TO <name> [<parameters>] <commands>`
- `RETURN [<expr>]`

# Control Flow
- `IF <predicate> THEN <commands> [ELSE <commands>]`
- `REPEAT <n> <commands>`
- `REPEAT FOREVER <commands>`
- `REPEAT UNTIL <condition> <commands>` 
- `REPEAT <commands> UNTIL <condition>`
- `REPEAT FOR <range> <commands>`
- `REPEAT FOR <variable> IN <list of values>`

# Data Types

## Integer
`0` `1` `-2`

## Float
`0.1` `-8.3` `3.14`

## String
`"string"`

## List
`[a b c]`

# Comparison
- ` =` `>` `<`

# Operators
- `+` `-`  `*`  `/`  `↑`
- *Obey usual precedence conventions.*
- *Order of operations can be modified using `()`.* 

# Math
- `ABS`
- `SQRT`

# Logic
`"TRUE"` `"FALSE"`
- `BOTH` - Logical and.
- `EITHER` - Logical or.

# Strings
`""` `"string"`

# Lists
`[]` `[0 "string" 3.14]`
- `ITEM <l> <n>` – Get `n`th item from list `l`.
- `FIRST <l>`– Get first item from list `l`.
- `REST <l>` – Get remaining items from list `l`.

# Output
- `PRINT`

# Control
- `EXECUTE <s>` – Execute string `s` as code.

# Turtle
- `CLEARSCREEN`
- `PENDOWN`
- `PENUP`
- `FORWARD <n>` – Go forward `n` steps.
- `BACK <n>` – Go back `n` steps.
- `LEFT <n>` – Turn left `n` deg.
- `RIGHT <n>` – Turn right `n` deg.
- `SETHEADING <n>` – Orient to `n` deg.
- `HEADING` - Get current heading.
- `SETXY <x> <y>` – Position at `x`, `y`.
- `XCOR` – Get `x` coordinate.
- `YCOR` – Get `y` coordinate.
