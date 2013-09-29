-------------------------------------------------------------------------------
-- Lua global variables.
-- The basic library provides some core functions to Lua.
-- All the preloaded module of Lua are declared here.
-- @module global

------------------------------------------------------------------------------
-- This library provides generic functions for coroutine manipulation.
-- This is a global variable which hold the preloaded @{coroutine} module.
-- @field[parent = #global] coroutine#coroutine coroutine preloaded module

------------------------------------------------------------------------------
-- The package library provides basic facilities for loading and building modules in Lua.
-- This is a global variable which hold the preloaded @{package} module.
-- @field[parent = #global] package#package package preloaded module

------------------------------------------------------------------------------
-- This library provides generic functions for string manipulation.
-- This is a global variable which hold the preloaded @{string} module.
-- @field[parent = #global] string#string string preloaded module

------------------------------------------------------------------------------
-- This library provides generic functions for table manipulation.
-- This is a global variable which hold the preloaded @{table} module.
-- @field[parent = #global] table#table table preloaded module

------------------------------------------------------------------------------
-- This library is an interface to the standard C math library.
-- This is a global variable which hold the preloaded @{math} module.
-- @field[parent = #global] math#math math preloaded module

------------------------------------------------------------------------------
-- The I/O library provides function for file manipulation.
-- This is a global variable which hold the preloaded @{io} module.
-- @field[parent = #global] io#io io preloaded module

------------------------------------------------------------------------------
-- Operating System Facilities.
-- This is a global variable which hold the preloaded @{os} module.
-- @field[parent = #global] os#os os preloaded module

------------------------------------------------------------------------------
-- The Debug Library.
-- This is a  global variable which hold the preloaded @{debug} module.
-- @field[parent = #global] debug#debug debug preloaded module

-------------------------------------------------------------------------------
-- Issues an error when the value of its argument `v` is false (i.e.,
-- **nil** or **false**); otherwise, returns all its arguments. `message` is an error
-- message; when absent, it defaults to *"assertion failed!"*.
-- @function [parent=#global] assert
-- @param v if this argument is false an error is issued.
-- @param #string message an error message. defaults value is *"assertion failed"*.
-- @return All its arguments.

-------------------------------------------------------------------------------
-- This function is a generic interface to the garbage collector.
-- It performs different functions according to its first argument, `opt`:
--
--   * **"stop":** stops the garbage collector.
--   * **"restart":** restarts the garbage collector.
--   * **"collect":** performs a full garbage-collection cycle.
--   * **"count":** returns the total memory in use by Lua (in Kbytes).
--   * **"step":** performs a garbage-collection step. The step "size" is controlled
--       by `arg` (larger values mean more steps) in a non-specified way. If you
--       want to control the step size you must experimentally tune the value of
--      `arg`. Returns true if the step finished a collection cycle.
--   * **"setpause":** sets `arg` as the new value for the *pause* of the collector.
--       Returns the previous value for *pause*.
--   * **"setstepmul":** sets `arg` as the new value for the *step multiplier*
--       of the collector. Returns the previous value for *step*.
-- @function [parent=#global] collectgarbage
-- @param #string opt the command to send.
-- @param arg the argument of the command. (optional)

-------------------------------------------------------------------------------
-- Opens the named file and executes its contents as a Lua chunk. When
-- called without arguments,
-- `dofile` executes the contents of the standard input (`stdin`). Returns
-- all values returned by the chunk. In case of errors, `dofile` propagates
-- the error to its caller (that is, `dofile` does not run in protected mode).
-- @function [parent=#global] dofile
-- @param #string filename the path to the file. (optional)

-------------------------------------------------------------------------------
-- Terminates the last protected function called and returns `message`
-- as the error message. Function `error` never returns.
--
-- Usually, `error` adds some information about the error position at the
-- beginning of the message. The `level` argument specifies how to get the
-- error position.  
-- With level 1 (the default), the error position is where the
-- `error` function was called.  
-- Level 2 points the error to where the function
-- that called `error` was called; and so on.  
-- Passing a level 0 avoids the addition of error position information to the message.
-- @function [parent=#global] error
-- @param #string message an error message.
-- @param #number level specifies how to get the error position, default value is `1`.

-------------------------------------------------------------------------------
-- A global variable (not a function) that holds the global environment
-- (that is, `_G._G = _G`). Lua itself does not use this variable; changing
-- its value does not affect any environment, nor vice-versa. (Use `setfenv`
-- to change environments.)
-- @field [parent = #global] #table _G

-------------------------------------------------------------------------------
-- Returns the current environment in use by the function.
-- @function [parent=#global] getfenv
-- @param f can be a Lua function or a number that specifies the function at that
-- stack level: Level 1 is the function calling `getfenv`. If the given
-- function is not a Lua function, or if `f` is `0`, `getfenv` returns the
-- global environment. The default for `f` is `1`.

-------------------------------------------------------------------------------
-- If `object` does not have a metatable, returns nil. Otherwise, if the
-- object's metatable has a `"__metatable"` field, returns the associated
-- value. Otherwise, returns the metatable of the given object.
-- @function [parent=#global] getmetatable
-- @param object
-- @return #table the metatable of object.

-------------------------------------------------------------------------------
-- Use to iterate over a table by index.
-- Returns three values: an iterator function, the table `t`, and 0,
-- so that the construction :
-- 
--     for i,v in ipairs(t) do *body* end
-- will iterate over the pairs (`1,t[1]`), (`2,t[2]`), ..., up to the
-- first integer key absent from the table.
-- @function [parent=#global] ipairs
-- @param #table t a table by index.

-------------------------------------------------------------------------------
-- Loads a chunk using function `func` to get its pieces. Each call to
-- `func` must return a string that concatenates with previous results. A
-- return of an empty string, **nil,** or no value signals the end of the chunk.
--
-- If there are no errors, returns the compiled chunk as a function; otherwise,
-- returns nil plus the error message. The environment of the returned function
-- is the global environment.
--
-- `chunkname` is used as the chunk name for error messages and debug
-- information. When absent, it defaults to "`=(load)`".
-- @function [parent=#global] load
-- @param func function which loads the chunk.
-- @param #string chunkname chunk name used for error messages and debug information, default value is "`=(load)`".

-------------------------------------------------------------------------------
-- Similar to `load`, but gets the chunk from file `filename` or from the
-- standard input, if no file name is given.
-- @function [parent=#global] loadfile
-- @param #string filename the path to the file. (optional)

-------------------------------------------------------------------------------
-- Similar to `load`, but gets the chunk from the given string.
-- To load and run a given string, use the idiom  
-- 
--     assert(loadstring(s))()
-- When absent, `chunkname` defaults to the given string.
-- @function [parent=#global] loadstring
-- @param #string string lua code to load.
-- @param #string chunkname chunk name used for error messages and debug information, default value is the given string.

-------------------------------------------------------------------------------
-- Allows a program to traverse all fields of a table. Its first argument is
-- a table and its second argument is an index in this table. `next` returns
-- the next index of the table and its associated value.
--
-- When called with nil
-- as its second argument, `next` returns an initial index and its associated
-- value. When called with the last index, or with nil in an empty table, `next`
-- returns nil.
--
-- If the second argument is absent, then it is interpreted as
-- nil. In particular, you can use `next(t)` to check whether a table is empty.
-- The order in which the indices are enumerated is not specified, *even for
-- numeric indices*. (To traverse a table in numeric order, use a numerical
-- for or the `ipairs` function.)
--
-- The behavior of `next` is *undefined* if, during the traversal, you assign
-- any value to a non-existent field in the table. You may however modify
-- existing fields. In particular, you may clear existing fields.
-- @function [parent=#global] next
-- @param #table table table to traverse.
-- @param index initial index.

-------------------------------------------------------------------------------
-- Use to iterate over a table.
-- Returns three values: the `next` function, the table `t`, and nil,
-- so that the construction :
-- 
--     for k,v in pairs(t) do *body* end
-- will iterate over all key-value pairs of table `t`.
-- 
-- See function `next` for the caveats of modifying the table during its
-- traversal.
-- @function [parent=#global] pairs
-- @param #table t table to traverse.

-------------------------------------------------------------------------------
-- Calls function `f` with the given arguments in *protected mode*. This
-- means that any error inside `f` is not propagated; instead, `pcall` catches
-- the error and returns a status code. Its first result is the status code (a
-- boolean), which is true if the call succeeds without errors. In such case,
-- `pcall` also returns all results from the call, after this first result. In
-- case of any error, `pcall` returns false plus the error message.
-- @function [parent=#global] pcall
-- @param f function to be call in *protected mode*.
-- @param ... function arguments.
-- @return #boolean true plus the result of `f` function if its call succeeds without errors.
-- @return #boolean,#string  false plus the error message in case of any error.

-------------------------------------------------------------------------------
-- Receives any number of arguments, and prints their values to `stdout`,
-- using the `tostring` function to convert them to strings. `print` is not
-- intended for formatted output, but only as a quick way to show a value,
-- typically for debugging. For formatted output, use `string.format`.
-- @function [parent=#global] print
-- @param ... values to print to `stdout`.

-------------------------------------------------------------------------------
-- Checks whether `v1` is equal to `v2`, without invoking any
-- metamethod. Returns a boolean.
-- @function [parent=#global] rawequal
-- @param v1
-- @param v2
-- @return #boolean true if `v1` is equal to `v2`. 

-------------------------------------------------------------------------------
-- Gets the real value of `table[index]`, without invoking any
-- metamethod. `table` must be a table; `index` may be any value.
-- @function [parent=#global] rawget
-- @param #table table
-- @param index may be any value.
-- @return The real value of `table[index]`, without invoking any
-- metamethod.

-------------------------------------------------------------------------------
-- Sets the real value of `table[index]` to `value`, without invoking any
-- metamethod. `table` must be a table, `index` any value different from nil,
-- and `value` any Lua value.  
-- This function returns `table`.
-- @function [parent=#global] rawset
-- @param #table table
-- @param index any value different from nil.
-- @param value any Lua value.

-------------------------------------------------------------------------------
-- If `index` is a number, returns all arguments after argument number
-- `index`. Otherwise, `index` must be the string `"#"`, and `select` returns
-- the total number of extra arguments it received.
-- @function [parent=#global] select
-- @param index a number or the string `"#"`
-- @param ...

-------------------------------------------------------------------------------
-- Sets the environment to be used by the given function. `f` can be a Lua
-- function or a number that specifies the function at that stack level: Level
-- 1 is the function calling `setfenv`. `setfenv` returns the given function.  
-- As a special case, when `f` is 0 `setfenv` changes the environment of the
-- running thread. In this case, `setfenv` returns no values.
-- @function [parent=#global] setfenv
-- @param f a Lua function or a number that specifies the stack level.
-- @param #table table used as environment for `f`.
-- @return The given function.

-------------------------------------------------------------------------------
-- Sets the metatable for the given table. (You cannot change the metatable
-- of other types from Lua, only from C.) If `metatable` is nil, removes the
-- metatable of the given table. If the original metatable has a `"__metatable"`
-- field, raises an error.  
-- This function returns `table`.
-- @function [parent=#global] setmetatable
-- @param #table table 
-- @param #table metatable
-- @return The first argument `table`. 

-------------------------------------------------------------------------------
-- Tries to convert its argument to a number. If the argument is already
-- a number or a string convertible to a number, then `tonumber` returns this
-- number; otherwise, it returns **nil.**
--
-- An optional argument specifies the base to interpret the numeral. The base
-- may be any integer between 2 and 36, inclusive. In bases above 10, the
-- letter '`A`' (in either upper or lower case) represents 10, '`B`' represents
-- 11, and so forth, with '`Z`' representing 35. In base 10 (the default),
-- the number can have a decimal part, as well as an optional exponent part.
-- In other bases, only unsigned integers are accepted.
-- @function [parent=#global] tonumber
-- @param e a number or string to convert to a number.
-- @param #number base the base to interpret the numeral, any integer between 2 and 36.(default is 10).
-- @return #number a number if conversion succeeds else **nil**.

-------------------------------------------------------------------------------
-- Receives an argument of any type and converts it to a string in a
-- reasonable format. For complete control of how numbers are converted, use
-- `string.format`.
--
-- If the metatable of `e` has a `"__tostring"` field, then `tostring` calls
-- the corresponding value with `e` as argument, and uses the result of the
-- call as its result.
-- @function [parent=#global] tostring
-- @param e an argument of any type.
-- @return #string a string in a reasonable format.

-------------------------------------------------------------------------------
-- Returns the type of its only argument, coded as a string. The possible
-- results of this function are "
-- `nil`" (a string, not the value nil), "`number`", "`string`", "`boolean`",
-- "`table`", "`function`", "`thread`", and "`userdata`".
-- @function [parent=#global] type
-- @param v any value.
-- @return #string the type of `v`.

-------------------------------------------------------------------------------
-- Returns the elements from the given table. This function is equivalent to
-- 
--     return list[i], list[i+1], ..., list[j]
-- except that the above code can be written only for a fixed number of
-- elements. By default, `i` is 1 and `j` is the length of the list, as
-- defined by the length operator.
-- @function [parent=#global] unpack
-- @param #table list a table by index
-- @param i index of first value.
-- @param j index of last value.

-------------------------------------------------------------------------------
-- A global variable (not a function) that holds a string containing the
-- current interpreter version. The current contents of this variable is
-- "`Lua 5.1`".
-- @field [parent = #global] #string _VERSION

-------------------------------------------------------------------------------
-- This function is similar to `pcall`, except that you can set a new
-- error handler.
--
-- `xpcall` calls function `f` in protected mode, using `err` as the error
-- handler. Any error inside `f` is not propagated; instead, `xpcall` catches
-- the error, calls the `err` function with the original error object, and
-- returns a status code. Its first result is the status code (a boolean),
-- which is true if the call succeeds without errors. In this case, `xpcall`
-- also returns all results from the call, after this first result. In case
-- of any error, `xpcall` returns false plus the result from `err`.
-- @function [parent=#global] xpcall
-- @param f function to be call in *protected mode*.
-- @param err function used as error handler.
-- @return #boolean true plus the result of `f` function if its call succeeds without errors.
-- @return #boolean,#string  false plus the result of `err` function. 

-------------------------------------------------------------------------------
-- Creates a module. If there is a table in `package.loaded[name]`,
-- this table is the module. Otherwise, if there is a global table `t`
-- with the given name, this table is the module. 
-- 
-- Otherwise creates a new table `t` and sets it as the value of the global 
-- `name` and the value of `package.loaded[name]`. 
--  This function also initializes `t._NAME` with the
-- given name, `t._M` with the module (`t` itself), and `t._PACKAGE` with the
-- package name (the full module name minus last component; see below). Finally,
-- `module` sets `t` as the new environment of the current function and the
-- new value of `package.loaded[name]`, so that `require` returns `t`.
--
-- If `name` is a compound name (that is, one with components separated by
-- dots), `module` creates (or reuses, if they already exist) tables for each
-- component. For instance, if `name` is `a.b.c`, then `module` stores the
-- module table in field `c` of field `b` of global `a`.
--
-- This function can receive optional *options* after the module name, where
-- each option is a function to be applied over the module.
-- @function [parent=#global] module
-- @param name the module name.

-------------------------------------------------------------------------------
-- Loads the given module. The function starts by looking into the
-- `package.loaded` table to determine whether `modname` is already
-- loaded. If it is, then `require` returns the value stored at
-- `package.loaded[modname]`. Otherwise, it tries to find a *loader* for
-- the module.
--
-- To find a loader, `require` is guided by the `package.loaders` array. By
-- changing this array, we can change how `require` looks for a module. The
-- following explanation is based on the default configuration for
-- `package.loaders`.
--
-- First `require` queries `package.preload[modname]`. If it has a value,
-- this value (which should be a function) is the loader. Otherwise `require`
-- searches for a Lua loader using the path stored in `package.path`. If
-- that also fails, it searches for a C loader using the path stored in
-- `package.cpath`. If that also fails, it tries an *all-in-one* loader (see
-- `package.loaders`).
--
-- Once a loader is found, `require` calls the loader with a single argument,
-- `modname`. If the loader returns any value, `require` assigns the returned
-- value to `package.loaded[modname]`. If the loader returns no value and
-- has not assigned any value to `package.loaded[modname]`, then `require`
-- assigns true to this entry. In any case, `require` returns the final value
-- of `package.loaded[modname]`.
--
-- If there is any error loading or running the module, or if it cannot find
-- any loader for the module, then `require` signals an error.
-- @function [parent=#global] require
-- @param #string modname name of module to load.




-----------------------
-- @field[parent = #global] CCPointShape#CCPointShape CCPointShape preloaded module

-----------------------
-- @field[parent = #global] CCTMXTiledMap#CCTMXTiledMap CCTMXTiledMap preloaded module

-----------------------
-- @field[parent = #global] CCWaves#CCWaves CCWaves preloaded module

-----------------------
-- @field[parent = #global] CCParallaxNode#CCParallaxNode CCParallaxNode preloaded module

-----------------------
-- @field[parent = #global] CCAccelerometer#CCAccelerometer CCAccelerometer preloaded module

-----------------------
-- @field[parent = #global] CCShatteredTiles3D#CCShatteredTiles3D CCShatteredTiles3D preloaded module

-----------------------
-- @field[parent = #global] CCControlStepper#CCControlStepper CCControlStepper preloaded module

-----------------------
-- @field[parent = #global] CCTransitionFadeBL#CCTransitionFadeBL CCTransitionFadeBL preloaded module

-----------------------
-- @field[parent = #global] CCEaseSineInOut#CCEaseSineInOut CCEaseSineInOut preloaded module

-----------------------
-- @field[parent = #global] CCScheduler#CCScheduler CCScheduler preloaded module

-----------------------
-- @field[parent = #global] CCTransitionProgressOutIn#CCTransitionProgressOutIn CCTransitionProgressOutIn preloaded module

-----------------------
-- @field[parent = #global] CCTransitionFlipY#CCTransitionFlipY CCTransitionFlipY preloaded module

-----------------------
-- @field[parent = #global] CCTransitionProgressInOut#CCTransitionProgressInOut CCTransitionProgressInOut preloaded module

-----------------------
-- @field[parent = #global] CCTransitionMoveInT#CCTransitionMoveInT CCTransitionMoveInT preloaded module

-----------------------
-- @field[parent = #global] CCTransitionMoveInL#CCTransitionMoveInL CCTransitionMoveInL preloaded module

-----------------------
-- @field[parent = #global] CCSet#CCSet CCSet preloaded module

-----------------------
-- @field[parent = #global] CCPolygonShape#CCPolygonShape CCPolygonShape preloaded module

-----------------------
-- @field[parent = #global] CCFadeOutUpTiles#CCFadeOutUpTiles CCFadeOutUpTiles preloaded module

-----------------------
-- @field[parent = #global] CCComponent#CCComponent CCComponent preloaded module

-----------------------
-- @field[parent = #global] CCTextFieldTTF#CCTextFieldTTF CCTextFieldTTF preloaded module

-----------------------
-- @field[parent = #global] CCTransitionProgressVertical#CCTransitionProgressVertical CCTransitionProgressVertical preloaded module

-----------------------
-- @field[parent = #global] Localize#Localize Localize preloaded module

-----------------------
-- @field[parent = #global] CCFlipX#CCFlipX CCFlipX preloaded module

-----------------------
-- @field[parent = #global] CCTransitionSlideInB#CCTransitionSlideInB CCTransitionSlideInB preloaded module

-----------------------
-- @field[parent = #global] CCParticleDisplayData#CCParticleDisplayData CCParticleDisplayData preloaded module

-----------------------
-- @field[parent = #global] CCParticleMeteor#CCParticleMeteor CCParticleMeteor preloaded module

-----------------------
-- @field[parent = #global] CCParticleFire#CCParticleFire CCParticleFire preloaded module

-----------------------
-- @field[parent = #global] CCNodeExtend#CCNodeExtend CCNodeExtend preloaded module

-----------------------
-- @field[parent = #global] CCLabelTTF#CCLabelTTF CCLabelTTF preloaded module

-----------------------
-- @field[parent = #global] CCBaseData#CCBaseData CCBaseData preloaded module

-----------------------
-- @field[parent = #global] CCEaseElasticOut#CCEaseElasticOut CCEaseElasticOut preloaded module

-----------------------
-- @field[parent = #global] CCRipple3D#CCRipple3D CCRipple3D preloaded module

-----------------------
-- @field[parent = #global] CCTexture2D#CCTexture2D CCTexture2D preloaded module

-----------------------
-- @field[parent = #global] CCTransitionCrossFade#CCTransitionCrossFade CCTransitionCrossFade preloaded module

-----------------------
-- @field[parent = #global] CCParticleSun#CCParticleSun CCParticleSun preloaded module

-----------------------
-- @field[parent = #global] CCSize#CCSize CCSize preloaded module

-----------------------
-- @field[parent = #global] CCControlColourPicker#CCControlColourPicker CCControlColourPicker preloaded module

-----------------------
-- @field[parent = #global] CCLayerGradient#CCLayerGradient CCLayerGradient preloaded module

-----------------------
-- @field[parent = #global] CCLabelAtlas#CCLabelAtlas CCLabelAtlas preloaded module

-----------------------
-- @field[parent = #global] CCStopGrid#CCStopGrid CCStopGrid preloaded module

-----------------------
-- @field[parent = #global] CCShakyTiles3D#CCShakyTiles3D CCShakyTiles3D preloaded module

-----------------------
-- @field[parent = #global] CCActionInstant#CCActionInstant CCActionInstant preloaded module

-----------------------
-- @field[parent = #global] network#network network preloaded module

-----------------------
-- @field[parent = #global] CCProgressTimer#CCProgressTimer CCProgressTimer preloaded module

-----------------------
-- @field[parent = #global] CCBlink#CCBlink CCBlink preloaded module

-----------------------
-- @field[parent = #global] CCSpriteFrameCache#CCSpriteFrameCache CCSpriteFrameCache preloaded module

-----------------------
-- @field[parent = #global] CCSpeed#CCSpeed CCSpeed preloaded module

-----------------------
-- @field[parent = #global] display#display display preloaded module

-----------------------
-- @field[parent = #global] GameState#GameState GameState preloaded module

-----------------------
-- @field[parent = #global] CCReverseTime#CCReverseTime CCReverseTime preloaded module

-----------------------
-- @field[parent = #global] CCTransitionSplitCols#CCTransitionSplitCols CCTransitionSplitCols preloaded module

-----------------------
-- @field[parent = #global] CCTransitionSlideInT#CCTransitionSlideInT CCTransitionSlideInT preloaded module

-----------------------
-- @field[parent = #global] CCSplitCols#CCSplitCols CCSplitCols preloaded module

-----------------------
-- @field[parent = #global] CCKeypadDispatcher#CCKeypadDispatcher CCKeypadDispatcher preloaded module

-----------------------
-- @field[parent = #global] CCOrbitCamera#CCOrbitCamera CCOrbitCamera preloaded module

-----------------------
-- @field[parent = #global] CCTransitionSlideInR#CCTransitionSlideInR CCTransitionSlideInR preloaded module

-----------------------
-- @field[parent = #global] CCLinkPosition#CCLinkPosition CCLinkPosition preloaded module

-----------------------
-- @field[parent = #global] CCEaseBackIn#CCEaseBackIn CCEaseBackIn preloaded module

-----------------------
-- @field[parent = #global] CCSceneExtend#CCSceneExtend CCSceneExtend preloaded module

-----------------------
-- @field[parent = #global] CCFadeTo#CCFadeTo CCFadeTo preloaded module

-----------------------
-- @field[parent = #global] CCTransitionProgressHorizontal#CCTransitionProgressHorizontal CCTransitionProgressHorizontal preloaded module

-----------------------
-- @field[parent = #global] CCMenu#CCMenu CCMenu preloaded module

-----------------------
-- @field[parent = #global] CCTransitionZoomFlipAngular#CCTransitionZoomFlipAngular CCTransitionZoomFlipAngular preloaded module

-----------------------
-- @field[parent = #global] CCCatmullRomTo#CCCatmullRomTo CCCatmullRomTo preloaded module

-----------------------
-- @field[parent = #global] CCRenderTexture#CCRenderTexture CCRenderTexture preloaded module

-----------------------
-- @field[parent = #global] luaj#luaj luaj preloaded module

-----------------------
-- @field[parent = #global] GameNetwork#GameNetwork GameNetwork preloaded module

-----------------------
-- @field[parent = #global] CCSpriteFrame#CCSpriteFrame CCSpriteFrame preloaded module

-----------------------
-- @field[parent = #global] CCTransitionJumpZoom#CCTransitionJumpZoom CCTransitionJumpZoom preloaded module

-----------------------
-- @field[parent = #global] CCClippingNode#CCClippingNode CCClippingNode preloaded module

-----------------------
-- @field[parent = #global] CCCircleShape#CCCircleShape CCCircleShape preloaded module

-----------------------
-- @field[parent = #global] CCDouble#CCDouble CCDouble preloaded module

-----------------------
-- @field[parent = #global] CCTurnOffTiles#CCTurnOffTiles CCTurnOffTiles preloaded module

-----------------------
-- @field[parent = #global] CCTransitionShrinkGrow#CCTransitionShrinkGrow CCTransitionShrinkGrow preloaded module

-----------------------
-- @field[parent = #global] CCNotificationCenter#CCNotificationCenter CCNotificationCenter preloaded module

-----------------------
-- @field[parent = #global] crypto#crypto crypto preloaded module

-----------------------
-- @field[parent = #global] CCComponentContainer#CCComponentContainer CCComponentContainer preloaded module

-----------------------
-- @field[parent = #global] ccColor3B#ccColor3B ccColor3B preloaded module

-----------------------
-- @field[parent = #global] Store#Store Store preloaded module

-----------------------
-- @field[parent = #global] CCProcessBase#CCProcessBase CCProcessBase preloaded module

-----------------------
-- @field[parent = #global] CCFileUtils#CCFileUtils CCFileUtils preloaded module

-----------------------
-- @field[parent = #global] CCTMXObjectGroup#CCTMXObjectGroup CCTMXObjectGroup preloaded module

-----------------------
-- @field[parent = #global] CCCamera#CCCamera CCCamera preloaded module

-----------------------
-- @field[parent = #global] CCActionInterval#CCActionInterval CCActionInterval preloaded module

-----------------------
-- @field[parent = #global] CCAnimationData#CCAnimationData CCAnimationData preloaded module

-----------------------
-- @field[parent = #global] CCImage#CCImage CCImage preloaded module

-----------------------
-- @field[parent = #global] CCFloat#CCFloat CCFloat preloaded module

-----------------------
-- @field[parent = #global] CCTileMapAtlas#CCTileMapAtlas CCTileMapAtlas preloaded module

-----------------------
-- @field[parent = #global] CCEaseOut#CCEaseOut CCEaseOut preloaded module

-----------------------
-- @field[parent = #global] CCTextureCache#CCTextureCache CCTextureCache preloaded module

-----------------------
-- @field[parent = #global] CCDirector#CCDirector CCDirector preloaded module

-----------------------
-- @field[parent = #global] CCArray#CCArray CCArray preloaded module

-----------------------
-- @field[parent = #global] CCControlSaturationBrightnessPicker#CCControlSaturationBrightnessPicker CCControlSaturationBrightnessPicker preloaded module

-----------------------
-- @field[parent = #global] CCTransitionProgress#CCTransitionProgress CCTransitionProgress preloaded module

-----------------------
-- @field[parent = #global] CCEaseExponentialIn#CCEaseExponentialIn CCEaseExponentialIn preloaded module

-----------------------
-- @field[parent = #global] CCParticleSnow#CCParticleSnow CCParticleSnow preloaded module

-----------------------
-- @field[parent = #global] CCAtlasNode#CCAtlasNode CCAtlasNode preloaded module

-----------------------
-- @field[parent = #global] CCParticleBatchNode#CCParticleBatchNode CCParticleBatchNode preloaded module

-----------------------
-- @field[parent = #global] CCArmatureDataManager#CCArmatureDataManager CCArmatureDataManager preloaded module

-----------------------
-- @field[parent = #global] CCAnimationCache#CCAnimationCache CCAnimationCache preloaded module

-----------------------
-- @field[parent = #global] CCEaseSineOut#CCEaseSineOut CCEaseSineOut preloaded module

-----------------------
-- @field[parent = #global] CCReuseGrid#CCReuseGrid CCReuseGrid preloaded module

-----------------------
-- @field[parent = #global] CCFlipY#CCFlipY CCFlipY preloaded module

-----------------------
-- @field[parent = #global] CCLayerMultiplex#CCLayerMultiplex CCLayerMultiplex preloaded module

-----------------------
-- @field[parent = #global] json#json json preloaded module

-----------------------
-- @field[parent = #global] EventProtocol#EventProtocol EventProtocol preloaded module

-----------------------
-- @field[parent = #global] CCDeccelAmplitude#CCDeccelAmplitude CCDeccelAmplitude preloaded module

-----------------------
-- @field[parent = #global] CCLayerRGBA#CCLayerRGBA CCLayerRGBA preloaded module

-----------------------
-- @field[parent = #global] shortcodes#shortcodes shortcodes preloaded module

-----------------------
-- @field[parent = #global] CCTransitionScene#CCTransitionScene CCTransitionScene preloaded module

-----------------------
-- @field[parent = #global] CCDictionary#CCDictionary CCDictionary preloaded module

-----------------------
-- @field[parent = #global] luaoc#luaoc luaoc preloaded module

-----------------------
-- @field[parent = #global] CCEaseElasticIn#CCEaseElasticIn CCEaseElasticIn preloaded module

-----------------------
-- @field[parent = #global] CCFrameData#CCFrameData CCFrameData preloaded module

-----------------------
-- @field[parent = #global] CCRotateBy#CCRotateBy CCRotateBy preloaded module

-----------------------
-- @field[parent = #global] CCTintBy#CCTintBy CCTintBy preloaded module

-----------------------
-- @field[parent = #global] CCMenuItemAtlasFont#CCMenuItemAtlasFont CCMenuItemAtlasFont preloaded module

-----------------------
-- @field[parent = #global] CCTransitionSplitRows#CCTransitionSplitRows CCTransitionSplitRows preloaded module

-----------------------
-- @field[parent = #global] CCFlipX3D#CCFlipX3D CCFlipX3D preloaded module

-----------------------
-- @field[parent = #global] CCFlipY3D#CCFlipY3D CCFlipY3D preloaded module

-----------------------
-- @field[parent = #global] CCMotionStreak#CCMotionStreak CCMotionStreak preloaded module

-----------------------
-- @field[parent = #global] CCRotateTo#CCRotateTo CCRotateTo preloaded module

-----------------------
-- @field[parent = #global] CCFadeOutBLTiles#CCFadeOutBLTiles CCFadeOutBLTiles preloaded module

-----------------------
-- @field[parent = #global] CCLayerExtend#CCLayerExtend CCLayerExtend preloaded module

-----------------------
-- @field[parent = #global] CCTransitionMoveInR#CCTransitionMoveInR CCTransitionMoveInR preloaded module

-----------------------
-- @field[parent = #global] CCAnimate#CCAnimate CCAnimate preloaded module

-----------------------
-- @field[parent = #global] CCFadeIn#CCFadeIn CCFadeIn preloaded module

-----------------------
-- @field[parent = #global] CCLiquid#CCLiquid CCLiquid preloaded module

-----------------------
-- @field[parent = #global] CCLayerColor#CCLayerColor CCLayerColor preloaded module

-----------------------
-- @field[parent = #global] CCSplitRows#CCSplitRows CCSplitRows preloaded module

-----------------------
-- @field[parent = #global] ui#ui ui preloaded module

-----------------------
-- @field[parent = #global] CCBezierTo#CCBezierTo CCBezierTo preloaded module

-----------------------
-- @field[parent = #global] CCTransitionProgressRadialCCW#CCTransitionProgressRadialCCW CCTransitionProgressRadialCCW preloaded module

-----------------------
-- @field[parent = #global] scheduler#scheduler scheduler preloaded module

-----------------------
-- @field[parent = #global] CCArmature#CCArmature CCArmature preloaded module

-----------------------
-- @field[parent = #global] CCParticleSystemQuad#CCParticleSystemQuad CCParticleSystemQuad preloaded module

-----------------------
-- @field[parent = #global] CCProgressFromTo#CCProgressFromTo CCProgressFromTo preloaded module

-----------------------
-- @field[parent = #global] CCShapeNode#CCShapeNode CCShapeNode preloaded module

-----------------------
-- @field[parent = #global] audio#audio audio preloaded module

-----------------------
-- @field[parent = #global] CCPageTurn3D#CCPageTurn3D CCPageTurn3D preloaded module

-----------------------
-- @field[parent = #global] CCEaseExponentialInOut#CCEaseExponentialInOut CCEaseExponentialInOut preloaded module

-----------------------
-- @field[parent = #global] CCPoint#CCPoint CCPoint preloaded module

-----------------------
-- @field[parent = #global] CCSpriteBatchNode#CCSpriteBatchNode CCSpriteBatchNode preloaded module

-----------------------
-- @field[parent = #global] CCTransitionZoomFlipX#CCTransitionZoomFlipX CCTransitionZoomFlipX preloaded module

-----------------------
-- @field[parent = #global] CCScene#CCScene CCScene preloaded module

-----------------------
-- @field[parent = #global] CCString#CCString CCString preloaded module

-----------------------
-- @field[parent = #global] CCBool#CCBool CCBool preloaded module

-----------------------
-- @field[parent = #global] CCConfiguration#CCConfiguration CCConfiguration preloaded module

-----------------------
-- @field[parent = #global] CCRemoveSelf#CCRemoveSelf CCRemoveSelf preloaded module

-----------------------
-- @field[parent = #global] CCControlButton#CCControlButton CCControlButton preloaded module

-----------------------
-- @field[parent = #global] CCMenuItemFont#CCMenuItemFont CCMenuItemFont preloaded module

-----------------------
-- @field[parent = #global] init#init init preloaded module

-----------------------
-- @field[parent = #global] CCArmatureAnimation#CCArmatureAnimation CCArmatureAnimation preloaded module

-----------------------
-- @field[parent = #global] CCGridAction#CCGridAction CCGridAction preloaded module

-----------------------
-- @field[parent = #global] CCNodeRGBA#CCNodeRGBA CCNodeRGBA preloaded module

-----------------------
-- @field[parent = #global] CCArmatureData#CCArmatureData CCArmatureData preloaded module

-----------------------
-- @field[parent = #global] cc_timeval#cc_timeval cc_timeval preloaded module

-----------------------
-- @field[parent = #global] CCScale9Sprite#CCScale9Sprite CCScale9Sprite preloaded module

-----------------------
-- @field[parent = #global] CCUserDefault#CCUserDefault CCUserDefault preloaded module

-----------------------
-- @field[parent = #global] CCActionCamera#CCActionCamera CCActionCamera preloaded module

-----------------------
-- @field[parent = #global] CCParticleFireworks#CCParticleFireworks CCParticleFireworks preloaded module

-----------------------
-- @field[parent = #global] CCEaseExponentialOut#CCEaseExponentialOut CCEaseExponentialOut preloaded module

-----------------------
-- @field[parent = #global] CCParticleSmoke#CCParticleSmoke CCParticleSmoke preloaded module

-----------------------
-- @field[parent = #global] deprecated#deprecated deprecated preloaded module

-----------------------
-- @field[parent = #global] functions#functions functions preloaded module

-----------------------
-- @field[parent = #global] ccTexParams#ccTexParams ccTexParams preloaded module

-----------------------
-- @field[parent = #global] CCParticleExplosion#CCParticleExplosion CCParticleExplosion preloaded module

-----------------------
-- @field[parent = #global] CCTransitionFade#CCTransitionFade CCTransitionFade preloaded module

-----------------------
-- @field[parent = #global] CCJumpTiles3D#CCJumpTiles3D CCJumpTiles3D preloaded module

-----------------------
-- @field[parent = #global] CCMoveTo#CCMoveTo CCMoveTo preloaded module

-----------------------
-- @field[parent = #global] CCRect#CCRect CCRect preloaded module

-----------------------
-- @field[parent = #global] CCEditBox#CCEditBox CCEditBox preloaded module

-----------------------
-- @field[parent = #global] CCGraySprite#CCGraySprite CCGraySprite preloaded module

-----------------------
-- @field[parent = #global] CCProfiler#CCProfiler CCProfiler preloaded module

-----------------------
-- @field[parent = #global] CCCallFunc#CCCallFunc CCCallFunc preloaded module

-----------------------
-- @field[parent = #global] CCAccelAmplitude#CCAccelAmplitude CCAccelAmplitude preloaded module

-----------------------
-- @field[parent = #global] CCRepeatForever#CCRepeatForever CCRepeatForever preloaded module

-----------------------
-- @field[parent = #global] ccColor4F#ccColor4F ccColor4F preloaded module

-----------------------
-- @field[parent = #global] CCTMXTilesetInfo#CCTMXTilesetInfo CCTMXTilesetInfo preloaded module

-----------------------
-- @field[parent = #global] CCMoveBy#CCMoveBy CCMoveBy preloaded module

-----------------------
-- @field[parent = #global] CCMovementBoneData#CCMovementBoneData CCMovementBoneData preloaded module

-----------------------
-- @field[parent = #global] CCTintTo#CCTintTo CCTintTo preloaded module

-----------------------
-- @field[parent = #global] CCRectShape#CCRectShape CCRectShape preloaded module

-----------------------
-- @field[parent = #global] CCJumpTo#CCJumpTo CCJumpTo preloaded module

-----------------------
-- @field[parent = #global] CCCardinalSplineTo#CCCardinalSplineTo CCCardinalSplineTo preloaded module

-----------------------
-- @field[parent = #global] ccColor4B#ccColor4B ccColor4B preloaded module

-----------------------
-- @field[parent = #global] CCFollow#CCFollow CCFollow preloaded module

-----------------------
-- @field[parent = #global] CCFadeOut#CCFadeOut CCFadeOut preloaded module

-----------------------
-- @field[parent = #global] CCShuffleTiles#CCShuffleTiles CCShuffleTiles preloaded module

-----------------------
-- @field[parent = #global] CCBatchNode#CCBatchNode CCBatchNode preloaded module

-----------------------
-- @field[parent = #global] CCEaseElastic#CCEaseElastic CCEaseElastic preloaded module

-----------------------
-- @field[parent = #global] CCEaseBounce#CCEaseBounce CCEaseBounce preloaded module

-----------------------
-- @field[parent = #global] CCJumpBy#CCJumpBy CCJumpBy preloaded module

-----------------------
-- @field[parent = #global] CCTouchDispatcher#CCTouchDispatcher CCTouchDispatcher preloaded module

-----------------------
-- @field[parent = #global] debug#debug debug preloaded module

-----------------------
-- @field[parent = #global] CCSprite#CCSprite CCSprite preloaded module

-----------------------
-- @field[parent = #global] CCEaseIn#CCEaseIn CCEaseIn preloaded module

-----------------------
-- @field[parent = #global] CCTiledGrid3DAction#CCTiledGrid3DAction CCTiledGrid3DAction preloaded module

-----------------------
-- @field[parent = #global] CCEaseSineIn#CCEaseSineIn CCEaseSineIn preloaded module

-----------------------
-- @field[parent = #global] CCTransitionFadeDown#CCTransitionFadeDown CCTransitionFadeDown preloaded module

-----------------------
-- @field[parent = #global] CCTransitionSlideInL#CCTransitionSlideInL CCTransitionSlideInL preloaded module

-----------------------
-- @field[parent = #global] CCControl#CCControl CCControl preloaded module

-----------------------
-- @field[parent = #global] CCToggleVisibility#CCToggleVisibility CCToggleVisibility preloaded module

-----------------------
-- @field[parent = #global] CCTransitionFadeUp#CCTransitionFadeUp CCTransitionFadeUp preloaded module

-----------------------
-- @field[parent = #global] CCWaves3D#CCWaves3D CCWaves3D preloaded module

-----------------------
-- @field[parent = #global] CCShow#CCShow CCShow preloaded module

-----------------------
-- @field[parent = #global] CCEaseBounceOut#CCEaseBounceOut CCEaseBounceOut preloaded module

-----------------------
-- @field[parent = #global] CCArmatureDisplayData#CCArmatureDisplayData CCArmatureDisplayData preloaded module

-----------------------
-- @field[parent = #global] CCCallFuncN#CCCallFuncN CCCallFuncN preloaded module

-----------------------
-- @field[parent = #global] CCNode#CCNode CCNode preloaded module

-----------------------
-- @field[parent = #global] CCEaseInOut#CCEaseInOut CCEaseInOut preloaded module

-----------------------
-- @field[parent = #global] CCActionEase#CCActionEase CCActionEase preloaded module

-----------------------
-- @field[parent = #global] CCSpawn#CCSpawn CCSpawn preloaded module

-----------------------
-- @field[parent = #global] CCAction#CCAction CCAction preloaded module

-----------------------
-- @field[parent = #global] CCMenuItemSprite#CCMenuItemSprite CCMenuItemSprite preloaded module

-----------------------
-- @field[parent = #global] CCPlace#CCPlace CCPlace preloaded module

-----------------------
-- @field[parent = #global] CCParticleSpiral#CCParticleSpiral CCParticleSpiral preloaded module

-----------------------
-- @field[parent = #global] CCTMXLayerInfo#CCTMXLayerInfo CCTMXLayerInfo preloaded module

-----------------------
-- @field[parent = #global] AppBase#AppBase AppBase preloaded module

-----------------------
-- @field[parent = #global] SimpleAudioEngine#SimpleAudioEngine SimpleAudioEngine preloaded module

-----------------------
-- @field[parent = #global] CCTransitionFlipAngular#CCTransitionFlipAngular CCTransitionFlipAngular preloaded module

-----------------------
-- @field[parent = #global] CCEaseBounceIn#CCEaseBounceIn CCEaseBounceIn preloaded module

-----------------------
-- @field[parent = #global] CCBone#CCBone CCBone preloaded module

-----------------------
-- @field[parent = #global] CCHide#CCHide CCHide preloaded module

-----------------------
-- @field[parent = #global] CCPointArray#CCPointArray CCPointArray preloaded module

-----------------------
-- @field[parent = #global] CCTransitionFlipX#CCTransitionFlipX CCTransitionFlipX preloaded module

-----------------------
-- @field[parent = #global] CCEaseRateAction#CCEaseRateAction CCEaseRateAction preloaded module

-----------------------
-- @field[parent = #global] OpenFeint#OpenFeint OpenFeint preloaded module

-----------------------
-- @field[parent = #global] CCTransitionZoomFlipY#CCTransitionZoomFlipY CCTransitionZoomFlipY preloaded module

-----------------------
-- @field[parent = #global] ccBezierConfig#ccBezierConfig ccBezierConfig preloaded module

-----------------------
-- @field[parent = #global] CCFadeOutTRTiles#CCFadeOutTRTiles CCFadeOutTRTiles preloaded module

-----------------------
-- @field[parent = #global] CCTargetedAction#CCTargetedAction CCTargetedAction preloaded module

-----------------------
-- @field[parent = #global] CCMovementData#CCMovementData CCMovementData preloaded module

-----------------------
-- @field[parent = #global] CCTMXLayer#CCTMXLayer CCTMXLayer preloaded module

-----------------------
-- @field[parent = #global] CCControlSwitch#CCControlSwitch CCControlSwitch preloaded module

-----------------------
-- @field[parent = #global] CCProgressTo#CCProgressTo CCProgressTo preloaded module

-----------------------
-- @field[parent = #global] CCSpriteDisplayData#CCSpriteDisplayData CCSpriteDisplayData preloaded module

-----------------------
-- @field[parent = #global] CCDelayTime#CCDelayTime CCDelayTime preloaded module

-----------------------
-- @field[parent = #global] transition#transition transition preloaded module

-----------------------
-- @field[parent = #global] CCAnimationFrame#CCAnimationFrame CCAnimationFrame preloaded module

-----------------------
-- @field[parent = #global] CCSkewTo#CCSkewTo CCSkewTo preloaded module

-----------------------
-- @field[parent = #global] CCMenuItemToggle#CCMenuItemToggle CCMenuItemToggle preloaded module

-----------------------
-- @field[parent = #global] CCControlSlider#CCControlSlider CCControlSlider preloaded module

-----------------------
-- @field[parent = #global] CCProfilingTimer#CCProfilingTimer CCProfilingTimer preloaded module

-----------------------
-- @field[parent = #global] CCSkewBy#CCSkewBy CCSkewBy preloaded module

-----------------------
-- @field[parent = #global] CCScaleBy#CCScaleBy CCScaleBy preloaded module

-----------------------
-- @field[parent = #global] CCTransitionRotoZoom#CCTransitionRotoZoom CCTransitionRotoZoom preloaded module

-----------------------
-- @field[parent = #global] Timer#Timer Timer preloaded module

-----------------------
-- @field[parent = #global] CCControlHuePicker#CCControlHuePicker CCControlHuePicker preloaded module

-----------------------
-- @field[parent = #global] CCShaky3D#CCShaky3D CCShaky3D preloaded module

-----------------------
-- @field[parent = #global] CCTransitionPageTurn#CCTransitionPageTurn CCTransitionPageTurn preloaded module

-----------------------
-- @field[parent = #global] CCShaderDisplayData#CCShaderDisplayData CCShaderDisplayData preloaded module

-----------------------
-- @field[parent = #global] CCObject#CCObject CCObject preloaded module

-----------------------
-- @field[parent = #global] CCDevice#CCDevice CCDevice preloaded module

-----------------------
-- @field[parent = #global] CCEGLView#CCEGLView CCEGLView preloaded module

-----------------------
-- @field[parent = #global] CCMenuItem#CCMenuItem CCMenuItem preloaded module

-----------------------
-- @field[parent = #global] CCEaseBackInOut#CCEaseBackInOut CCEaseBackInOut preloaded module

-----------------------
-- @field[parent = #global] CCSequence#CCSequence CCSequence preloaded module

-----------------------
-- @field[parent = #global] CCClippingRegionNode#CCClippingRegionNode CCClippingRegionNode preloaded module

-----------------------
-- @field[parent = #global] CCWavesTiles3D#CCWavesTiles3D CCWavesTiles3D preloaded module

-----------------------
-- @field[parent = #global] CCLabelBMFont#CCLabelBMFont CCLabelBMFont preloaded module

-----------------------
-- @field[parent = #global] CCAnimation#CCAnimation CCAnimation preloaded module

-----------------------
-- @field[parent = #global] device#device device preloaded module

-----------------------
-- @field[parent = #global] Context#Context Context preloaded module

-----------------------
-- @field[parent = #global] CCInteger#CCInteger CCInteger preloaded module

-----------------------
-- @field[parent = #global] AssetsManager#AssetsManager AssetsManager preloaded module

-----------------------
-- @field[parent = #global] CCTwirl#CCTwirl CCTwirl preloaded module

-----------------------
-- @field[parent = #global] CCFadeOutDownTiles#CCFadeOutDownTiles CCFadeOutDownTiles preloaded module

-----------------------
-- @field[parent = #global] CCEaseBackOut#CCEaseBackOut CCEaseBackOut preloaded module

-----------------------
-- @field[parent = #global] CCControlPotentiometer#CCControlPotentiometer CCControlPotentiometer preloaded module

-----------------------
-- @field[parent = #global] CCBoneData#CCBoneData CCBoneData preloaded module

-----------------------
-- @field[parent = #global] CCControlUtils#CCControlUtils CCControlUtils preloaded module

-----------------------
-- @field[parent = #global] CCCardinalSplineBy#CCCardinalSplineBy CCCardinalSplineBy preloaded module

-----------------------
-- @field[parent = #global] CCMenuItemImage#CCMenuItemImage CCMenuItemImage preloaded module

-----------------------
-- @field[parent = #global] CCAccelDeccelAmplitude#CCAccelDeccelAmplitude CCAccelDeccelAmplitude preloaded module

-----------------------
-- @field[parent = #global] CCTransitionSceneOriented#CCTransitionSceneOriented CCTransitionSceneOriented preloaded module

-----------------------
-- @field[parent = #global] CCLayer#CCLayer CCLayer preloaded module

-----------------------
-- @field[parent = #global] CCTransitionMoveInB#CCTransitionMoveInB CCTransitionMoveInB preloaded module

-----------------------
-- @field[parent = #global] CCFiniteTimeAction#CCFiniteTimeAction CCFiniteTimeAction preloaded module

-----------------------
-- @field[parent = #global] CCTransitionTurnOffTiles#CCTransitionTurnOffTiles CCTransitionTurnOffTiles preloaded module

-----------------------
-- @field[parent = #global] CCScaleTo#CCScaleTo CCScaleTo preloaded module

-----------------------
-- @field[parent = #global] CCEaseElasticInOut#CCEaseElasticInOut CCEaseElasticInOut preloaded module

-----------------------
-- @field[parent = #global] CCRepeat#CCRepeat CCRepeat preloaded module

-----------------------
-- @field[parent = #global] CCSpriteExtend#CCSpriteExtend CCSpriteExtend preloaded module

-----------------------
-- @field[parent = #global] CCParticleGalaxy#CCParticleGalaxy CCParticleGalaxy preloaded module

-----------------------
-- @field[parent = #global] CCTransitionProgressRadialCW#CCTransitionProgressRadialCW CCTransitionProgressRadialCW preloaded module

-----------------------
-- @field[parent = #global] CCParticleRain#CCParticleRain CCParticleRain preloaded module

-----------------------
-- @field[parent = #global] CCBezierBy#CCBezierBy CCBezierBy preloaded module

-----------------------
-- @field[parent = #global] ccBlendFunc#ccBlendFunc ccBlendFunc preloaded module

-----------------------
-- @field[parent = #global] CCParticleSystem#CCParticleSystem CCParticleSystem preloaded module

-----------------------
-- @field[parent = #global] CCTransitionFadeTR#CCTransitionFadeTR CCTransitionFadeTR preloaded module

-----------------------
-- @field[parent = #global] CCApplication#CCApplication CCApplication preloaded module

-----------------------
-- @field[parent = #global] CCEaseBounceInOut#CCEaseBounceInOut CCEaseBounceInOut preloaded module

-----------------------
-- @field[parent = #global] CCMenuItemLabel#CCMenuItemLabel CCMenuItemLabel preloaded module

-----------------------
-- @field[parent = #global] CCLens3D#CCLens3D CCLens3D preloaded module

-----------------------
-- @field[parent = #global] CCParticleFlower#CCParticleFlower CCParticleFlower preloaded module

-----------------------
-- @field[parent = #global] CCTMXMapInfo#CCTMXMapInfo CCTMXMapInfo preloaded module

-----------------------
-- @field[parent = #global] CCCatmullRomBy#CCCatmullRomBy CCCatmullRomBy preloaded module

-----------------------
-- @field[parent = #global] CCDisplayData#CCDisplayData CCDisplayData preloaded module

-----------------------
-- @field[parent = #global] CCActionManager#CCActionManager CCActionManager preloaded module

-----------------------
-- @field[parent = #global] CCGrid3DAction#CCGrid3DAction CCGrid3DAction preloaded module

-----------------------
-- @field[parent = #global] CCTime#CCTime CCTime preloaded module

return nil