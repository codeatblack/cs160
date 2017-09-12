# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require underscore
#= require hammer
#= require jquery.hammer
#= require touch-emulator
#= require paper-full

class window.ColoringInteraction
    @COLORING_PAGE: "/coloringpages/mandala.svg"
    constructor: (options)->
        scope = this
        Utility.paperSetup "paperCanvas"
        # SETUP COLOR PALETTE
        window.cp = new ColorPalette
            container: $("#color-palette")
        # IMPORT COLORING PAGE
        paper.project.importSVG ColoringInteraction.COLORING_PAGE, (svg)->
            svg.position = paper.view.center
            svg.remove()
            # COMMENT OUT ONE OF THESE TO TOGGLE BETWEEN INTERACTIONS
            scope.myGradientInteraction()
            # scope.myCustomInteraction()
            
    myGradientInteraction: ()->     
        console.log "IN GRADIENT"
        rect = new paper.Path.Rectangle
            size: [100,100]
            fillColor: "red"
            strokeColor: "red"
            strokeWidth: 0
            
        rect2 = new paper.Path.Rectangle
            size:[200,200]
            fillColor: "blue"
            strokeColor: "yellow"
            strokeWidth: 10
        rect2.position =  paper.view.center
        console.log rect.position.x
        console.log rect2.position
        console.log rect.position
        rect.position.x += 20
        rect.position.y += 20
    
        hitOptions = 
            segments: false
            stroke: false
            fill: true
            tolerance: 5
            
        # IMPLEMENT GRADIENT COLOR HERE
        window.t = new paper.Tool
        t.myActivePath = cp.currentColor
        t.minDistance = 10
        t.onMouseDown =  (event)->
            hitResult = paper.project.hitTest(event.point, hitOptions)
            if not hitResult then return
            
            _.each hitResult, (hit)->
                # DON'T COLOR THE BLACK LINES
                if hit.fillColor and hit.fillColor.equals("black") then return;
                hit.fillColor = cp.currentColor()
                #t.myActivePath = hit.item
        t.onMouseDrag =  (event)->
            # MOUSE DRAG ACTION
        t.onMouseUp =  (event)->
            
            # MOUSE UP ACTION
            r = new Color("red")
            console.log event.point, r.toCSS(), paper.view.center
            t.myActivePath.fillColor = 
                 gradient: 
                     stops: ["red", "green"]
                     org: [event.point]
                
    myCustomInteraction: ()->     
        hitOptions = 
            segments: false
            stroke: false
            fill: true
            tolerance: 5
            
        # IMPLEMENT GRADIENT COLOR HERE
        t = new paper.Tool
        t.minDistance = 10
        t.onMouseDown =  (event)->
            hitResult = paper.project.hitTest(event.point, hitOptions)
            if not hitResult then return
            
            _.each hitResult, (hit)->
                # DON'T COLOR THE BLACK LINES
                if hit.fillColor and hit.fillColor.equals("black") then return;
                hit.fillColor = cp.currentColor()
               
        t.onMouseDrag =  (event)->
            # MOUSE DRAG ACTION
        t.onMouseUp =  (event)->
            # MOUSE UP ACTION        
         
    
    
# COLOR PALETTE OBJECT - NO NEED TO TOUCH
class window.ColorPalette
    @HUES: 32
    constructor: (options)->
        _.extend this, options
        @history = [new paper.Color("yellow"), new paper.Color("blue")]
        @init()
    init: ->
        scope = this
        hues = _.range(0, 360, 360/ColorPalette.HUES)
        hues = _.map hues, (hue)->
            h = new paper.Color "red"
            h.hue = hue
            return h
        hues = _.flatten [new paper.Color("white"), hues, new paper.Color("black")]
        _.each hues, (hue, i)->
            swatch = $("<span>").addClass("swatch").css("background", hue.toCSS())
                                .click ()->
                                    scope.history.push new paper.Color rgb2hex($(this).css('background'))
                                    $(this).addClass('active').siblings().removeClass('active')
            if i == 0 then $(this).addClass('active')
            scope.container.append(swatch)
    currentColor: ->
        return @history[@history.length - 1]
    lastColor: ->
        return @history[@history.length - 2]