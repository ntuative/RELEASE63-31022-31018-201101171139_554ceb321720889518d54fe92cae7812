package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1971:int;
      
      private var var_1970:int;
      
      private var var_1973:int;
      
      private var _dayOffsets:Array;
      
      private var var_1755:Array;
      
      private var var_1754:Array;
      
      private var var_1972:int;
      
      private var var_1974:int;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrice(param1:int) : void
      {
         this.var_1971 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1970 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_1973 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1755 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1754 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_1972 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_1974 = param1;
      }
   }
}
