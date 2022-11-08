1) -- view link: https://alpha.macoutreach.rocks/ShowModulePublish?modulePublishId=fa7ab957-a74a-46c5-8079-417d28332407

-- Your shapes go here!
myShapes model =
  [   
    cSCol 20
  ]

cSCol counter =
  if counter == 0
  then
  group []
  else
  group
  [
    circleSquareSeq counter (hsl (degrees 200) 1 (0.05*counter)) 
    ,
    cSCol (counter - 1)
  ]

circleSquareSeq counter colour = group 
  [
    if counter == 0
    then 
    group []
    else
    group 
    [
      circleSquare counter colour
      ,
      circleSquareSeq (counter - 1) colour
    ]
  ]
  
circleSquare counter colour = group 
             [
              square (5*counter)
              |> outlined (solid 1) colour
              |> rotate (degrees 3*counter)
              ,
              circle (5*counter/2)
              |> outlined (solid 1) colour
             ]
             
squareSequence counter = group 
  [
    if counter == 0
    then 
    group []
    else
    group 
    [
      square (5*counter)
      |> outlined (solid 1) black
      |> rotate (degrees (3*counter)) 
      ,
      squareSequence (counter - 1)
    ]
  ]
  
circleSequence counter = group 
  [
    if counter == 0
    then 
    group []
    else
    group 
    [
      circle (5*counter) 
      |> outlined (solid 1) black
      |> move (0,(5*counter)) 
      ,
      circleSequence (counter - 1)
    ]
  ]  
