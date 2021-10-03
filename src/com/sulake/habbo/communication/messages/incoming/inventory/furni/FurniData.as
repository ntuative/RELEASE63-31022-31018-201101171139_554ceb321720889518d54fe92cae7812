package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2208:int;
      
      private var var_1234:String;
      
      private var _objId:int;
      
      private var var_1815:int;
      
      private var _category:int;
      
      private var var_1938:String;
      
      private var var_2205:Boolean;
      
      private var var_2206:Boolean;
      
      private var var_2207:Boolean;
      
      private var var_2067:Boolean;
      
      private var var_2204:int;
      
      private var var_1324:int;
      
      private var var_1834:String = "";
      
      private var var_2627:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2208 = param1;
         this.var_1234 = param2;
         this._objId = param3;
         this.var_1815 = param4;
         this._category = param5;
         this.var_1938 = param6;
         this.var_2205 = param7;
         this.var_2206 = param8;
         this.var_2207 = param9;
         this.var_2067 = param10;
         this.var_2204 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1834 = param1;
         this.var_1324 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2208;
      }
      
      public function get itemType() : String
      {
         return this.var_1234;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1815;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1938;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2205;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2206;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2207;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2067;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2204;
      }
      
      public function get slotId() : String
      {
         return this.var_1834;
      }
      
      public function get songId() : int
      {
         return this.var_2627;
      }
      
      public function get extra() : int
      {
         return this.var_1324;
      }
   }
}
