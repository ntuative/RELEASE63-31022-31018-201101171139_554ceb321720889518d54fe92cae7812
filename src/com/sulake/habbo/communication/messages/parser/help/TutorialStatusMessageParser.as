package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1081:Boolean;
      
      private var var_1080:Boolean;
      
      private var var_1320:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1081;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1080;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1320;
      }
      
      public function flush() : Boolean
      {
         this.var_1081 = false;
         this.var_1080 = false;
         this.var_1320 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1081 = param1.readBoolean();
         this.var_1080 = param1.readBoolean();
         this.var_1320 = param1.readBoolean();
         return true;
      }
   }
}
