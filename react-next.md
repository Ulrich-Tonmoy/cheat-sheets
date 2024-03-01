# React & Next

- [React Ecosystem](#react-ecosystem)
- [React Best Practices](#react-best-practices)
- [Interview Questions](#interview-questions)
- [Tailwind CSS](#tailwind-css)

## React Ecosystem

1. #### Getting Started
   - [Vite (For creating react projects)](https://vitejs.dev/guide/)
   - [Next JS (React Framework)](https://nextjs.org/)
   - [Remix (React Framework)](https://remix.run/)
   - [Astro (Has React addons)](https://astro.build/)
   - [CodeSandbox (For trying online)](https://codesandbox.io/)
   - [StackBlitz (For trying online)](https://stackblitz.com/)
2. #### Auth
   - [Clerk](https://clerk.com/)
   - [Kinde](https://kinde.com/)
3. #### Routing
   - [React Router Dom](https://reactrouter.com/en/main)
   - [TanStack Router](https://tanstack.com/router/v1)
4. #### Client State Management
   - [Redux Toolkit](https://redux-toolkit.js.org/)
   - [Zustand](https://zustand-demo.pmnd.rs/)
   - [Jotai](https://jotai.org/)
5. #### Server State Management
   - [RTK Query](https://redux-toolkit.js.org/rtk-query/overview)
   - [TanStack Query](https://tanstack.com/query/latest)
   - [swr](https://swr.vercel.app/)
   - [Apollo Client](https://www.apollographql.com/docs/react/)
6. #### Form Handling
   - [React Hook Form](https://react-hook-form.com/)
   - [Formik](https://formik.org/docs/overview)
7. #### Testing
   - [Vitest](https://vitest.dev/)
   - [Playwright](https://playwright.dev/)
   - [React Testing Library](https://testing-library.com/docs/react-testing-library/intro/)
8. #### Styling
   - [Tailwind CSS](https://tailwindcss.com/)
     - [flowbite](https://flowbite.com/)
     - [tailblocks](https://tailblocks.cc/)
     - [tailwindtoolbox](https://tailwindtoolbox.com/)
     - [tailkit](https://tailkit.com/)
     - [tailwindwidgets](https://tailwindwidgets.com/)
     - [merakiui](https://merakiui.com/)
   - [styled-components](https://styled-components.com/)
   - [Emotion](https://emotion.sh/docs/introduction)
9. #### UI Component
   - [shadcn/ui](https://ui.shadcn.com/)
   - [aceternity](https://ui.aceternity.com/)
   - [park-ui](https://park-ui.com/)
   - [Ant Design](https://ant.design/)
   - [MUI](https://mui.com/)
   - [Mantine](https://mantine.dev/)
   - [Chakra UI](https://chakra-ui.com/)
   - [daisyUI](https://daisyui.com/)
   - [headlessui](https://headlessui.com/)
   - [blueprintjs](https://blueprintjs.com/docs/)
   - [React Suite](https://rsuitejs.com/)
10. #### Animation
    - [react-spring](https://www.react-spring.dev/)
    - [Framer Motion](https://www.framer.com/motion/)
11. #### Data Visualization/Chart
    - [VictoryChart](https://formidable.com/open-source/victory/docs/victory-chart/)
    - [react-chartjs-2](https://react-chartjs-2.js.org/)
    - [Recharts](https://recharts.org/en-US/)
12. #### Table
    - [TanStack Table](https://tanstack.com/table/v8)
13. #### Internationalization
    - [react-i18next](https://react.i18next.com/)
    - [FormatJS](https://formatjs.io/docs/react-intl/)
14. #### DevTools
    - [React Developer Tools (chrome link)](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
    - [Redux DevTools (chrome link)](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd)
    - [Testing Playground (chrome link)](https://chrome.google.com/webstore/detail/testing-playground/hejbmebodbijjdhflfknehhcgaklhano)
    - [React Hook Form DevTools](https://react-hook-form.com/dev-tools)
    - [TanStack Query DevTools](https://tanstack.com/query/v4/docs/react/devtools)
    - [Fake Filler (chrome link)](https://chrome.google.com/webstore/detail/fake-filler/bnjjngeaknajbdcgpfkgnonkmififhfo)
    - [Responsive Viewer (chrome link)](https://chrome.google.com/webstore/detail/responsive-viewer/inmopeiepgfljkpkidclfgbgbmfcennb)
    - [Web Developer (chrome link)](https://chrome.google.com/webstore/detail/web-developer/bfbameneiokkgbdmiekhjnmfkcnldhhm)
    - [CSS Peeper (chrome link)](https://chrome.google.com/webstore/detail/css-peeper/mbnbehikldjhnfehhnaidhjhoofhpehk)
    - [CSS Viewer for Google Chrome (chrome link)](https://chrome.google.com/webstore/detail/css-viewer-for-google-chr/eedfldkdghfkhdcanjnfiklpeehbfoag)
    - [Project Naptha (chrome link)](https://chrome.google.com/webstore/detail/project-naptha/molncoemjfmpgdkbdlbjmhlcgniigdnf)
15. #### Documentation Apps
    - [Docusaurus](https://docusaurus.io/)
    - [Nextra](https://nextra.site/)
16. #### Component Dev Env
    - [Storybook](https://storybook.js.org/)
17. #### Type Checking
    - [TypeScript](https://www.typescriptlang.org/)
    - [JSDoc](https://jsdoc.app/)
18. #### Mobile Apps
    - [React Native](https://reactnative.dev/)
    - [Tauri](https://tauri.app/)
    - [nativescript](https://nativescript.org/)
19. #### Other Libraries
    - [dnd kit](https://dndkit.com/)
    - [react-dnd](https://react-dnd.github.io/react-dnd/about)
    - [react-dropzone](https://react-dropzone.js.org/)
    - [Supabase](https://supabase.com/)
    - [appwrite](https://appwrite.io/)

### Fundamental building blocks of React, known as primitives:

**1. Components:**

- Reusable pieces of UI that encapsulate their own logic and rendering.
- Can be classified as:
  - **Functional Components:** Simple JavaScript functions that return JSX.
  - **Class Components:** Extend React.Component and manage state and lifecycle methods using `this`.

**2. JSX:**

- A syntax extension for JavaScript that allows writing HTML-like structures within code.
- Elements in JSX can represent both React components and DOM elements.

**3. Props:**

- Data passed from parent components to child components.
- Used to customize the behavior and appearance of child components.

**4. State:**

- Data that can change over time within a component.
- Managed using the `useState` hook in functional components or `this.state` in class components.
- Changes to state trigger re-renders of the component and its children.

**5. Rendering:**

- The process of generating the UI based on the component's state and props.
- React uses a virtual DOM to efficiently update only the necessary parts of the actual DOM.

**6. Lifecycle Methods:**

- Methods that are called at different stages of a component's lifecycle (mounting, updating, unmounting).
- Used for tasks like data fetching, subscriptions, or cleanup.
- Available in class components, but functional components can use hooks for similar effects.

**7. Hooks:**

- Functions that allow you to "hook into" React features like state and lifecycle methods from functional components.
- Examples include `useState`, `useEffect`, `useContext`, `useMemo`, and more.

**8. Virtual DOM:**

- An in-memory representation of the actual DOM.
- React uses it to compare changes and apply only the necessary updates to the real DOM, improving performance.

**9. Reconciliation:**

- The process of comparing the virtual DOM with the actual DOM to determine the minimal changes needed.
- React's efficient reconciliation algorithm is a key factor in its performance.

### useMemo

```js
// The useMemo hook is used to memoize the result of a computation. Memoization is a technique where the result of a function is cached and returned when the same inputs occur again, instead of recomputing the result. This can be useful for optimizing performance in certain scenarios, especially when dealing with expensive calculations or rendering.

import React, { useState, useMemo } from "react";

function App() {
  const [count, setCount] = useState(0);
  const [toDos, setToDos] = useState([{ id: 1, text: "Learn React" }]);

  const filteredToDos = useMemo(() => {
    // Expensive filtering operation
    return toDos.filter((todo) => todo.id !== count);
  }, [toDos, count]);

  return (
    <div>
      <p>Count: {count}</p>
      <button onClick={() => setCount(count + 1)}>Increment</button>
      <ul>
        {filteredToDos.map((todo) => (
          <li key={todo.id}>{todo.text}</li>
        ))}
      </ul>
    </div>
  );
}
```

## React Best Practices

### The best way to filter using useSearchParam

```js
export default function App() {
  const [searchParam, setSearchParam] = useSearchParam({ q: "", isActive: false });

  const q = searchParam.get("q");
  const isActive = searchParam.get("isActive") === "true";

  return (
    <>
      <input
        type="text"
        id="q"
        value={q}
        onChange={(e) =>
          setSearchParam(
            (prev) => {
              prev.set("q", e.target.value);
              return prev;
            },
            { replace: true },
          )
        }
      />
      <input
        type="checkbox"
        id="isActive"
        value={isActive}
        onChange={(e) =>
          setSearchParam((prev) => {
            prev.set("isActive", e.target.checked);
            return prev;
          })
        }
      />
    </>
  );
}
```

### The best way to change state in react and get the updated value instantly

```js
export default function App() {
  const [array, setArray] = useState([1, 2, 3]);

  const addToStart = (num) => {
    setArray((prev) => {
      return [num, ...prev];
    });
  };
  const addToEnd = (num) => {
    setArray((prev) => {
      return [...prev, num];
    });
  };

  return (
    <>
      {array}
      <button
        onClick={() => {
          addToStart(0);
          addToEnd(0);
        }}
      >
        Add
      </button>
    </>
  );
}
```

### To change tab title or html page title in React

```js
// Add this to the page components and change the title based on the page
document.title = "A new title";
```

### Functions

```js
// ES5
function getSum(a, b) {
  return a + b;
}

// ES6
const getSum = (a, b) => a + b;
```

### Template Literal String

```js
// ES5
var name = "Name";
console.log("My name is " + name);

// ES6
const name = "Name";
console.log(`My name is ${name}`);
```

### Use const & let instead of var

```js
// ES5
var fruits = ["apple", "banana"];

// ES6
let fruits = ["apple", "banana"];
fruits.push("mango");

const workingHours = 8;
```

### Object Destructuring

```js
var person = {
  name: "John",
  age: 32,
};

// ES5
var name = person.name;
var age = person.age;

// ES6
const { name, age } = person;
```

### Defining Objects

```js
var name = "John";
var age = 32;
var designations = "Game Developer";
var workingHours = 8;

// ES5
var person = {
  name: name,
  age: age,
  designation: designation,
  workingHours: workingHours,
};

// ES6
const person = { name, age, designation, workingHours };
```

### Component Name Should be in PascalCase

```js
const helloText = () => <div>Hello</div>; // wrong

const HelloText = () => <div>Hello</div>; // correct
```

### Variable & Function Names Should be in camelCase

```js
const working_hours = 10; // bad approach

const workingHours = 10; // good approach

const get_sum = (a, b) => a + b; // bad approach

const getSum = (a, b) => a + b; // good approach
```

### ID & Class Names Should be in kebab-case

```html
<!--bad approach-->
<div className="hello_word" id="hello_world">Hello World</div>

<!--good approach -->
<div className="hello-word" id="hello-world">Hello World</div>
```

### Always Check null & undefined for Objects & Arrays

```js
const person = {
  name: "John",
  state: "LA",
};
console.log("Age", person.age); // error
console.log("Age", person.age ? person.age : "Not available"); // correct
console.log("Age", person.age ?? "Not available"); //correct

const oddNumbers = undefined;
console.log(oddNumbers.length); // error
console.log(oddNumbers.length ? oddNumbers.length : "Array is undefined"); // correct
console.log(oddNumbers.length ?? "Array is undefined"); // correct
```

### Avoid Inline Styling

```js
const text = <div style={{ fontWeight: "bold" }}>Happy Learning!</div>; // bad approach

const text = <div className="learning-text">Happy Learning!</div>; // good approach
```

#### In .css file

```css
.learning-text {
  font-weight: bold;
}
```

### Avoid DOM Manipulation

#### Bad approach

```html
<div id="error-msg">Please enter a valid value</div>
```

```js
document.getElementById("error-msg").visibility = visible;
```

#### Good approach

```js
const [isValid, setIsValid] = useState(false);

<div hidden={isValid}>Please enter a valid value</div>;
```

### Always Remove Every Event Listener in useEffect

```js
const printHello = () => console.log("HELLO");
useEffect(() => {
  document.addEventListener("click", printHello);
  return () => document.removeEventListener("click", printHello);
});
```

### Avoid Repetition, Use Generic Components

```jsx
const Input=(props)=>{
  const [inputValue, setInputValue]=useState('');
  return(
    <label>{props.thing}</label>
    <input type='text' value={inputValue} onChange={(e)=>setInputValue(e.target.value)} />
  )
}

// Import Input and use instead of JSX
<div>
    <Input thing="First Name" />
    <Input thing="Second Name" />
</div>
```

### Use Ternary Operator Instead of if/else if Statements

```js
// Bad approach
if (name === "Ali") {
  return 1;
} else if (name === "Bilal") {
  return 2;
} else {
  return 3;
}

// Good approach
name === "Ali" ? 1 : name === "Bilal" ? 2 : 3;
```

### Make index.js File Name to Minimize Importing Complexity

```js
// If you have a file named index.js in a directory named actions and you want to import action from it in your component, your import would be like this

import { pageName } from "src/components/pages/index"; // Bad
import { pageName } from "src/components/pages"; // Good
```

### Destructuring of Props

```js
// Bad approach
const Details = (props) => {
  return (
    <div>
      <p>{props.name}</p>
      <p>{props.age}</p>
      <p>{props.designation}</p>
    </div>
  );
};

// Good approach
const Details = ({ name, age, designation }) => {
  return (
    <div>
      <p>{name}</p>
      <p>{age}</p>
      <p>{designation}</p>
    </div>
  );
};
```

### Don't Try to Access Modified State Variable in the Same Function

```js
// In a function, if you are assigning a value to a state variable then you won't be able to access that assigned value even after it has been assigned in that function

const Message = () => {
  const [message, setMessage] = useState("Hello World");
  const changeMessage = (messageText) => {
    setMessage("Happy Learning");
    console.log(message); // It will print Hello World on console
  };

  return <div>{message}</div>;
};
```

### Use === Operator instead of ==

```js
// While comparing two values, strictly checking both values and their data types is a good practice.

"2" == 2 ? true : false; // true
"2" === 2 ? true : false; // false
```

# Interview Questions

### Find 2nd largest number in array

```js
function nextBiggest(arr) {
  let max = 0,
    result = 0;

  for (const value of arr) {
    const nr = Number(value);
    if (nr > max) {
      [result, max] = [max, nr]; // save previous max
    } else if (nr < max && nr > result) {
      result = nr; // new second biggest
    }
  }
  return result;
}

const arr = ["20", "120", "111", "215", "215", "215", "54", "78"];
console.log(nextBiggest(arr));
```

### IIFE

```js
(async () => {
  await asyncCodeHere();
})();
```

### Suspense

```js
<Suspense fallback={<Loading />}>
  <SomeComponent />
</Suspense>
```

# Tailwind CSS

```html
<!-- Will clamp the text to max line <3> or give value -->
<div className="line-clamp-3">text</div>

<!-- Will clamp the text to max 1 line -->
<div className="truncate">text</div>
```

```html
<!-- put space between children without flex box -->
<div className="divide-y-8">
  <div className="size-8"></div>
  <div className="size-8"></div>
  <div className="size-8"></div>
</div>
```

```html
<!-- gradient -->
<div
  className="h-48 w-full bg-gradient-to-r from-red-500 to-green-500 via-white from-20%"
></div>
```

```html
<!-- button focus rings -->
<button className="size-8 bg-red-500 ring-4 ring-green-500">Click</button>
```
