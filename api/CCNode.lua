-- @module CCNode

-----------------------
-- @function [parent=#CCNode] create
-- @param  void

-----------------------
-- @function [parent=#CCNode] setZOrder
-- @param  self
-- @param  zOrder

-----------------------
-- @function [parent=#CCNode] getZOrder
-- @param  self

-----------------------
-- @function [parent=#CCNode] setVertexZ
-- @param  self
-- @param  vertexZ

-----------------------
-- @function [parent=#CCNode] getVertexZ
-- @param  self

-----------------------
-- @function [parent=#CCNode] setScaleX
-- @param  self
-- @param  fScaleX

-----------------------
-- @function [parent=#CCNode] getScaleX
-- @param  self

-----------------------
-- @function [parent=#CCNode] setScaleY
-- @param  self
-- @param  fScaleY

-----------------------
-- @function [parent=#CCNode] getScaleY
-- @param  self

-----------------------
-- @function [parent=#CCNode] setScale
-- @param  self
-- @param  scale

-----------------------
-- @function [parent=#CCNode] getScale
-- @param  self

-----------------------
-- @function [parent=#CCNode] setPosition
-- @param  self
-- @param  x
-- @param  y

-----------------------
-- @function [parent=#CCNode] setPosition
-- @param  self
-- @param  point

-----------------------
-- @function [parent=#CCNode] getPosition
-- @param  self
-- @param  0
-- @param  0

-----------------------
-- @function [parent=#CCNode] getPositionInCCPoint
-- @param  self

-----------------------
-- @function [parent=#CCNode] setPositionX
-- @param  self
-- @param  x

-----------------------
-- @function [parent=#CCNode] getPositionX
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] setPositionY
-- @param  self
-- @param  y

-----------------------
-- @function [parent=#CCNode] getPositionY
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] setSkewX
-- @param  self
-- @param  fSkewX

-----------------------
-- @function [parent=#CCNode] getSkewX
-- @param  self

-----------------------
-- @function [parent=#CCNode] setSkewY
-- @param  self
-- @param  fSkewY

-----------------------
-- @function [parent=#CCNode] getSkewY
-- @param  self

-----------------------
-- @function [parent=#CCNode] setAnchorPoint
-- @param  self
-- @param  anchorPoint

-----------------------
-- @function [parent=#CCNode] getAnchorPoint
-- @param  self

-----------------------
-- @function [parent=#CCNode] getAnchorPointInPoints
-- @param  self

-----------------------
-- @function [parent=#CCNode] setContentSize
-- @param  self
-- @param  contentSize

-----------------------
-- @function [parent=#CCNode] getContentSize
-- @param  self

-----------------------
-- @function [parent=#CCNode] setVisible
-- @param  self
-- @param  visible

-----------------------
-- @function [parent=#CCNode] isVisible
-- @param  self

-----------------------
-- @function [parent=#CCNode] setRotation
-- @param  self
-- @param  fRotation

-----------------------
-- @function [parent=#CCNode] getRotation
-- @param  self

-----------------------
-- @function [parent=#CCNode] setRotationX
-- @param  self
-- @param  fRotaionX

-----------------------
-- @function [parent=#CCNode] getRotationX
-- @param  self

-----------------------
-- @function [parent=#CCNode] setRotationY
-- @param  self
-- @param  fRotationY

-----------------------
-- @function [parent=#CCNode] getRotationY
-- @param  self

-----------------------
-- @function [parent=#CCNode] isIgnoreAnchorPointForPosition
-- @param  self

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  self
-- @param  child
-- @param  zOrder
-- @param  tag

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  self
-- @param  child
-- @param  zOrder

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  self
-- @param  child

-----------------------
-- @function [parent=#CCNode] getChildByTag
-- @param  self
-- @param  tag

-----------------------
-- @function [parent=#CCNode] setPosition
-- @param  self
-- @param  0
-- @param  0

-----------------------
-- @function [parent=#CCNode] getChildren
-- @param  self

-----------------------
-- @function [parent=#CCNode] getChildrenCount
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] setParent
-- @param  self
-- @param  parent

-----------------------
-- @function [parent=#CCNode] getParent
-- @param  self

-----------------------
-- @function [parent=#CCNode] removeFromParent
-- @param  self

-----------------------
-- @function [parent=#CCNode] removeFromParentAndCleanup
-- @param  self
-- @param  true

-----------------------
-- @function [parent=#CCNode] removeChild
-- @param  self
-- @param  child
-- @param  true

-----------------------
-- @function [parent=#CCNode] removeChildByTag
-- @param  self
-- @param  tag
-- @param  true

-----------------------
-- @function [parent=#CCNode] removeAllChildren
-- @param  self

-----------------------
-- @function [parent=#CCNode] removeAllChildrenWithCleanup
-- @param  self
-- @param  true

-----------------------
-- @function [parent=#CCNode] reorderChild
-- @param  self
-- @param  child
-- @param  zOrder

-----------------------
-- @function [parent=#CCNode] sortAllChildren
-- @param  self

-----------------------
-- @function [parent=#CCNode] getGrid
-- @param  self

-----------------------
-- @function [parent=#CCNode] setGrid
-- @param  self
-- @param  pGrid

-----------------------
-- @function [parent=#CCNode] setTag
-- @param  self
-- @param  TAG_PLAYER

-----------------------
-- @function [parent=#CCNode] setTag
-- @param  self
-- @param  TAG_MONSTER

-----------------------
-- @function [parent=#CCNode] setTag
-- @param  self
-- @param  TAG_BOSS

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  self
-- @param  node1

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  self
-- @param  node2

-----------------------
-- @function [parent=#CCNode] addChild
-- @param  self
-- @param  node3

-----------------------
-- @function [parent=#CCNode] getTag
-- @param  self

-----------------------
-- @function [parent=#CCNode] setTag
-- @param  self
-- @param  nTag

-----------------------
-- @function [parent=#CCNode] getUserObject
-- @param  self

-----------------------
-- @function [parent=#CCNode] setUserObject
-- @param  self
-- @param  pUserObject

-----------------------
-- @function [parent=#CCNode] getShaderProgram
-- @param  self

-----------------------
-- @function [parent=#CCNode] setShaderProgram
-- @param  self
-- @param  * node->

-----------------------
-- @function [parent=#CCNode] setShaderProgram
-- @param  self
-- @param  pShaderProgram

-----------------------
-- @function [parent=#CCNode] getCamera
-- @param  self

-----------------------
-- @function [parent=#CCNode] setEyeXYZ
-- @param  self
-- @param  0
-- @param  0
-- @param  2

-----------------------
-- @function [parent=#CCNode] setCenterXYZ
-- @param  self
-- @param  0
-- @param  0
-- @param  0

-----------------------
-- @function [parent=#CCNode] getCamera
-- @param  self

-----------------------
-- @function [parent=#CCNode] isRunning
-- @param  self

-----------------------
-- @function [parent=#CCNode] registerScriptHandler
-- @param  self
-- @param  handler

-----------------------
-- @function [parent=#CCNode] unregisterScriptHandler
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] cleanup
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] visit
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] draw
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] boundingBox
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] getBoundingBox
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] runAction
-- @param  self
-- @param  action

-----------------------
-- @function [parent=#CCNode] stopAllActions
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] stopAction
-- @param  self
-- @param  action

-----------------------
-- @function [parent=#CCNode] stopActionByTag
-- @param  self
-- @param  tag

-----------------------
-- @function [parent=#CCNode] getActionByTag
-- @param  self
-- @param  tag

-----------------------
-- @function [parent=#CCNode] numberOfRunningActions
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] scheduleUpdate
-- @param  self

-----------------------
-- @function [parent=#CCNode] unscheduleUpdate
-- @param  self
-- @param  void

-----------------------
-- @function [parent=#CCNode] scheduleUpdateWithPriorityLua
-- @param  self
-- @param  nHandler
-- @param  0

-----------------------
-- @function [parent=#CCNode] convertToNodeSpace
-- @param  self
-- @param  worldPoint

-----------------------
-- @function [parent=#CCNode] convertToWorldSpace
-- @param  self
-- @param  nodePoint

-----------------------
-- @function [parent=#CCNode] convertToNodeSpaceAR
-- @param  self
-- @param  worldPoint

-----------------------
-- @function [parent=#CCNode] convertToWorldSpaceAR
-- @param  self
-- @param  nodePoint

-----------------------
-- @function [parent=#CCNode] convertTouchToNodeSpace
-- @param  self
-- @param  touch

-----------------------
-- @function [parent=#CCNode] convertTouchToNodeSpaceAR
-- @param  self
-- @param  touch

-----------------------
return nil
