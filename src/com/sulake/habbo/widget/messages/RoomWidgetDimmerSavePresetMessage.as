package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_729:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2231:int;
      
      private var var_2229:int;
      
      private var _color:uint;
      
      private var var_1161:int;
      
      private var var_2607:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_729);
         this.var_2231 = param1;
         this.var_2229 = param2;
         this._color = param3;
         this.var_1161 = param4;
         this.var_2607 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2231;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2229;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1161;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2607;
      }
   }
}
