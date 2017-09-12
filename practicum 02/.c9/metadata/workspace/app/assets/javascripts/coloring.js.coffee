{"changed":true,"filter":false,"title":"coloring.js.coffee","tooltip":"/app/assets/javascripts/coloring.js.coffee","value":"# Place all the behaviors and hooks related to the matching controller here.\n# All this logic will automatically be available in application.js.\n# You can use CoffeeScript in this file: http://coffeescript.org/\n\n#= require underscore\n#= require hammer\n#= require jquery.hammer\n#= require touch-emulator\n#= require paper-full\n\nclass window.ColoringInteraction\n    @COLORING_PAGE: \"/coloringpages/mandala.svg\"\n    constructor: (options)->\n        scope = this\n        Utility.paperSetup \"paperCanvas\"\n        # SETUP COLOR PALETTE\n        window.cp = new ColorPalette\n            container: $(\"#color-palette\")\n        # IMPORT COLORING PAGE\n        paper.project.importSVG ColoringInteraction.COLORING_PAGE, (svg)->\n            svg.position = paper.view.center\n            svg.remove()\n            # COMMENT OUT ONE OF THESE TO TOGGLE BETWEEN INTERACTIONS\n            scope.myGradientInteraction()\n            # scope.myCustomInteraction()\n            \n    myGradientInteraction: ()->     \n        console.log \"IN GRADIENT\"\n        rect = new paper.Path.Rectangle\n            size: [100,100]\n            fillColor: \"red\"\n            strokeColor: \"red\"\n            strokeWidth: 0\n            \n        rect2 = new paper.Path.Rectangle\n            size:[200,200]\n            fillColor: \"blue\"\n            strokeColor: \"yellow\"\n            strokeWidth: 10\n        rect2.position =  paper.view.center\n        console.log rect.position.x\n        console.log rect2.position\n        console.log rect.position\n        rect.position.x += 20\n        rect.position.y += 20\n    \n        hitOptions = \n            segments: false\n            stroke: false\n            fill: true\n            tolerance: 5\n            \n        # IMPLEMENT GRADIENT COLOR HERE\n        window.t = new paper.Tool\n        t.myActivePath = cp.currentColor\n        t.minDistance = 10\n        t.onMouseDown =  (event)->\n            hitResult = paper.project.hitTest(event.point, hitOptions)\n            if not hitResult then return\n            \n            _.each hitResult, (hit)->\n                # DON'T COLOR THE BLACK LINES\n                if hit.fillColor and hit.fillColor.equals(\"black\") then return;\n                hit.fillColor = cp.currentColor()\n                #t.myActivePath = hit.item\n        t.onMouseDrag =  (event)->\n            # MOUSE DRAG ACTION\n        t.onMouseUp =  (event)->\n            \n            # MOUSE UP ACTION\n            r = new Color(\"red\")\n            console.log event.point, r.toCSS(), paper.view.center\n            t.myActivePath.fillColor = \n                 gradient: \n                     stops: [\"red\", \"green\"]\n                     org: [event.point]\n                     destination: [event.lastPoint]\n                \n    myCustomInteraction: ()->     \n        hitOptions = \n            segments: false\n            stroke: false\n            fill: true\n            tolerance: 5\n            \n        # IMPLEMENT GRADIENT COLOR HERE\n        t = new paper.Tool\n        t.minDistance = 10\n        t.onMouseDown =  (event)->\n            hitResult = paper.project.hitTest(event.point, hitOptions)\n            if not hitResult then return\n            \n            _.each hitResult, (hit)->\n                # DON'T COLOR THE BLACK LINES\n                if hit.fillColor and hit.fillColor.equals(\"black\") then return;\n                hit.fillColor = cp.currentColor()\n               \n        t.onMouseDrag =  (event)->\n            # MOUSE DRAG ACTION\n        t.onMouseUp =  (event)->\n            # MOUSE UP ACTION        \n         \n    \n    \n# COLOR PALETTE OBJECT - NO NEED TO TOUCH\nclass window.ColorPalette\n    @HUES: 32\n    constructor: (options)->\n        _.extend this, options\n        @history = [new paper.Color(\"yellow\"), new paper.Color(\"blue\")]\n        @init()\n    init: ->\n        scope = this\n        hues = _.range(0, 360, 360/ColorPalette.HUES)\n        hues = _.map hues, (hue)->\n            h = new paper.Color \"red\"\n            h.hue = hue\n            return h\n        hues = _.flatten [new paper.Color(\"white\"), hues, new paper.Color(\"black\")]\n        _.each hues, (hue, i)->\n            swatch = $(\"<span>\").addClass(\"swatch\").css(\"background\", hue.toCSS())\n                                .click ()->\n                                    scope.history.push new paper.Color rgb2hex($(this).css('background'))\n                                    $(this).addClass('active').siblings().removeClass('active')\n            if i == 0 then $(this).addClass('active')\n            scope.container.append(swatch)\n    currentColor: ->\n        return @history[@history.length - 1]\n    lastColor: ->\n        return @history[@history.length - 2]","undoManager":{"mark":-2,"position":100,"stack":[[{"start":{"row":43,"column":14},"end":{"row":43,"column":15},"action":"insert","lines":["p"],"id":3597}],[{"start":{"row":43,"column":15},"end":{"row":43,"column":16},"action":"insert","lines":["o"],"id":3598}],[{"start":{"row":43,"column":14},"end":{"row":43,"column":16},"action":"remove","lines":["po"],"id":3599},{"start":{"row":43,"column":14},"end":{"row":43,"column":22},"action":"insert","lines":["position"]}],[{"start":{"row":43,"column":22},"end":{"row":43,"column":23},"action":"insert","lines":["."],"id":3600}],[{"start":{"row":43,"column":23},"end":{"row":43,"column":24},"action":"insert","lines":["x"],"id":3601}],[{"start":{"row":43,"column":24},"end":{"row":43,"column":25},"action":"insert","lines":[" "],"id":3602}],[{"start":{"row":43,"column":25},"end":{"row":43,"column":26},"action":"insert","lines":["="],"id":3603}],[{"start":{"row":43,"column":25},"end":{"row":43,"column":26},"action":"remove","lines":["="],"id":3604}],[{"start":{"row":43,"column":25},"end":{"row":43,"column":26},"action":"insert","lines":["+"],"id":3605}],[{"start":{"row":43,"column":26},"end":{"row":43,"column":27},"action":"insert","lines":["="],"id":3606}],[{"start":{"row":43,"column":27},"end":{"row":43,"column":28},"action":"insert","lines":[" "],"id":3607}],[{"start":{"row":43,"column":28},"end":{"row":43,"column":29},"action":"insert","lines":["2"],"id":3608}],[{"start":{"row":43,"column":29},"end":{"row":43,"column":30},"action":"insert","lines":["0"],"id":3609}],[{"start":{"row":43,"column":30},"end":{"row":44,"column":0},"action":"insert","lines":["",""],"id":3610},{"start":{"row":44,"column":0},"end":{"row":44,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":44,"column":8},"end":{"row":44,"column":9},"action":"insert","lines":["r"],"id":3611}],[{"start":{"row":44,"column":9},"end":{"row":44,"column":10},"action":"insert","lines":["e"],"id":3612}],[{"start":{"row":44,"column":10},"end":{"row":44,"column":11},"action":"insert","lines":["c"],"id":3613}],[{"start":{"row":44,"column":8},"end":{"row":44,"column":11},"action":"remove","lines":["rec"],"id":3614},{"start":{"row":44,"column":8},"end":{"row":44,"column":12},"action":"insert","lines":["rect"]}],[{"start":{"row":44,"column":12},"end":{"row":44,"column":13},"action":"insert","lines":["."],"id":3615}],[{"start":{"row":44,"column":13},"end":{"row":44,"column":14},"action":"insert","lines":["p"],"id":3616}],[{"start":{"row":44,"column":14},"end":{"row":44,"column":15},"action":"insert","lines":["o"],"id":3617}],[{"start":{"row":44,"column":13},"end":{"row":44,"column":15},"action":"remove","lines":["po"],"id":3618},{"start":{"row":44,"column":13},"end":{"row":44,"column":21},"action":"insert","lines":["position"]}],[{"start":{"row":44,"column":21},"end":{"row":44,"column":22},"action":"insert","lines":["."],"id":3619}],[{"start":{"row":44,"column":22},"end":{"row":44,"column":23},"action":"insert","lines":["y"],"id":3620}],[{"start":{"row":44,"column":23},"end":{"row":44,"column":24},"action":"insert","lines":[" "],"id":3621}],[{"start":{"row":44,"column":24},"end":{"row":44,"column":25},"action":"insert","lines":["+"],"id":3622}],[{"start":{"row":44,"column":25},"end":{"row":44,"column":26},"action":"insert","lines":["="],"id":3623}],[{"start":{"row":44,"column":26},"end":{"row":44,"column":27},"action":"insert","lines":[" "],"id":3624}],[{"start":{"row":44,"column":27},"end":{"row":44,"column":28},"action":"insert","lines":["2"],"id":3625}],[{"start":{"row":44,"column":28},"end":{"row":44,"column":29},"action":"insert","lines":["0"],"id":3626}],[{"start":{"row":43,"column":10},"end":{"row":43,"column":11},"action":"remove","lines":["e"],"id":3627}],[{"start":{"row":72,"column":12},"end":{"row":72,"column":13},"action":"remove","lines":["#"],"id":3628}],[{"start":{"row":73,"column":12},"end":{"row":73,"column":13},"action":"remove","lines":["#"],"id":3629}],[{"start":{"row":74,"column":12},"end":{"row":74,"column":13},"action":"remove","lines":["#"],"id":3630}],[{"start":{"row":75,"column":12},"end":{"row":75,"column":13},"action":"remove","lines":["#"],"id":3631}],[{"start":{"row":72,"column":12},"end":{"row":72,"column":13},"action":"remove","lines":[" "],"id":3632}],[{"start":{"row":75,"column":17},"end":{"row":75,"column":20},"action":"insert","lines":["   "],"id":3633}],[{"start":{"row":75,"column":20},"end":{"row":75,"column":24},"action":"insert","lines":["    "],"id":3634}],[{"start":{"row":75,"column":24},"end":{"row":75,"column":27},"action":"remove","lines":["ori"],"id":3635}],[{"start":{"row":75,"column":20},"end":{"row":75,"column":24},"action":"remove","lines":["    "],"id":3636}],[{"start":{"row":54,"column":25},"end":{"row":54,"column":29},"action":"remove","lines":["null"],"id":3637},{"start":{"row":54,"column":25},"end":{"row":54,"column":26},"action":"insert","lines":["c"]}],[{"start":{"row":54,"column":26},"end":{"row":54,"column":27},"action":"insert","lines":["p"],"id":3638}],[{"start":{"row":54,"column":27},"end":{"row":54,"column":28},"action":"insert","lines":["."],"id":3639}],[{"start":{"row":54,"column":28},"end":{"row":54,"column":29},"action":"insert","lines":["c"],"id":3640}],[{"start":{"row":54,"column":29},"end":{"row":54,"column":30},"action":"insert","lines":["u"],"id":3641}],[{"start":{"row":54,"column":28},"end":{"row":54,"column":30},"action":"remove","lines":["cu"],"id":3642},{"start":{"row":54,"column":28},"end":{"row":54,"column":40},"action":"insert","lines":["currentColor"]}],[{"start":{"row":75,"column":16},"end":{"row":75,"column":20},"action":"remove","lines":["    "],"id":3643}],[{"start":{"row":74,"column":44},"end":{"row":75,"column":0},"action":"insert","lines":["",""],"id":3644},{"start":{"row":75,"column":0},"end":{"row":75,"column":21},"action":"insert","lines":["                     "]}],[{"start":{"row":75,"column":21},"end":{"row":75,"column":22},"action":"insert","lines":["o"],"id":3645}],[{"start":{"row":75,"column":22},"end":{"row":75,"column":23},"action":"insert","lines":["r"],"id":3646}],[{"start":{"row":75,"column":21},"end":{"row":75,"column":23},"action":"remove","lines":["or"],"id":3647},{"start":{"row":75,"column":21},"end":{"row":75,"column":24},"action":"insert","lines":["org"]}],[{"start":{"row":75,"column":24},"end":{"row":75,"column":25},"action":"insert","lines":[":"],"id":3648}],[{"start":{"row":75,"column":25},"end":{"row":75,"column":26},"action":"insert","lines":[" "],"id":3649}],[{"start":{"row":75,"column":26},"end":{"row":75,"column":27},"action":"insert","lines":["e"],"id":3650}],[{"start":{"row":75,"column":27},"end":{"row":75,"column":28},"action":"insert","lines":["v"],"id":3651}],[{"start":{"row":75,"column":28},"end":{"row":75,"column":29},"action":"insert","lines":["e"],"id":3652}],[{"start":{"row":75,"column":26},"end":{"row":75,"column":29},"action":"remove","lines":["eve"],"id":3653},{"start":{"row":75,"column":26},"end":{"row":75,"column":31},"action":"insert","lines":["event"]}],[{"start":{"row":75,"column":31},"end":{"row":75,"column":32},"action":"insert","lines":["."],"id":3654}],[{"start":{"row":75,"column":31},"end":{"row":75,"column":32},"action":"remove","lines":["."],"id":3655}],[{"start":{"row":75,"column":30},"end":{"row":75,"column":31},"action":"remove","lines":["t"],"id":3656}],[{"start":{"row":75,"column":29},"end":{"row":75,"column":30},"action":"remove","lines":["n"],"id":3657}],[{"start":{"row":75,"column":28},"end":{"row":75,"column":29},"action":"remove","lines":["e"],"id":3658}],[{"start":{"row":75,"column":27},"end":{"row":75,"column":28},"action":"remove","lines":["v"],"id":3659}],[{"start":{"row":75,"column":26},"end":{"row":75,"column":27},"action":"remove","lines":["e"],"id":3660}],[{"start":{"row":75,"column":26},"end":{"row":75,"column":27},"action":"insert","lines":["["],"id":3661}],[{"start":{"row":75,"column":27},"end":{"row":75,"column":28},"action":"insert","lines":["e"],"id":3662}],[{"start":{"row":75,"column":28},"end":{"row":75,"column":29},"action":"insert","lines":["v"],"id":3663}],[{"start":{"row":75,"column":27},"end":{"row":75,"column":29},"action":"remove","lines":["ev"],"id":3664},{"start":{"row":75,"column":27},"end":{"row":75,"column":32},"action":"insert","lines":["event"]}],[{"start":{"row":75,"column":32},"end":{"row":75,"column":33},"action":"insert","lines":["."],"id":3665}],[{"start":{"row":75,"column":33},"end":{"row":75,"column":34},"action":"insert","lines":["p"],"id":3666}],[{"start":{"row":75,"column":34},"end":{"row":75,"column":35},"action":"insert","lines":["o"],"id":3667}],[{"start":{"row":75,"column":33},"end":{"row":75,"column":35},"action":"remove","lines":["po"],"id":3668},{"start":{"row":75,"column":33},"end":{"row":75,"column":38},"action":"insert","lines":["point"]}],[{"start":{"row":75,"column":38},"end":{"row":75,"column":39},"action":"insert","lines":["]"],"id":3669}],[{"start":{"row":75,"column":39},"end":{"row":76,"column":0},"action":"insert","lines":["",""],"id":3670},{"start":{"row":76,"column":0},"end":{"row":76,"column":21},"action":"insert","lines":["                     "]}],[{"start":{"row":76,"column":21},"end":{"row":76,"column":22},"action":"insert","lines":["d"],"id":3671}],[{"start":{"row":76,"column":22},"end":{"row":76,"column":23},"action":"insert","lines":["e"],"id":3672}],[{"start":{"row":76,"column":23},"end":{"row":76,"column":24},"action":"insert","lines":["s"],"id":3673}],[{"start":{"row":76,"column":24},"end":{"row":76,"column":25},"action":"insert","lines":["t"],"id":3674}],[{"start":{"row":76,"column":25},"end":{"row":76,"column":26},"action":"insert","lines":["i"],"id":3675}],[{"start":{"row":76,"column":26},"end":{"row":76,"column":27},"action":"insert","lines":["n"],"id":3676}],[{"start":{"row":76,"column":27},"end":{"row":76,"column":28},"action":"insert","lines":["a"],"id":3677}],[{"start":{"row":76,"column":28},"end":{"row":76,"column":29},"action":"insert","lines":["t"],"id":3678}],[{"start":{"row":76,"column":29},"end":{"row":76,"column":30},"action":"insert","lines":["i"],"id":3679}],[{"start":{"row":76,"column":30},"end":{"row":76,"column":31},"action":"insert","lines":["o"],"id":3680}],[{"start":{"row":76,"column":31},"end":{"row":76,"column":32},"action":"insert","lines":["n"],"id":3681}],[{"start":{"row":76,"column":32},"end":{"row":76,"column":33},"action":"insert","lines":[":"],"id":3682}],[{"start":{"row":76,"column":33},"end":{"row":76,"column":34},"action":"insert","lines":[" "],"id":3683}],[{"start":{"row":76,"column":34},"end":{"row":76,"column":35},"action":"insert","lines":["["],"id":3684}],[{"start":{"row":76,"column":35},"end":{"row":76,"column":36},"action":"insert","lines":["e"],"id":3685}],[{"start":{"row":76,"column":35},"end":{"row":76,"column":36},"action":"remove","lines":["e"],"id":3686},{"start":{"row":76,"column":35},"end":{"row":76,"column":40},"action":"insert","lines":["event"]}],[{"start":{"row":76,"column":40},"end":{"row":76,"column":41},"action":"insert","lines":["."],"id":3687}],[{"start":{"row":76,"column":41},"end":{"row":76,"column":42},"action":"insert","lines":["l"],"id":3688}],[{"start":{"row":76,"column":42},"end":{"row":76,"column":43},"action":"insert","lines":["a"],"id":3689}],[{"start":{"row":76,"column":43},"end":{"row":76,"column":44},"action":"insert","lines":["s"],"id":3690}],[{"start":{"row":76,"column":44},"end":{"row":76,"column":45},"action":"insert","lines":["t"],"id":3691}],[{"start":{"row":76,"column":45},"end":{"row":76,"column":46},"action":"insert","lines":["P"],"id":3692}],[{"start":{"row":76,"column":46},"end":{"row":76,"column":47},"action":"insert","lines":["o"],"id":3693}],[{"start":{"row":76,"column":47},"end":{"row":76,"column":48},"action":"insert","lines":["i"],"id":3694}],[{"start":{"row":76,"column":48},"end":{"row":76,"column":49},"action":"insert","lines":["n"],"id":3695}],[{"start":{"row":76,"column":49},"end":{"row":76,"column":50},"action":"insert","lines":["t"],"id":3696}],[{"start":{"row":76,"column":50},"end":{"row":76,"column":51},"action":"insert","lines":["]"],"id":3697}]]},"ace":{"folds":[],"scrolltop":729,"scrollleft":0,"selection":{"start":{"row":76,"column":51},"end":{"row":76,"column":51},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":44,"state":"start","mode":"ace/mode/coffee"}},"timestamp":1499483977263}