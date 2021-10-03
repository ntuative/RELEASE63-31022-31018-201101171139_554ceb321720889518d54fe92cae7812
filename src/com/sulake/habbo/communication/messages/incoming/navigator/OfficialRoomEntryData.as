package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1072:int = 1;
      
      public static const const_715:int = 2;
      
      public static const const_720:int = 3;
      
      public static const const_1503:int = 4;
       
      
      private var _index:int;
      
      private var var_2300:String;
      
      private var var_2298:String;
      
      private var var_2299:Boolean;
      
      private var var_2296:String;
      
      private var var_880:String;
      
      private var var_2297:int;
      
      private var var_2112:int;
      
      private var _type:int;
      
      private var var_2037:String;
      
      private var var_854:GuestRoomData;
      
      private var var_853:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2300 = param1.readString();
         this.var_2298 = param1.readString();
         this.var_2299 = param1.readInteger() == 1;
         this.var_2296 = param1.readString();
         this.var_880 = param1.readString();
         this.var_2297 = param1.readInteger();
         this.var_2112 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1072)
         {
            this.var_2037 = param1.readString();
         }
         else if(this._type == const_720)
         {
            this.var_853 = new PublicRoomData(param1);
         }
         else if(this._type == const_715)
         {
            this.var_854 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_854 != null)
         {
            this.var_854.dispose();
            this.var_854 = null;
         }
         if(this.var_853 != null)
         {
            this.var_853.dispose();
            this.var_853 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2300;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2298;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2299;
      }
      
      public function get picText() : String
      {
         return this.var_2296;
      }
      
      public function get picRef() : String
      {
         return this.var_880;
      }
      
      public function get folderId() : int
      {
         return this.var_2297;
      }
      
      public function get tag() : String
      {
         return this.var_2037;
      }
      
      public function get userCount() : int
      {
         return this.var_2112;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_854;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_853;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1072)
         {
            return 0;
         }
         if(this.type == const_715)
         {
            return this.var_854.maxUserCount;
         }
         if(this.type == const_720)
         {
            return this.var_853.maxUsers;
         }
         return 0;
      }
   }
}
