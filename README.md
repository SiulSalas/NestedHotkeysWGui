# NestedHotkeysWGui
An ahk class to create nested hotkeys with a GUI

## Getting started
### Installation
Download the [lib/NestedHotkeysWGui.ahk](https://github.com/SiulSalas/NestedHotkeysWGui/tree/master/lib) file and put it on a 'lib' folder next to your script

### Example
```
#Include lib\NestedHotkeysWGui.ahk  ;If you saved the file in the lib folder next to your script

nhg:= New NestedHotkeysWGui()     ;Declare an instance of the class
nhg.Add(key,function,description) ;For example: key="p", function="MyFunction", description="This function does..."

!K::nhg.Run() ;Displays the GUI

function(){
  ;Do stuff
}
```
#### Usage
To use this you would do the following:
* Press the shortcut to run the GUI
* Press a letter shown on the GUI
* Task starts running

#### Exit the GUI
* To exit/cancel the current GUI press *Escape*
* The actual timeout is *10 seconds*, afther that, the GUI exits
* Press any other key not present in the GUI's information

## More examples
* [Simple Example](https://github.com/SiulSalas/NestedHotkeysWGui/blob/master/Simple%20Example.ahk) - This functional example replaces the shortcut Windoes+E with a GUI including different folders instead of the default.
![Simple Example Image](https://raw.githubusercontent.com/SiulSalas/NestedHotkeysWGui/master/Simple%20Example.png)

* [Nested Hotkeys](https://github.com/SiulSalas/NestedHotkeysWGui/blob/master/Nested%20Hotkeys.ahk) - This example shows how to add GUIs inside GUIs, expanding the functionality of your keyboard massively.
