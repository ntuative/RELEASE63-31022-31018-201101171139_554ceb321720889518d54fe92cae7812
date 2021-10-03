package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_2218:Number = 0;
      
      private var var_2219:Number = 0;
      
      private var var_2217:Number = 0;
      
      private var var_2222:Number = 0;
      
      private var var_253:int = 0;
      
      private var var_2221:int = 0;
      
      private var var_298:Array;
      
      private var var_2220:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_298 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_173 = param3;
         this.var_172 = param4;
         this.var_2218 = param5;
         this.var_253 = param6;
         this.var_2221 = param7;
         this.var_2219 = param8;
         this.var_2217 = param9;
         this.var_2222 = param10;
         this.var_2220 = param11;
         this.var_298 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_173;
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function get localZ() : Number
      {
         return this.var_2218;
      }
      
      public function get targetX() : Number
      {
         return this.var_2219;
      }
      
      public function get targetY() : Number
      {
         return this.var_2217;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2222;
      }
      
      public function get dir() : int
      {
         return this.var_253;
      }
      
      public function get dirHead() : int
      {
         return this.var_2221;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2220;
      }
      
      public function get actions() : Array
      {
         return this.var_298.slice();
      }
   }
}
