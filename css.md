# CSS Tricks

```css
.html {
  cursor: url("image.png"), auto; /*Set image as cursor*/
}
```

```css
/* To Toggle Dark/light mode */
.html {
  filter: invert(1) hue-rotate(180deg);
}
```

### Scroll Snap

```css
html {
  scroll-snap-type: y mandatory;
  /* if you have a nav that is 30px in height */
  scroll-padding-top: 30px;
}
section {
  height: 100vh;
  scroll-snap-align: start;
}
```

### Css Nesting

```css
.card {
  .heading {
    font-weight: bold;
    h1 {
      color: goldenrod;
    }
  }
}
```

### Container Queries

```css
.article {
  container-type: inline-size;
}

@container (min-width:700px) {
  .card {
    flex-direction: column;
    font-size: max(1.2rem, 1em + 2cqi);
  }
}
```

### Mix Color

```css
body {
  background-color: color-mix(in srgb, red 10%, blue);
}
```

### Media Queries

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
p {
  -webkit-line-clamp: 3; /*Limit the content of a block container to specified number of line*/
}
```
