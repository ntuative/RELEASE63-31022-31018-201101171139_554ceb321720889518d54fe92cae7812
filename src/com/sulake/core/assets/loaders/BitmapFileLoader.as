package com.sulake.core.assets.loaders
{
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class BitmapFileLoader extends AssetLoaderEventBroker implements IAssetLoader
   {
       
      
      protected var var_962:String;
      
      protected var _type:String;
      
      protected var var_38:Loader;
      
      protected var var_968:LoaderContext;
      
      public function BitmapFileLoader(param1:String, param2:URLRequest = null)
      {
         super();
         this.var_962 = param2 == null ? "" : param2.url;
         this._type = param1;
         this.var_38 = new Loader();
         this.var_968 = new LoaderContext();
         this.var_968.checkPolicyFile = true;
         this.var_38.contentLoaderInfo.addEventListener(Event.COMPLETE,loadEventHandler);
         this.var_38.contentLoaderInfo.addEventListener(Event.UNLOAD,loadEventHandler);
         this.var_38.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
         this.var_38.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,loadEventHandler);
         this.var_38.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
         this.var_38.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
         if(param2 != null && param2.url != null)
         {
            this.var_38.load(param2,this.var_968);
         }
      }
      
      public function get url() : String
      {
         return this.var_962;
      }
      
      public function get ready() : Boolean
      {
         return this.bytesTotal > 0 ? this.bytesTotal == this.bytesLoaded : false;
      }
      
      public function get content() : Object
      {
         return !!this.var_38 ? this.var_38.content : null;
      }
      
      public function get mimeType() : String
      {
         return this._type;
      }
      
      public function get bytesLoaded() : uint
      {
         return !!this.var_38 ? uint(this.var_38.contentLoaderInfo.bytesLoaded) : uint(0);
      }
      
      public function get bytesTotal() : uint
      {
         return !!this.var_38 ? uint(this.var_38.contentLoaderInfo.bytesTotal) : uint(0);
      }
      
      public function get loaderContext() : LoaderContext
      {
         return this.var_968;
      }
      
      public function load(param1:URLRequest) : void
      {
         this.var_962 = param1.url;
         var_297 = 0;
         this.var_38.load(param1,this.var_968);
      }
      
      override protected function retry() : Boolean
      {
         if(!_disposed)
         {
            if(++var_297 < var_2701)
            {
               try
               {
                  this.var_38.close();
                  this.var_38.unload();
               }
               catch(e:Error)
               {
               }
               this.var_38.load(new URLRequest(this.var_962 + (this.var_962.indexOf("?") == -1 ? "?" : "&") + "retry=" + var_297),this.var_968);
               return true;
            }
         }
         return false;
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            super.dispose();
            this.var_38.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadEventHandler);
            this.var_38.contentLoaderInfo.removeEventListener(Event.UNLOAD,loadEventHandler);
            this.var_38.contentLoaderInfo.removeEventListener(HTTPStatusEvent.HTTP_STATUS,loadEventHandler);
            this.var_38.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,loadEventHandler);
            this.var_38.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadEventHandler);
            this.var_38.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,loadEventHandler);
            try
            {
               this.var_38.close();
            }
            catch(e:*)
            {
            }
            this.var_38.unload();
            this.var_38 = null;
            this._type = null;
            this.var_962 = null;
         }
      }
   }
}
