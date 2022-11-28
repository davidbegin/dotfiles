im  - single import
ims - multiple imports

co  - constant
cos - multiple constants

tyf - type function definition
tyi - type function declaration
tys - type struct declaration

for  - for statement
forr - for range statement

if    - if statement
iferr - if err != nil

fp - fmt.Println
ff - fmt.Printf

go - goroutine anonymous function
gf - goroutine function

tf - test function
tm - test main

  "package main and main function": {
    "prefix": "pkgm",
    "body": "package main\n\nfunc main() {\n\t$0\n}",
    "description": "Snippet for main package & function"

  "function declaration": {
    "prefix": "func",
    "body": "func $1($2) $3 {\n\t$0\n}",
    "description": "Snippet for function declaration"

  "variable declaration": {
    "prefix": "var",
    "body": "var ${1:name} ${2:type}",
    "description": "Snippet for a variable"

  "switch statement": {
    "prefix": "switch",
    "body": "switch ${1:expression} {\ncase ${2:condition}:\n\t$0\n}",
    "description": "Snippet for switch statement"

  "select statement": {
    "prefix": "sel",
    "body": "select {\ncase ${1:condition}:\n\t$0\n}",
    "description": "Snippet for select statement"

  "case clause": {
    "prefix": "cs",
    "body": "case ${1:condition}:$0",
    "description": "Snippet for case clause"

  "channel declaration": {
    "prefix": "ch",
    "body": "chan ${1:type}",
    "description": "Snippet for a channel"

  "map declaration": {
    "prefix": "map",
    "body": "map[${1:type}]${2:type}",
    "description": "Snippet for a map"

  "empty interface": {
    "prefix": "in",
    "body": "interface{}",
    "description": "Snippet for empty interface"


  "else branch": {
    "prefix": "el",
    "body": "else {\n\t$0\n}",
    "description": "Snippet for else branch"

  "if else statement": {
    "prefix": "ie",
    "body": "if ${1:condition} {\n\t$2\n} else {\n\t$0\n}",
    "description": "Snippet for if else"

  "log.Println": {
    "prefix": "lp",
    "body": "log.Println(\"$1\")",
    "description": "Snippet for log.Println()"

  "log.Printf": {
    "prefix": "lf",
    "body": "log.Printf(\"$1\", ${2:var})",
    "description": "Snippet for log.Printf()"

  "log variable content": {
    "prefix": "lv",
    "body": "log.Printf(\"${1:var}: %#+v\\\\n\", ${1:var})",
    "description": "Snippet for log.Printf() with variable content"

  "t.Log": {
    "prefix": "tl",
    "body": "t.Log(\"$1\")",
    "description": "Snippet for t.Log()"

  "t.Logf": {
    "prefix": "tlf",
    "body": "t.Logf(\"$1\", ${2:var})",
    "description": "Snippet for t.Logf()"

  "t.Logf variable content": {
    "prefix": "tlv",
    "body": "t.Logf(\"${1:var}: %#+v\\\\n\", ${1:var})",
    "description": "Snippet for t.Logf() with variable content"

  "make(...)": {
    "prefix": "make",
    "body": "make(${1:type}, ${2:0})",
    "description": "Snippet for make statement"

  "new(...)": {
    "prefix": "new",
    "body": "new(${1:type})",
    "description": "Snippet for new statement"
  },
  "panic(...)": {
    "prefix": "pn",
    "body": "panic(\"$0\")",
    "description": "Snippet for panic"
  },
  "http ResponseWriter *Request": {
    "prefix": "wr",
    "body": "${1:w} http.ResponseWriter, ${2:r} *http.Request",
    "description": "Snippet for http Response"
  },
  "http.HandleFunc": {
    "prefix": "hf",
    "body": "${1:http}.HandleFunc(\"${2:/}\", ${3:handler})",
    "description": "Snippet for http.HandleFunc()"
  },
  "http handler declaration": {
    "prefix": "hand",
    "body": "func $1(${2:w} http.ResponseWriter, ${3:r} *http.Request) {\n\t$0\n}",
    "description": "Snippet for http handler declaration"
  },
  "http.Redirect": {
    "prefix": "rd",
    "body": "http.Redirect(${1:w}, ${2:r}, \"${3:/}\", ${4:http.StatusFound})",
    "description": "Snippet for http.Redirect()"
  },
  "http.Error": {
    "prefix": "herr",
    "body": "http.Error(${1:w}, ${2:err}.Error(), ${3:http.StatusInternalServerError})",
    "description": "Snippet for http.Error()"
  },
  "http.ListenAndServe": {
    "prefix": "las",
    "body": "http.ListenAndServe(\"${1::8080}\", ${2:nil})",
    "description": "Snippet for http.ListenAndServe"
  },
  "http.Serve": {
    "prefix": "sv",
    "body": "http.Serve(\"${1::8080}\", ${2:nil})",
    "description": "Snippet for http.Serve"
  },
  "defer statement": {
    "prefix": "df",
    "body": "defer ${1:func}($0)",
    "description": "Snippet for defer statement"
  },
  "test function": {
    "prefix": "tf",
    "body": "func Test$1(t *testing.T) {\n\t$0\n}",
    "description": "Snippet for Test function"
  },
  "test main": {
    "prefix": "tm",
    "body": "func TestMain(m *testing.M) {\n\t$1\n\n\tos.Exit(m.Run())\n}",
    "description": "Snippet for TestMain function"
  },
  "benchmark function": {
    "prefix": "bf",
    "body": "func Benchmark$1(b *testing.B) {\n\tfor ${2:i} := 0; ${2:i} < b.N; ${2:i}++ {\n\t\t$0\n\t}\n}",
    "description": "Snippet for Benchmark function"
  },
  "example function": {
    "prefix": "ef",
    "body": "func Example$1() {\n\t$2\n\t//Output:\n\t$3\n}",
    "description": "Snippet for Example function"
  },
  "table driven test": {
    "prefix": "tdt",
    "body": "func Test$1(t *testing.T) {\n\ttestCases := []struct {\n\t\tdesc\tstring\n\t\t$2\n\t}{\n\t\t{\n\t\t\tdesc: \"$3\",\n\t\t\t$4\n\t\t},\n\t}\n\tfor _, tC := range testCases {\n\t\tt.Run(tC.desc, func(t *testing.T) {\n\t\t\t$0\n\t\t})\n\t}\n}",
    "description": "Snippet for table driven test"
  },
  "init function": {
    "prefix": "finit",
    "body": "func init() {\n\t$1\n}",
    "description": "Snippet for init function"
  },
  "main function": {
    "prefix": "fmain",
    "body": "func main() {\n\t$1\n}",
    "description": "Snippet for main function"
  },
  "method declaration": {
    "prefix": "meth",
    "body": "func (${1:receiver} ${2:type}) ${3:method}($4) $5 {\n\t$0\n}",
    "description": "Snippet for method declaration"
  },
  "hello world web app": {
    "prefix": "helloweb",
    "body": "package main\n\nimport (\n\t\"fmt\"\n\t\"net/http\"\n\t\"time\"\n)\n\nfunc greet(w http.ResponseWriter, r *http.Request) {\n\tfmt.Fprintf(w, \"Hello World! %s\", time.Now())\n}\n\nfunc main() {\n\thttp.HandleFunc(\"/\", greet)\n\thttp.ListenAndServe(\":8080\", nil)\n}",
    "description": "Snippet for sample hello world webapp"
  },
  "sort implementation": {
    "prefix": "sort",
    "body": "type ${1:SortBy} []${2:Type}\n\nfunc (a $1) Len() int           { return len(a) }\nfunc (a $1) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }\nfunc (a $1) Less(i, j int) bool { ${3:return a[i] < a[j]} }",
    "description": "Snippet for a custom sort.Sort interface implementation, for a given slice type."
  }
}
