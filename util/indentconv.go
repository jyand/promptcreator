package main

import (
        "os"
        "bufio"
        "regexp"
)

const ECMA string = " {2}"
const READABLE string = " {8}"

func StringsFromFile(fpath string) []string {
        f, _ := os.Open(fpath)
        defer f.Close()

        var s []string
        sc := bufio.NewScanner(f)
        for sc.Scan() {
                s = append(s, sc.Text())
        }

        return s
}

func main() {
        //os.Args[1]
}
