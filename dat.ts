export const controls: { [id: string]: string } = {
        "add": "Add to Prompt",
        "del": "Delete",
        "clr": "Clear All",
        "nl": "New Line"
} ;

export const colorNames: string[] = ["Dark Gray", "Red", "Green", "Yellow", "Blue", "Purple", "Turquoise", "Light Gray"] ;
var colorANSI: string[] = [] ;
for (let i:number = 0 ; i < colorNames.length ; ++i) {
        colorANSI[i] = `\e[3${i}m` ;
}
export const colorHex: string[] = ["#525252", "#ff0000", "#006318", "#ffff00", "#0034ff", "#6d1c88", "#00a288", "#aaaaab"] ;

export const envNames: string[] = ["username", "@", "hostname", "working directory (~)", "working directory (long)", "shell", "shell version", "terminal emulator", "command history number", "number of jobs", "date", "time (24-hour)", "time (12-hour)"] ;
export const envValues: string[] = ["\\u", "@", "\\h", "\\w", "\\W", "\\s", "\\v", "\\l", "\\!", "\\j", "\\d", "\\t", "\\@"] ;

export const utfChars: string[] = [] ;
export const utfValues: string[] = [] ;

// create Map<string, string>()s in main