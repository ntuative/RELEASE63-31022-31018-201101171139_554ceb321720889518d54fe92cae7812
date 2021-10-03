package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1677:int;
      
      private var var_2544:String;
      
      private var var_1381:int;
      
      private var var_609:String;
      
      private var var_1396:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1677 = param1.readInteger();
         this.var_2544 = param1.readString();
         this.var_1381 = param1.readInteger();
         this.var_609 = param1.readString();
         this.var_1396 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1677;
      }
      
      public function get petName() : String
      {
         return this.var_2544;
      }
      
      public function get level() : int
      {
         return this.var_1381;
      }
      
      public function get figure() : String
      {
         return this.var_609;
      }
      
      public function get petType() : int
      {
         return this.var_1396;
      }
   }
}
