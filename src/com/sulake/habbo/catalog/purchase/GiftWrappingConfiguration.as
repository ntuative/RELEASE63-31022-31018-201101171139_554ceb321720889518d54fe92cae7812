package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1419:Boolean = false;
      
      private var var_1688:int;
      
      private var var_1598:Array;
      
      private var var_680:Array;
      
      private var var_681:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1419 = _loc2_.isWrappingEnabled;
         this.var_1688 = _loc2_.wrappingPrice;
         this.var_1598 = _loc2_.stuffTypes;
         this.var_680 = _loc2_.boxTypes;
         this.var_681 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1419;
      }
      
      public function get price() : int
      {
         return this.var_1688;
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
   }
}
