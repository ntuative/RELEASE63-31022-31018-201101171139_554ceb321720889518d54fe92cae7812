package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_326:int = 1;
      
      public static const const_245:int = 2;
      
      public static const const_290:int = 3;
      
      public static const const_379:int = 4;
      
      public static const const_214:int = 5;
      
      public static const const_361:int = 1;
      
      public static const const_731:int = 2;
      
      public static const const_829:int = 3;
      
      public static const const_589:int = 4;
      
      public static const const_205:int = 5;
      
      public static const const_761:int = 6;
      
      public static const const_820:int = 7;
      
      public static const const_242:int = 8;
      
      public static const const_342:int = 9;
      
      public static const const_1736:int = 10;
      
      public static const const_732:int = 11;
      
      public static const const_476:int = 12;
       
      
      private var var_407:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_407 = new Array();
         this.var_407.push(new Tab(this._navigator,const_326,const_476,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_462));
         this.var_407.push(new Tab(this._navigator,const_245,const_361,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_462));
         this.var_407.push(new Tab(this._navigator,const_379,const_732,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_967));
         this.var_407.push(new Tab(this._navigator,const_290,const_205,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_462));
         this.var_407.push(new Tab(this._navigator,const_214,const_242,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_615));
         this.setSelectedTab(const_326);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_379;
      }
      
      public function get tabs() : Array
      {
         return this.var_407;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_407)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_407)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_407)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
