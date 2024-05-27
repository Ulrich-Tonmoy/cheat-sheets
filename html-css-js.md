# HTML CSS & JS/TS

- [HTML](#html)
- [CSS](#css)
- [JS/TS](#js)

## HTML

<p align="center">
  <img alt="html structure" src="./assets/web/HTML.png" width="360px"/>
</p>

```js
/* Enabling design mode will make the entire web page editable, just by clicking and typing. To use it,
open up the console and run: */

document.designMode = "on";
```

```html
<input type="range" min="1" max="5" value="2" />
<input type="search" />
<input type="tel" />
<input type="time" />
<input type="color" />
<input type="datetime-local" />
<input type="week" />
<input type="month" />
<input type="url" />
```

## HTML Tricks

```html
<!-- Can give tooltip to any tag with title -->

<p title="Tooltip">Tooltip</p>
```

```html
<!-- different favicon for light and dark mode -->

<head>
  <link
    rel="icon"
    type="image/svg+xml"
    href="dark-icon.svg"
    media="(prefers-color-scheme:dark)"
  />
  <link
    rel="icon"
    type="image/svg+xml"
    href="light-icon.svg"
    media="(prefers-color-scheme:light)"
  />
</head>
```

```html
<!-- When you need to run some calculations on your inputs and get a result instantly, you can use the <output> element to display the results without writing any external JS -->

<form
  oninput="total.value=Number(amount.value) + (Number(amount.value) * Number(tip.value)/100)"
>
  <input type="number" id="amount" value="0" /> +
  <input type="number" id="tip" value="0" /> =
  <output name="total" for="amount tip"></output>
</form>
```

```html
<!-- You can add a special <meta> tag inside of your document head to refresh the page at a set interval or to redirect users to different websites after a set delay -->

<!-- refresh after 30s -->
<meta http-equiv="refresh" content="30" />

<!-- redirect after 30s -->
<meta http-equiv="refresh" content="30;https://www.youtube.com/" />
```

```html
<!-- For users who are on mobile devices, you can use the <input/> tag with a capture attribute to open the user's camera and allow them to take a photo or video to upload to your website. On desktop the default behavior of uploading files is kept -->

<!-- Opens back facing camera to take video -->
<input type="file" capture="environment" accept="video/*" />

<!-- Opens front facing camera to take photo -->
<input type="file" capture="user" accept="image/*" />
```

```html
<!-- When you have lots of images in your website but you don't wanna wait a longer time for the browser to load all the images then show the content of the site you can lazy load images it will show other content of the site then slowly load images  -->

<img src="image.png" loading="lazy" alt="image" />
```

```html
<!-- Disable right click for the entire website -->
<body oncontextmenu="return false"></body>

<!-- Disable right click for a specific element-->
<section oncontextmenu="return false"></section>
```

```html
<!-- input suggestion -->
<input list="lists" />
<datalist id="lists">
  <option value="1"></option>
  <option value="2"></option>
  <option value="3"></option>
</datalist>
```

```html
<!-- multiple image with different widths have a single scaling -->
<picture>
  <source media="{min-width:650px}" srcset="image.png" />
  <source media="{min-width:550px}" srcset="image.png" />
  <img src="image.png" style="width:auto" />
</picture>
```

```html
<!-- This lets the page be rendered first and then render the images slowly -->
<img src="image.png" loading="lazy" />
```

```html
<!-- This is useful where you have many anchors tag but their base url is same -->
<head>
    <base href="http://twitter.com/" target="_blank"> />
</head>
<body>
    <a href="Elon musk">
</body>
```

```html
<!-- This will redirect the user to provided url in 4s and then set to 0 for an immediate redirect -->
<head>
  <meta http-equiv="refresh" content="4;URL=URL" />
</head>
```

## Useful HTML attributes you may not know

1. Dialog/Modal

   ```html
   <dialog>
     <form>
       <input type="text" />
       <button formmethod="dialog" type="submit">Cancel</button>
       <button type="submit">Submit</button>
     </form>
   </dialog>
   ```

   ```js
   const dialog = document.querySelector("dialog");
   dialog.show(); // Opens a non-modal dialog
   dialog.showModal(); // Opens a modal

   dialog.addEventListener("click", (e) => {
     const dialogDimensions = dialog.getBoundingClientRect();
     if (
       e.clientX < dialogDimensions.left ||
       e.clientX > dialogDimensions.right ||
       e.clientY < dialogDimensions.top ||
       e.clientY > dialogDimensions.bottom
     ) {
       dialog.close(); // Closes the dialog
     }
   });
   ```

2. Accordion

   ```html
   <details>
     <summary>Open</summary>
     <p>lorem ipsem</p>
   </details>
   ```

3. Progress bar

   ```html
   <label for="prog">Download</label> <progress id="prog" value="50" max="100"></progress>
   ```

4. Autocomplete

   ```html
   <input list="lists">
    <datalist id="lists">
      <option>op1</option>
      <option>op2</option>
      <option>op3</option>
    </datalist>
   </input>
   ```

5. Popover

   ```html
   <button popovertarget="pop">Open</button>
   <div id="pop" popover>
     <p>lorem ipsem</p>
   </div>
   ```

6. Multiple

   ```html
   <input type="file" multiple />
   ```

   The multiple attribute allows the user to enter multiple values on an input. It is a boolean attribute valid for file or email input types and the select element.
   For an email input, if and only if the multiple attribute is specified, the value can be a list of comma-separated email addresses. Any whitespace is removed from each address in the list.
   For a file input, the user can select multiple files in the as usual (holding down Shift or Crtl).

7. Accept

   ```html
   <input type="file" accept=".png, .jpg" />
   ```

   The input element has the accept attribute that allows you to specify the types of files the user can upload.
   You need to pass it a string containing a comma-separated list of unique file type specifiers.
   You can also use it to specify only audio, image, or video format.

8. Contenteditable

   ```html
   <div contenteditable="true">I'm a cool editable div ;)</div>
   ```

   contenteditable is a global attribute (common to all HTML elements) that makes the HTML content editable by the user or not. However, be careful with changes only made to visible content vs the DOM content.

9. Spellcheck

   ```html
   <p contenteditable="true" spellcheck="true">Thanks furr checkinng my speling :)</p>
   ```

   The spellcheck is another global attribute that you can use to check spelling and grammar on HTML elements such as input fields and other editable elements.
   Note: Typically non-editable elements are not checked for spelling errors, even if the spellcheck attribute is set to true and the browser supports spellchecking.

10. Translate

    ```html
    <footer><p translate="no">LearnPine</p></footer>
    ```

    translate tells the browser whether the content should be translated or not.
    For instance, you can use it to prevent Google Translate from automatically trying to translate your company's or brand's name.

11. Poster
    ```html
    <video controls src="https://bit.ly/3nWh78w" poster="posterImage.png"></video>
    ```
    Use the poster attribute to specify an image to be shown while the video is downloading, or until the user hits the play button.
    If the image isn't specified, nothing is displayed until the first frame is available, then the first frame is shown as the poster frame.
12. Download
    ```html
    <a href="index.html" download="fileName">Download me :)</a>
    ```
    Use the download attribute combined with an `a` element to instruct browsers to download a URL instead of navigating to it, so the user will be prompted to save it as a local file.
    You can also specify the file name.
13. Style
    ```html
    <body>
      <style contenteditable style="display:block; white-space:pre;">
        html {
          background: #bada55;
        }
      </style>
    </body>
    ```

## Semantic HTML tags

- `<header>` and `<footer>`: These elements represent the header and footer of a document or a section.
- `<nav>`: This element is used for the part of the website that contains navigation links.
- `<article>`: This element represents a self-contained composition in a document, like a blog post, a news story, or a forum post.
- `<section>`: This element represents a standalone section of a document, which doesn’t have a more specific semantic element to represent it.
- `<aside>`: This element is used for content that is indirectly related to the main content, like a sidebar or pull quotes.
- `<figure>` and `<figcaption>`: These elements are used for representing a piece of self-contained flow content, optionally with a caption.
- `<details>`: Defines additional details that the user can view or hide.
- `<summary>`: Defines a visible heading for a `<details>` element.
- `<main>`: Specifies the main content of a document.
- `<mark>`: Defines marked/highlighted text.
- `<time>`: Defines a date/time

## [Basic HTML tags](https://way2tutorial.com/html/example/html_cheat_sheet.php)

```html
<p hidden></p>
hide the content of the element
```

```html
<video poster="image.png"></video> Shown while the video isn't playing
```

```html
<optgroup></optgroup>
is a great way to add a little definition between groups of options inside a select box
```

```html
<acronym></acronym> is a way to define or further explain a group of words. When you hover
over text that has the acronym tag used, a box appears below with the text from the title
tag.
```

```html
<wbr></wbr> Defines a word break opportunity in a long string of text.
```

```html
<address></address>
Describes an address information
```

```html
<article></article>
Defines an article
```

```html
<aside></aside>
Describes contain set(or write) on aside place in page contain
```

```html
<audio></audio> Specific audio content
```

```html
<video></video> Used to embed video content.
```

```html
<base /> Define a base URL for all the links with in a web page
```

```html
<bb></bb> Define browser command, that command invoke as per client action
```

```html
<bdo></bdo> Specific direction of text display
```

```html
<blockquote></blockquote>
Specifies a long quotation
```

```html
<canvas></canvas> Specifies the display graphics on HTML web document
```

```html
<caption></caption>
Define a table caption
```

```html
<cite></cite> Specifies a text citation
```

```html
<code></code> Specifies computer code text
```

```html
<command></command> Define a command button, invoke as per user action
```

```html
<datalist></datalist> Define a list of pre-defined options surrounding input tag
```

```html
<details></details>
Define a additional details hide or show as per user action
```

```html
<embed /> Define a embedding external application using a relative plug-in
```

```html
<figcaption></figcaption>
Represents a caption text corresponding with a figure element
```

```html
<kbd></kbd>Used to identify text that are represents keyboard input.
```

```html
<legend></legend>
Used to add a caption (title) to a group of related form elements that are grouped
together into the fieldset tag.
```

```html
<map></map>Defines an clickable image map.
```

```html
<mark></mark>Used to highlighted (marked) specific text.
```

```html
<menu></menu> Used to display a unordered list of items/menu of commands.
```

```html
<meter></meter>Used to measure data within a given range.
```

```html
<param />
Provides parameters for embedded object element.
```

```html
<pre></pre>
Used to represents preformatted text.
```

```html
<progress></progress>Represents the progress of a task.
```

```html
<samp></samp> Represents text that should be interpreted as sample output from a computer
program.
```

```html
<sub></sub> Represents inline subscript text.
```

```html
<sup></sup>Represents inline superscript text.
```

```html
<time></time>Represents the date and/or time in an HTML document.
```

[HTML Table Generator](https://way2tutorial.com/html/table_generator.php)
<br>
[HTML Marquee Generator](https://way2tutorial.com/html/marquee_generator.php)
<br>
[HTML Marquee Falling Text Code Generator](https://way2tutorial.com/html/marquee_falling_text_generator.php)

## Reserved Characters in HTML

| Character | Decimal Entity | Name Entity | Description           |
| --------- | -------------- | ----------- | --------------------- |
|           | &#160;         |             | None Breaking Space   |
| "         | &#34;          | &quot;      | Double Quotation mark |
| '         | &#39;          | &apos;      | Single Quotation mark |
| &         | &#38;          | &amp;       | ampersand             |
| <         | &#60;          | &lt;        | less-than             |
| >         | &#62;          | &gt;        | greater-than          |
| #         | &#35;          |             | Hass Sign             |
| %         | &#37;          |             | Percentage Sign       |
| (         | &#40;          |             | Left Parenthesis      |
| )         | &#41;          |             | Right Parenthesis     |
| \*        | \*             |             | Left Parenthesis      |
| +         | &#43;          |             | Plus Sign             |
| -         | &#45;          |             | Hyphen                |
| /         | &#47;          |             | Slash                 |

## Copyright,Trademark and Registered Entities

| Character | Decimal Entity | Name Entity | Description       |
| --------- | -------------- | ----------- | ----------------- |
| ©         | &#169;         | &copy;      | Copyright Symbol  |
| ™         | &#8482;        | &trade;     | Trademark Symbol  |
| ®         | &#174;         | &reg;       | Registered Symbol |

## Currency Symbols

| Character | Decimal Entity | Name Entity | Description            |
| --------- | -------------- | ----------- | ---------------------- |
| ¢         | &#162;         | &cent;      | Cent Currency(�)       |
| £         | &#163;         | &pound;     | English Pound Currency |
| ¤         | &#164;         | &curren;    | General Currency       |
| ¥         | &#165;         | &yen;       | Japanese Yen           |
| €         | &#8364;        | &euro;      | European Euro          |
| $         | &#36;          | $           | Dollar Sign            |
| ₣         | &#8355;        | ₣           | Franc Sign             |

## Quotation Mark and Apostrophe Entities

| Character | Decimal Entity | Name Entity | Description                |
| --------- | -------------- | ----------- | -------------------------- |
| '         | &#8216;        | &lsquo;     | Left/Opening single quote  |
| '         | &#8217;        | &rsquo;     | Right/Closing single quote |
| "         | &#8220;        | &ldquo;     | Left/Opening double quote  |
| "         | &#8221;        | &rdquo;     | Right/Closing double quote |

## Arrow Entities

| Character | Decimal Entity | Name Entity | Description     |
| --------- | -------------- | ----------- | --------------- |
| ←         | &larr;         |             | Leftward Arrow  |
| ↑         | &uarr;         |             | Upward Arrow    |
| →         | &rarr;         |             | Rightward Arrow |
| ↓         | &darr;         |             | Downward Arrow  |

## Suit Entities

| Character | Decimal Entity | Name Entity | Description  |
| --------- | -------------- | ----------- | ------------ |
| ♠         | &spades;       |             | Spade Suit   |
| ♣         | &clubs;        |             | Club Suit    |
| ♥         | &hearts;       |             | Heart Suit   |
| ♦         | &diams;        |             | Diamond Suit |

# CSS

<p align="center">
  <img src="./assets/web/css/display.png" alt="display" title="display" width="300px"/>
  <img src="./assets/web/css/selectors.png" alt="selectors" title="selectors" width="300px"/>
  <img src="./assets/web/css/grid.png" alt="grid" title="grid" width="300px"/>
  <img src="./assets/web/css/flexbox.jpg" alt="flexbox" title="flexbox" width="300px"/>
</p>

## CSS Selectors

### Basic

| Name      | CSS          |
| --------- | ------------ |
| Universal | \*{}         |
| Type      | div{}        |
| Class     | .className{} |
| Id        | #idName{}    |

### Combination

| Name             | CSS        |
| ---------------- | ---------- |
| Descendent       | div a {}   |
| Direct Child     | div > a {} |
| General Sibling  | div ~ a {} |
| Adjacent sibling | div + a {} |
| Or               | div, a {}  |
| And              | div.c {}   |

### Attribute

| Name       | CSS      |
| ---------- | -------- |
| Has        | [a]      |
| Exact      | [a="1"]  |
| Begin With | [a^="1"] |
| Ends With  | [a$="1"] |
| Substring  | [a*="1"] |

### Pseudo Element

| Name   | CSS            |
| ------ | -------------- |
| Before | div::before {} |
| After  | div::after {}  |

### Pseudo Class

| Name             | CSS                         |
| ---------------- | --------------------------- |
| Hover            | button::hover {}            |
| Focus            | button::focus {}            |
| Required         | input::required {}          |
| Checked          | input::checked {}           |
| Disabled         | input::disabled {}          |
| First Child      | div::first-child {}         |
| Last Child       | div::last-child {}          |
| Nth Child        | div::nth-child(2n) {}       |
| Nth Last Child   | div::nth-last-child(3) {}   |
| Only Child       | div::only-child {}          |
| First of Type    | div::first-of-type {}       |
| Last of Type     | div::last-of-type {}        |
| Nth of Type      | div::nth-of-type(2n) {}     |
| Nth Last of Type | div::nth-last-of-type(2) {} |
| Only of Type     | div::only-of-type {}        |
| Not              | div::not(span) {}           |

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

```css
/* List bullet-point marker change */
li::marker {
  content: "@";
  font-size: 1.2rem;
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

# JS

### Table of Contents

1. [Generate a random number in a given range](#How-to-generate-a-random-number-in-a-given-range)
2. [Find the difference between two arrays](#How-to-find-the-difference-between-two-arrays)
3. [Convert truthy/falsy to boolean(true/false)](#Convert-truthy-falsy-to-boolean)
4. [Repeat a string](#Repeat-a-string)
5. [Check how long an operation takes](#Check-how-long-an-operation-takes)
6. [Two ways to remove an item in a specific in an array](#Two-ways-to-remove-an-item-in-a-specific-in-an-array)
7. [Did you know you can flat an array?](#Did-you-know-you-can-flat-an-array)
8. [Get unique values in an array](#Get-unique-values-in-an-array)
9. [Copy Text to Clipboard](#Copy-Text-to-Clipboard)
10. [Nested Destructuring](#Nested-Destructuring)
11. [URLSearchParams](#URLSearchParams)
12. [Count elements in an array](#Count-elements-in-an-array)
13. [Aliases with JavaScript Destructuring](#Aliases-with-JavaScript-Destructuring)
14. [The Object.is() method determines whether two values are the same value](#the-objectis-method-determines-whether-two-values-are-the-same-value)
15. [Freeze an object](#Freeze-an-object)
16. [Printing Object keys and values](#Printing-Object-keys-and-values)
17. [Capture the right click event](#Capture-the-right-click-event)
18. [In HTML5, you can tell the browser when to run your JavaScript code](#in-html5-you-can-tell-the-browser-when-to-run-your-javascript-code)
19. [Nullish coalescing operator](#Nullish-coalescing-operator)
20. [Optional chaining](#Optional-chaining)
21. [globalThis](#globalThis)
22. [The second argument of JSON.stringify lets you cherry-pick 🍒 keys to serialize.](#the-second-argument-of-jsonstringify-lets-you-cherry-pick--keys-to-serialize)
23. [Fire an event listener only once.](#Fire-an-event-listener-only-once)
24. [Vanilla JS toggle](#Vanilla-JS-toggle)
25. [Check if a string is a valid JSON](#Check-if-a-string-is-a-valid-JSON)
26. [getBoundingClientRect](#getBoundingClientRect)
27. [Check if a node is in the viewport](#Check-if-a-node-is-in-the-viewport)
28. [Notify when element size is changed](#Notify-when-element-size-is-changed)
29. [Date Formatter](#Date-Formatter)
30. [Reversing string](#Reversing-string)
31. [JavaScript Performance API](#JavaScript-Performance-API)
32. [Array](#array)
33. [Closure](#closure)
34. [Intl Formatter Docs](#Intl-Formatter-Docs)
35. [Console Logging Methods](#Console-Logging-Methods)
36. [UUID and Date](#uuid-and-date)
37. [Discriminating Union](#discriminating-union)
38. [Hide the Source Code of a Web Page](#hide-source-code)

<img src="./assets/web/js/es6_cheatsheet.jpg" alt="cheatsheet" width="330px" align="right"/>

<p align="left">
  <img src="./assets/web/js/array.jpg" alt="array" width="300px"/>
  <img src="./assets/web/js/hoisting in js.png" alt="hoisting" width="300px"/>
  <img src="./assets/web/js/js array.jpeg" alt="array" width="300px"/>
  <img src="./assets/web/js/asyncjs.gif" alt="asyncjs" width="300px"/>
  <img src="./assets/web/js/var-let-const.jpg" alt="var-let-const" width="300px"/>
</p>

### How to generate a random number in a given range

```javascript
// Returns a random number(float) between min (inclusive) and max (exclusive)

const getRandomNumber = (min, max) => Math.random() * (max - min) + min;

getRandomNumber(2, 10);

// Returns a random number(int) between min (inclusive) and max (inclusive)

const getRandomNumberInclusive = (min, max) => {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
};

getRandomNumberInclusive(2, 10);
```

**[⬆ Back to Top](#table-of-contents)**

### How to find the difference between two arrays

```javascript
const firstArr = [5, 2, 1];
const secondArr = [1, 2, 3, 4, 5];

const diff = [
  ...secondArr.filter((x) => !firstArr.includes(x)),
  ...firstArr.filter((x) => !secondArr.includes(x)),
];
console.log("diff", diff); //[3,4]

function arrayDiff(a, b) {
  return [
    ...a.filter((x) => b.indexOf(x) === -1),
    ...b.filter((x) => a.indexOf(x) === -1),
  ];
}
console.log("arrayDiff", arrayDiff(firstArr, secondArr)); //[3,4]

const difference = (a, b) => {
  const setA = new Set(a);
  const setB = new Set(b);

  return [...a.filter((x) => !setB.has(x)), ...b.filter((x) => !setA.has(x))];
};

difference(firstArr, secondArr); //[3,4]
console.log("difference", difference(firstArr, secondArr));
```

### Convert truthy falsy to boolean

```javascript ✔
const myVar = null;
const mySecondVar = 1;

console.log(Boolean(myVar)); // false
console.log(!!myVar); // false

console.log(Boolean(mySecondVar)); // true
console.log(!!mySecondVar); // true
```

### Repeat a string

```javascript
let aliens = "";

for (let i = 0; i < 6; i++) {
  aliens += "👽";
}
//👽👽👽👽👽👽

Array(6).join("👽");
//👽👽👽👽👽👽

"👽".repeat(6);
//👽👽👽👽👽👽
```

**[⬆ Back to Top](#table-of-contents)**

### Check how long an operation takes

```javascript
//The performance.now() method returns a DOMHighResTimeStamp, measured in milliseconds.
//performance.now() is relative to page load and more precise in orders of magnitude.
//Use cases include benchmarking and other cases where a high-resolution time is required
//such as media (gaming, audio, video, //etc.)

var startTime = performance.now();
doSomething();
const endTime = performance.now();
console.log("this doSomething took " + (endTime - startTime) + " milliseconds.");
```

**[⬆ Back to Top](#table-of-contents)**

### Two ways to remove an item in a specific in an array

```javascript
//Mutating way ✔
const muatatedArray = ["a", "b", "c", "d", "e"];
muatatedArray.splice(2, 1);
console.log(muatatedArray); //['a','b','d','e']

//Non-mutating way ✔
const nonMuatatedArray = ["a", "b", "c", "d", "e"];
const newArray = nonMuatatedArray.filter((item, index) => !(index === 2));
console.log(newArray); //['a','b','d','e']
```

**[⬆ Back to Top](#table-of-contents)**

### Did you know you can flat an array ✔

```javascript
const myArray = [2, 3, [4, 5], [7, 7, [8, 9, [1, 1]]]];

myArray.flat(); // [2, 3, 4, 5 ,7,7, [8, 9, [1, 1]]]

myArray.flat(1); // [2, 3, 4, 5 ,7,7, [8, 9, [1, 1]]]

myArray.flat(2); // [2, 3, 4, 5 ,7,7, 8, 9, [1, 1]]

//if you dont know the depth of the array you can use infinity
myArray.flat(infinity); // [2, 3, 4, 5 ,7,7, 8, 9, 1, 1];
```

**[⬆ Back to Top](#table-of-contents)**

### Get unique values in an array

```javascript
const numbers = [1, 1, 3, 2, 5, 3, 4, 7, 7, 7, 8];

//Ex1
const unieqNumbers = numbers.filter((v, i, a) => {
  console.log(v);
  console.log(i);
  console.log(a);
  a.indexOf(v) === i;
});
console.log(unieqNumbers); //[1,3,2,5,4,7,8]

//Ex2
const unieqNumbers2 = Array.from(new Set(numbers));
console.log(unieqNumbers2); //[1,3,2,5,4,7,8]

//Ex3
const unieqNumbers3 = [...new Set(numbers)];
console.log(unieqNumbers3); //[1,3,2,5,4,7,8]

//EX4 lodash
const unieqNumbers4 = _.uniq(numbers);
console.log(unieqNumbers4); //[1,3,2,5,4,7,8]
```

**[⬆ Back to Top](#table-of-contents)**

### Copy Text to Clipboard

```javascript
function copyToClipboard() {
  const copyText = document.getElementById("myInput");
  copyText.select();
  document.execCommand("copy");
}
//new API
function copyToClipboard() {
  navigator.clipboard.writeText(document.querySelector("#myInput").value);
}
```

**[⬆ Back to Top](#table-of-contents)**

### Nested Destructuring ✔

```javascript
const user = {
  id: 459,
  name: "JS snippets",
  age: 29,
  education: {
    degree: "Masters",
  },
};

const {
  education: { degree },
} = user;
console.log(degree); //Masters
```

**[⬆ Back to Top](#table-of-contents)**

### URLSearchParams

```javascript
//The URLSearchParams interface defines utility methods to work with the query string of a URL.

const urlParams = new URLSearchParams("?post=1234&action=edit");

console.log(urlParams.has("post")); // true
console.log(urlParams.get("action")); // "edit"
console.log(urlParams.getAll("action")); // ["edit"]
console.log(urlParams.toString()); // "?post=1234&action=edit"
console.log(urlParams.append("active", "1")); // "?post=1234&action=edit&active=1"
```

**[⬆ Back to Top](#table-of-contents)**

### Count elements in an array

```javascript
const myFruits = ["Apple", "Orange", "Mango", "Banana", "Apple", "Apple", "Mango"];

//first option
const countMyFruits = myFruits.reduce((countFruits, fruit) => {
  countFruits[fruit] = (countFruits[fruit] || 0) + 1;
  return countFruits;
}, {});
console.log(countMyFruits);
// { Apple:3, Banana:1, Mango:2, Orange:1 }

//seconf option ✔
const fruitsCounter = {};

for (const fruit of myFruits) {
  fruitsCounter[fruit] = fruitsCounter[fruit] ? fruitsCounter[fruit] + 1 : 1;
}

console.log(fruitsCounter);
// { Apple:3, Banana:1, Mango:2, Orange:1 }
```

**[⬆ Back to Top](#table-of-contents)**

### Aliases with JavaScript Destructuring ✔

```javascript
//There are cases where you want the destructured variable to have a different name than the property name

const obj = {
  name: "JSsnippets",
};

// Grabs obj.name as { pageName }
const { name: pageName } = obj;

//log our alias
console.log(pageName); // JSsnippets
```

**[⬆ Back to Top](#table-of-contents)**

### The Object.is() method determines whether two values are the same value

```javascript
Object.is("foo", "foo"); // true

Object.is(null, null); // true

Object.is(Nan, Nan); // true 😱

const foo = { a: 1 };
const bar = { a: 1 };
Object.is(foo, foo); // true
Object.is(foo, bar); // false
```

**[⬆ Back to Top](#table-of-contents)**

### Freeze an object ✔

```javascript
const obj = {
  name: "JSsnippets",
  age: 29,
  address: {
    street: "JS",
  },
};

const frozenObject = Object.freeze(obj);

frozenObject.name = "weLoveJS"; // Uncaught TypeError

//Although, we still can change a property’s value if it’s an object:

frozenObject.address.street = "React"; // no error, new value is set

delete frozenObject.name; // Cannot delete property 'name' of #<Object>

//We can check if an object is frozen by using
Object.isFrozen(obj); //true
```

**[⬆ Back to Top](#table-of-contents)**

### Printing Object keys and values

```javascript
const obj = {
  name: "JSsnippets",
  age: 29,
};

//Object.entries() method is used to return an array consisting of enumerable property
//[key, value] pairs of the object which are passed as the parameter.

for (let [key, value] of Object.entries(obj)) {
  console.log(`${key}: ${value}`);
}

//expected output:
// "name: Jssnippets"
// "age: 29"
// order is not guaranteed
```

**[⬆ Back to Top](#table-of-contents)**

### Capture the right click event

```javascript
window.oncontextmenu = () => {
  console.log("right click");
  return false; // cancel default menu
};
//or

window.addEventListener(
  "contextmenu",
  () => {
    console.log("right click");
    return false; // cancel default menu
  },
  false,
);
```

**[⬆ Back to Top](#table-of-contents)**

### In HTML5, you can tell the browser when to run your JavaScript code

```javascript

//Without async or defer, browser will run your script immediately, before rendering the elements that's below your script tag.
<script src="myscript.js"></script>

//With async (asynchronous), browser will continue to load the HTML page and render it while the browser load and execute the script at the same time.
//Async is more useful when you really don't care when the script loads and nothing else that is user dependent depends upon that script loading.(for scripts likes Google analytics)
<script async src="myscript.js"></script>

//With defer, browser will run your script when the page finished parsing. (not necessary finishing downloading all image files.
<script defer src="myscript.js"></script>
```

**[⬆ Back to Top](#table-of-contents)**

### Nullish coalescing operator

```javascript
// an equality check against nullary values (e.g. null or undefined). Whenever the expression to the left of the ?? operator evaluates to either //undefined or null, the value defined to the right will be returned.

const foo = undefined ?? "default string";
console.log(foo);
// expected output: "default string"

const age = 0 ?? 30;
console.log(age);
// expected output: "0"
```

**[⬆ Back to Top](#table-of-contents)**

### Optional chaining

```javascript
const car = {};
const carColor = car.name.color;
console.log(carColor);
// error- "Uncaught TypeError: Cannot read property 'carColor' of undefined

//In JavaScript, you can first check if an object exists, and then try to get one of its properties, like this:
const carColor = car && car.name && car.name.color;
console.log(carColor);
//undefined- no error

//Now this new optional chaining operator will let us be even more fancy:

const newCarColor = car?.name?.color;
console.log(newCarColor);
//undefined- no error

//You can use this syntax today using @babel/plugin-proposal-optional-chaining
```

**[⬆ Back to Top](#table-of-contents)**

### globalThis

```javascript
Accessing the global property in JavaScript has always posed some difficulty. This is because
different platforms have different ways to access it.

Client-side JavaScript uses window or self

Node.js uses global

Web workers use self

The globalThis property provides a standard way of accessing the global 'this' value across environments. you can access the global object in a consistent manner without having to know which environment the code is being run in.

console.log(globalThis) //get the global this depends on your environment

```

**[⬆ Back to Top](#table-of-contents)**

# The second argument of JSON.stringify lets you cherry-pick 🍒 keys to serialize.

```javascript
const user = {
  id: 459,
  name: "JS snippets",
  age: 29,
  education: {
    degree: "Masters",
  },
};

JSON.stringify(user, [name, age], 2);

/*
returns

{
  "name": "JS snippets",
  "age": 29
}


*/
```

**[⬆ Back to Top](#table-of-contents)**

### Fire an event listener only once

```javascript
const el = document.getElementById("btn");

function myClickHandler() {
  console.log("this click will only fire once");
}

el.addEventListener("click", myClickHandler, {
  once: true,
});
```

**[⬆ Back to Top](#table-of-contents)**

### Vanilla JS toggle

```javascript
const span = document.querySelector("span");
let classes = span.classList;

span.addEventListener("click", function () {
  let result = classes.toggle("active");

  if (result) {
    console.log("active class was added");
  } else {
    console.log("active class was removed");
  }
});
```

**[⬆ Back to Top](#table-of-contents)**

### Check if a string is a valid JSON

```javascript
function isJson(str) {
  try {
    JSON.parse(str);
  } catch (e) {
    //the json is  not ok
    return false;
  }
  //the json is ok
  return true;
}
```

**[⬆ Back to Top](#table-of-contents)**

### getBoundingClientRect

```javascript
//getBoundingClientRect provides you with important pieces of data about an
//HTML element’s size and positioning.

const bodyBounderies = document.body.getBoundingClientRect();
// =>  {
//       top: Number,
//       left: Number,
//       right: Number,
//       bottom: Number,
//       x: Number,
//       y: Number,
//       width: Number,
//       height: Number,
//     }
```

**[⬆ Back to Top](#table-of-contents)**

### Check if a node is in the viewport

```javascript
const image = document.querySelector(".animate-me");

observer = new IntersectionObserver((entries) => {
  const [myImg] = entries;
  if (myImg.intersectionRatio > 0) {
    myImg.target.classList.add("fancy");
  } else {
    myImg.target.classList.remove("fancy");
  }
});

observer.observe(image);
```

**[⬆ Back to Top](#table-of-contents)**

### Notify when element size is changed

```javascript
const foo = document.getElementById("foo");

const observer = new ResizeObserver((entries) => {
  for (let entry of entries) {
    const cr = entry.contentRect;
    console.log = `Size: ${cr.width}px X ${cr.height}px`;
  }
});
observer.observe(foo);
```

**[⬆ Back to Top](#table-of-contents)**

### Date Formatter

```js
// Date Formatter
function formatDate(userDate) {
  // format from M/D/YYYY to YYYYMMDD
  const dateArr = userDate.split("/");
  const day = dateArr[1].length === 2 ? dateArr[1] : "0" + dateArr[1];
  const month = dateArr[0].length === 2 ? dateArr[0] : "0" + dateArr[0];
  const year = dateArr[2];
  return year + month + day;
}
console.log(formatDate("1/31/2014"));

// or

function formatDate(userDate) {
  // format from M/D/YYYY to YYYYMMDD
  console.log("Parse", Date.parse(userDate)); //Parse number
  console.log("new", typeof new Date(userDate)); //new object

  var x = new Date(userDate);
  var y = x.getFullYear().toString();
  var m = (x.getMonth() + 1).toString();
  var d = x.getDate().toString();
  d.length == 1 && (d = "0" + d);
  m.length == 1 && (m = "0" + m);
  var yyyymmdd = y + m + d;
  return yyyymmdd;
}

console.log(formatDate("12/31/2014"));
```

**[⬆ Back to Top](#table-of-contents)**

### Reversing string

```js
// Simply reversing the string wont give the solution.
// Get each word.
// Reverse It
// Again rejoin

var str = "This is fun, hopefully.";
// console.log(str.split("").reverse().join("").split(" ").reverse().join(" "));

console.log(
  str
    .split(" ")
    .map((el) => el.split("").reverse().join(""))
    .join(" "),
);

// with regex
String.prototype.replaceAll = function (find, replace) {
  var target = this;
  return target.replace(new RegExp(find, "g"), replace);
};
str = "ghktestlllltest-sdds";
str = str.replaceAll("test", "");
console.log(str);

// str = "ghktestlllltest-sdds"
// str = str.replace(/test/g, '');
// alert(str)
```

### JavaScript Performance API

    The Performance API is designed to help developers locate and solve performance problems and optimize page loading speed and user experience. It can be used in the following scenarios:
    - Web Page Performance Monitoring
    - Performance Optimization
    - User Experience Analysis
    - Performance Benchmarking

- Get Page Load Time:
  ```js
  const loadTime =
    window.performance.timing.loadEventEnd - window.performance.timing.navigationStart;
  console.log(`Page load time: ${loadTime}ms`);
  ```
- Measuring Resource Load Time:

  ```js
  const resourceTiming = window.performance.getEntriesByType("resource");
  resourceTiming.forEach((resource) => {
    console.log(`${resource.name} load time: ${resource.duration}ms`);
  });
  ```

- Monitor User Interaction Latency:
  ```js
  const interactionStart = Date.now();
  document.addEventListener("click", () => {
    const interactionEnd = Date.now();
    const interactionDelay = interactionEnd - interactionStart;
    console.log(`User click delay:${interactionDelay}ms`);
  });
  ```
- Page Load Time Monitoring and Optimization:

  ```js
  // Monitoring page load time
  const loadTime =
    window.performance.timing.loadEventEnd - window.performance.timing.navigationStart;
  console.log(`Page load time: ${loadTime}ms`);

  // Monitor resource load time
  const resourceTiming = window.performance.getEntriesByType("resource");
  resourceTiming.forEach((resource) => {
    console.log(`${resource.name} load time: ${resource.duration}ms`);
  });
  ```

- Resource loading performance analysis:

  ```js
  // Monitor the load time of a critical resource
  const keyResources = [
    "https://example.com/css/style.css",
    "https://example.com/js/main.js",
  ];
  keyResources.forEach((resource) => {
    const resourceEntry = window.performance.getEntriesByName(resource)[0];
    console.log(`${resource} load time: ${resourceEntry.duration}ms`);
  });
  ```

- User interaction latency monitoring:

  ```js
  // Monitor user click latency
  const interactionStart = Date.now();
  document.addEventListener("click", () => {
    const interactionEnd = Date.now();
    const interactionDelay = interactionEnd - interactionStart;
    console.log(`User click delay: ${interactionDelay}ms`);
  });
  ```

- Page Animation Performance Monitoring:

  ```js
  // Monitoring animation performance
  function measureAnimationPerformance() {
    const animationStart = performance.now();
    // Execute animation operations
    requestAnimationFrame(() => {
      const animationEnd = performance.now();
      const animationDuration = animationEnd - animationStart;
      console.log(`Animation execution time: ${animationDuration}ms`);
    });
  }

  measureAnimationPerformance();
  ```

- :
  ```js
  const loadTime =
    window.performance.timing.loadEventEnd - window.performance.timing.navigationStart;
  console.log(`Page load time: ${loadTime}ms`);
  ```
  **[⬆ Back to Top](#table-of-contents)**

### Array

**Common Functional Array Methods:**

- **map(callback):**
  - Creates a new array by applying a function to each element of the original array.
  - Example: `const doubledNumbers = numbers.map(number => number * 2);`
- **filter(callback):**
  - Creates a new array containing elements that pass a certain test.
  - Example: `const evenNumbers = numbers.filter(number => number % 2 === 0);`
- **reduce(callback, initialValue):**
  - Reduces an array to a single value by applying a function to each element and accumulating a result.
  - Example: `const sum = numbers.reduce((accumulator, number) => accumulator + number, 0);`
- **forEach(callback):**
  - Executes a function for each element of an array, but doesn't create a new array.
  - Example: `numbers.forEach(number => console.log(number));`
- **find(callback):**
  - Returns the first element in an array that satisfies a test.
  - Example: `const firstEvenNumber = numbers.find(number => number % 2 === 0);`
- **some(callback):**
  - Tests whether at least one element in an array passes a test.
  - Example: `const hasEvenNumber = numbers.some(number => number % 2 === 0);`
- **every(callback):**
  - Tests whether all elements in an array pass a test.
  - Example: `const allEvenNumbers = numbers.every(number => number % 2 === 0);`

**Key Advantages:**

- **Concise and expressive:** Functional array methods often lead to more concise and readable code compared to traditional loops.
- **Chainable:** Array methods can be chained together to create complex operations in a fluent style.
- **Pure and predictable:** Functional approaches often emphasize pure functions and immutability, promoting easier testing and reasoning about code.
- **Performance optimizations:** Some functional array methods can be optimized by JavaScript engines for better performance.

**In essence, functional array functions provide a powerful and elegant way to manipulate and process arrays in JavaScript, leading to cleaner, more maintainable, and potentially more performant code.**

```js
// Last element
arr.at(-1);
// 2nd last element
arr.at(-2);
```

**[⬆ Back to Top](#table-of-contents)**

### Closure

A function that has access to variables in its outer (enclosing) function's scope, even after the outer function has returned. Closures can have multiple nested functions, creating closures within closures. This allows for even more encapsulation and control over data access.

```js
function createCounter() {
  let count = 0; // Outer scope variable

  return function () {
    // Inner function (closure)
    count++;
    return count;
  };
}

const counter1 = createCounter();
const counter2 = createCounter();

console.log(counter1()); // Output: 1
console.log(counter2()); // Output: 1 (separate count for each closure)
console.log(counter1()); // Output: 2
console.log(counter2()); // Output: 2
```

**[⬆ Back to Top](#table-of-contents)**

### [Intl Formatter Docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl)

- Date Time

  ```js
  const formatter = new Intl.DateTimeFormat("en-US");
  console.log(formatter.format(new Date()));
  ```

- Relative Time Format

  ```js
  const formatter = new Intl.RelativeTimeFormat(undefined, { numeric: "auto" });
  console.log(formatter.format(1, "day");
  ```

  **[⬆ Back to Top](#table-of-contents)**

- Number Format

  ```js
  const currencyFormatter = new Intl.NumberFormat(undefined, {
    currency: "USD",
    style: "currency",
  });
  const unitFormatter = new Intl.NumberFormat(undefined, {
    unit: "liter",
    style: "unit",
    unitDisplay: "long",
  });
  const numberFormatter = new Intl.NumberFormat(undefined, { notation: "compact" });
  const fractionFormatter = new Intl.NumberFormat(undefined, {
    maximumFractionDigits: 2,
    minimumFractionDigits: 1,
  });
  console.log(currencyFormatter.format(15412154));
  ```

  **[⬆ Back to Top](#table-of-contents)**

### Console Logging Methods

- To print array as a table

  ```js
  const users = [
    { name: "a", age: 25 },
    { name: "b", age: 26 },
  ];
  console.table(users);
  ```

- To print How much Time it take

  ```js
  console.time("Loop");
  for (let i = 0; i < 100000; i++) {
    //
  }
  console.timeEnd("Loop");
  ```

  **[⬆ Back to Top](#table-of-contents)**

### UUID and Date

- JS Built in uuid generator API

  ```js
  console.log(crypto.randomUUID());
  ```

- Get time difference between dates in hour

  ```js
  const today = new Date();
  const yesterday = new Date();
  yesterday.setDate(yesterday.getDate() - 1);
  const timeDiff = today.getTime() - yesterday.getTime();
  const diffInMs = Math.abs(timeDiff);
  const diffInMinutes = Math.floor(diffInMs / (1000 * 60 * 60));
  ```

  **[⬆ Back to Top](#table-of-contents)**

### Discriminating Union

```ts
// Discriminating Union
type LoadingState = {
  state: "Loading";
};
type SuccessState = {
  state: "Success";
  data: { id: string; name: string };
};
type ErrorState = {
  state: "Error";
  error: { message: string };
};
type CurrentState = LoadingState | SuccessState | ErrorState;
function print(loc: CurrentState) {
  switch (location.state) {
    case "Loading":
      console.log(location.state);
      break;
    case "Success":
      console.log(location.data.name);
      break;
    case "Error":
      console.log(location.error.message);
      break;
    default:
      break;
  }
}
```

**[⬆ Back to Top](#table-of-contents)**

### Hide Source Code

```js
<script>
document.addEventListener("contextmenu", e => e.preventDefault(), false);

document.addEventListener("keydown", e => {
  // DISABLE CONTROL AND ALL FUNCTION KEYS
  // if (e.ctrlKey || (e.keyCode>=112 && e.keyCode<=123)) {
  // DISABLE CONTROL AND F12
  if (e.ctrlKey || e.keyCode==123) {
    e.stopPropagation();
    e.preventDefault();
  }
});
</script>
```

**[⬆ Back to Top](#table-of-contents)**
