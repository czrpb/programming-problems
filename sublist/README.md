# Is a list a sublist of a larger list

> Given a list, of numbers say, determine if:
>   * :missing - the list is not a sublist in the 2nd/larger list
>   * :equal - the list and the 2nd/larger list are identical
>   * :sublist - the list is a sublist in the 2nd/larger list

> Examples:
> 
> > List 1: `[1,2,3]`, List 2: `[1,2,3]` -> `:equal`
> 
> > List 1: `[1,2,3]`, List 2: `[4,5,6,7,8,9,10,11,12]` -> `:missing`
> 
> > List 1: `[7,8,9]`, List 2: `[4,5,6,7,8,9,10,11,12]` -> `:sublist`
