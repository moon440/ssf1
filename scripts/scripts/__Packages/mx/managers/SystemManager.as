class mx.managers.SystemManager
{
   static var __addEventListener;
   static var __removeEventListener;
   static var __screen;
   static var _xAddEventListener;
   static var _xRemoveEventListener;
   static var activate;
   static var addEventListener;
   static var checkIdle;
   static var deactivate;
   static var dispatchEvent;
   static var form;
   static var interval;
   static var onMouseMove;
   static var onMouseUp;
   static var removeEventListener;
   static var _initialized = false;
   static var idleFrames = 0;
   static var isMouseDown = false;
   static var forms = new Array();
   function SystemManager()
   {
   }
   static function init(Void)
   {
      if(_initialized == false)
      {
         _initialized = true;
         mx.events.EventDispatcher.initialize(mx.managers.SystemManager);
         Mouse.addListener(mx.managers.SystemManager);
         Stage.addListener(mx.managers.SystemManager);
         _xAddEventListener = addEventListener;
         addEventListener = __addEventListener;
         _xRemoveEventListener = removeEventListener;
         removeEventListener = __removeEventListener;
      }
   }
   static function addFocusManager(f)
   {
      form = f;
      f.focusManager.activate();
   }
   static function removeFocusManager(f)
   {
   }
   static function onMouseDown(Void)
   {
      var _loc1_ = form;
      _loc1_.focusManager._onMouseDown();
   }
   static function onResize(Void)
   {
      var _loc7_ = Stage.width;
      var _loc6_ = Stage.height;
      var _loc9_ = _global.origWidth;
      var _loc8_ = _global.origHeight;
      var _loc3_ = Stage.align;
      var _loc5_ = (_loc9_ - _loc7_) / 2;
      var _loc4_ = (_loc8_ - _loc6_) / 2;
      if(_loc3_ == "T")
      {
         _loc4_ = 0;
      }
      else if(_loc3_ == "B")
      {
         _loc4_ = _loc8_ - _loc6_;
      }
      else if(_loc3_ == "L")
      {
         _loc5_ = 0;
      }
      else if(_loc3_ == "R")
      {
         _loc5_ = _loc9_ - _loc7_;
      }
      else if(_loc3_ == "LT")
      {
         _loc4_ = 0;
         _loc5_ = 0;
      }
      else if(_loc3_ == "TR")
      {
         _loc4_ = 0;
         _loc5_ = _loc9_ - _loc7_;
      }
      else if(_loc3_ == "LB")
      {
         _loc4_ = _loc8_ - _loc6_;
         _loc5_ = 0;
      }
      else if(_loc3_ == "RB")
      {
         _loc4_ = _loc8_ - _loc6_;
         _loc5_ = _loc9_ - _loc7_;
      }
      if(__screen == undefined)
      {
         __screen = new Object();
      }
      __screen.x = _loc5_;
      __screen.y = _loc4_;
      __screen.width = _loc7_;
      __screen.height = _loc6_;
      _root.focusManager.relocate();
      dispatchEvent({type:"resize"});
   }
   static function get screen()
   {
      init();
      if(__screen == undefined)
      {
         onResize();
      }
      return __screen;
   }
}
