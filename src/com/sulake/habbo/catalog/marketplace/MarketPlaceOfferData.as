package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData implements IMarketPlaceOfferData
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2388:int;
      
      private var var_1938:String;
      
      private var var_1688:int;
      
      private var var_1971:int;
      
      private var var_2386:int;
      
      private var _status:int;
      
      private var var_2387:int = -1;
      
      private var var_1687:int;
      
      private var var_42:BitmapData;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2388 = param3;
         this.var_1938 = param4;
         this.var_1688 = param5;
         this._status = param6;
         this.var_1971 = param7;
         this.var_1687 = param8;
      }
      
      public function dispose() : void
      {
         if(this.var_42)
         {
            this.var_42.dispose();
            this.var_42 = null;
         }
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2388;
      }
      
      public function get stuffData() : String
      {
         return this.var_1938;
      }
      
      public function get price() : int
      {
         return this.var_1688;
      }
      
      public function get averagePrice() : int
      {
         return this.var_1971;
      }
      
      public function get image() : BitmapData
      {
         return this.var_42;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(this.var_42 != null)
         {
            this.var_42.dispose();
         }
         this.var_42 = param1;
      }
      
      public function set imageCallback(param1:int) : void
      {
         this.var_2386 = param1;
      }
      
      public function get imageCallback() : int
      {
         return this.var_2386;
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2387;
      }
      
      public function set timeLeftMinutes(param1:int) : void
      {
         this.var_2387 = param1;
      }
      
      public function set price(param1:int) : void
      {
         this.var_1688 = param1;
      }
      
      public function set offerId(param1:int) : void
      {
         this._offerId = param1;
      }
      
      public function get offerCount() : int
      {
         return this.var_1687;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1687 = param1;
      }
   }
}
