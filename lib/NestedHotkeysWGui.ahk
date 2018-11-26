Class NestedHotKeysWGui{
    guiNumber:=""
    selectedKeys:=Object()
    selectedFunctions:=Object()
    textPosition:=25
    __New(){
        this.guiNumber:= RegExReplace(RandomStr(), "\W", "i")
        name:=this.guiNumber
        Gui, %name%:New
        Gui, %name%:Color, 661166
        Gui, %name%:-Caption
        Gui, %name%:+AlwaysOnTop
        Gui, %name%:+ToolWindow
    }
    Add(hotKey, function ,desc){
        name:=this.guiNumber
        Gui, %name%:Font, s20, Calibri
        Gui, %name%:Font, bold
        guiPos:="x25 y"this.textPosition
        Gui, %name%:Add, Text,%guiPos%, %hotKey%
        this.textPosition:=this.textPosition+30
        Gui, %name%:Font, s18, Calibri
        guiPos:="x25 y"this.textPosition
        Gui, %name%:Add, Text,%guiPos%, %desc%
        this.textPosition:=this.textPosition+30
        this.selectedKeys.Insert(hotKey)
        this.selectedFunctions.Insert(function)
    }
    Run(){
        name:=this.guiNumber
        posX := 2*(A_ScreenWidth/3)
        width :=A_ScreenWidth-posX
        Gui, %name%:Show, NoActivate x%posX% y0 w%width% h%A_ScreenHeight%
        data:=""
        for i,selectedKey in this.selectedKeys
            data:="," selectedKey "" data
        Input, subkey, L1 T10, {Esc},%data%
        for i, selectedKey in this.selectedKeys {
            if (selectedKey=subkey) {
                if (IsFunc(this.selectedFunctions[i])) {
                    fn:=this.selectedFunctions[i]
                    Gui, %name%:Hide
                    %fn%()
                }
            }
        }
        Gui, %name%:Hide
    }
}

RandomStr(l = 16, i = 48, x = 122) { ; length, lowest and highest Asc value
	Loop, %l% {
		Random, r, i, x
		s .= Chr(r)
	}
	Return, s
}