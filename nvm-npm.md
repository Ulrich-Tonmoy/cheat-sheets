# NPM + NVM

## NVM (Node Version Manager for using multiple node version in same machine)

- Download from [here](https://github.com/coreybutler/nvm-windows)

- To see version of nvm.
  ```properties
  nvm version
  <!-- or -->
  nvm v
  ```
- Show if node is running in 32 or 64 bit mode. Specify 32 or 64 to override the default architecture.
  ```properties
  nvm arch [32|64]
  ```
- To see all the node versions available for installation.
  ```properties
  nvm list available
  ```
- To install the latest version of node.
  ```properties
  nvm install latest
  ```
- To install the LTS version of node.
  ```properties
  nvm install lts
  ```
- Install a specific version of node.
  ```properties
  nvm install <version>
  ```
  example
  ```properties
  nvm install 18.3.0
  ```
- Uninstall a specific version.
  ```properties
  nvm uninstall <version>
  ```
  example
  ```properties
  nvm uninstall 18.3.0
  ```
- See all the installed node version.
  ```properties
  nvm ls
  ```
- To specify or change the current active version.
  ```properties
  nvm use <version>
  ```
  example
  ```properties
  nvm use 18.3.0
  ```
- To see active version name/no.
  ```properties
  nvm current
  ```

## 8 Useful Npm Commands

### 1. Open a package’s documentation page

```properties
npm docs [package-name] // npm docs lodash
```

### 2. Open a package’s GitHub repo

```properties
npm repo [package-name] // npm repo lodash
```

### 3. Check packages for outdated dependencies

```properties
npm outdated // run it in a project
```

### 4. View all historical versions of a package

```properties
npm v [package-name] versions // npm v lodash versions
```

### 5. Find risky packages in your project

```properties
npm audit // run it in a project
```

### 6. View details of a package

```properties
npm v [package-name] // npm v lodash
```

### 7. npm xmas (For Fun)

```properties
npm xmas
```

### 8. npm visnup (For Fun)

```properties
npm visnup
```

## Npm Commands For Global Execution

1.  Get list of all globally installed npm packages

    ```properties
    npm list -g
    ```

2.  Check if the package is globally installed

    ```properties
    npm list -g <package-name>
    ```

3.  Uninstall global package

    ```properties
    npm uninstall -g <package-name>
    ```

4.  Check which packages are outdated

    ```properties
    npm outdated -g
    ```

5.  Update all global packages

    ```properties
    npm update -g
    ```

6.  Update a global package

    ```properties
    npm update -g <package_name>
    ```

## Npm Commands For updating dependency versions

1.  Check all the upgradable dependency lists

    ```properties
    npx npm-check-updates
    ```

2.  Update all dependency version in package.json file
    ```properties
    npx npm-check-updates -u
    ```
