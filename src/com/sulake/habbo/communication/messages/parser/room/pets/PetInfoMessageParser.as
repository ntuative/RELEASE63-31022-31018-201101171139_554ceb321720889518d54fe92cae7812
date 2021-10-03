package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1677:int;
      
      private var _name:String;
      
      private var var_1381:int;
      
      private var var_2372:int;
      
      private var var_2307:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_609:String;
      
      private var var_2370:int;
      
      private var var_2373:int;
      
      private var var_2371:int;
      
      private var var_2311:int;
      
      private var var_2196:int;
      
      private var _ownerName:String;
      
      private var var_515:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1677;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1381;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2372;
      }
      
      public function get experience() : int
      {
         return this.var_2307;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_609;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2370;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2373;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2371;
      }
      
      public function get respect() : int
      {
         return this.var_2311;
      }
      
      public function get ownerId() : int
      {
         return this.var_2196;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_515;
      }
      
      public function flush() : Boolean
      {
         this.var_1677 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1677 = param1.readInteger();
         this._name = param1.readString();
         this.var_1381 = param1.readInteger();
         this.var_2372 = param1.readInteger();
         this.var_2307 = param1.readInteger();
         this.var_2370 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2373 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2371 = param1.readInteger();
         this.var_609 = param1.readString();
         this.var_2311 = param1.readInteger();
         this.var_2196 = param1.readInteger();
         this.var_515 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
