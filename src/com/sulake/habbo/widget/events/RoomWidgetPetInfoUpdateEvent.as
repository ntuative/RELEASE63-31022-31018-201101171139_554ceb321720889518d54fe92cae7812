package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const PET_INFO:String = "RWPIUE_PET_INFO";
       
      
      private var var_1381:int;
      
      private var var_2310:int;
      
      private var var_2307:int;
      
      private var var_2308:int;
      
      private var _energy:int;
      
      private var var_2309:int;
      
      private var _nutrition:int;
      
      private var var_2312:int;
      
      private var var_772:int;
      
      private var _petRespect:int;
      
      private var var_515:int;
      
      private var _name:String;
      
      private var _id:int;
      
      private var var_42:BitmapData;
      
      private var var_1396:int;
      
      private var var_2445:int;
      
      private var var_2443:Boolean;
      
      private var var_2196:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2444:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.PET_INFO,param10,param11);
         this.var_1396 = param1;
         this.var_2445 = param2;
         this._name = param3;
         this._id = param4;
         this.var_42 = param5;
         this.var_2443 = param6;
         this.var_2196 = param7;
         this._ownerName = param8;
         this.var_2444 = param9;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get image() : BitmapData
      {
         return this.var_42;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get petType() : int
      {
         return this.var_1396;
      }
      
      public function get petRace() : int
      {
         return this.var_2445;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2443;
      }
      
      public function get ownerId() : int
      {
         return this.var_2196;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2444;
      }
      
      public function get age() : int
      {
         return this.var_515;
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
      
      public function get petRespectLeft() : int
      {
         return this.var_772;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
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
      
      public function set petRespectLeft(param1:int) : void
      {
         this.var_772 = param1;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         this._canOwnerBeKicked = param1;
      }
      
      public function set petRespect(param1:int) : void
      {
         this._petRespect = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_515 = param1;
      }
   }
}
