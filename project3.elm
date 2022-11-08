-- view link: https://alpha.macoutreach.rocks/ShowModulePublish?modulePublishId=8cbd34af-4fd2-41ec-85c7-b7e8152403ab

-- Your shapes go here!
myShapes model =
  [
    squareRec 50 model
    |> rotate (2*sin( 1*model.time+   0*pi))
  ]

squareRec counter model =
  if counter == 0
  then
  group []
  else
  group 
  [
    square (5*counter)
    |> outlined (solid 1) (hsl (degrees (3*(model.time))) 1 0.5)
    |> rotate (degrees (3*counter))
    ,
    squareRec (counter - 1) model 
  ]
  
