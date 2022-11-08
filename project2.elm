-- view link: https://alpha.macoutreach.rocks/ShowModulePublish?modulePublishId=723c5e2e-2157-48c4-95ee-50712130f5a8

-- Your shapes go here!
myShapes model =
  [
    squareRecursive 20 model
    -- |> makeTransparent (9*sin( 1*model.time+   0*pi))
     |> move ((9*sin( 1*model.time+   0*pi)), (9*cos( 1*model.time+   0*pi)))
     -- |> rotate (9*sin( 1*model.time+   0*pi))

  ]

squareRecursive counter model =
    if counter == 0
    then
    group []
    else
    group
    [
      square (5*counter)
      |> outlined (solid 1) (hsl (degrees (10*model.time)) 1 0.5)    
      |> rotate (degrees (4*counter))
      ,
      triangle (5*counter)
      |> outlined (solid 1) (hsl (degrees (8*model.time)) 1 0.5)  
      |> rotate (degrees (3*counter))      
      ,
      squareRecursive (counter - 1) model
    ]
