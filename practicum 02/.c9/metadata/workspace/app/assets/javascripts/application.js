{"filter":false,"title":"application.js","tooltip":"/app/assets/javascripts/application.js","undoManager":{"mark":9,"position":9,"stack":[[{"start":{"row":16,"column":0},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":2}],[{"start":{"row":17,"column":0},"end":{"row":18,"column":0},"action":"insert","lines":["",""],"id":3}],[{"start":{"row":18,"column":0},"end":{"row":35,"column":0},"action":"insert","lines":["window.Utility.paperSetup = (id, op) ->","  dom = if typeof id == 'string' then $('#' + id) else id","  # w = dom.parent().height()","  if op and op.width then dom.parent().width(op.width+1)","  if op and op.width then dom.width(op.width+1)","  if op and op.height then dom.parent().height(op.height+1)","  if op and op.height then dom.height(op.height)","  # dom.attr 'height', w","  # dom.attr 'width', '90px'","  paper.install window","  myPaper = new (paper.PaperScope)","  myPaper.setup dom[0]","  # if typeof id == 'string'","  #   console.info 'Paper.js installed on', id, w, 'x', h","  # else","  #   console.info 'Paper.js installed:', w, 'x', h","  myPaper",""],"id":4}],[{"start":{"row":35,"column":0},"end":{"row":36,"column":0},"action":"insert","lines":["",""],"id":5}],[{"start":{"row":18,"column":37},"end":{"row":18,"column":39},"action":"remove","lines":["->"],"id":6}],[{"start":{"row":18,"column":36},"end":{"row":18,"column":37},"action":"remove","lines":[" "],"id":7}],[{"start":{"row":18,"column":36},"end":{"row":18,"column":37},"action":"insert","lines":["-"],"id":8}],[{"start":{"row":18,"column":37},"end":{"row":18,"column":38},"action":"insert","lines":["."],"id":9}],[{"start":{"row":18,"column":37},"end":{"row":18,"column":38},"action":"remove","lines":["."],"id":10}],[{"start":{"row":18,"column":37},"end":{"row":18,"column":38},"action":"insert","lines":[">"],"id":11}]]},"ace":{"folds":[],"scrolltop":181,"scrollleft":0,"selection":{"start":{"row":18,"column":38},"end":{"row":18,"column":38},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":8,"state":"comment2","mode":"ace/mode/javascript"}},"timestamp":1498457418720,"hash":"a65737491dd45ab6997342f303cbedadb6eec68d"}