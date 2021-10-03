package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2231:int;
      
      private var var_2229:int;
      
      private var var_2230:String;
      
      private var var_2228:int;
      
      private var var_2227:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2231 = param1;
         this.var_2229 = param2;
         this.var_2230 = param3;
         this.var_2228 = param4;
         this.var_2227 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2231,this.var_2229,this.var_2230,this.var_2228,int(this.var_2227)];
      }
      
      public function dispose() : void
      {
      }
   }
}
