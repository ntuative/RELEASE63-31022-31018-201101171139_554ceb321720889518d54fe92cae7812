package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetRespectFailedParser implements IMessageParser
   {
       
      
      private var _requiredDays:int;
      
      private var var_2527:int;
      
      public function PetRespectFailedParser()
      {
         super();
      }
      
      public function get requiredDays() : int
      {
         return this._requiredDays;
      }
      
      public function get avatarAgeInDays() : int
      {
         return this.var_2527;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._requiredDays = param1.readInteger();
         this.var_2527 = param1.readInteger();
         return true;
      }
   }
}
