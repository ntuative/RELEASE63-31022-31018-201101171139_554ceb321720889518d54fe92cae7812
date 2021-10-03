package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_994:String = "select_outfit";
       
      
      private var var_2557:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_994);
         this.var_2557 = param1;
      }
      
      public function get outfitId() : int
      {
         return this.var_2557;
      }
   }
}
