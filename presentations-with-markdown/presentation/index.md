---
size: 16:9
theme: default
paginate: false
---

# How to use Marp to build Presentions

*Marp* renders presentations as PDF, HTML or can present them in a browser.

the full documentation of *Marp* can be found at [Marpit Markdown](https://marpit.marp.app/markdown)

---

## configure presentation 

specifiy presentation properties with *Front-matter*

```
---
theme: default
size: 16:9
paginate: true
---
```

---

## images

images can be added with `![](path/to/image-file.png)`

![width:200px](./assets/2021-03-17-KLST_TINY--first-draft-PCB.png)

and even modified on-the-fly with CSS filters:

![width:200px blur sepia](./assets/2021-03-17-KLST_TINY--first-draft-PCB.png)

see [Image syntax](https://marpit.marp.app/image-syntax) for additional syntax.

---

![bg](./assets/2021-03-17-KLST_TINY--first-draft-PCB.png)

or used as background with `![](path/to/image-file.png)`

---

<!-- _backgroundColor: purple -->

## background color

background color can be defined via *Front-matter* 

```
backgroundColor: pink
```

or per slide via HTML comments

`<!-- _backgroundColor: purple -->`

---

## code

<a name="code" id="code" rel="code">code anchor</a>

```processing
void setup() {
    size(640, 480);
}

void draw() {
    println("hello world");
}
```

---

## presenter notes

*presenter notes* can be added with HTML comment syntax `<!-- put presenter notes here -->` see [Presenter notes](https://marpit.marp.app/usage?id=presenter-notes) for more details.

---

## link to presentations

[jump to slide #3](#3)

[jump to slide 'code'](#code)

---

## tables

markdown tables with the `|`-syntax also work, i.e this:

```
| DAY | DATE           | WORKSHOP    | SESSION         |
|-----|----------------|-------------|-----------------|
| 1   | 2021-10-04 MON | 10:00–12:00 | INTRODUCTION    |
| 2   | 2021-10-05 TUE | 16:00–18:00 | MAIN            |
| 3   | 2021-10-06 WED | 12:00–15:00 | FINAL           |
```

will be rendered as:

| DAY | DATE           | WORKSHOP    | SESSION         |
|-----|----------------|-------------|-----------------|
| 1   | 2021-10-04 MON | 10:00–12:00 | INTRODUCTION    |
| 2   | 2021-10-05 TUE | 16:00–18:00 | MAIN            |
| 3   | 2021-10-06 WED | 12:00–15:00 | FINAL           |

hint: there is a nice online tool that converts all sorts of tables to markdown tables [Tables Generator](https://www.tablesgenerator.com/markdown_tables)

---

## The Terminal

- `CMD+SHIFT+U` open utilities folder which contains the `Terminal.app` application
- `cd` changes directory e.g `/Users/dennisppaul/Documents/`
- drag folders from `Finder.app` into `Terminal.app` to get absolute path
- `cd ..` jumps out of current directory
- use `TAB` to autocomplete commands
- `ls` shows the files + folders in the current directory
- `open .` opens the current directory in `Finder.app`
- `clear` clears the screen
- arrow keys up and down go through previously typed commands
- `CTRL+C` shuts down an application

### install marp ( with homebrew )

- first install [Homebrew](https://brew.sh/)
    - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
    - you might need to enter your login password
- install marp-cli with `brew install marp-cli` ( see https://github.com/marp-team/marp-cli for other options )
