package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1419:Boolean;
      
      private var var_1977:int;
      
      private var var_1776:int;
      
      private var var_1775:int;
      
      private var var_1979:int;
      
      private var var_1981:int;
      
      private var var_1980:int;
      
      private var var_1978:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1419;
      }
      
      public function get commission() : int
      {
         return this.var_1977;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1776;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1775;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_1981;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_1979;
      }
      
      public function get expirationHours() : int
      {
         return this.var_1980;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_1978;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1419 = param1.readBoolean();
         this.var_1977 = param1.readInteger();
         this.var_1776 = param1.readInteger();
         this.var_1775 = param1.readInteger();
         this.var_1981 = param1.readInteger();
         this.var_1979 = param1.readInteger();
         this.var_1980 = param1.readInteger();
         this.var_1978 = param1.readInteger();
         return true;
      }
   }
}
