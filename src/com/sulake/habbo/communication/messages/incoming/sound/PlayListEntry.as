package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2627:int;
      
      private var var_2641:int;
      
      private var var_2640:String;
      
      private var var_2639:String;
      
      private var var_2642:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_2627 = param1;
         this.var_2641 = param2;
         this.var_2640 = param3;
         this.var_2639 = param4;
      }
      
      public function get id() : int
      {
         return this.var_2627;
      }
      
      public function get length() : int
      {
         return this.var_2641;
      }
      
      public function get name() : String
      {
         return this.var_2640;
      }
      
      public function get creator() : String
      {
         return this.var_2639;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_2642;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_2642 = param1;
      }
   }
}
