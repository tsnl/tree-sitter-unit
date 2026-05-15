; Keywords
"def" @keyword
"pub" @keyword
"for" @keyword
"let" @keyword
"if" @keyword
"else" @keyword

; Literals
"true" @boolean
"false" @boolean
(Number) @number
(Str) @string

; Identifiers
(Ident) @variable

; Types and builtins (convention: uppercase names)
((Ident) @type
  (#match? @type "^[A-Z]"))

; Operators
"+" @operator
"-" @operator
"*" @operator
"/" @operator
"%" @operator
"@" @operator
"!" @operator
"<" @operator
"<=" @operator
">" @operator
">=" @operator
"==" @operator
"!=" @operator
"<<" @operator
">>" @operator

; Punctuation
"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"," @punctuation.delimiter
":" @punctuation.delimiter
";" @punctuation.delimiter
"=" @punctuation.delimiter
"." @punctuation.delimiter

; Comments
(Comment) @comment
