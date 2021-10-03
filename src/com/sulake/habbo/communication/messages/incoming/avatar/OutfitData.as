package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1834:int;
      
      private var var_2253:String;
      
      private var var_932:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1834 = param1.readInteger();
         this.var_2253 = param1.readString();
         this.var_932 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1834;
      }
      
      public function get figureString() : String
      {
         return this.var_2253;
      }
      
      public function get gender() : String
      {
         return this.var_932;
      }
   }
}
