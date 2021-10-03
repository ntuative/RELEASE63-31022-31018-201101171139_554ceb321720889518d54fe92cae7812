package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_79:String = "i";
      
      public static const const_82:String = "s";
      
      public static const const_255:String = "e";
       
      
      private var var_1786:String;
      
      private var var_2473:int;
      
      private var var_1389:String;
      
      private var var_1390:int;
      
      private var var_1785:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1786 = param1.readString();
         this.var_2473 = param1.readInteger();
         this.var_1389 = param1.readString();
         this.var_1390 = param1.readInteger();
         this.var_1785 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1786;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2473;
      }
      
      public function get extraParam() : String
      {
         return this.var_1389;
      }
      
      public function get productCount() : int
      {
         return this.var_1390;
      }
      
      public function get expiration() : int
      {
         return this.var_1785;
      }
   }
}
