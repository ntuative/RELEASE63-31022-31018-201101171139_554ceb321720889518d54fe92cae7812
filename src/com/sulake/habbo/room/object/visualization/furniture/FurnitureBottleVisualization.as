package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_881:int = 20;
      
      private static const const_583:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_295:Array;
      
      private var var_693:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_295 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_693)
            {
               this.var_693 = true;
               this.var_295 = new Array();
               this.var_295.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_693)
            {
               this.var_693 = false;
               this.var_295 = new Array();
               this.var_295.push(const_881);
               this.var_295.push(const_583 + param1);
               this.var_295.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
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
