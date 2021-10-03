package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2147:Number;
      
      private var var_1548:Number;
      
      private var var_823:Number;
      
      private var var_822:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2147 = param1;
         this.var_1548 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_823 = param1;
         this.var_822 = 0;
      }
      
      public function update() : void
      {
         this.var_823 += this.var_1548;
         this.var_822 += this.var_823;
         if(this.var_822 > 0)
         {
            this.var_822 = 0;
            this.var_823 = this.var_2147 * -1 * this.var_823;
         }
      }
      
      public function get location() : Number
      {
         return this.var_822;
      }
   }
}
