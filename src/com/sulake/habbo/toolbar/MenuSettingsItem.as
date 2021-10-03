package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2031:String;
      
      private var var_2029:Array;
      
      private var var_2028:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2031 = param1;
         this.var_2029 = param2;
         this.var_2028 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2031;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2029;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2028;
      }
   }
}
