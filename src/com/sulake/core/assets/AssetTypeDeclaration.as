package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2655:String;
      
      private var var_2654:Class;
      
      private var var_2653:Class;
      
      private var var_1880:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2655 = param1;
         this.var_2654 = param2;
         this.var_2653 = param3;
         if(rest == null)
         {
            this.var_1880 = new Array();
         }
         else
         {
            this.var_1880 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2655;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2654;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2653;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1880;
      }
   }
}
