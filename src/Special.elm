-- fixed values and special characters used to modify the appearance of the prompt

module Special exposing(..)

controls =
        ["Add to Prompt", "Delete", "Clear All", "New Line"]

colorNames =
        ["Dark Gray", "Red", "Green", "Yellow", "Blue", "Purple", "Turquoise", "Light Gray"]

colorANSI: Int -> List String -> List String
colorANSI k color =
        if k < 1 then
                color
        else
               colorANSI (k - 1) (["\\e[3" ++ String.fromInt(k - 1) ++ "m"] ++ color)

colors =
        colorANSI (List.length colorNames) []
