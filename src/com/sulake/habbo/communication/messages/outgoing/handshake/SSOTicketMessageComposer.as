package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SSOTicketMessageComposer implements IMessageComposer
   {
       
      
      private var _message:Array;
      
      public function SSOTicketMessageComposer(param1:String)
      {
         super();
         this._message = new Array();
         this._message.push(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return this._message;
      }
   }
}
