package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_609:String;
      
      private var var_862:String;
      
      private var var_2381:String;
      
      private var var_1522:String;
      
      private var var_2382:int;
      
      private var var_2380:String;
      
      private var var_2378:int;
      
      private var var_2377:int;
      
      private var var_2379:int;
      
      private var _respectLeft:int;
      
      private var var_772:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_609 = param1.readString();
         this.var_862 = param1.readString();
         this.var_2381 = param1.readString();
         this.var_1522 = param1.readString();
         this.var_2382 = param1.readInteger();
         this.var_2380 = param1.readString();
         this.var_2378 = param1.readInteger();
         this.var_2377 = param1.readInteger();
         this.var_2379 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_772 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_609;
      }
      
      public function get sex() : String
      {
         return this.var_862;
      }
      
      public function get customData() : String
      {
         return this.var_2381;
      }
      
      public function get realName() : String
      {
         return this.var_1522;
      }
      
      public function get tickets() : int
      {
         return this.var_2382;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2380;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2378;
      }
      
      public function get directMail() : int
      {
         return this.var_2377;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2379;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_772;
      }
   }
}
