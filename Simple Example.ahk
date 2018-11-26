#Include lib\NestedHotkeysWGui.ahk

nhgMain:= New NestedHotkeysWGui()
nhgMain.Add("Q","MainQ","Visual Studio sources")
nhgMain.Add("W","MainW","AHK Scripts folder")
nhgMain.Add("E","MainE","Downloads folder")
nhgMain.Add("A","MainA","Documents folder")

;Replaces default shortcut with a menu to open different folders
#e::nhgMain.Run()

MainQ(){
    Run "C:\Users\Luis\source\repos",,max
}
MainW(){
    Run "C:\Users\Luis\Google Drive\Programming\AHK",,max
}
MainE(){
    Run "C:\Users\Luis\Downloads",,max
}
MainA(){
    Run "C:\Users\Luis\Documents",,max
}