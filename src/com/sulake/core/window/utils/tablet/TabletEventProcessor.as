package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2775:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_131 = param1.desktop;
         var_77 = param1.var_1190 as WindowController;
         _lastClickTarget = param1.var_1193 as WindowController;
         var_149 = param1.renderer;
         var_780 = param1.var_1192;
         param2.begin();
         param2.end();
         param1.desktop = var_131;
         param1.var_1190 = var_77;
         param1.var_1193 = _lastClickTarget;
         param1.renderer = var_149;
         param1.var_1192 = var_780;
      }
   }
}
