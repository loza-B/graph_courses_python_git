---
title: "My First Quarto Doc" 
author: "Loza Biru"
format: 
  html:
    embed-resources: true   
execute:
   echo: false
---

# Level 1 Header 

Markdown lets you use *italics* and also **embolden** text 

You can also define bulleted lists: 

- First element
- Second element

You can also add [links](https://thegraphcourses.org)

You can also embed images 

![description of image](images/tgc_unity.webp)

## Level 2 Header

### Level 3 Header


World

 
 ```{python}
 #| eval: false
 #| echo: false
2 + 2
 ```


 ```{python}
 3 * 4
 for num in [1,2,3]:
    print(num)
 4 * 4
 ```

# Displaying Tables 

```{python}
import plotly.express as px
from itables import show
tips = px.data.tips()

show(tips)
```

# Displaying Plots


```{python}
px.violin(tips, x="tip", y="sex")
```

# Displaying Static Plots


```{python}
tips_sex = px.violin(tips, x="tip", y="sex")

tips_sex.write_image("outputs/tips by sex.png")
```

![](outputs/tips_by_sex.png)