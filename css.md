# CSS Tricks

## Media Queries

```css
body {
    background: black;
}

/* Before */
@media (min-width: 300px) and(max-width:600px) {
    body {
        background: green;
    }
}
/* Now */
@media (300px <= width <= 600px) {
    body {
        background: green;
    }
}
@media (width <= 600px) or (orientation: landscape) {
    body {
        background: white;
    }
}
```

```css
.class {
    all: initial; /* Reset all properties.*/
    pointer-events: none; /* Define pointer hover or click events.*/
    perspective: 1000px; /* Define how far the object is away from the user.*/
    scroll-behavior: smooth; /*Smoothly animate scroll instead of straight jump*/
    user-select: none; /*Whether text of an element can be selected*/
    writing-mode: vertical-rl; /*Laid out of the text horizontal or vertical*/
}
```

```css
.img {
    filter: drop-shadow(2px, 4px, 8px, #585858); /*Add shadow to transparent image*/
}
```

```css
.html {
    cursor: url("image.png"), auto; /*Set image as cursor*/
}
```

```css
p {
    -webkit-line-clamp: 3; /*Limit the content of a block container to specified number of line*/
}
```
