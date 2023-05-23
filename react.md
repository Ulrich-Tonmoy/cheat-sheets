## React - Best Practices

## React Ecosystem

1. #### Getting Started
   - [Vite (For creating react projects)](https://vitejs.dev/guide/)
   - [Next JS (React Framework)](https://nextjs.org/docs/getting-started/installation) - [Other usefull links](https://github.com/unicodeveloper/awesome-nextjs)
   - [CodeSandbox (For trying online)](https://codesandbox.io/)
   - [StackBlitz (For trying online)](https://stackblitz.com/)
2. #### Routing
   - [React Router Dom](https://reactrouter.com/en/main)
   - [TanStack Router](https://tanstack.com/router/v1)
3. #### Client State Management
   - [Redux Toolkit](https://redux-toolkit.js.org/)
   - [Zustand](https://zustand-demo.pmnd.rs/)
4. #### Server State Management
   - [RTK Query](https://redux-toolkit.js.org/rtk-query/overview)
   - [TanStack Query](https://tanstack.com/query/latest)
   - [Apollo Client](https://www.apollographql.com/docs/react/)
5. #### Form Handling
   - [React Hook Form](https://react-hook-form.com/)
   - [Formik](https://formik.org/docs/overview)
6. #### Testing
   - [Vitest](https://vitest.dev/)
   - [Playwright](https://playwright.dev/)
   - [React Testing Library](https://testing-library.com/docs/react-testing-library/intro/)
7. #### Styling
   - [Tailwind CSS](https://tailwindcss.com/)
   - [styled-components](https://styled-components.com/)
   - [Emotion](https://emotion.sh/docs/introduction)
8. #### UI Component
   - [MUI](https://mui.com/)
   - [Mantine](https://mantine.dev/)
   - [Ant Design](https://ant.design/)
   - [Chakra UI](https://chakra-ui.com/)
   - [Flowbite ](https://flowbite.com/)
   - [daisyUI](https://daisyui.com/)
   - [shadcn/ui](https://ui.shadcn.com/)
   - [headlessui](https://headlessui.com/)
9. #### Animation
   - [react-spring](https://www.react-spring.dev/)
   - [Framer Motion](https://www.framer.com/motion/)
10. #### Data Visualization
    - [VictoryChart](https://formidable.com/open-source/victory/docs/victory-chart/)
    - [react-chartjs-2](https://react-chartjs-2.js.org/)
    - [Recharts](https://recharts.org/en-US/)
11. #### Table
    - [TanStack Table](https://tanstack.com/table/v8)
12. #### Internationalization
    - [react-i18next](https://react.i18next.com/)
    - [FormatJS](https://formatjs.io/docs/react-intl/)
13. #### DevTools
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
14. #### Documentation Apps
    - [Docusaurus](https://docusaurus.io/)
    - [Nextra](https://nextra.site/)
15. #### Component Dev Env
    - [Storybook](https://storybook.js.org/)
16. #### Type Checking
    - [TypeScript](https://www.typescriptlang.org/)
    - [JSDoc](https://jsdoc.app/)
17. #### Mobile Apps
    - [React Native](https://reactnative.dev/)
    - [Tauri](https://tauri.app/)
18. #### Other Libraries
    - [dnd kit](https://dndkit.com/)
    - [react-dropzone](https://react-dropzone.js.org/)
    - [Supabase](https://supabase.com/)

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
