<!-- START doctoc -->
<!-- END doctoc -->

# Step

### Install IDE

- install IntelliJ IDEA from [here](https://www.jetbrains.com/idea/download/#section=mac)

### Set Theme

- move Preferences > Plugin
- search `One Dark theme` and install
- move Preferences > Appearance & Behavior > Appearance
- select Theme to `One Dark Vivit`

### Set Font

- move Preferences > Editor > Font
- select Font to `Ricty Diminished`

### Set Keymap

- move Preferences > Keymap
- set blow shortcuts
    - `Terminal` to `Ctrl + T`
    - `Switch Frame` to `Shift + F2`
    - `Delete line` to `Ctrl + X`
    - `Move Caret to Line End with Selection` to `Shift + Ctrl + E`
    - `Move Caret to Line Start with Selection` to `Shift + Ctrl + A`
    - `Clone Caret Above` to `Fn + Up Arrow`
    - `Clone Caret Below`to `Fn + Down Arrow`

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

## Set Tools

### Terminal

- check `copy to clipboard to selection`
