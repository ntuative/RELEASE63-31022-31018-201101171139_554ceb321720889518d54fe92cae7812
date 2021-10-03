package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2332:Boolean;
      
      private var var_2333:int;
      
      private var var_1598:Array;
      
      private var var_680:Array;
      
      private var var_681:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2332;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2333;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1598;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_680;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_681;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1598 = [];
         this.var_680 = [];
         this.var_681 = [];
         this.var_2332 = param1.readBoolean();
         this.var_2333 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1598.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_680.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_681.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
