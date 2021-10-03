package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1188:int = 2;
      
      private static const const_1187:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_295:Array;
      
      private var var_993:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_295 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1188)
         {
            this.var_295 = new Array();
            this.var_295.push(const_1187);
            this.var_993 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_993 > 0)
         {
            --this.var_993;
         }
         if(this.var_993 == 0)
         {
            if(this.var_295.length > 0)
            {
               super.setAnimation(this.var_295.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
