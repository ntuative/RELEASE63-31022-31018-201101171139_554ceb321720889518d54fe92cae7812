package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_213:String = "ROE_MOUSE_CLICK";
      
      public static const const_1849:String = "ROE_MOUSE_ENTER";
      
      public static const const_513:String = "ROE_MOUSE_MOVE";
      
      public static const const_1752:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1732:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_483:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1595:String = "";
      
      private var var_2502:Boolean;
      
      private var var_2504:Boolean;
      
      private var var_2505:Boolean;
      
      private var var_2503:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1595 = param2;
         this.var_2502 = param5;
         this.var_2504 = param6;
         this.var_2505 = param7;
         this.var_2503 = param8;
      }
      
      public function get method_2() : String
      {
         return this.var_1595;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2502;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2504;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2505;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2503;
      }
   }
}
