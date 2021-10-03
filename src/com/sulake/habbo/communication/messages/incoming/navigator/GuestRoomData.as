package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_304:int;
      
      private var var_742:Boolean;
      
      private var var_817:String;
      
      private var _ownerName:String;
      
      private var var_2156:int;
      
      private var var_2112:int;
      
      private var var_2501:int;
      
      private var var_1816:String;
      
      private var var_2499:int;
      
      private var var_2491:Boolean;
      
      private var var_767:int;
      
      private var var_1417:int;
      
      private var var_2500:String;
      
      private var var_787:Array;
      
      private var var_2498:RoomThumbnailData;
      
      private var var_2162:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_787 = new Array();
         super();
         this.var_304 = param1.readInteger();
         this.var_742 = param1.readBoolean();
         this.var_817 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2156 = param1.readInteger();
         this.var_2112 = param1.readInteger();
         this.var_2501 = param1.readInteger();
         this.var_1816 = param1.readString();
         this.var_2499 = param1.readInteger();
         this.var_2491 = param1.readBoolean();
         this.var_767 = param1.readInteger();
         this.var_1417 = param1.readInteger();
         this.var_2500 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_787.push(_loc4_);
            _loc3_++;
         }
         this.var_2498 = new RoomThumbnailData(param1);
         this.var_2162 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_787 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_304;
      }
      
      public function get event() : Boolean
      {
         return this.var_742;
      }
      
      public function get roomName() : String
      {
         return this.var_817;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2156;
      }
      
      public function get userCount() : int
      {
         return this.var_2112;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2501;
      }
      
      public function get description() : String
      {
         return this.var_1816;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2499;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2491;
      }
      
      public function get score() : int
      {
         return this.var_767;
      }
      
      public function get categoryId() : int
      {
         return this.var_1417;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2500;
      }
      
      public function get tags() : Array
      {
         return this.var_787;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2498;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2162;
      }
   }
}
