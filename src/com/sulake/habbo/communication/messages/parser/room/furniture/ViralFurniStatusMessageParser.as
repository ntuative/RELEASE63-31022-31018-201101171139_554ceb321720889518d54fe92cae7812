package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_179:String;
      
      private var var_356:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _status:int;
      
      private var var_1249:String;
      
      private var var_2032:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_179;
      }
      
      public function get objectId() : int
      {
         return this.var_356;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get shareId() : String
      {
         return this.var_1249;
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2032;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_179 = "xmas10";
         this.var_356 = param1.readInteger();
         this._status = param1.readInteger();
         this.var_1249 = param1.readString();
         this.var_2032 = param1.readString();
         return true;
      }
   }
}
