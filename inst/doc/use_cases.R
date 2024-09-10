## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(charcuterie)

## -----------------------------------------------------------------------------
vowels <- function(word) {
  ch <- chars(word)
  setNames(ch %in% chars("aeiou"), ch)
}
vowels("string")
vowels("banana")

## -----------------------------------------------------------------------------
banana <- chars("banana")
banana[which(banana %in% chars("aeiou"))]

onomatopoeia <- chars("onomatopoeia")
onomatopoeia[which(onomatopoeia %in% chars("aeiou"))]

## -----------------------------------------------------------------------------
for (x in chars("ABC")) {
  print(paste("Appendix", x))
}

## -----------------------------------------------------------------------------
palindrome <- function(a, ignore_spaces = FALSE) {
  a <- chars(a)
  if (ignore_spaces) a <- except(a, " ")
  all(rev(a) == a)
}
palindrome("palindrome")
palindrome("racecar")
palindrome("never odd or even", ignore_spaces = TRUE)
palindrome("go hang a salami im a lasagna hog", ignore_spaces = TRUE)

## -----------------------------------------------------------------------------
anagram <- function(a, b) {
  is_anagram <- function(a, b) {
    length(a) == length(b) && all(sort(a) == sort(b))
  }
  sapply(candidates, \(x) is_anagram(chars(a), chars(x)))
}
target <- "stressed"
candidates <- c("started", "desserts", "rested")
anagram(target, candidates)

## -----------------------------------------------------------------------------
spongebob <- function(phrase) {
  x <- chars(phrase)
  odds <- seq(1, length(x), 2)
  x[odds] <- toupper(x[odds])
  string(x)
}
spongebob("you can't do anything useful with this package")

## ----echo=FALSE---------------------------------------------------------------
knitr::include_graphics("../man/figures/spongebob.jpg")

