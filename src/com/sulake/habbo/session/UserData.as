package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var _type:int = 0;
      
      private var var_862:String = "";
      
      private var var_609:String = "";
      
      private var var_2022:String = "";
      
      private var var_2023:int;
      
      private var var_2025:int = 0;
      
      private var var_2024:String = "";
      
      private var var_2021:int = 0;
      
      private var var_2020:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2023;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2023 = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get sex() : String
      {
         return this.var_862;
      }
      
      public function set sex(param1:String) : void
      {
         this.var_862 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_609;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_609 = param1;
      }
      
      public function get custom() : String
      {
         return this.var_2022;
      }
      
      public function set custom(param1:String) : void
      {
         this.var_2022 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2025;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2025 = param1;
      }
      
      public function get groupID() : String
      {
         return this.var_2024;
      }
      
      public function set groupID(param1:String) : void
      {
         this.var_2024 = param1;
      }
      
      public function get groupStatus() : int
      {
         return this.var_2021;
      }
      
      public function set groupStatus(param1:int) : void
      {
         this.var_2021 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2020;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2020 = param1;
      }
   }
}
