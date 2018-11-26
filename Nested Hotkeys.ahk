#Include lib\NestedHotkeysWGui.ahk

nhgMain:= New NestedHotkeysWGui()
nhgMain.Add("Q","MainQ","Positive Messages")
nhgMain.Add("W","MainW","Negative Messages")
^!q::nhgMain.Run()

MainQ(){
    nhgMainQ:= New NestedHotkeysWGui()
    nhgMainQ.Add("Q","MainQQ","Display the text -> Give it all!")
    nhgMainQ.Add("W","MainQW","Display the text -> All the best!")
    nhgMainQ.Add("E","MainQE","Display the text -> Best Wishes!")
    nhgMainQ.Run()
}
MainQQ(){
    MsgBox Give it all!
}
MainQW(){
    MsgBox All the best!
}
MainQE(){
    MsgBox Best Wishes!
}

MainW(){
    nhgMainW:= New NestedHotkeysWGui()
    nhgMainW.Add("Q","MainWQ","Display the text -> Give up!")
    nhgMainW.Add("W","MainWW","Display the text -> A chinese is better!")
    nhgMainW.Add("E","MainWE","Display the text -> Closing. . .")
    nhgMainW.Run()
}
MainWQ(){
    MsgBox Give up!
}
MainWW(){
    MsgBox A chinese is better!
}
MainWE(){
    MsgBox Closing. . .
}