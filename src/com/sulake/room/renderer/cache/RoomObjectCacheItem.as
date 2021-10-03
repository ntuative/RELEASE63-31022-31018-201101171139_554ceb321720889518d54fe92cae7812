package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_822:RoomObjectLocationCacheItem = null;
      
      private var var_190:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_822 = new RoomObjectLocationCacheItem(param1);
         this.var_190 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_822;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_190;
      }
      
      public function dispose() : void
      {
         if(this.var_822 != null)
         {
            this.var_822.dispose();
            this.var_822 = null;
         }
         if(this.var_190 != null)
         {
            this.var_190.dispose();
            this.var_190 = null;
         }
      }
   }
}
