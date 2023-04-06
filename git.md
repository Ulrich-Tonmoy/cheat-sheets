# GIT

## Git Commit Patterns

<img alt="git commit patterns" src="https://github.com/Ulrich-Tonmoy/cheat-sheets/blob/main/assets/git/1.png"/>
<img alt="git commit patterns" src="https://github.com/Ulrich-Tonmoy/cheat-sheets/blob/main/assets/git/2.png"/>

- [gitmoji](https://gitmoji.dev/)

- <code>test</code>: indicates any type of creation or alteration of test codes. <br>
  **Example:** Creation of unit tests.

- <code>feat</code>: indicates the development of a new feature for the project. <br>
  **Example:** Adding a service, functionality, endpoint, etc.

- <code>refactor</code>: used when there is a code refactoring that does not have any impact on the system logic/rules. <br>
  **Example:** Code changes after a code review

- <code>style</code>: used when there are code formatting and style changes that do not change the system in any way. <br>
  **Example:** Change the style-guide, change the lint convention, fix indentations, remove white spaces, remove comments, etc…

- <code>fix</code>: used when correcting errors that are generating bugs in the system. <br>
  **Example:** Apply a handling for a function that is not behaving as expected and returning an error.

- <code>chore</code>: indicates changes to the project that do not affect the system or test files. These are developmental changes. <br>
  **Example:** Change rules for eslint, add prettier, add more file extensions to .gitignore

- <code>docs</code>: used when there are changes in the project documentation. <br>
  **Example:** add information in the API documentation, change the README, etc.

- <code>build</code>: used to indicate changes that affect the project build process or external dependencies. <br>
  **Example:** Gulp, add/remove npm dependencies, etc…

- <code>perf</code>: indicates a change that improved system performance. <br>
  **Example:** change ForEach to While, etc…

- <code>ci</code>: used for changes in CI configuration files. <br>
  **Example:** Circle, Travis, BrowserStack, etc…

- <code>revert</code>: indicates the reversal of a previous commit.

## Cache clear

- If after adding .env to gitignore still it gets added to the commit then try this command <br/>
  `git rm .env --cached`
