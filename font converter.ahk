FileSelectFile, selectedFont, 3, , Select a .ttf or .otf file, Fonts (*.ttf; *.otf)
if (selectedFont = "") {
    ExitApp
}

SplitPath, selectedFont, fileName, fileDir, fileExt, fileNameNoExt

destFolder := A_ScriptDir . "\" . fileNameNoExt
FileCreateDir, %destFolder%

fontNames =
(
AccanthisADFStd-Regular.otf
AmaticSC-Bold.ttf
AmaticSC-Regular.ttf
Arimo-Bold.ttf
Arimo-Regular.ttf
Balthazar-Regular.ttf
Bangers-Regular.ttf
BuilderSans-Bold.otf
BuilderSans-ExtraBold.otf
BuilderSans-Medium.otf
BuilderSans-Regular.otf
ComicNeue-Angular-Bold.ttf
Creepster-Regular.ttf
DenkOne-Regular.ttf
Fondamento-Italic.ttf
Fondamento-Regular.ttf
FredokaOne-Regular.ttf
GothamSSm-Black.otf
GothamSSm-Bold.otf
GothamSSm-Book.otf
GothamSSm-Medium.otf
GrenzeGotisch-Bold.ttf
GrenzeGotisch-Regular.ttf
Guru-Regular.ttf
HWYGOTH.ttf
Inconsolata-Regular.ttf
IndieFlower-Regular.ttf
JosefinSans-Regular.ttf
Jura-Regular.ttf
Kalam-Regular.ttf
LuckiestGuy-Regular.ttf
Merriweather-Italic.ttf
Merriweather-Regular.ttf
Michroma-Regular.ttf
Montserrat-Black.ttf
Montserrat-Bold.ttf
Montserrat-Medium.ttf
Montserrat-Regular.ttf
NotoNaskhArabicUI-Regular.ttf
NotoSansBengaliUI-Regular.ttf
NotoSansDevanagariUI-Regular.ttf
NotoSansGeorgian-Regular.ttf
NotoSansKhmerUI-Regular.ttf
NotoSansMyanmarUI-Regular.ttf
NotoSansSinhalaUI-Regular.ttf
NotoSansThaiUI-Regular.ttf
Nunito-Regular.ttf
Oswald-Bold.ttf
Oswald-Regular.ttf
PatrickHand-Regular.ttf
PermanentMarker-Regular.ttf
PressStart2P-Regular.ttf
RobloxEmoji.ttf
Roboto-Bold.ttf
RobotoCondensed-Regular.ttf
Roboto-Italic.ttf
RobotoMono-Regular.ttf
Roboto-Regular.ttf
RomanAntique.otf
Sarpanch-Bold.ttf
Sarpanch-Regular.ttf
SourceSansPro-Bold.ttf
SourceSansPro-Italic.ttf
SourceSansPro-Light.ttf
SourceSansPro-Regular.ttf
SourceSansPro-Semibold.ttf
SpecialElite-Regular.ttf
TitilliumWeb-Bold.ttf
TitilliumWeb-Regular.ttf
TwemojiMozilla.ttf
Ubuntu-Italic.ttf
Ubuntu-Regular.ttf
zekton_rg.ttf
)

Loop, Parse, fontNames, `n, `r
{
    if A_LoopField =  
        continue  ; Skip empty lines
    newFontPath := destFolder . "\" . A_LoopField
    FileCopy, %selectedFont%, %newFontPath%, 1
}

MsgBox, font copying worked boom exiting @mk3o
ExitApp
