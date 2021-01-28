export var buttons: string[] = ["Add to Prompt", "Delete", "Clear All", "New Line"] ;

export var colorNames: string[] = ["Dark Gray", "Red", "Green", "Yellow", "Blue", "Purple", "Turquoise", "Light Gray"] ;
var colorANSI: string[] = [] ;
for (let i:number = 0 ; i < colorNames.length ; ++i) {
        colorANSI[i] = `\e[3${i}m` ;
export var colorHex: string[] = ["#525252", "#ff0000", "#006318", "#ffff00", "#0034ff", "#6d1c88", "#00a288", "#aaaaab"] ;
}

export var envNames: string[] = ["username", "@", "hostname", "working directory (~)", "working directory (long)", "shell", "shell version", "terminal emulator", "command history number", "number of jobs", "date", "time (24-hour)", "time (12-hour)"] ;
export var envValues: string[] = ["\\u", "@", "\\h", "\\w", "\\W", "\\s", "\\v", "\\l", "\\!", "\\j", "\\d", "\\t", "\\@"] ;

export var utfChars: string[] = [] ;
export var utfValues: string[] = [] ;

// create Map<string, string>()s in main
