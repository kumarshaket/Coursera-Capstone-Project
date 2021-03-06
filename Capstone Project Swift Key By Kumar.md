Capstone Project Swift Key
========================================================
author: Kumar Shaket
date: 24-July-2021
autosize: true

Data Cleaning Slide
========================================================

- Convert all letters to lowercase
- Converting the document to lowercase.
- Removing Whitespace,Punctuation and Numbers 
- Removing stopwords(i.e. “and”,“or”,“not”,“is”)
- Removing Profanity Words

We will break it into Words and Sentence and turn it into n-grams using concept of tokenization

```r
library(tokenizers)
library(stopwords)
tokenize_words(<text>, stopwords=stopwords::stopwords("en"))
```


N-gram Dictionary
========================================================
Get 2-grams and 3-grams (with stopwords).

```r
tokenize_ngrams(<text>, n_min=2, n=3)
```
To reduce the N-gram dictionary size, first calculate frequency for each N-gram, then abandon the least frequent ones (the long tail), say the ones only cover 10% of occurrences or the ones that only appear once in the text corpus.

Shiny UI
========================================================

The Shiny app uses 3-gram dictionary (ommiting 3-grams that appears only once in the text corpus). It will match the last two words of an input with the first two words of entries in the dictionary, to predict the third word. If no entries found, it will instead match the last word of the input only. If no entries found again, it will return the most frequent 3-grams as result.

You can launch the app: https://kshaket.shinyapps.io/Swift_Key_App/

online The Shiny app uses 3-gram dictionary (ommiting 3-grams that appears only once in the text corpus). It will match the last two words of an input with the first two words of entries in the dictionary, to predict the third word. If no entries found, it will instead match the last word of the input only. If no entries found again, it will return the most frequent 3-grams as result.

Due to high processing requirement to process such huge data sets, I have considered small data set for modeling and faster predictions however there is impact to accuracy of model


How Shiny App Will Work
========================================================
 - Enter word as input for prediction
 - There are three tabs 
 -- Predicted Words : This tabs will give you next possible combinations of words after your input
 -- Predicted Frequency : This tab will give you frequencies of prediction generated for input
 -- Predicted Dashboard : This tab will give you visual representation of ngram vs probability of it's occurence
 - There is Clear button which will reset the input and all tabs will be cleared
 
========================================================

                     Thank You
