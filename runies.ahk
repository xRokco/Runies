CoordMode, ToolTip, Screen
toggle = 0
#MaxThreadsPerHotkey 2

F6::
  Toggle := !Toggle

  if Toggle {
    ToolTip, 
    (Join LTrim
      ==============`n
      == Starting Game ==`n
      ==============
    ), 620, 890
    SetTimer, RemoveToolTip, -5000
    SetTimer, StartRuneTimer, -300000
  } else {
    ToolTip, 
    (Join LTrim
      ==============`n
      == Ending Game ==`n
      ==============
    ), 620, 890
    SetTimer, RemoveToolTip, -3000
  }
return

RemoveToolTip:
  ToolTip
return

StartRuneTimer:
  if Toggle {
    ToolTip, 
      (Join LTrim
        =============`n
        === GOLDIES ===`n
        =============
      ), 620, 890
    SetTimer, RemoveToolTip, -30000
    SetTimer, StartRuneTimer, -300000
  }
return
