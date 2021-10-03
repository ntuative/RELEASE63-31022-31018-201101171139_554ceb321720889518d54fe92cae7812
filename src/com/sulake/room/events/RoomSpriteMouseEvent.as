package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1595:String = "";
      
      private var var_1664:String = "";
      
      private var var_1995:String = "";
      
      private var var_2613:Number = 0;
      
      private var var_2614:Number = 0;
      
      private var var_2575:Number = 0;
      
      private var var_2577:Number = 0;
      
      private var var_2504:Boolean = false;
      
      private var var_2502:Boolean = false;
      
      private var var_2505:Boolean = false;
      
      private var var_2503:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1595 = param2;
         this.var_1664 = param3;
         this.var_1995 = param4;
         this.var_2613 = param5;
         this.var_2614 = param6;
         this.var_2575 = param7;
         this.var_2577 = param8;
         this.var_2504 = param9;
         this.var_2502 = param10;
         this.var_2505 = param11;
         this.var_2503 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get method_2() : String
      {
         return this.var_1595;
      }
      
      public function get canvasId() : String
      {
         return this.var_1664;
      }
      
      public function get spriteTag() : String
      {
         return this.var_1995;
      }
      
      public function get screenX() : Number
      {
         return this.var_2613;
      }
      
      public function get screenY() : Number
      {
         return this.var_2614;
      }
      
      public function get localX() : Number
      {
         return this.var_2575;
      }
      
      public function get localY() : Number
      {
         return this.var_2577;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2504;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2502;
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
