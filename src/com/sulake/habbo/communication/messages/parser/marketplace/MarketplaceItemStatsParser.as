package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1971:int;
      
      private var var_1970:int;
      
      private var var_1973:int;
      
      private var _dayOffsets:Array;
      
      private var var_1755:Array;
      
      private var var_1754:Array;
      
      private var var_1972:int;
      
      private var var_1974:int;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_1971;
      }
      
      public function get offerCount() : int
      {
         return this.var_1970;
      }
      
      public function get historyLength() : int
      {
         return this.var_1973;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1755;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1754;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_1972;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_1974;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1971 = param1.readInteger();
         this.var_1970 = param1.readInteger();
         this.var_1973 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1755 = [];
         this.var_1754 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1755.push(param1.readInteger());
            this.var_1754.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1974 = param1.readInteger();
         this.var_1972 = param1.readInteger();
         return true;
      }
   }
}
