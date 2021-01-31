-- fixed values and special characters used to modify the appearance of the prompt

module Special exposing(..)

controls =
        ["Add to Prompt", "Delete", "Clear All", "New Line"]

colorNames =
        ["Dark Gray", "Red", "Green", "Yellow", "Blue", "Purple", "Turquoise", "Light Gray"]

colors: Int -> List String -> List String
colors k color =
        if k < 1 then
                color
        else
               colors (k - 1) (["\\e[3" ++ String.fromInt(k - 1) ++ "m"] ++ color)

colorANSI =
        colors (List.length colorNames) []

colorHex =
        ["#525252", "#ff0000", "#006318", "#ffff00", "#0034ff", "#6d1c88", "#00a288", "#aaaaab"]

envNames =
        ["username", "@", "hostname", "working directory (~)", "working directory (long)", "shell", "shell version", "terminal emulator", "command history number", "number of jobs", "date", "time (24-hour)", "time (12-hour)"]

envValues =
        ["\\u", "@", "\\h", "\\w", "\\W", "\\s", "\\v", "\\l", "\\!", "\\j", "\\d", "\\t", "\\@"]

utfChars =
        ["λ", "μ"]

utfValues =
        ["\\U000003bc", "\\U000003bb"]
