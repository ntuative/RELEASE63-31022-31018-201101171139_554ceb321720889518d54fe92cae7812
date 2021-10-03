package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_1938:String;
      
      protected var var_1324:Number;
      
      protected var var_2692:Boolean;
      
      protected var var_2693:Boolean;
      
      protected var var_2365:Boolean;
      
      protected var var_2691:Boolean;
      
      protected var var_2709:int;
      
      protected var var_2366:int;
      
      protected var var_2369:int;
      
      protected var var_2367:int;
      
      protected var var_1834:String;
      
      protected var var_2627:int;
      
      protected var var_861:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2365 = param5;
         this.var_2693 = param6;
         this.var_2692 = param7;
         this.var_2691 = param8;
         this.var_1938 = param9;
         this.var_1324 = param10;
         this.var_2709 = param11;
         this.var_2366 = param12;
         this.var_2369 = param13;
         this.var_2367 = param14;
         this.var_1834 = param15;
         this.var_2627 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_1938;
      }
      
      public function get extra() : Number
      {
         return this.var_1324;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2692;
      }
      
      public function get method_4() : Boolean
      {
         return this.var_2693;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2365;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2691;
      }
      
      public function get expires() : int
      {
         return this.var_2709;
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
      
      public function get slotId() : String
      {
         return this.var_1834;
      }
      
      public function get songId() : int
      {
         return this.var_2627;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_861 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_861;
      }
   }
}
