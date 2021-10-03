package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1533:int;
      
      private var var_1730:int;
      
      private var var_1731:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1730 = param1.readInteger();
         this.var_1533 = param1.readInteger();
         this.var_1731 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1533 = 0;
         this.var_1730 = 0;
         this.var_1731 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1533;
      }
      
      public function get messageId() : int
      {
         return this.var_1730;
      }
      
      public function get timestamp() : String
      {
         return this.var_1731;
      }
   }
}
