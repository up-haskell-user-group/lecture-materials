module Stack (Stack, push, pop) where
empty :: Stack x
push :: x -> Stack x -> Stack x
pop :: Stack x -> (x,Stack x)

newtype Stack x = StackImpl [x]
  -- Stack is a synonym for a list
empty = StackImpl []
push x (StackImpl s) = StackImpl (x:s)
pop (StackImpl(s:t)) = (s,StackImpl(t))

show (StackImpl s) = show s
