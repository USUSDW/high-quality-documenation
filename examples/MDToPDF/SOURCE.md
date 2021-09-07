# Starting With The Basics

This section of text belongs to the title above. I can write a whole bunch of text here. This is equivalent to a paragraph environment! 

## First Subheader

This section is a lot like an `h2` tag in HTML. The header is just a bit smaller, as it is a sub-section to Starting With The Basics. 

## Second Subheader
This section is also a subheader to Starting With The Basics section!

### First Sub-Subheader
I belong to the second subheader listed above!

## Let's Show Some Code
Let's show off embedded code blocks in Markdown. We have shown `inline` code earlier in this document, but no blocks yet!

I can use a code block to show off monospaced text. This will preserve the structure of code, and make it far easier to display.

```
 _   _ ____  _   _    ____  ______        ___ 
| | | / ___|| | | |  / ___||  _ \ \      / / |
| | | \___ \| | | |  \___ \| | | \ \ /\ / /| |
| |_| |___) | |_| |   ___) | |_| |\ V  V / |_|
 \___/|____/ \___/   |____/|____/  \_/\_/  (_)
```

I can write a Python code within a code block. Dependent on the Markdown processor, I can get Python syntax highlighting!

```python
def factorial(n):
    if n <= 1:
        return 1
    return factorial(n-1) * n
```

Similarly, I can get Haskell syntax highlighting, if the parser supports it.

```Haskell
factorial :: Integer -> Integer
factorial n
    | n > 1 = n * factorial(n - 1)
    | otherwise = 1
```

## Let's Make A Link!
[Click Me! You can trust me. You know I'd never let you down.](https://www.youtube.com/watch?v=dQw4w9WgXcQ)

## Let's Add A Photo!

We will embed a photo in this section.

![](img/USU.svg)

Quite easy to do, if I were to say so myself!

## Let's Use GitHub Flavored Markdown!
If this is processed only as normal Markdown, I might not have all the features of Markdown on the web that I might be used to. To do this, I change `--from markdown` to `--from gfm` to tell `pandoc` to parse my file as GitHub Flavored Markdown (GFM) instead of normal Markdown.

## Lists!
Lists are incredibly easy to do in Markdown!

0.  Let's do an ordered list!
0.  Let's add another item!
    a.  Oooh, a subitem! WOW!
    b.  A second subitem? Now we're just showing off...
0.  Yeah, you get the gist.

There's many different types of lists too.

*   You can also do bulletted lists.
*   This is quite handy.
    *   You can even do subpoints on bulleted lists!

Lists can also have paragraphs, code, and quotes interjected!

*   Let's see a paragraph!
    I can have some text *here*! This is a paragraph environment that is inside the list.
*   Let's see some code! 
    I can do some `in-line` code just like I would in a paragraph environment! **However,** I could also do *this...*

    ```python
    def helloThere():
        print("General Kenobi!")
    ```


## Quotes

We can easily add quotes to Markdown, too!

> Do or do not, there is no try. -Yoda

## Tables

Header | Header 2
------ | --------
Cell 1 | Cell 2
Cell 3 | Cell 4

## Math!

Let's try adding some math! Do you recognize this formula? $a^2 + b^2 = c^2$. 

$$ a_0 := 1 $$
$$ a_1 := 1 $$ 
$$ a_n = a_{n-1} + a_{n-2}$$

## Matrices!

Will we be able to use a LaTeX environment that does *not* come standard with LaTeX? This `bmatrix` environment doesn't come standard with LaTeX, and you must access it with `usepackage` and the `amsmath` package. 
$$
\begin{bmatrix}
  a & b & c & d \\
  b & c & d & e \\
  c & d & e & f \\
  d & e & f & g
\end{bmatrix}
$$
