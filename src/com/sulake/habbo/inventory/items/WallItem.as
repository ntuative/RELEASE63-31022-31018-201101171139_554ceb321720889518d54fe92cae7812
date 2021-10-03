package com.sulake.habbo.inventory.items
{
   public class WallItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _type:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var var_1324:Number;
      
      protected var var_1938:String;
      
      protected var var_2692:Boolean;
      
      protected var var_2693:Boolean;
      
      protected var var_2365:Boolean;
      
      protected var var_2691:Boolean;
      
      protected var var_861:Boolean;
      
      public function WallItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number)
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
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get extra() : Number
      {
         return this.var_1324;
      }
      
      public function get stuffData() : String
      {
         return this.var_1938;
      }
      
      public function set stuffData(param1:String) : void
      {
         this.var_1938 = param1;
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
      
      public function get locked() : Boolean
      {
         return this.var_861;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_861 = param1;
      }
   }
}
