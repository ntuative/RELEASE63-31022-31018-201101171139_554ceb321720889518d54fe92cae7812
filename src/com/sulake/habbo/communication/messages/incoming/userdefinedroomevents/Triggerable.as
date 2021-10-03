package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class Triggerable
   {
       
      
      private var var_2342:int;
      
      private var var_1659:Array;
      
      private var _id:int;
      
      private var var_2341:String;
      
      private var var_1323:Array;
      
      private var var_2343:int;
      
      public function Triggerable(param1:IMessageDataWrapper)
      {
         var _loc5_:int = 0;
         this.var_1659 = new Array();
         this.var_1323 = new Array();
         super();
         this.var_2342 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc5_ = param1.readInteger();
            this.var_1659.push(_loc5_);
            _loc3_++;
         }
         this.var_2343 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2341 = param1.readString();
         var _loc4_:int = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            this.var_1323.push(param1.readInteger());
            _loc3_++;
         }
      }
      
      public function get furniLimit() : int
      {
         return this.var_2342;
      }
      
      public function get stuffIds() : Array
      {
         return this.var_1659;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get stringParam() : String
      {
         return this.var_2341;
      }
      
      public function get intParams() : Array
      {
         return this.var_1323;
      }
      
      public function get code() : int
      {
         return 0;
      }
      
      public function get stuffTypeId() : int
      {
         return this.var_2343;
      }
      
      public function getBoolean(param1:int) : Boolean
      {
         return this.var_1323[param1] == 1;
      }
   }
}
