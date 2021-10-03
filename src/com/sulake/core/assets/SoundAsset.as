package com.sulake.core.assets
{
   import flash.media.Sound;
   import flash.utils.ByteArray;
   
   public class SoundAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_166:Sound = null;
      
      private var var_1559:AssetTypeDeclaration;
      
      private var var_962:String;
      
      public function SoundAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         this.var_1559 = param1;
         this.var_962 = param2;
      }
      
      public function get url() : String
      {
         return this.var_962;
      }
      
      public function get content() : Object
      {
         return this.var_166 as Object;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return this.var_1559;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_166 = null;
            this.var_1559 = null;
            this.var_962 = null;
         }
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         if(param1 is Sound)
         {
            if(this.var_166)
            {
               this.var_166.close();
            }
            this.var_166 = param1 as Sound;
            return;
         }
         if(param1 is ByteArray)
         {
         }
         if(param1 is Class)
         {
            if(this.var_166)
            {
               this.var_166.close();
            }
            this.var_166 = new param1() as Sound;
            return;
         }
         if(param1 is SoundAsset)
         {
            if(this.var_166)
            {
               this.var_166.close();
            }
            this.var_166 = SoundAsset(param1).var_166;
            return;
         }
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         if(param1 is SoundAsset)
         {
            this.var_166 = SoundAsset(param1).var_166;
         }
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
   }
}
