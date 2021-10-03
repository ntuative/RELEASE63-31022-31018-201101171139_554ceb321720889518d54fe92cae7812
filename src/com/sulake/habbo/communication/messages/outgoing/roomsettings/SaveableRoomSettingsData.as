package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1816:String;
      
      private var var_2156:int;
      
      private var _password:String;
      
      private var var_1417:int;
      
      private var var_2160:int;
      
      private var var_787:Array;
      
      private var var_2164:Array;
      
      private var var_2162:Boolean;
      
      private var var_2161:Boolean;
      
      private var var_2158:Boolean;
      
      private var var_2157:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2162;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2162 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2161;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2161 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2158;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2158 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2157;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2157 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1816;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1816 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2156;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2156 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1417;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1417 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2160;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2160 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_787;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_787 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2164;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2164 = param1;
      }
   }
}
