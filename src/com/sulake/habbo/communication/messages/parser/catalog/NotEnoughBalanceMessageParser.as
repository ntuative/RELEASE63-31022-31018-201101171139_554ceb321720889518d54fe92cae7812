package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1567:int = 0;
      
      private var var_1566:int = 0;
      
      private var var_1560:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1567;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1566;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1560;
      }
      
      public function flush() : Boolean
      {
         this.var_1567 = 0;
         this.var_1566 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1567 = param1.readInteger();
         this.var_1566 = param1.readInteger();
         this.var_1560 = param1.readInteger();
         return true;
      }
   }
}
