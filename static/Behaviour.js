function Behaviour(
	editor,
	canvas,
	view,
	callbacks,
	window,
	context,
	undefined
) {

var LEFT_BUTTON = 0;
var MIDDLE_BUTTON = 1;
var RIGHT_BUTTON = 2;

var cursors = {
	FR_LU: "nwse-resize",
	FR_UP: "ns-resize",
	FR_RU: "nesw-resize",
	FR_RI: "ew-resize",
	FR_RD: "nwse-resize",
	FR_DO: "ns-resize",
	FR_LD: "nesw-resize",
	FR_LE: "ew-resize",
	FR_0: "move",
	FR_1: "move",
	H_EW: "ew-resize"
}


this.draw = draw;
this.redrawCache = redrawCache;
this.setZoom = setZoom;

this.mouseDown = mouseDown;
this.mouseMove = mouseMove;
this.mouseUp = mouseUp;

this.mouseWheel = mouseWheel;

this.touchStart = touchStart;
this.touchEnd = touchEnd;
this.touchMove = touchMove;

this.setTimeout = setTimeout;
this.clearTimeout = clearTimeout;

this.startFreeScroll = startFreeScroll;
this.endFreeScroll = endFreeScroll;

this.finishZoom = finishZoom
this.getBackground = getBackground

this.externalClick = externalClick
this.resetMachines = resetMachines

this.setTransform = setTransform

// Autogenerated with DRAKON Editor 1.33


function BlockSelector() {
    this.mouseDown = BlockSelector_mouseDown;
    this.mouseMove = BlockSelector_mouseMove;
    this.mouseUp = BlockSelector_mouseUp;
}

function BlockSelector_mouseDown(message) {
    this.start = new Utils.Point(message.x, message.y);
    view.showOver();
    editor.beginBlockSelect();
    view.redraw();
}

function BlockSelector_mouseMove(message) {
    var left, top, right, bottom;
    var left = Math.min(this.start.x, message.x);
    var right = Math.max(this.start.x, message.x);
    var top = Math.min(this.start.y, message.y);
    var bottom = Math.max(this.start.y, message.y);
    var block = new Utils.Box(
    	left,
    	top,
    	right,
    	bottom
    );
    view.selectBlock(block);
    var mustRedraw = editor.blockSelect(block);
    if (mustRedraw) {
        view.redraw();
    }
}

function BlockSelector_mouseUp(message) {
    view.selectBlock(null);
    view.hideOver();
}

function DrnSizer(isLeft, id, dims) {
    this.isLeft = isLeft;
    this.id = id;
    this.dims = dims;
    this.mouseMove = DrnSizer_mouseMove;
    this.mouseDown = DrnSizer_mouseDown;
    this.mouseUp = DrnSizer_mouseUp;
}

function DrnSizer_mouseDown(evt) {
    this.start = new Utils.Point(evt.x, evt.y);
    view.showOver();
}

function DrnSizer_mouseMove(evt) {
    var dx;
    if (this.isLeft) {
        dx = -evt.dx;
    } else {
        dx = evt.dx;
    }
    var width = this.dims.w + dx;
    width = Math.max(
    	width,
    	Config.MIN_ICON_WIDTH
    );
    this.width = width;
    this.dims.w = width;
    var dims = this.dims;
    var left = dims.x - width;
    var right = dims.x + width;
    var top = dims.y - dims.h;
    var bottom = dims.y + dims.h;
    var block = new Utils.Box(
    	left,
    	top,
    	right,
    	bottom
    );
    view.selectBlock(block);
}

function DrnSizer_mouseUp(evt) {
    view.hideOver();
    if (this.width) {
        editor.setItemWidth(this.id, this.width);
        evt.handled = true;
        view.redraw();
    }
}

function FreeScroll_Drag_mouseDown(self, evt) {
    self.state = "Drag";
}

function FreeScroll_Drag_mouseMove(self, evt) {
    view.scrollBy(
    	evt.dx,
    	evt.dy
    );
    self.state = "Drag";
}

function FreeScroll_Drag_mouseUp(self, evt) {
    self.state = "Idle";
}

function FreeScroll_Idle_mouseDown(self, evt) {
    var _sw16890000_ = 0;
    _sw16890000_ = evt.button;
    if (_sw16890000_ === LEFT_BUTTON) {
        self.state = "Drag";
    } else {
        if (_sw16890000_ === MIDDLE_BUTTON) {
            self.state = "Drag";
        } else {
            if (_sw16890000_ === RIGHT_BUTTON) {
                callbacks.click();
            }
            self.state = "Idle";
        }
    }
}

function FreeScroll_Idle_mouseMove(self, evt) {
    self.state = "Idle";
}

function FreeScroll_Idle_mouseUp(self, evt) {
    self.state = "Idle";
}

function FreeSizer(type, id, dims) {
    this.type = type;
    this.id = id;
    this.dims = dims;
    this.mouseMove = FreeSizer_mouseMove;
    this.mouseDown = FreeSizer_mouseDown;
    this.mouseUp = FreeSizer_mouseUp;
}

function FreeSizer_mouseDown(evt) {
    this.start = new Utils.Point(evt.x, evt.y);
    view.showOver();
}

function FreeSizer_mouseMove(evt) {
    var _sw18670000_ = 0;
    var ex = evt.dx / 2
    var ey = evt.dy / 2
    var ew = ex
    var eh = ey
    var dw, dh
    var dims = this.dims
    _sw18670000_ = this.type;
    if (_sw18670000_ === "FR_LU") {
        dx = ex
        dy = ey
        dw = -ew
        dh = -eh
    } else {
        if (_sw18670000_ === "FR_UP") {
            dx = 0
            dy = ey
            dw = 0
            dh = -eh
        } else {
            if (_sw18670000_ === "FR_RU") {
                dx = ex
                dy = ey
                dw = ew
                dh = -eh
            } else {
                if (_sw18670000_ === "FR_RI") {
                    dx = ex
                    dy = 0
                    dw = ew
                    dh = 0
                } else {
                    if (_sw18670000_ === "FR_RD") {
                        dx = ex
                        dy = ey
                        dw = ew
                        dh = eh
                    } else {
                        if (_sw18670000_ === "FR_DO") {
                            dx = 0
                            dy = ey
                            dw = 0
                            dh = eh
                        } else {
                            if (_sw18670000_ === "FR_LD") {
                                dx = ex
                                dy = ey
                                dw = -ew
                                dh = eh
                            } else {
                                if (_sw18670000_ === "FR_LE") {
                                    
                                } else {
                                    throw "Unexpected switch value: " + _sw18670000_;
                                }
                                dx = ex
                                dy = 0
                                dw = -ew
                                dh = 0
                            }
                        }
                    }
                }
            }
        }
    }
    var width = dims.w + dw
    var height = dims.h + dh
    var minSize = Config.SIZE_SNAP
    if (width < minSize) {
        width = dims.w
        dx = 0
    }
    if (height < minSize) {
        height = dims.h
        dy = 0
    }
    dims.x += dx
    dims.y += dy
    dims.w = width
    dims.h = height
    var block = new Utils.boxFromPoint(
    	dims.x,
    	dims.y,
    	dims.w,
    	dims.h
    );
    view.selectBlock(block);
}

function FreeSizer_mouseUp(evt) {
    view.hideOver();
    editor.setFreeItemSize(
    	this.id,
    	this.dims.x,
    	this.dims.y,
    	this.dims.w,
    	this.dims.h
    );
    evt.handled = true;
    view.redraw();
}

function HandleMover(type, id) {
    this.type = type;
    this.id = id;
    this.mouseMove = HandleMover_mouseMove;
    this.mouseDown = HandleMover_mouseDown;
    this.mouseUp = HandleMover_mouseUp;
}

function HandleMover_mouseDown(evt) {
    this.moved = false
}

function HandleMover_mouseMove(evt) {
    this.moved = true
    editor.moveHandle(
    	this.id,
    	this.type,
    	evt.dx,
    	evt.dy,
    	evt.x,
    	evt.y
    )
    view.redraw()
    evt.handled = true
}

function HandleMover_mouseUp(evt) {
    if (this.moved) {
        editor.saveHandlePos(this.id)
        evt.handled = true
        view.redraw()
    }
}

function HyperLinker(link) {
    this.link = link
    this.mouseDown = function() {}
    this.mouseMove = function() {}
    this.mouseUp = function(evt) {
    	evt.handled = true
    	HtmlUtils.openInNewTab(link)
    }
}

function MindSizer(isLeft, id, dims) {
    this.isLeft = isLeft
    this.id = id
    this.dims = dims
    this.left = dims.x - dims.w
    this.right = dims.x + dims.w
    this.width = dims.w * 2
    this.mouseMove = MindSizer_mouseMove
    this.mouseDown = MindSizer_mouseDown
    this.mouseUp = MindSizer_mouseUp
}

function MindSizer_mouseDown(evt) {
    this.start = new Utils.Point(evt.x, evt.y);
    view.showOver();
}

function MindSizer_mouseMove(evt) {
    var dx, left, right
    if (this.isLeft) {
        dx = -evt.dx
    } else {
        dx = evt.dx
    }
    var width = this.width + dx
    width = Math.max(
    	width,
    	Config.MIN_ICON_WIDTH * 2
    )
    this.width = width
    var dims = this.dims
    var top = dims.y - dims.h
    var bottom = dims.y + dims.h
    if (this.isLeft) {
        left = this.right - width
        right = this.right
    } else {
        left = this.left
        right = this.left + width
    }
    var block = new Utils.Box(
    	left,
    	top,
    	right,
    	bottom
    )
    view.selectBlock(block)
}

function MindSizer_mouseUp(evt) {
    view.hideOver()
    if (this.width) {
        var width = Utils.snapUp(this.width / 2)
        editor.setItemWidth(this.id, width)
        evt.handled = true
        view.redraw()
    }
}

function MouseRoot_AfterClick_mouseDown(self, evt) {
    if (evt.button == LEFT_BUTTON) {
        var draggable =
          editor.findVisualItem(
            evt.x,
            evt.y
        );
        if (((draggable) && (self.old)) && (self.old.id == draggable.id)) {
            doubleClick(evt);
        } else {
            click(evt);
        }
    }
    self.state = "Idle";
}

function MouseRoot_AfterClick_mouseMove(self, evt) {
    self.state = "AfterClick";
}

function MouseRoot_AfterClick_mouseUp(self, evt) {
    self.state = "Idle";
}

function MouseRoot_AfterClick_timeout(self, evt) {
    self.state = "Idle";
}

function MouseRoot_Idle_mouseDown(self, evt) {
    var _sw7480000_ = 0;
    _sw7480000_ = evt.button;
    if (_sw7480000_ === LEFT_BUTTON) {
        self.downEvt = evt;
        var draggable =
          editor.findDraggable(
            evt.x,
            evt.y
        );
        self.moved = 0;
        self.old = draggable;
        if (draggable) {
            self.dragger = chooseDragger(
            	draggable.type,
            	draggable.id,
            	draggable.dims,
            	draggable.data
            );
        } else {
            self.dragger = 
             new BlockSelector();
        }
        self.dragger.mouseDown(evt);
        self.state = "LeftDrag";
    } else {
        if (_sw7480000_ === MIDDLE_BUTTON) {
            self.state = "MiddleDrag";
        } else {
            if (_sw7480000_ === RIGHT_BUTTON) {
                var draggable =
                  editor.findDraggable(
                    evt.x,
                    evt.y
                )
                if (draggable) {
                    if (draggable.type == Const.DRN_SOCKET) {
                        self.state = "Idle";
                    } else {
                        self.state = "RightDrag";
                    }
                } else {
                    self.state = "RightDrag";
                }
            } else {
                self.state = "Idle";
            }
        }
    }
}

function MouseRoot_Idle_mouseMove(self, evt) {
    var draggable =
      editor.findVisualItem(
        evt.x,
        evt.y
    );
    var cursor = findCursorType(draggable);
    view.setCursor(cursor);
    self.state = "Idle";
}

function MouseRoot_Idle_mouseUp(self, evt) {
    self.state = "Idle";
}

function MouseRoot_LeftDrag_mouseDown(self, evt) {
    self.state = "LeftDrag";
}

function MouseRoot_LeftDrag_mouseMove(self, evt) {
    self.moved = difference(evt, self.downEvt)
    if (self.moved > Config.MOUSE_START) {
        self.dragger.mouseMove(evt);
    }
    self.state = "LeftDrag";
}

function MouseRoot_LeftDrag_mouseUp(self, evt) {
    self.dragger.mouseUp(evt);
    if (self.moved > Config.MOUSE_START) {
        self.state = "Idle";
    } else {
        if (evt.handled) {
            self.state = "Idle";
        } else {
            click(evt);
            setTimeout(
            	self,
            	Config.DOUBLE_CLICK
            );
            self.state = "AfterClick";
        }
    }
}

function MouseRoot_MiddleDrag_mouseDown(self, evt) {
    self.state = "MiddleDrag";
}

function MouseRoot_MiddleDrag_mouseMove(self, evt) {
    view.scrollBy(
    	evt.dx,
    	evt.dy
    );
    self.state = "MiddleDrag";
}

function MouseRoot_MiddleDrag_mouseUp(self, evt) {
    self.state = "Idle";
}

function MouseRoot_RightDrag_mouseDown(self, evt) {
    self.state = "RightDrag";
}

function MouseRoot_RightDrag_mouseMove(self, evt) {
    self.state = "RightDrag";
}

function MouseRoot_RightDrag_mouseUp(self, evt) {
    rightClick(
    	evt.x,
    	evt.y,
    	evt.cx,
    	evt.cy,
    	true
    );
    self.state = "Idle";
}

function Mover() {
    this.mouseDown = Mover_mouseDown;
    this.mouseMove = Mover_mouseMove;
    this.mouseUp = Mover_mouseUp;
}

function Mover_mouseDown(message) {
    this.moved = false
    var item = editor.findVisualItem(
    	message.x,
    	message.y
    );
    if (item) {
        editor.startVisualDrag(item.id);
    }
}

function Mover_mouseMove(message) {
    this.moved = true
    var visible = view.getVisibleBox()
    editor.visualDrag(
    	message.dx,
    	message.dy,
    	visible
    );
    view.redraw();
}

function Mover_mouseUp(message) {
    if (this.moved) {
        editor.endVisualDrag();
        view.redraw();
    }
}

function SnapDragger(target) {
    this.target = target;
    this.mouseMove = SnapDragger_mouseMove;
    this.mouseUp = SnapDragger_mouseUp;
    this.mouseDown = SnapDragger_mouseDown;
}

function SnapDragger_mouseDown(message) {
    this.snapX = new Utils.Snapper(Config.SNAP);
    this.snapY = new Utils.Snapper(Config.SNAP);
    snapPos(message)
    this.target.mouseDown(message);
}

function SnapDragger_mouseMove(message) {
    this.snapX.snapMove(message.dx);
    this.snapY.snapMove(message.dy);
    if ((this.snapX.step) || (this.snapY.step)) {
        snapPos(message)
        this.target.mouseMove({
        	x: message.x,
        	y: message.y,
        	dx: this.snapX.snapped,
        	dy: this.snapY.snapped
        });
    }
}

function SnapDragger_mouseUp(message) {
    this.target.mouseUp(message);
}

function SocketClicker_idle_default(self, message) {
    self.state = "idle";
}

function SocketClicker_idle_mouseDown(self, message) {
    var socket = editor.findSocket(
    	message.x,
    	message.y
    );
    if (socket) {
        self.socket = socket;
        editor.fireSocket(socket);
        view.redraw();
        self.state = "onsocket";
    } else {
        self.state = "idle";
    }
}

function SocketClicker_offsocket_mouseDown(self, message) {
    self.state = "offsocket";
}

function SocketClicker_offsocket_mouseMove(self, message) {
    var socket = editor.findSocket(
    	message.x,
    	message.y
    );
    if (socket) {
        if (socket == self.socket) {
            editor.fireSocket(socket);
            view.redraw();
            self.state = "onsocket";
        } else {
            self.state = "offsocket";
        }
    } else {
        self.state = "offsocket";
    }
}

function SocketClicker_offsocket_mouseUp(self, message) {
    self.state = "idle";
}

function SocketClicker_onsocket_mouseDown(self, message) {
    self.state = "onsocket";
}

function SocketClicker_onsocket_mouseMove(self, message) {
    var socket = editor.findSocket(
    	message.x,
    	message.y
    );
    if (socket == self.socket) {
        self.state = "onsocket";
    } else {
        editor.darkenSocket(self.socket);
        view.redraw();
        self.state = "offsocket";
    }
}

function SocketClicker_onsocket_mouseUp(self, message) {
    editor.clickSocket(self.socket);
    message.handled = true;
    view.redraw();
    self.state = "idle";
}

function SubdiagramLinker(link) {
    this.link = link
    this.mouseDown = function() {}
    this.mouseMove = function() {}
    this.mouseUp = function(evt) {
    	evt.handled = true
    	console.log("Open subdiagram", link)
    }
}

function Toucher_Drag_touchend(self, evt) {
    self.dragger.mouseUp(evt);
    self.state = "Idle";
}

function Toucher_Drag_touchmove(self, evt) {
    self.dragger.mouseMove(evt);
    self.state = "Drag";
}

function Toucher_Drag_touchstart(self, evt) {
    self.state = "Idle";
}

function Toucher_Idle_touchend(self, evt) {
    self.state = "Idle";
}

function Toucher_Idle_touchmove(self, evt) {
    self.state = "Idle";
}

function Toucher_Idle_touchstart(self, evt) {
    self.downEvt = evt;
    var draggable =
      editor.findDraggable(
        evt.x,
        evt.y
    );
    self.moved = 0;
    self.old = draggable;
    if (draggable) {
        self.dragger = chooseDragger(
        	draggable.type,
        	draggable.id,
        	draggable.dims,
        	draggable.data
        );
    } else {
        self.dragger = 
         new BlockSelector();
    }
    setTimeout(self, 600);
    self.state = "LongOrShortTap";
}

function Toucher_LongOrShortTap_timeout(self, evt) {
    if (self.moved > Config.TOUCH_START) {
        self.state = "Drag";
    } else {
        longTap(self.downEvt);
        self.state = "Idle";
    }
}

function Toucher_LongOrShortTap_touchend(self, evt) {
    var block = shouldBlockMenu(evt.x, evt.y)
    self.dragger.mouseDown(
    	self.downEvt
    );
    self.dragger.mouseUp(evt);
    if (self.moved > Config.TOUCH_START) {
        
    } else {
        if (evt.handled) {
            
        } else {
            rightClick(
            	evt.x,
            	evt.y,
            	evt.cx,
            	evt.cy,
            	false,
            	block
            );
        }
    }
    self.state = "Idle";
}

function Toucher_LongOrShortTap_touchmove(self, evt) {
    self.moved = difference(evt, self.downEvt)
    if (self.moved > Config.TOUCH_START) {
        self.dragger.mouseDown(
        	self.downEvt
        );
        self.dragger.mouseMove(evt);
        self.state = "Drag";
    } else {
        self.state = "LongOrShortTap";
    }
}

function Toucher_LongOrShortTap_touchstart(self, evt) {
    self.state = "Idle";
}

function WheelScroller_idle_default(self, message) {
    self.state = "idle";
}

function WheelScroller_idle_mouseWheel(self, message) {
    if (message.ctrlKey) {
        handleWheel(self, message, true);
        self.state = "zooming";
    } else {
        handleWheel(self, message, false);
        self.state = "panning";
    }
}

function WheelScroller_panning_default(self, message) {
    self.state = "panning";
}

function WheelScroller_panning_mouseWheel(self, message) {
    handleWheel(self, message, false);
    self.state = "panning";
}

function WheelScroller_panning_timeout(self, message) {
    view.finishScroll();
    self.state = "idle";
}

function WheelScroller_zooming_default(self, message) {
    self.state = "zooming";
}

function WheelScroller_zooming_mouseWheel(self, message) {
    if (message.ctrlKey) {
        handleWheel(self, message, true);
        self.state = "zooming";
    } else {
        finishZoom()
        handleWheel(self, message, false);
        self.state = "panning";
    }
}

function WheelScroller_zooming_timeout(self, message) {
    finishZoom()
    self.state = "idle";
}

function chooseDragger(type, id, dims, data) {
    if (type) {
        
    } else {
        throw Error("chooseDragger: type is null, id: " + id)
    }
    var handler;
    var result;
    if ((type === Const.DRN_MOVE) || (type === Const.DRN_MOVE_ALL)) {
        handler = new Mover();
        result = new SnapDragger(handler);
    } else {
        if (type === Const.MIND_SIZE_L) {
            handler = new MindSizer(
            	true,
            	id,
            	dims
            )
            result = new SnapDragger(handler);
        } else {
            if (type === Const.MIND_SIZE_R) {
                handler = new MindSizer(
                	false,
                	id,
                	dims
                )
                result = new SnapDragger(handler);
            } else {
                if (type === Const.DRN_SIZE_L) {
                    handler = new DrnSizer(
                    	true,
                    	id,
                    	dims
                    )
                    result = new SnapDragger(handler);
                } else {
                    if (type === Const.DRN_SIZE_R) {
                        handler = new DrnSizer(
                        	false,
                        	id,
                        	dims
                        )
                        result = new SnapDragger(handler);
                    } else {
                        if (type === Const.LINK) {
                            result = new HyperLinker(data)
                        } else {
                            if (type === Const.SUB) {
                                result = new SubdiagramLinker(data)
                            } else {
                                if (type === Const.DRN_SOCKET) {
                                    result = new SocketClicker(id);
                                } else {
                                    if (type === "H_EW") {
                                        result = new HandleMover(
                                        	type,
                                        	id
                                        )
                                    } else {
                                        if ((((type === Const.FR_0) || (type === Const.FR_1)) || (type === Const.LINE_START)) || (type === Const.LINE_END)) {
                                            handler = new HandleMover(
                                            	type,
                                            	id
                                            )
                                        } else {
                                            handler = new FreeSizer(
                                            	type,
                                            	id,
                                            	dims
                                            )
                                        }
                                        result = new SnapDragger(handler);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    return result;
}

function clearTimeout(id) {
    window.clearTimeout(id);
}

function click(evt) {
    var result = editor.mouseClick(evt.x, evt.y);
    callbacks.click();
    if (result.mustRedraw) {
        view.redraw();
    }
}

function difference(evt1, evt2) {
    var dx = Math.abs(evt2.cx - evt1.cx)
    var dy = Math.abs(evt2.cy - evt1.cy)
    return Math.max(dx, dy)
}

function distance(evt) {
    return Math.sqrt(
    	evt.dx * evt.dx +
    	evt.dy * evt.dy
    )
}

function doubleClick(evt) {
    var x = evt.x;
    var y = evt.y;
    var itemId = editor.canEditText(x, y);
    if (itemId) {
        editor.startEditTextAt(itemId, x, y);
    }
}

function draw(ctx) {
    canvas.draw(ctx);
}

function endFreeScroll() {
    resetMachines()
    view.setCursor("auto");
}

function enrichMenu(menu, callbackClick) {
    var _sw9860000_ = 0;
    var _ind984 = 0;
    var _col984 = menu;
    var _len984 = _col984.length;
    while (true) {
        if (_ind984 < _len984) {
            
        } else {
            break;
        }
        var item = _col984[_ind984];
        _sw9860000_ = item.type;
        if (_sw9860000_ === "menu") {
            enrichMenu(item.items, callbackClick);
        } else {
            if (_sw9860000_ === "separator") {
                
            } else {
                item.code = wrapInRedraw(item.code, callbackClick, item.text)
            }
        }
        _ind984++;
    }
}

function externalClick(evt) {
    var message = view.toDiagram(evt);
    mouseDown(message);
    mouseUp(message);
}

function findCursorType(draggable) {
    var _sw8400000_ = 0;
    if (draggable) {
        _sw8400000_ = draggable.type;
        if ((_sw8400000_ === Const.DRN_MOVE) || (_sw8400000_ === Const.DRN_MOVE_ALL)) {
            return "move";
        } else {
            if ((_sw8400000_ === Const.LINK) || (_sw8400000_ === Const.SUB)) {
                return "pointer"
            } else {
                if ((((_sw8400000_ === Const.DRN_SIZE_L) || (_sw8400000_ === Const.DRN_SIZE_R)) || (_sw8400000_ === Const.MIND_SIZE_L)) || (_sw8400000_ === Const.MIND_SIZE_R)) {
                    return "ew-resize";
                } else {
                    if ((_sw8400000_ === Const.LINE_START) || (_sw8400000_ === Const.LINE_END)) {
                        return "move";
                    } else {
                        var type = cursors[draggable.type]
                        if (type) {
                            return type
                        } else {
                            return "default"
                        }
                    }
                }
            }
        }
    } else {
        return "default"
    }
}

function finishZoom() {
    canvas.fast = false
    view.finishZoom()
    callbacks.onFinishZoom()
}

function getBackground() {
    return canvas.getBackground()
}

function getTime() {
    var date = new Date();
    return date.getTime();
}

function handleWheel(self, message, zoom) {
    if (self.timer) {
        clearTimeout(self.timer);
        self.timer = null;
    }
    self.timer = 
      setTimeout(self, Config.WHEEL_TIMEOUT);
    var raw = 
      throttleWheel(self, message.delta);
    if (raw == 0) {
        
    } else {
        if (zoom) {
            canvas.fast = true
            view.zoomBy(raw);
        } else {
            var dx, dy;
            if (message.shiftKey) {
                dx = raw;
                dy = 0;
            } else {
                dx = 0;
                dy = raw;
            }
            var zoom = view.getZoom();
            dx = Math.floor(dx / zoom);
            dy = Math.floor(dy / zoom);
            view.scrollBy(dx, dy);
        }
    }
}

function longTap(evt) {
    click(evt);
    doubleClick(evt);
}

function mouseDown(evt) {
    HtmlUtils.unfocus()
    gMouse.mouseDown(evt);
}

function mouseMove(evt) {
    gMouse.mouseMove(evt);
}

function mouseUp(evt) {
    gMouse.mouseUp(evt);
}

function mouseWheel(evt) {
    gWheel.mouseWheel(evt);
}

function redrawCache() {
    editor.redraw();
}

function resetMachines() {
    gRoot = new MouseRoot();
    gMouse = gRoot;
    gWheel = new WheelScroller();
    gTouch = new Toucher();
    gScroll = new FreeScroll();
}

function rightClick(x, y, cx, cy, always, block) {
    click({ x: x, y: y });
    if ((always) || (!(block))) {
        var result = editor.buildMenuAt(x, y);
        if ((result.menu) && (result.menu.length > 0)) {
            var menuObj = {
            	rows: result.menu
            }
            enrichMenu(result.menu, true);
            context(
            	cx,
            	cy,
            	menuObj,
            	externalClick,
            	result.item
            );
        }
    }
}

function setTimeout(target, milliseconds) {
    var callback = function() {
    	target.timeout();
    }
    return window.setTimeout(callback, milliseconds);
}

function setTransform(dx, dy, zoom, retina) {
    canvas.setTransform(dx, dy, zoom, retina)
}

function setZoom(zoom, retina) {
    canvas.zoom = zoom;
    canvas.retina = retina;
}

function shouldBlockMenu(x, y) {
    var ids = editor.getSelection()
    if (ids.length == 0) {
        return false
    } else {
        var item = editor.findVisualItem(x, y)
        if (item) {
            return false
        } else {
            return true
        }
    }
}

function snapPos(message) {
    message.x = Utils.snapPos(message.x)
    message.y = Utils.snapPos(message.y)
}

function startFreeScroll() {
    resetMachines()
    gMouse = gScroll;
    view.setCursor("move");
}

function throttleWheel(self, delta) {
    var amount;
    var now = getTime();
    if (self.prev) {
        var passed = now - self.prev;
        if (passed < Config.WHEEL_THROTTLE) {
            amount = 0;
        } else {
            self.prev = now;
            amount = Config.WHEEL_STEP;
        }
    } else {
        self.prev = now;
        amount = Config.WHEEL_STEP;
    }
    if (delta < 0) {
        amount = -amount;
    }
    return amount;
}

function touchEnd(evt) {
    if (gMouse == gScroll) {
        gScroll.mouseUp(evt);
    } else {
        gTouch.touchend(evt);
    }
}

function touchMove(evt) {
    if (gMouse == gScroll) {
        gScroll.mouseMove(evt);
    } else {
        gTouch.touchmove(evt);
    }
}

function touchStart(evt) {
    if (gMouse == gScroll) {
        gScroll.mouseDown(evt);
    } else {
        gTouch.touchstart(evt);
    }
}

function wrapInRedraw(action, callbackClick, text) {
    return function(x, y) {
    	CallTrace.reset()
    	if (text) CallTrace.add("cm:" + text)
    	action(x, y)
    	view.hideOver()
    	view.redraw()
    	if (callbackClick) callbacks.click()
    }
}

function MouseRoot() {
  var _self = this;
  _self.type_name = "MouseRoot";
  _self.state = "Idle";
  _self.mouseDown = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "Idle") {
      return MouseRoot_Idle_mouseDown(_self, evt);
    }
    else if (_state_ == "LeftDrag") {
      return MouseRoot_LeftDrag_mouseDown(_self, evt);
    }
    else if (_state_ == "AfterClick") {
      return MouseRoot_AfterClick_mouseDown(_self, evt);
    }
    else if (_state_ == "MiddleDrag") {
      return MouseRoot_MiddleDrag_mouseDown(_self, evt);
    }
    else if (_state_ == "RightDrag") {
      return MouseRoot_RightDrag_mouseDown(_self, evt);
    }
    return null;
  };
  _self.mouseMove = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "Idle") {
      return MouseRoot_Idle_mouseMove(_self, evt);
    }
    else if (_state_ == "LeftDrag") {
      return MouseRoot_LeftDrag_mouseMove(_self, evt);
    }
    else if (_state_ == "AfterClick") {
      return MouseRoot_AfterClick_mouseMove(_self, evt);
    }
    else if (_state_ == "MiddleDrag") {
      return MouseRoot_MiddleDrag_mouseMove(_self, evt);
    }
    else if (_state_ == "RightDrag") {
      return MouseRoot_RightDrag_mouseMove(_self, evt);
    }
    return null;
  };
  _self.mouseUp = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "Idle") {
      return MouseRoot_Idle_mouseUp(_self, evt);
    }
    else if (_state_ == "LeftDrag") {
      return MouseRoot_LeftDrag_mouseUp(_self, evt);
    }
    else if (_state_ == "AfterClick") {
      return MouseRoot_AfterClick_mouseUp(_self, evt);
    }
    else if (_state_ == "MiddleDrag") {
      return MouseRoot_MiddleDrag_mouseUp(_self, evt);
    }
    else if (_state_ == "RightDrag") {
      return MouseRoot_RightDrag_mouseUp(_self, evt);
    }
    return null;
  };
  _self.timeout = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "AfterClick") {
      return MouseRoot_AfterClick_timeout(_self, evt);
    }
    return null;
  };
}

function WheelScroller() {
  var _self = this;
  _self.type_name = "WheelScroller";
  _self.state = "idle";
  _self.mouseWheel = function(message) {
    var _state_ = _self.state;
    if (_state_ == "idle") {
      return WheelScroller_idle_mouseWheel(_self, message);
    }
    else if (_state_ == "panning") {
      return WheelScroller_panning_mouseWheel(_self, message);
    }
    else if (_state_ == "zooming") {
      return WheelScroller_zooming_mouseWheel(_self, message);
    }
    return null;
  };
  _self.timeout = function(message) {
    var _state_ = _self.state;
    if (_state_ == "idle") {
      return WheelScroller_idle_default(_self, message);
    }
    else if (_state_ == "panning") {
      return WheelScroller_panning_timeout(_self, message);
    }
    else if (_state_ == "zooming") {
      return WheelScroller_zooming_timeout(_self, message);
    }
    return null;
  };
}

function SocketClicker() {
  var _self = this;
  _self.type_name = "SocketClicker";
  _self.state = "idle";
  _self.mouseDown = function(message) {
    var _state_ = _self.state;
    if (_state_ == "idle") {
      return SocketClicker_idle_mouseDown(_self, message);
    }
    else if (_state_ == "onsocket") {
      return SocketClicker_onsocket_mouseDown(_self, message);
    }
    else if (_state_ == "offsocket") {
      return SocketClicker_offsocket_mouseDown(_self, message);
    }
    return null;
  };
  _self.mouseMove = function(message) {
    var _state_ = _self.state;
    if (_state_ == "idle") {
      return SocketClicker_idle_default(_self, message);
    }
    else if (_state_ == "onsocket") {
      return SocketClicker_onsocket_mouseMove(_self, message);
    }
    else if (_state_ == "offsocket") {
      return SocketClicker_offsocket_mouseMove(_self, message);
    }
    return null;
  };
  _self.mouseUp = function(message) {
    var _state_ = _self.state;
    if (_state_ == "idle") {
      return SocketClicker_idle_default(_self, message);
    }
    else if (_state_ == "onsocket") {
      return SocketClicker_onsocket_mouseUp(_self, message);
    }
    else if (_state_ == "offsocket") {
      return SocketClicker_offsocket_mouseUp(_self, message);
    }
    return null;
  };
}

function Toucher() {
  var _self = this;
  _self.type_name = "Toucher";
  _self.state = "Idle";
  _self.timeout = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "LongOrShortTap") {
      return Toucher_LongOrShortTap_timeout(_self, evt);
    }
    return null;
  };
  _self.touchend = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "Idle") {
      return Toucher_Idle_touchend(_self, evt);
    }
    else if (_state_ == "LongOrShortTap") {
      return Toucher_LongOrShortTap_touchend(_self, evt);
    }
    else if (_state_ == "Drag") {
      return Toucher_Drag_touchend(_self, evt);
    }
    return null;
  };
  _self.touchmove = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "Idle") {
      return Toucher_Idle_touchmove(_self, evt);
    }
    else if (_state_ == "LongOrShortTap") {
      return Toucher_LongOrShortTap_touchmove(_self, evt);
    }
    else if (_state_ == "Drag") {
      return Toucher_Drag_touchmove(_self, evt);
    }
    return null;
  };
  _self.touchstart = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "Idle") {
      return Toucher_Idle_touchstart(_self, evt);
    }
    else if (_state_ == "LongOrShortTap") {
      return Toucher_LongOrShortTap_touchstart(_self, evt);
    }
    else if (_state_ == "Drag") {
      return Toucher_Drag_touchstart(_self, evt);
    }
    return null;
  };
}

function FreeScroll() {
  var _self = this;
  _self.type_name = "FreeScroll";
  _self.state = "Idle";
  _self.mouseDown = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "Idle") {
      return FreeScroll_Idle_mouseDown(_self, evt);
    }
    else if (_state_ == "Drag") {
      return FreeScroll_Drag_mouseDown(_self, evt);
    }
    return null;
  };
  _self.mouseMove = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "Idle") {
      return FreeScroll_Idle_mouseMove(_self, evt);
    }
    else if (_state_ == "Drag") {
      return FreeScroll_Drag_mouseMove(_self, evt);
    }
    return null;
  };
  _self.mouseUp = function(evt) {
    var _state_ = _self.state;
    if (_state_ == "Idle") {
      return FreeScroll_Idle_mouseUp(_self, evt);
    }
    else if (_state_ == "Drag") {
      return FreeScroll_Drag_mouseUp(_self, evt);
    }
    return null;
  };
}


var gRoot
var gMouse
var gWheel
var gTouch
var gScroll

resetMachines()

var gHandlers = {}

}
