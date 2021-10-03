package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1689:int = 0;
      
      private var var_1690:int = 0;
      
      private var var_2402:int = 0;
      
      private var var_2403:Boolean = false;
      
      private var var_2392:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1689 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1690 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2402 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2403 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2392 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1689;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1690;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2402;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2403;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2392;
      }
   }
}
