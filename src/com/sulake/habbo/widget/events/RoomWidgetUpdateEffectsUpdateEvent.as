package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_848:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_239:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_848,param2,param3);
         this.var_239 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_239;
      }
   }
}
