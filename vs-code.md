# VS Code Style

![enter image description here](./assets/vs-code/thumb.png)

## Instructions

1.  Install vs code extension [Outrun Meets Synthwave](https://marketplace.visualstudio.com/items?itemName=codevars.outrun-meets-synthwave)
2.  Install vs code extension [Bearded Icons](https://marketplace.visualstudio.com/items?itemName=BeardedBear.beardedicons)
3.  Install vs code extension [Custom CSS and JS Loader](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css)
4.  Download Mononoki and Fira Code from [Nerd Fonts](https://www.nerdfonts.com/font-downloads) (mononki it's the one I use super clean) but if you want ligatures arrows then use Fira Code)
5.  on vs code open up the user settings cmd + p then search for user settings and copy the settings on the settings.json file from this repo ( if you want it exactly like mines paste it at the bottom if you don't want to override your own settings then paste it at the top of file)
6.  Replace the `vscode_custom_css.imports` depending your operative system, and add your user or file location in your VS Code `settings.json`

```js
On Mac:

{
  "vscode_custom_css.imports": [
    "file:///Users/{your username}/.vscode/extensions/codevars.outrun-meets-synthwave-0.0.1/synthWaveStyles.css"
    ]
}

Windows:

{
  "vscode_custom_css.imports": [
    "file:///C:/Users/{your username}/.vscode/extensions/codevars.outrun-meets-synthwave-0.0.1/synthWaveStyles.css"
    ]
}

Linux:
{
    "vscode_custom_css.imports": [
        "file:///home/{your username}/.vscode/extensions/codevars.outrun-meets-synthwave-0.0.1/synthWaveStyles.css"
    ]
}
```

8. Copy and paste the css inside of the [`codingphase-style.css`](./assets/vs-code/codingphase-style.css) file and replace the styles inside the `synthWaveStyles.css` file

# Workspace tools

- [Git](https://git-scm.com/downloads) - [GitHub Desktop](https://desktop.github.com/)
- [Visual Studio](https://visualstudio.microsoft.com/downloads/) - [VS Code Studio](https://code.visualstudio.com/) - [Notepad++](https://notepad-plus-plus.org/downloads/)
- [MS SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) - [SQL Server Management Studio](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
- [Opera](https://www.opera.com/) - [Firefox](https://www.mozilla.org/en-US/firefox/new/) - [Chrome](https://www.google.com/chrome/)
- [nvm windows](https://github.com/coreybutler/nvm-windows) - [Node](https://nodejs.org/en) - [Deno](https://deno.com/runtime) - [Bun](https://bun.sh/)
- [Python](https://www.python.org/downloads/) - [Rust](https://www.rust-lang.org/tools/install)
- Terminal - Powershell - [Starship](https://starship.rs/)
- [Obsidian](https://obsidian.md/)
  - Excalidraw
  - Dataview
  - Kanban
  - Tasks
  - Style Settings
  - Initiative Tracker
  - Mermaid
  - Home tab
  - Callout Manager
- [Potplayer](https://potplayer.daum.net/)
