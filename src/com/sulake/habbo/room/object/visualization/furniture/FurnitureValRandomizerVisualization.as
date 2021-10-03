package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_881:int = 20;
      
      private static const const_583:int = 10;
      
      private static const const_1211:int = 31;
      
      private static const ANIMATION_ID_ROLL:int = 32;
      
      private static const ANIMATION_ID_OFF:int = 30;
       
      
      private var var_295:Array;
      
      private var var_693:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_295 = new Array();
         super();
         super.setAnimation(ANIMATION_ID_OFF);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_693)
            {
               this.var_693 = true;
               this.var_295 = new Array();
               this.var_295.push(const_1211);
               this.var_295.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_583)
         {
            if(this.var_693)
            {
               this.var_693 = false;
               this.var_295 = new Array();
               if(_direction == 2)
               {
                  this.var_295.push(const_881 + 5 - param1);
                  this.var_295.push(const_583 + 5 - param1);
               }
               else
               {
                  this.var_295.push(const_881 + param1);
                  this.var_295.push(const_583 + param1);
               }
               this.var_295.push(ANIMATION_ID_OFF);
               return;
            }
            super.setAnimation(ANIMATION_ID_OFF);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(11))
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
