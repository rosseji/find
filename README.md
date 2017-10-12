# find
File path MGMT

![](https://media.giphy.com/media/dPWFfe3tykssE/giphy.gif)



Usage:

```r

pbs17 <- pdf_text(find::this("/aspi/pdf/2017-18_Defence_PBS_00_Complete.pdf")) %>%
  str_split("\n")
  
```

make sure you add the following to your description file, under the `Depends:` section:

```r

Remotes: Trendlock/find
  
```
