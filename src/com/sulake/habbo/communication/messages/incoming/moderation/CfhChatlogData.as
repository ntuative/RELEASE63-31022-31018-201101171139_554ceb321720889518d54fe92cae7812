package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1536:int;
      
      private var var_2045:int;
      
      private var var_1368:int;
      
      private var var_2046:int;
      
      private var var_101:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1536 = param1.readInteger();
         this.var_2045 = param1.readInteger();
         this.var_1368 = param1.readInteger();
         this.var_2046 = param1.readInteger();
         this.var_101 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1536);
      }
      
      public function get callId() : int
      {
         return this.var_1536;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2045;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1368;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2046;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_101;
      }
   }
}
