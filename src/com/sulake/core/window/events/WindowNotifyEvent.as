package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1463:String = "WN_CRETAE";
      
      public static const const_1511:String = "WN_CREATED";
      
      public static const const_1028:String = "WN_DESTROY";
      
      public static const const_977:String = "WN_DESTROYED";
      
      public static const const_1021:String = "WN_OPEN";
      
      public static const const_1122:String = "WN_OPENED";
      
      public static const const_1062:String = "WN_CLOSE";
      
      public static const const_954:String = "WN_CLOSED";
      
      public static const const_1098:String = "WN_FOCUS";
      
      public static const const_1002:String = "WN_FOCUSED";
      
      public static const const_1077:String = "WN_UNFOCUS";
      
      public static const const_1025:String = "WN_UNFOCUSED";
      
      public static const const_1046:String = "WN_ACTIVATE";
      
      public static const const_381:String = "WN_ACTVATED";
      
      public static const const_1161:String = "WN_DEACTIVATE";
      
      public static const const_965:String = "WN_DEACTIVATED";
      
      public static const const_498:String = "WN_SELECT";
      
      public static const const_376:String = "WN_SELECTED";
      
      public static const const_849:String = "WN_UNSELECT";
      
      public static const const_712:String = "WN_UNSELECTED";
      
      public static const const_937:String = "WN_LOCK";
      
      public static const const_1013:String = "WN_LOCKED";
      
      public static const const_973:String = "WN_UNLOCK";
      
      public static const const_949:String = "WN_UNLOCKED";
      
      public static const const_1156:String = "WN_ENABLE";
      
      public static const const_649:String = "WN_ENABLED";
      
      public static const const_1100:String = "WN_DISABLE";
      
      public static const const_858:String = "WN_DISABLED";
      
      public static const const_815:String = "WN_RESIZE";
      
      public static const const_184:String = "WN_RESIZED";
      
      public static const const_1133:String = "WN_RELOCATE";
      
      public static const const_433:String = "WN_RELOCATED";
      
      public static const const_1111:String = "WN_MINIMIZE";
      
      public static const const_1117:String = "WN_MINIMIZED";
      
      public static const const_1138:String = "WN_MAXIMIZE";
      
      public static const const_1017:String = "WN_MAXIMIZED";
      
      public static const const_978:String = "WN_RESTORE";
      
      public static const const_996:String = "WN_RESTORED";
      
      public static const const_1663:String = "WN_ARRANGE";
      
      public static const const_1735:String = "WN_ARRANGED";
      
      public static const const_1702:String = "WN_UPDATE";
      
      public static const const_1763:String = "WN_UPDATED";
      
      public static const const_335:String = "WN_CHILD_ADDED";
      
      public static const const_847:String = "WN_CHILD_REMOVED";
      
      public static const const_312:String = "WN_CHILD_RESIZED";
      
      public static const const_275:String = "WN_CHILD_RELOCATED";
      
      public static const const_241:String = "WN_CHILD_ACTIVATED";
      
      public static const const_409:String = "WN_PARENT_ADDED";
      
      public static const const_1053:String = "WN_PARENT_REMOVED";
      
      public static const const_556:String = "WN_PARENT_RESIZED";
      
      public static const const_1108:String = "WN_PARENT_RELOCATED";
      
      public static const const_603:String = "WN_PARENT_ACTIVATED";
      
      public static const const_504:String = "WN_STATE_UPDATED";
      
      public static const const_468:String = "WN_STYLE_UPDATED";
      
      public static const const_456:String = "WN_PARAM_UPDATED";
      
      public static const const_1748:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1945,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
