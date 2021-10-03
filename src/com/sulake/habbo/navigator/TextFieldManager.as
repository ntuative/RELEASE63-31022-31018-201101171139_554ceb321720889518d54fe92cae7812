package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var var_68:ITextFieldWindow;
      
      private var var_546:Boolean;
      
      private var var_1300:String = "";
      
      private var var_1580:int;
      
      private var var_1579:Function;
      
      private var var_2151:String = "";
      
      private var var_118:IWindowContainer;
      
      private var var_2150:Boolean;
      
      private var _orgTextBackgroundColor:uint;
      
      private var var_2152:uint;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         this._navigator = param1;
         this.var_68 = param2;
         this.var_1580 = param3;
         this.var_1579 = param4;
         if(param5 != null)
         {
            this.var_546 = true;
            this.var_1300 = param5;
            this.var_68.text = param5;
         }
         Util.setProcDirectly(this.var_68,this.onInputClick);
         this.var_68.addEventListener(WindowKeyboardEvent.const_148,this.checkEnterPress);
         this.var_68.addEventListener(WindowEvent.const_108,this.checkMaxLen);
         this.var_2150 = this.var_68.textBackground;
         this._orgTextBackgroundColor = this.var_68.textBackgroundColor;
         this.var_2152 = this.var_68.textColor;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!this.isInputValid())
         {
            this.displayError(param1);
            return false;
         }
         this.restoreBackground();
         return true;
      }
      
      public function restoreBackground() : void
      {
         this.var_68.textBackground = this.var_2150;
         this.var_68.textBackgroundColor = this._orgTextBackgroundColor;
         this.var_68.textColor = this.var_2152;
      }
      
      public function displayError(param1:String) : void
      {
         this.var_68.textBackground = true;
         this.var_68.textBackgroundColor = 4294021019;
         this.var_68.textColor = 4278190080;
         if(this.var_118 == null)
         {
            this.var_118 = IWindowContainer(this._navigator.getXmlWindow("nav_error_popup"));
            this._navigator.refreshButton(this.var_118,"popup_arrow_down",true,null,0);
            IWindowContainer(this.var_68.parent).addChild(this.var_118);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_118.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         this.var_118.findChildByName("border").width = _loc2_.width + 15;
         this.var_118.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         this.var_68.getLocalPosition(_loc3_);
         this.var_118.x = _loc3_.x;
         this.var_118.y = _loc3_.y - this.var_118.height + 3;
         var _loc4_:IWindow = this.var_118.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_118.width / 2 - _loc4_.width / 2;
         this.var_118.x += (this.var_68.width - this.var_118.width) / 2;
         this.var_118.visible = true;
      }
      
      public function goBackToInitialState() : void
      {
         this.clearErrors();
         if(this.var_1300 != null)
         {
            this.var_68.text = this.var_1300;
            this.var_546 = true;
         }
         else
         {
            this.var_68.text = "";
            this.var_546 = false;
         }
      }
      
      public function getText() : String
      {
         if(this.var_546)
         {
            return this.var_2151;
         }
         return this.var_68.text;
      }
      
      public function setText(param1:String) : void
      {
         this.var_546 = false;
         this.var_68.text = param1;
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_118 != null)
         {
            this.var_118.visible = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return this.var_68;
      }
      
      private function isInputValid() : Boolean
      {
         return !this.var_546 && Util.trim(this.getText()).length > 2;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_163)
         {
            return;
         }
         if(!this.var_546)
         {
            return;
         }
         this.var_68.text = this.var_2151;
         this.var_546 = false;
         this.restoreBackground();
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(this.var_1579 != null)
            {
               this.var_1579();
            }
         }
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = this.var_68.text;
         if(_loc2_.length > this.var_1580)
         {
            this.var_68.text = _loc2_.substring(0,this.var_1580);
         }
      }
   }
}
