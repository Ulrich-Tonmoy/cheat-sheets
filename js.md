# JS

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
