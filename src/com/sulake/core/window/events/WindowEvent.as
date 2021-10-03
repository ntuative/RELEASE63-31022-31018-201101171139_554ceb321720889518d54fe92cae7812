package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1468:String = "WE_CREATE";
      
      public static const const_1438:String = "WE_CREATED";
      
      public static const const_1532:String = "WE_DESTROY";
      
      public static const const_265:String = "WE_DESTROYED";
      
      public static const const_1419:String = "WE_OPEN";
      
      public static const const_1585:String = "WE_OPENED";
      
      public static const const_1424:String = "WE_CLOSE";
      
      public static const const_1408:String = "WE_CLOSED";
      
      public static const const_1407:String = "WE_FOCUS";
      
      public static const const_163:String = "WE_FOCUSED";
      
      public static const const_1450:String = "WE_UNFOCUS";
      
      public static const const_1455:String = "WE_UNFOCUSED";
      
      public static const const_1415:String = "WE_ACTIVATE";
      
      public static const const_1490:String = "WE_ACTIVATED";
      
      public static const const_1475:String = "WE_DEACTIVATE";
      
      public static const const_850:String = "WE_DEACTIVATED";
      
      public static const const_429:String = "WE_SELECT";
      
      public static const const_55:String = "WE_SELECTED";
      
      public static const const_629:String = "WE_UNSELECT";
      
      public static const const_636:String = "WE_UNSELECTED";
      
      public static const const_1673:String = "WE_ATTACH";
      
      public static const const_1703:String = "WE_ATTACHED";
      
      public static const const_1852:String = "WE_DETACH";
      
      public static const const_1712:String = "WE_DETACHED";
      
      public static const const_1495:String = "WE_LOCK";
      
      public static const const_1422:String = "WE_LOCKED";
      
      public static const const_1446:String = "WE_UNLOCK";
      
      public static const const_1371:String = "WE_UNLOCKED";
      
      public static const const_620:String = "WE_ENABLE";
      
      public static const const_289:String = "WE_ENABLED";
      
      public static const const_707:String = "WE_DISABLE";
      
      public static const const_233:String = "WE_DISABLED";
      
      public static const const_1575:String = "WE_RELOCATE";
      
      public static const const_329:String = "WE_RELOCATED";
      
      public static const const_1449:String = "WE_RESIZE";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1553:String = "WE_MINIMIZE";
      
      public static const const_1310:String = "WE_MINIMIZED";
      
      public static const const_1485:String = "WE_MAXIMIZE";
      
      public static const const_1544:String = "WE_MAXIMIZED";
      
      public static const const_1416:String = "WE_RESTORE";
      
      public static const const_1543:String = "WE_RESTORED";
      
      public static const const_1790:String = "WE_ARRANGE";
      
      public static const const_1808:String = "WE_ARRANGED";
      
      public static const const_96:String = "WE_UPDATE";
      
      public static const const_1711:String = "WE_UPDATED";
      
      public static const const_1783:String = "WE_CHILD_RELOCATE";
      
      public static const const_491:String = "WE_CHILD_RELOCATED";
      
      public static const const_1715:String = "WE_CHILD_RESIZE";
      
      public static const const_280:String = "WE_CHILD_RESIZED";
      
      public static const const_1767:String = "WE_CHILD_REMOVE";
      
      public static const const_559:String = "WE_CHILD_REMOVED";
      
      public static const const_1750:String = "WE_PARENT_RELOCATE";
      
      public static const const_1883:String = "WE_PARENT_RELOCATED";
      
      public static const const_1875:String = "WE_PARENT_RESIZE";
      
      public static const const_1545:String = "WE_PARENT_RESIZED";
      
      public static const const_177:String = "WE_OK";
      
      public static const const_750:String = "WE_CANCEL";
      
      public static const const_108:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_418:String = "WE_SCROLL";
      
      public static const const_147:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1945:IWindow;
      
      protected var var_1946:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1945 = param3;
         this.var_1946 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1945;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1946 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1946;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
