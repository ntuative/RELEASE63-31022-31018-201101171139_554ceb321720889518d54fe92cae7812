package com.sulake.core.window.components
{
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.graphics.WindowRedrawFlag;
   import com.sulake.core.window.utils.IMargins;
   import com.sulake.core.window.utils.PropertyDefaults;
   import com.sulake.core.window.utils.PropertyStruct;
   import com.sulake.core.window.utils.TextFieldCache;
   import com.sulake.core.window.utils.TextMargins;
   import com.sulake.core.window.utils.TextStyle;
   import com.sulake.core.window.utils.TextStyleManager;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class LabelTextController extends WindowController implements ILabelWindow, ILocalizable
   {
       
      
      private var var_499:Object = null;
      
      private var var_412:String = "regular";
      
      private var _text:String = "";
      
      private var var_115:Boolean = false;
      
      private var var_36:TextMargins;
      
      private var var_2595:Number = 0;
      
      private var var_2594:Number = 0;
      
      private var var_1408:Boolean = false;
      
      public function LabelTextController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         TextStyleManager.events.addEventListener(Event.CHANGE,this.onTextStyleChanged);
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
      }
      
      public function get antiAliasType() : String
      {
         return this.textField.antiAliasType;
      }
      
      public function get autoSize() : String
      {
         return this.textField.autoSize;
      }
      
      public function get bold() : Boolean
      {
         return this.textField.defaultTextFormat.bold;
      }
      
      public function get border() : Boolean
      {
         return this.textField.border;
      }
      
      public function get borderColor() : uint
      {
         return this.textField.borderColor;
      }
      
      public function get defaultTextFormat() : TextFormat
      {
         return this.textField.defaultTextFormat;
      }
      
      public function get embedFonts() : Boolean
      {
         return this.textField.embedFonts;
      }
      
      public function get fontFace() : String
      {
         return this.textField.defaultTextFormat.font;
      }
      
      public function get fontSize() : uint
      {
         return this.textField.defaultTextFormat.size == null ? 12 : uint(uint(this.textField.defaultTextFormat.size));
      }
      
      public function get gridFitType() : String
      {
         return this.textField.gridFitType;
      }
      
      public function get italic() : Boolean
      {
         return this.textField.defaultTextFormat.italic;
      }
      
      public function get kerning() : Boolean
      {
         return this.textField.defaultTextFormat.kerning;
      }
      
      public function get length() : int
      {
         return this._text.length;
      }
      
      public function get margins() : IMargins
      {
         if(!this.var_36)
         {
            this.var_36 = new TextMargins(0,0,0,0,this.setTextMargins);
         }
         return this.var_36;
      }
      
      public function get maxChars() : int
      {
         return this.textField.maxChars;
      }
      
      public function get sharpness() : Number
      {
         return this.textField.sharpness;
      }
      
      public function get spacing() : Number
      {
         return Number(this.textField.defaultTextFormat.letterSpacing);
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get textColor() : uint
      {
         return uint(this.var_499);
      }
      
      public function get textBackground() : Boolean
      {
         return background;
      }
      
      public function get textBackgroundColor() : uint
      {
         return color;
      }
      
      public function get textHeight() : Number
      {
         return this.var_2595;
      }
      
      public function get textWidth() : Number
      {
         return this.var_2594;
      }
      
      public function get textStyle() : TextStyle
      {
         return TextStyleManager.getStyle(this.var_412);
      }
      
      public function get thickness() : Number
      {
         return this.textField.thickness;
      }
      
      public function get underline() : Boolean
      {
         return this.textField.defaultTextFormat.underline;
      }
      
      public function get drawOffsetX() : int
      {
         return !!this.var_36 ? int(this.var_36.left) : 0;
      }
      
      public function get drawOffsetY() : int
      {
         return !!this.var_36 ? int(this.var_36.top) : 0;
      }
      
      public function get hasTextColor() : Boolean
      {
         return this.var_499 != null;
      }
      
      protected function get textField() : TextField
      {
         var _loc1_:TextField = TextFieldCache.getTextFieldByStyleName(this.var_412);
         if(_loc1_)
         {
            _loc1_.text = this._text;
            if(this.var_499 != null)
            {
               _loc1_.textColor = uint(this.var_499);
            }
         }
         return _loc1_;
      }
      
      public function set text(param1:String) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this.var_115)
         {
            context.removeLocalizationListener(var_20.slice(2,var_20.indexOf("}")),this);
            this.var_115 = false;
         }
         var_20 = param1;
         if(var_20.charAt(0) == "$" && var_20.charAt(1) == "{")
         {
            context.registerLocalizationListener(var_20.slice(2,var_20.indexOf("}")),this);
            this.var_115 = true;
         }
         else
         {
            this._text = param1;
            this.refresh();
         }
      }
      
      override public function set caption(param1:String) : void
      {
         this.text = param1;
      }
      
      public function set localization(param1:String) : void
      {
         if(param1 != null)
         {
            this._text = param1;
            this.refresh();
         }
      }
      
      public function set textStyle(param1:TextStyle) : void
      {
         if(this.var_412 != param1.name)
         {
            this.var_412 = param1.name;
            this.refresh();
         }
      }
      
      public function set textColor(param1:uint) : void
      {
         if(param1 != this.var_499)
         {
            this.var_499 = param1;
            this.refresh();
         }
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            TextStyleManager.events.removeEventListener(Event.CHANGE,this.onTextStyleChanged);
            if(this.var_115)
            {
               this.var_115 = false;
               context.removeLocalizationListener(var_20.slice(2,var_20.indexOf("}")),this);
            }
            if(this.var_36)
            {
               this.var_36.dispose();
               this.var_36 = null;
            }
            super.dispose();
         }
      }
      
      private function refresh(param1:Boolean = false) : void
      {
         if(this.var_1408)
         {
            return;
         }
         this.var_1408 = true;
         var _loc2_:TextField = this.textField;
         if(!_loc2_)
         {
            this.var_1408 = false;
            return;
         }
         this.var_2594 = _loc2_.textWidth;
         this.var_2595 = _loc2_.textHeight;
         var _loc3_:int = !!this.var_36 ? int(this.var_36.left + this.var_36.right) : 0;
         var _loc4_:int = !!this.var_36 ? int(this.var_36.top + this.var_36.bottom) : 0;
         var _loc5_:int = 0 - _loc3_;
         var _loc6_:int = 0 - _loc4_;
         var _loc7_:int = Math.floor(_loc2_.width) + (!!_loc2_.border ? 1 : 0);
         var _loc8_:Boolean = false;
         if(_loc7_ != _loc5_)
         {
            setRectangle(var_11.x,var_11.y,_loc7_ + _loc3_,Math.floor(_loc2_.height) + _loc4_);
            _loc8_ = true;
         }
         if(_loc2_.height + (!!_loc2_.border ? 1 : 0) < _loc6_)
         {
            _loc2_.height = _loc6_ - (!!_loc2_.border ? 1 : 0);
         }
         else if(_loc2_.height + (!!_loc2_.border ? 1 : 0) > _loc6_)
         {
            setRectangle(var_11.x,var_11.y,_loc7_ + _loc3_,Math.floor(_loc2_.height) + _loc4_);
            _loc8_ = true;
         }
         this.var_1408 = false;
         var_15.invalidate(this,var_11,WindowRedrawFlag.const_61);
         if(!_loc8_ && !param1)
         {
            dispatchEvent(new WindowEvent(WindowEvent.const_44,this,null));
         }
      }
      
      private function setTextMargins(param1:IMargins) : void
      {
         if(param1 && param1 != this.var_36)
         {
            if(this.var_36)
            {
               this.var_36.assign(param1.left,param1.top,param1.right,param1.bottom,this.setTextMargins);
            }
            else
            {
               this.var_36 = new TextMargins(param1.left,param1.top,param1.right,param1.bottom,this.setTextMargins);
            }
         }
         this.refresh();
      }
      
      private function onTextStyleChanged(param1:Event) : void
      {
         this.refresh();
      }
      
      private function setTextMarginMap(param1:Map) : void
      {
         if(this.var_36)
         {
            this.var_36.assign(int(param1["left"]),int(param1["top"]),int(param1["right"]),int(param1["bottom"]),this.setTextMargins);
         }
         else
         {
            this.var_36 = new TextMargins(int(param1["left"]),int(param1["top"]),int(param1["right"]),int(param1["bottom"]),this.setTextMargins);
         }
         this.refresh();
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         if(this.var_412 != TextStyleManager.const_162)
         {
            _loc1_.push(new PropertyStruct(PropertyDefaults.const_519,this.var_412,PropertyStruct.const_53,true,PropertyDefaults.const_623));
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_958);
         }
         _loc1_.push(new PropertyStruct(PropertyDefaults.const_718,this.var_499,PropertyStruct.const_141,this.var_499 != TextStyleManager.getStyle(this.var_412).color));
         if(this.var_36)
         {
            if(this.var_36.left != PropertyDefaults.const_605)
            {
               _loc1_.push(new PropertyStruct(PropertyDefaults.const_310,this.var_36.left,PropertyStruct.const_36,true));
            }
            else
            {
               _loc1_.push(PropertyDefaults.const_544);
            }
            if(this.var_36.top != PropertyDefaults.const_756)
            {
               _loc1_.push(new PropertyStruct(PropertyDefaults.const_281,this.var_36.top,PropertyStruct.const_36,true));
            }
            else
            {
               _loc1_.push(PropertyDefaults.const_479);
            }
            if(this.var_36.right != PropertyDefaults.const_594)
            {
               _loc1_.push(new PropertyStruct(PropertyDefaults.const_293,this.var_36.right,PropertyStruct.const_36,true));
            }
            else
            {
               _loc1_.push(PropertyDefaults.const_493);
            }
            if(this.var_36.bottom != PropertyDefaults.const_651)
            {
               _loc1_.push(new PropertyStruct(PropertyDefaults.const_283,this.var_36.bottom,PropertyStruct.const_36,true));
            }
            else
            {
               _loc1_.push(PropertyDefaults.const_529);
            }
         }
         else
         {
            _loc1_.push(PropertyDefaults.const_544);
            _loc1_.push(PropertyDefaults.const_479);
            _loc1_.push(PropertyDefaults.const_493);
            _loc1_.push(PropertyDefaults.const_529);
         }
         return _loc1_;
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case "text_style":
                  this.textStyle = TextStyleManager.getStyle(_loc2_.value as String);
                  break;
               case "text_color":
                  this.var_499 = _loc2_.value as uint;
                  break;
               case "margins":
                  this.setTextMarginMap(_loc2_.value as Map);
                  break;
               case "margin_left":
                  if(this.var_36 || _loc2_.valid)
                  {
                     this.margins.left = _loc2_.value as int;
                  }
                  break;
               case "margin_top":
                  if(this.var_36 || _loc2_.valid)
                  {
                     this.margins.top = _loc2_.value as int;
                  }
                  break;
               case "margin_right":
                  if(this.var_36 || _loc2_.valid)
                  {
                     this.margins.right = _loc2_.value as int;
                  }
                  break;
               case "margin_bottom":
                  if(this.var_36 || _loc2_.valid)
                  {
                     this.margins.bottom = _loc2_.value as int;
                  }
                  break;
            }
         }
         super.properties = param1;
      }
   }
}
