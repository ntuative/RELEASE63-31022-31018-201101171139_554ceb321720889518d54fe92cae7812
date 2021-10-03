package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2083:String;
      
      private var var_2108:int;
      
      private var var_2082:int;
      
      private var var_2107:String;
      
      private var var_2109:int;
      
      private var var_1700:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2083 = param1.readString();
         this.var_2108 = param1.readInteger();
         this.var_2082 = param1.readInteger();
         this.var_2107 = param1.readString();
         this.var_2109 = param1.readInteger();
         this.var_1700 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2083;
      }
      
      public function get unitPort() : int
      {
         return this.var_2108;
      }
      
      public function get worldId() : int
      {
         return this.var_2082;
      }
      
      public function get castLibs() : String
      {
         return this.var_2107;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2109;
      }
      
      public function get nodeId() : int
      {
         return this.var_1700;
      }
   }
}
