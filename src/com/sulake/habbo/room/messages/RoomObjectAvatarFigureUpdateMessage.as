package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_609:String;
      
      private var var_2435:String;
      
      private var var_932:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_609 = param1;
         this.var_932 = param2;
         this.var_2435 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_609;
      }
      
      public function get race() : String
      {
         return this.var_2435;
      }
      
      public function get gender() : String
      {
         return this.var_932;
      }
   }
}
