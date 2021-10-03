package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1704:Boolean;
      
      private var var_2418:int;
      
      private var var_368:Boolean;
      
      private var var_1103:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1704;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2418;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1103;
      }
      
      public function get owner() : Boolean
      {
         return this.var_368;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1103 != null)
         {
            this.var_1103.dispose();
            this.var_1103 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1704 = param1.readBoolean();
         if(this.var_1704)
         {
            this.var_2418 = param1.readInteger();
            this.var_368 = param1.readBoolean();
         }
         else
         {
            this.var_1103 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
