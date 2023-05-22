# JS

## JavaScript Performance API

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
  const keyResources = ["https://example.com/css/style.css", "https://example.com/js/main.js"];
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

## [Intl Formatter Docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl)

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

- Number Format

  ```js
  const currencyFormatter = new Intl.NumberFormat(undefined, { currency: "USD", style: "currency" });
  const unitFormatter = new Intl.NumberFormat(undefined, { unit: "liter", style: "unit", unitDisplay: "long" });
  const numberFormatter = new Intl.NumberFormat(undefined, { notation:"compact" });
  const fractionFormatter = new Intl.NumberFormat(undefined, { maximumFractionDigits: 2, minimumFractionDigits: 1  });
  console.log(currencyFormatter.format(15412154);
  ```

## Console Logging Methods

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
  console.time("Loop")
  for(let i=0;i<100000;i++){
    //
  }
  console.timeEnd("Loop"))
  ```

## JS Built in uuid generator API

```js
console.log(crypto.randomUUID());
```
