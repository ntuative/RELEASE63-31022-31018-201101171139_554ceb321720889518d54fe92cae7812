package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomChatlogData
   {
       
      
      private var var_1800:Boolean;
      
      private var _roomId:int;
      
      private var var_817:String;
      
      private var var_1801:Array;
      
      public function RoomChatlogData(param1:IMessageDataWrapper)
      {
         this.var_1801 = new Array();
         super();
         this.var_1800 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_817 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_1801.push(new ChatlineData(param1));
            _loc3_++;
         }
         Logger.log("READ ROOMCHATLOGDATA: " + this.var_1800 + ", " + this._roomId + ", " + this.var_817 + ", " + this.chatlog.length);
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
      
      public function get chatlog() : Array
      {
         return this.var_1801;
      }
   }
}
