package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_596:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_613:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_596);
         this.var_613 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_613;
      }
   }
}
