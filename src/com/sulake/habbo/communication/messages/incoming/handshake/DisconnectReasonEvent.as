package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1862:int = 0;
      
      public static const const_1505:int = 1;
      
      public static const const_1525:int = 2;
      
      public static const const_1761:int = 3;
      
      public static const const_1754:int = 4;
      
      public static const const_1766:int = 5;
      
      public static const const_1589:int = 10;
      
      public static const const_1741:int = 11;
      
      public static const const_1747:int = 12;
      
      public static const const_1751:int = 13;
      
      public static const const_1666:int = 16;
      
      public static const const_1867:int = 17;
      
      public static const const_1677:int = 18;
      
      public static const const_1842:int = 19;
      
      public static const const_1798:int = 20;
      
      public static const const_1871:int = 22;
      
      public static const const_1674:int = 23;
      
      public static const const_1684:int = 24;
      
      public static const const_1811:int = 25;
      
      public static const const_1755:int = 26;
      
      public static const const_1742:int = 27;
      
      public static const const_1781:int = 28;
      
      public static const const_1858:int = 29;
      
      public static const const_1837:int = 100;
      
      public static const const_1776:int = 101;
      
      public static const const_1881:int = 102;
      
      public static const const_1765:int = 103;
      
      public static const const_1876:int = 104;
      
      public static const const_1774:int = 105;
      
      public static const const_1709:int = 106;
      
      public static const const_1705:int = 107;
      
      public static const const_1821:int = 108;
      
      public static const const_1661:int = 109;
      
      public static const const_1797:int = 110;
      
      public static const const_1758:int = 111;
      
      public static const const_1680:int = 112;
      
      public static const const_1692:int = 113;
      
      public static const const_1670:int = 114;
      
      public static const const_1734:int = 115;
      
      public static const const_1681:int = 116;
      
      public static const const_1671:int = 117;
      
      public static const const_1803:int = 118;
      
      public static const const_1817:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1505:
            case const_1589:
               return "banned";
            case const_1525:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
