package com.sulake.core.assets
{
   import flash.display.DisplayObject;
   
   public class DisplayAsset implements IAsset
   {
       
      
      protected var var_962:String;
      
      protected var var_166:DisplayObject;
      
      protected var _disposed:Boolean = false;
      
      protected var var_784:AssetTypeDeclaration;
      
      public function DisplayAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_784 = param1;
         this.var_962 = param2;
      }
      
      public function get url() : String
      {
         return this.var_962;
      }
      
      public function get content() : Object
      {
         return this.var_166;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_784;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            if(this.var_166.loaderInfo != null)
            {
               if(this.var_166.loaderInfo.loader != null)
               {
                  this.var_166.loaderInfo.loader.unload();
               }
            }
            this.var_166 = null;
            this.var_784 = null;
            this._disposed = true;
            this.var_962 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is DisplayObject)
         {
            this.var_166 = param1 as DisplayObject;
            if(this.var_166 != null)
            {
               return;
            }
            throw new Error("Failed to convert DisplayObject to DisplayAsset!");
         }
         if(param1 is DisplayAsset)
         {
            this.var_166 = DisplayAsset(param1).var_166;
            this.var_784 = DisplayAsset(param1).var_784;
            if(this.var_166 == null)
            {
               throw new Error("Failed to read content from DisplayAsset!");
            }
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is DisplayAsset)
         {
            this.var_166 = DisplayAsset(param1).var_166;
            this.var_784 = DisplayAsset(param1).var_784;
            return;
         }
         throw new Error("Provided asset should be of type DisplayAsset!");
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
