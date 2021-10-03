package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1467:String;
      
      private var var_1688:int;
      
      private var var_2395:Boolean;
      
      private var var_2399:Boolean;
      
      private var var_2396:int;
      
      private var var_2393:int;
      
      private var var_2398:int;
      
      private var var_2400:int;
      
      private var var_2397:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1467 = param1.readString();
         this.var_1688 = param1.readInteger();
         this.var_2395 = param1.readBoolean();
         this.var_2399 = param1.readBoolean();
         this.var_2396 = param1.readInteger();
         this.var_2393 = param1.readInteger();
         this.var_2398 = param1.readInteger();
         this.var_2400 = param1.readInteger();
         this.var_2397 = param1.readInteger();
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
   }
}
