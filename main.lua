--Carol Danvers' Costumes Timeline
--Sara Levine
--Coded for Prof. LeMasters' Poetics of Mobile class
--This code is unfinished!
--I borrowed some set-up code from: https://developer.coronalabs.com/code/scroll-content
--Comments are the original author's unless otherwise noted.
display.setStatusBar(display.HiddenStatusBar)
display.setDefault("background",255,255,0)
--import the external scrolling classes
local scrollView = require("scrollView")
 
--setup top and bottom boundaries for the scrolling view
local topBoundary = display.screenOriginY +60
local bottomBoundary = display.screenOriginY + 48
 
--setup a group into which you can insert anything that needs to scroll
local scrollView = scrollView.new{ top=topBoundary, bottom=bottomBoundary }

scrollView:addScrollBar( 255, 255, 255,120)

local screenWidth = display.contentWidth
local screenHeight = display.contentHeight
local screenCenterX = display.contentCenterX
local screenCenterY = display.contentCenterY
--Sara's Comments: Here are all of the images I wanted in the timeline.
--Sara's Comments: I am now rethinking this project because all of these images (the character of Carol Danvers) are copyrighted in some way.
--Sara's Comments: I was thinking it might be more interesting to draw a blank "body" and have that user swipe over the body. Costumes come in from right to left and stop over the body. Users can see the progressive change in costume design over time. I would like to be able to do this with several different characters.
local carolCorps = display.newImage("danvers-capt-marvel.jpg",screenWidth*0.3,screenHeight*3.12)
carolCorps:scale(0.5,0.5)
--Sara's Comments: I couldn't find a date for when Carol Danvers was a part of S.H.I.E.L.D., so I left this image out.
--local shield = display.newImage("danvers-shield.jpg", screenWidth*0.3,screenHeight*3.15)
--shield:scale(0.7,0.7)
local warBird = display.newImage("danvers-warbird.jpg",screenWidth*0.3,screenHeight*2.52)
warBird:scale(0.6,0.6)
local binary = display.newImage("danvers-binary.jpg",screenWidth*0.3,screenHeight*2)
binary:scale(0.6,0.6)
local secondVersion = display.newImage("MsMe_20.jpg",screenWidth*0.3,screenHeight*1.47)
secondVersion:scale(0.5,0.5)
local originalMsMarvel = display.newImage("danvers-2.png",screenWidth*0.3,screenHeight*0.9)
originalMsMarvel:scale(0.85,0.85)
local firstAppearance = display.newImage("danvers-1.png",screenWidth*0.3,screenHeight*0.35)
firstAppearance:scale(0.85,0.85)

--Sara's Comments: All of the titles that appear on the screen.
local myTitle = display.newText("Carol Danvers Costume Timeline",screenWidth*0.5,screenHeight*0.14,200,200,nil,20)
myTitle:setFillColor(0,0,0)

local carolFirst = display.newText("1977, First Appearance as Ms. Marvel",screenWidth*.75,screenHeight*0.3,100,200,nil,15)
carolFirst:setTextColor(255,0,0)

local carolSecond = display.newText("1977, Ms. Marvel #10",screenWidth*.75,screenHeight*0.86,100,200,nil,15)
carolSecond:setTextColor(255,0,0)

local carolThird = display.newText("1977, Ms. Marvel #20", screenWidth*.75,screenHeight*1.42,100,200,nil,15)
carolThird:setTextColor(255,0,0)

local carolBinary = display.newText("1982, First Appearance as Binary",screenWidth*.75,screenHeight*2,100,200,nil,15)
carolBinary:setTextColor(255,0,0)

local carolWarbird = display.newText("1998, First Appearance as Warbird",screenWidth*.75,screenHeight*2.49,100,200,nil,15)
carolWarbird:setTextColor(255,0,0)

local carolCapt = display.newText("2012, First Appearance as Captain Marvel",screenWidth*.75,screenHeight*3.07,100,200,nil,15)
carolCapt:setTextColor(255,0,0)

scrollView:insert(carolCorps)
--scrollView:insert(shield)
scrollView:insert(warBird)
scrollView:insert(binary)
scrollView:insert(secondVersion)
scrollView:insert(originalMsMarvel)
scrollView:insert(firstAppearance)
scrollView:insert(myTitle)
scrollView:insert(carolFirst)
scrollView:insert(carolSecond)
scrollView:insert(carolThird)
scrollView:insert(carolBinary)
scrollView:insert(carolWarbird)
scrollView:insert(carolCapt)
scrollView:addScrollBar( 255, 255, 255, 120 )
