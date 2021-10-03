package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1060:String = "M";
      
      public static const const_1524:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_173:Number = 0;
      
      private var var_172:Number = 0;
      
      private var var_253:int = 0;
      
      private var _name:String = "";
      
      private var var_2645:int = 0;
      
      private var var_862:String = "";
      
      private var var_609:String = "";
      
      private var var_2022:String = "";
      
      private var var_2023:int;
      
      private var var_2025:int = 0;
      
      private var var_2024:String = "";
      
      private var var_2021:int = 0;
      
      private var var_2020:int = 0;
      
      private var var_2646:String = "";
      
      private var var_174:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_174 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_174)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_173;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_174)
         {
            this.var_173 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_172;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_174)
         {
            this.var_172 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_253;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_174)
         {
            this.var_253 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_174)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2645;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_174)
         {
            this.var_2645 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_862;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_174)
         {
            this.var_862 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_609;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_174)
         {
            this.var_609 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2022;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_174)
         {
            this.var_2022 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2023;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_174)
         {
            this.var_2023 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2025;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_174)
         {
            this.var_2025 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2024;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_174)
         {
            this.var_2024 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2021;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_174)
         {
            this.var_2021 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2020;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_174)
         {
            this.var_2020 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2646;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_174)
         {
            this.var_2646 = param1;
         }
      }
   }
}
