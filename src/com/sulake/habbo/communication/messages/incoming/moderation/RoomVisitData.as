package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1800:Boolean;
      
      private var _roomId:int;
      
      private var var_817:String;
      
      private var var_1968:int;
      
      private var var_1967:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1800 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_817 = param1.readString();
         this.var_1968 = param1.readInteger();
         this.var_1967 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1800;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_817;
      }
      
      public function get enterHour() : int
      {
         return this.var_1968;
      }
      
      public function get enterMinute() : int
      {
         return this.var_1967;
      }
   }
}
