GitBook Ace Plugin
===

This is a code editor plugin for GitBook, for inserting code segments into the book, with syntax highlight supports for about 110 types of programming languages.

See the plugin at work [here](http://ymcatar.gitbooks.io/gitbook-test/content/testing_ace.html).

## Syntax

The plugin has a basic syntax:

```
{%ace edit=true, lang='c_cpp'%}
// This is a hello world program for C.
#include <stdio.h>

int main(){
  printf("Hello World!");
  return 1;
}
{%endace%}
```

## Example 1

Here is the "Hello World" program of C language. The code editor in this section is set to be editable.
{%ace edit=true, lang='c_cpp'%}
// This is a hello world program for C.
#include <stdio.h>

int main(){
  printf("Hello World!");
  return 1;
}
{%endace%}

## Example 2

And a javascript code right here:
{%ace edit=true, lang='javascript'%}
var message = 'H e l l o W o r l d';
var split = message.split(' ').join('');
console.log(message);
console.log("testing {{test}}");
{%endace%}

## Example 3

And a piece of javascript code with wrong syntax, but with syntax validation disabled.
{%ace edit=true, lang='javascript', check=true%}
var test = [
    somethingIsWrong: 'withThis';
];
{%endace%}

## Example 4

Custom theme support is also added.
{%ace edit=true, lang='javascript', theme='monokai'%}
var test = a => (
    `ES6 is amazing. ${a}`
);
{%endace%}


* ```edit```: if this is set to true, the code will be editable by the user.

* ```lang```: the language for syntax highlight. If this is not specified, it will fallback to 'c_cpp' by default. For the full list of keyword for each language, please check out the github page of ace [here](https://github.com/ajaxorg/ace-builds/tree/master/src-min-noconflict), all the related files are starting with prefix ```mode-```. For instance:
    * mode_c_cpp.js ----> c_cpp
    * mode_java.js ----> java
    * ...

* ```check```: if this is set to false, syntax validation will be disabled.

* ```theme```: the theme for the editor, the default is 'chrome'.
    * monokai
    * coffee
    * ...