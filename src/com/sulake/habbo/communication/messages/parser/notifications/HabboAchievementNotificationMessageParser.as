package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1381:int;
      
      private var var_1718:int;
      
      private var var_2275:int;
      
      private var var_1772:int;
      
      private var var_1380:int;
      
      private var var_2274:String = "";
      
      private var var_2273:String = "";
      
      private var var_2276:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1381 = param1.readInteger();
         this.var_2274 = param1.readString();
         this.var_1718 = param1.readInteger();
         this.var_2275 = param1.readInteger();
         this.var_1772 = param1.readInteger();
         this.var_1380 = param1.readInteger();
         this.var_2276 = param1.readInteger();
         this.var_2273 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1381;
      }
      
      public function get points() : int
      {
         return this.var_1718;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2275;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1772;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1380;
      }
      
      public function get badgeID() : String
      {
         return this.var_2274;
      }
      
      public function get achievementID() : int
      {
         return this.var_2276;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2273;
      }
   }
}
