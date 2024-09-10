## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(charcuterie)

## -----------------------------------------------------------------------------
chars("string")

# but it's a vector
unclass(chars("string"))

## -----------------------------------------------------------------------------
many_chars <- lapply(c("foo", "bar", "baz"), chars)
many_chars
unclass(many_chars[[2]])

## -----------------------------------------------------------------------------
string(chars("string"))

## -----------------------------------------------------------------------------
string(chars("string"), collapse = "|")

## -----------------------------------------------------------------------------
"string"[3] # doesn't work

chars("string")[3]
chars("banana")[seq(2, 6, 2)]

## -----------------------------------------------------------------------------
head("string", 3) # doesn't work

head(chars("string"), 3)
tail(chars("string"), 3)

## -----------------------------------------------------------------------------
word <- chars("string")
word[3] <- "R"
word

## -----------------------------------------------------------------------------
table("mississippi") # doesn't work

table(chars("mississippi"))

## -----------------------------------------------------------------------------
sort("string") # doesn't work

sort(chars("string"))
sort(chars("string"), decreasing = TRUE)

## -----------------------------------------------------------------------------
rev("string") # doesn't work

rev(chars("string"))

## -----------------------------------------------------------------------------
length("string") # just the one 'string'

length(chars("string")) == nchar("string")

## -----------------------------------------------------------------------------
"i" %in% "rhythm" # doesn't work
"y" %in% "rhythm" # doesn't work

"i" %in% chars("rhythm")
"y" %in% chars("rhythm")

is.element("y", "rhythm") # doesn't work

is.element("y", chars("rhythm"))

## -----------------------------------------------------------------------------
c("butter", "fly") # doesn't work in the character sense

c(chars("butter"), chars("fly"))
c(chars("butter"), chars("fly"))[c(1, 9)]

## -----------------------------------------------------------------------------
setdiff(chars("javascript"), chars("script"))
union(chars("bunny"), chars("rabbit"))
intersect(chars("bob"), chars("rob"))
setequal(chars("stop"), chars("post"))
setequal(chars("stop"), chars("posit"))
unique(chars("mississippi"))

## -----------------------------------------------------------------------------
rev(toupper(chars("string")))
toString(chars("abc"))

Filter(\(x) x != "a", "banana")
Filter(\(x) x != "a", chars("banana"))

## -----------------------------------------------------------------------------
except(chars("javascript"), chars("script"))
except(chars("carpet"), chars("car"))
except(chars("banana"), "a")
except(chars("banana"), chars("a"))

## -----------------------------------------------------------------------------
data.frame(number = 1:3, letter = chars("abc"))

