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

## presenter notes

*presenter notes* can be added with HTML comment syntax `<!-- put presenter notes here -->` see [Presenter notes](https://marpit.marp.app/usage?id=presenter-notes) for more details.

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
