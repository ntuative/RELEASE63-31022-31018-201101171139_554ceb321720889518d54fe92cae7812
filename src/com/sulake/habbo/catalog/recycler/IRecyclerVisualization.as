package com.sulake.habbo.catalog.recycler
{
   public interface IRecyclerVisualization
   {
       
      
      function method_9() : void;
      
      function displayProcessingView() : void;
      
      function displayFinishedView() : void;
      
      function displayDisabledView() : void;
      
      function displayTimeOutView(param1:int) : void;
      
      function updateSlots() : void;
      
      function updateRecycleButton(param1:Boolean) : void;
   }
}
