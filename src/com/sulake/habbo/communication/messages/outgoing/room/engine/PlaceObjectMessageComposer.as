package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_356:int;
      
      private var var_2251:int;
      
      private var var_2250:String;
      
      private var _x:int = 0;
      
      private var var_173:int = 0;
      
      private var var_253:int = 0;
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_356 = param1;
         this.var_2251 = param2;
         this.var_2250 = param3;
         this._x = param4;
         this.var_173 = param5;
         this.var_253 = param6;
         this._roomId = param7;
         this._roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(this.var_2251)
         {
            case RoomObjectCategoryEnum.OBJECT_CATEGORY_FURNITURE:
               return [this.var_356 + " " + this._x + " " + this.var_173 + " " + this.var_253];
            case RoomObjectCategoryEnum.const_27:
               return [this.var_356 + " " + this.var_2250];
            default:
               return [];
         }
      }
   }
}
