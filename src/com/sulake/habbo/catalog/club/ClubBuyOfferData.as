package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1467:String;
      
      private var var_1688:int;
      
      private var var_2395:Boolean;
      
      private var var_2399:Boolean;
      
      private var var_2396:int;
      
      private var var_2393:int;
      
      private var var_381:ICatalogPage;
      
      private var var_2398:int;
      
      private var var_2400:int;
      
      private var var_2397:int;
      
      private var var_2394:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1467 = param2;
         this.var_1688 = param3;
         this.var_2395 = param4;
         this.var_2399 = param5;
         this.var_2396 = param6;
         this.var_2393 = param7;
         this.var_2398 = param8;
         this.var_2400 = param9;
         this.var_2397 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1467;
      }
      
      public function get price() : int
      {
         return this.var_1688;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2395;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2399;
      }
      
      public function get periods() : int
      {
         return this.var_2396;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2393;
      }
      
      public function get year() : int
      {
         return this.var_2398;
      }
      
      public function get month() : int
      {
         return this.var_2400;
      }
      
      public function get day() : int
      {
         return this.var_2397;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_539;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1688;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_381;
      }
      
      public function get priceType() : String
      {
         return Offer.const_798;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1467;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_381 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2394;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2394 = param1;
      }
   }
}
