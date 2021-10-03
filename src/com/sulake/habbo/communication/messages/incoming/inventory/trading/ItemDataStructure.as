package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2070:int;
      
      private var var_1234:String;
      
      private var var_2363:int;
      
      private var var_2364:int;
      
      private var _category:int;
      
      private var var_1938:String;
      
      private var var_1324:int;
      
      private var var_2368:int;
      
      private var var_2366:int;
      
      private var var_2369:int;
      
      private var var_2367:int;
      
      private var var_2365:Boolean;
      
      private var var_2765:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2070 = param1;
         this.var_1234 = param2;
         this.var_2363 = param3;
         this.var_2364 = param4;
         this._category = param5;
         this.var_1938 = param6;
         this.var_1324 = param7;
         this.var_2368 = param8;
         this.var_2366 = param9;
         this.var_2369 = param10;
         this.var_2367 = param11;
         this.var_2365 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2070;
      }
      
      public function get itemType() : String
      {
         return this.var_1234;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2363;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2364;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1938;
      }
      
      public function get extra() : int
      {
         return this.var_1324;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2368;
      }
      
      public function get creationDay() : int
      {
         return this.var_2366;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2369;
      }
      
      public function get creationYear() : int
      {
         return this.var_2367;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2365;
      }
      
      public function get songID() : int
      {
         return this.var_1324;
      }
   }
}
