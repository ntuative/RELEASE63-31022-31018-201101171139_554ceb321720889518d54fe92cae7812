package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_304:int;
      
      private var var_2112:int;
      
      private var var_2197:Boolean;
      
      private var var_2196:int;
      
      private var _ownerName:String;
      
      private var var_101:RoomData;
      
      private var var_742:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_304 = param1.readInteger();
         this.var_2112 = param1.readInteger();
         this.var_2197 = param1.readBoolean();
         this.var_2196 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_101 = new RoomData(param1);
         this.var_742 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_101 != null)
         {
            this.var_101.dispose();
            this.var_101 = null;
         }
         if(this.var_742 != null)
         {
            this.var_742.dispose();
            this.var_742 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_304;
      }
      
      public function get userCount() : int
      {
         return this.var_2112;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2197;
      }
      
      public function get ownerId() : int
      {
         return this.var_2196;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_101;
      }
      
      public function get event() : RoomData
      {
         return this.var_742;
      }
   }
}
