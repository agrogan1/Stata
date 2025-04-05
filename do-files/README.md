So many projects have the same, or similar, workflow.

```mermaid
%%{
  init: {
    'theme': 'base',
    'look': 'handDrawn',
    'themeVariables': {
      'primaryColor': '#FFCB05',
      'primaryTextColor': '#000000',
      'primaryBorderColor': '#00274C',
      'lineColor': '#00274C',
      'secondaryColor': '#00274C',
      'secondaryTextColor': '#000000',
      'tertiaryColor': '#F2F2F2',
      'tertiaryBorderColor': '#00274C'
    }
  }
}%%

flowchart LR
  A(have a <br>question) --> B(get <br>raw data)
  B --> B2(select or <br>keep variables)
  B2 --> C(process and <br>clean data) 
  C --> D(analyze <br>data)
  D --> E(visualize <br>data)
  E --> F(make <br>conclusions)
```
```mermaid
%%{
  init: {
    'theme': 'base',
    'look': 'handDrawn',
    'themeVariables': {
      'primaryColor': '#FFCB05',
      'primaryTextColor': '#000000',
      'primaryBorderColor': '#00274C',
      'lineColor': '#00274C',
      'secondaryColor': '#00274C',
      'secondaryTextColor': '#000000',
      'tertiaryColor': '#F2F2F2',
      'tertiaryBorderColor': '#00274C'
    }
  }
}%%
block-beta
   columns 5
   A["have a <br>question"] space B["get <br> raw data"] space C["select or <br>keep variables"]
   space space space space space
   F space E space D
   space space space space space
   G space space space space

   A --> B
   B --> C
   C --> D
   D --> E
   E --> F
   F --> G
```

Use the **DO FILE EDITOR** to save Stata commands that you want to use again in a `.do` file, and to create an *audit trail* of your work so that your workflow is *documented* and *replicable.* **DO YOUR THINKING IN CODE!!!**

Click on `my_penguins.do` to see an example `.do` file that creates such an *audit trail*.

* [mypenguins.do - raw text](https://github.com/agrogan1/Stata/blob/main/do-files/my_penguins.do)
* [mypenguins.pdf - PDF with colorful syntax](https://agrogan1.github.io/Stata/do-files/my_penguins.pdf)
