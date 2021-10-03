package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1677:int;
      
      private var var_1381:int;
      
      private var var_2310:int;
      
      private var var_2307:int;
      
      private var var_2308:int;
      
      private var _energy:int;
      
      private var var_2309:int;
      
      private var _nutrition:int;
      
      private var var_2312:int;
      
      private var var_2196:int;
      
      private var _ownerName:String;
      
      private var var_2311:int;
      
      private var var_515:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1677;
      }
      
      public function get level() : int
      {
         return this.var_1381;
      }
      
      public function get levelMax() : int
      {
         return this.var_2310;
      }
      
      public function get experience() : int
      {
         return this.var_2307;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2308;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2309;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2312;
      }
      
      public function get ownerId() : int
      {
         return this.var_2196;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2311;
      }
      
      public function get age() : int
      {
         return this.var_515;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1677 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1381 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2310 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2307 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2308 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2309 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2312 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2196 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2311 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_515 = param1;
      }
   }
}
