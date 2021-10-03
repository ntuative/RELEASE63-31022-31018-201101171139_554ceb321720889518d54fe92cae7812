package com.sulake.habbo.communication.messages.parser.moderation
{
   public class IssueMessageData
   {
      
      public static const const_154:int = 1;
      
      public static const const_363:int = 2;
      
      public static const const_1368:int = 3;
       
      
      private var var_2598:int;
      
      private var _state:int;
      
      private var var_1417:int;
      
      private var _reportedCategoryId:int;
      
      private var var_1736:int;
      
      private var var_2633:int;
      
      private var var_2636:int = 0;
      
      private var var_2630:int;
      
      private var var_2635:String;
      
      private var var_1368:int;
      
      private var var_1757:String;
      
      private var var_2288:int;
      
      private var var_2629:String;
      
      private var _message:String;
      
      private var var_2046:int;
      
      private var var_817:String;
      
      private var var_1628:int;
      
      private var var_2632:String;
      
      private var var_304:int;
      
      private var var_2634:String;
      
      private var var_2631:String;
      
      private var var_2108:int;
      
      private var var_2082:int;
      
      public function IssueMessageData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:int, param12:String, param13:String, param14:int, param15:String, param16:int, param17:String, param18:int, param19:String, param20:String, param21:int, param22:int)
      {
         super();
         this.var_2598 = param1;
         this._state = param2;
         this.var_1417 = param3;
         this._reportedCategoryId = param4;
         this.var_1736 = param5;
         this.var_2633 = param6;
         this.var_2630 = param7;
         this.var_2635 = param8;
         this.var_1368 = param9;
         this.var_1757 = param10;
         this.var_2288 = param11;
         this.var_2629 = param12;
         this._message = param13;
         this.var_2046 = param14;
         this.var_817 = param15;
         this.var_1628 = param16;
         this.var_2632 = param17;
         this.var_304 = param18;
         this.var_2634 = param19;
         this.var_2631 = param20;
         this.var_2108 = param21;
         this.var_2082 = param22;
      }
      
      public function get issueId() : int
      {
         return this.var_2598;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1417;
      }
      
      public function get reportedCategoryId() : int
      {
         return this._reportedCategoryId;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1736;
      }
      
      public function get priority() : int
      {
         return this.var_2633 + this.var_2636;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2630;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2635;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1368;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1757;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2288;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2629;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2046;
      }
      
      public function get roomName() : String
      {
         return this.var_817;
      }
      
      public function get roomType() : int
      {
         return this.var_1628;
      }
      
      public function get flatType() : String
      {
         return this.var_2632;
      }
      
      public function get flatId() : int
      {
         return this.var_304;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2634;
      }
      
      public function get roomResources() : String
      {
         return this.var_2631;
      }
      
      public function get unitPort() : int
      {
         return this.var_2108;
      }
      
      public function get worldId() : int
      {
         return this.var_2082;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2636 = param1;
      }
      
      public function getOpenTime(param1:int) : String
      {
         var _loc2_:int = (param1 - this.var_1736) / 1000;
         var _loc3_:int = _loc2_ % 60;
         var _loc4_:int = _loc2_ / 60;
         var _loc5_:int = _loc4_ % 60;
         var _loc6_:int = _loc4_ / 60;
         var _loc7_:String = _loc3_ < 10 ? "0" + _loc3_ : "" + _loc3_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         var _loc9_:String = _loc6_ < 10 ? "0" + _loc6_ : "" + _loc6_;
         return _loc9_ + ":" + _loc8_ + ":" + _loc7_;
      }
   }
}
