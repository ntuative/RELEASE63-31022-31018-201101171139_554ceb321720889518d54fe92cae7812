package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_539:int = 0;
       
      
      private var var_2390:int = 0;
      
      private var var_1335:Dictionary;
      
      private var var_1689:int = 0;
      
      private var var_1690:int = 0;
      
      private var var_2392:Boolean = false;
      
      private var var_2389:int = 0;
      
      private var var_2391:int = 0;
      
      public function Purse()
      {
         this.var_1335 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_2390;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_2390 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1689;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1689 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1690;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1690 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1689 > 0 || this.var_1690 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2392;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2392 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2389;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2389 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2391;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2391 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1335;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1335 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1335[param1];
      }
   }
}
