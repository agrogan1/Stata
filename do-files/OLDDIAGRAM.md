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
