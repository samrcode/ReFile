# Documentation
Stuff that only cool people read. So that means you're a cool person.

## Functions
You need to know what the functions in re are if you want to use re, right?

### re.pause
```lua
re.pause()
```
pause is used to make a break in you code. It will output a standard "Press Enter to continue... ".

#### parameters
```lua
re.pause(message)
```
`message` is used to make a custom message. It can be left blank.


### re.math
```lua
re.math()
```
Do math!
math is used to calculate something quickly.

#### parameters
```lua
re.math(op, x, y)
```
`op` is used to select an operator.

1: Addition
2: Subtraction
3: Multiplication
4: Division

`x` is a number. So is `y`.

### re.choose
```lua
re.choose()
```
choose can be used to make a list to choose from.

#### parameters
```lua
re.choose(num, opt1, opt2, opt3, command1, command2, command3, errmsg)
```
`num` can be used to choose the amount of items in the list. The max is 3.

`opt1`, `opt2`, and `opt3` can be used to choose the names of the list items.

`command1`, `command2`, and `command3` can be used to execute a command when an option is selected by the user. Remember: these parameters use `os.execute()`! This means you will have to specify a Command Prompt or Terminal command.

`errmsg` is used to make a custom error message when the user types an option that is not on the list. THIS IS REQUIRED.
