package main

import (
        "bufio"
        "os"
        "fmt"
        "regexp"
        "strings"
)

const GRE_ECMA string = "^( {2})"
const GRE_READABLE string = "^( {8})"
const ECMA string = "  "
const READABLE string = "        "

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

func SwitchFormat(s []string, n uint64) []string {
        irreg := regexp.MustCompile(GRE_ECMA)
        reg := regexp.MustCompile(GRE_READABLE)

        if reg.MatchString(s[n]) {
                s[n] = strings.Replace(s[n], READABLE, ECMA, -1)
        } else if irreg.MatchString(s[n]) {
                s[n] = strings.Replace(s[n], ECMA, READABLE, -1)
        }

        if n < 1 {
                return s
        }

        return SwitchFormat(s, n-1)
}

func Echo(s []string, n uint64) {
        if n == uint64(len(s)) {
                return
        }
        fmt.Println(s[n])
        Echo(s, n+1)
}

func main() {
        lines := StringsFromFile(os.Args[1])
        N := uint64(len(lines)) - 1
        Echo(SwitchFormat(lines, N), 0)
}
