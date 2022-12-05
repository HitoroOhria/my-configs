<!-- START doctoc -->
<!-- END doctoc -->

# Step

### Install IDE

- install IntelliJ IDEA from [here](https://www.jetbrains.com/idea/download/#section=mac)

### Sync now!

- [click bottom right setting icon and sync](https://pleiades.io/help/idea/sharing-your-ide-settings.html#IDE_settings_sync)

### Set Theme

- move Preferences > Plugin
- search `One Dark theme` and install
- move Preferences > Appearance & Behavior > Appearance
- select Theme to `One Dark Vivit`

### Set Font

- move Preferences > Editor > Font
- select Font to `Ricty Diminished`
- select Size to 16

### Set Keymap

- move Preferences > Keymap
- set blow shortcuts
    - `Terminal` to `Ctrl + T`
    - `Clone Caret Above` to `Fn + Up Arrow`
    - `Clone Caret Below` to `Fn + Down Arrow`
    - `Tool Windows` > `Database` to `Cmd + 9`
    - `Jump to Navigation Bar` to `Cmd + 0`
    - `Call Hierarchy` to `Ctrl + Shift + H`
    - `Split and Move Right` to `Ctrl + Cmd + S`
    - `Split and Move Down` to `Ctrl + Cmd + V`
    - `Path From Repository Root` to `Shift + Cmd + C`
    - `Code > Code Completion > Basic` to `Alt + Space`
- Tool Windows shortcuts
    - `Hierarchy` to `Cmd + 8`
    - `Database` to `Cmd + 9`
    - `Jump to Navigation Bar` to `Cmd + 0`
- TabMover shortcuts
    - `Move Tab to Next` to `Alt + [`
    - `Move Tab to Next Spliter` to `Alt + [`
    - `Move Tab to Previous` to `Alt + ]`
    - `Move Tab to Previous comand` to `Alt + ]`

## Set Editor

### Inlay Hints

- move Preferences > Editor > Inlay Hints
- uncheck all

### Code Folding

- move Preferences > Editor > General > Code Folding
- uncheck all

### Smart Keys

- uncheck `End on blank line moves caret to indent position`

### Set Live Templates

- click File > Manage IDE Settings > Import Settings...
- select `./live_template_settings.zip`.
- click `OK` and `Import and Restart`.

## Set Plugins

- Atom Material Icons
- Awesome Console
- Grep Console
- Rainbow Brackets
- Sticky Selection
- GitToolBox
- [Relative Line Numbers](https://plugins.jetbrains.com/plugin/7414-relative-line-numbers)
- IdeaVim
- AceJump
- EasyMotion
- TabMover
- Frame Switcher

## Set Language & Frameworks

### Set Markdown

- move Preferences > Language & Frameworks > Markdown
- click `Custom CSS` and paste below
    - like GitHub

```css
/*
背景色、文字色指定
*/
body {
    background-color: white;
    color: #24292e;
}

/*
テーブルの整形 
- 既定だとページ幅いっぱいになっていたのをやめる
- ヘッダーを見やすくする
*/
table {
    width: auto;
    border-collapse: collapse;
    border-spacing: 0;
    border-width: 1px;
}

td, th {
    min-width: 100px;
    background-color: #f9f9f9;
    border-color: #eeeeee;
}

th {
    font-weight: bold;
}

/*
コード
*/
pre, code {
    background-color: rgba(27, 31, 35, 0.05);
    font-size: 85%;
    color: #24292e;
}

/*
引用
*/
blockquote {
    color: #6a737d;
}
```

# Set Tools

## Terminal

- check `copy to clipboard to selection`

## Version Control

### GitToolBox

- move Preferences > VersionControl > GitToolBox
- select General tab
- uncheck below
  - Show 'Git Stat' in status bar
  - Show 'Changed' in status bar
  - Show 'Blame' in status bar

## Set View Appearance

- [click View on Menu bar](https://pleiades.io/help/idea/customize-actions-menus-and-toolbars.html#show-hide)
- move Appearance
- turn on only below
    - Toolbar
    - Navigation Bar
    - Status Bar
    - Members in Navigation Bar
