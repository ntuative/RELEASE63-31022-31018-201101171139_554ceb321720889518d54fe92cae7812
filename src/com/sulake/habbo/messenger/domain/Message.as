package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_771:int = 1;
      
      public static const const_601:int = 2;
      
      public static const const_607:int = 3;
      
      public static const const_1031:int = 4;
      
      public static const const_617:int = 5;
      
      public static const const_936:int = 6;
       
      
      private var _type:int;
      
      private var var_1036:int;
      
      private var var_2007:String;
      
      private var var_2006:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1036 = param2;
         this.var_2007 = param3;
         this.var_2006 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2007;
      }
      
      public function get time() : String
      {
         return this.var_2006;
      }
      
      public function get senderId() : int
      {
         return this.var_1036;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
