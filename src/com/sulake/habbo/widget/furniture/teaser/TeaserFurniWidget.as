package com.sulake.habbo.widget.furniture.teaser
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetTeaserDataUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetConversionPointMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetViralFurniMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   
   public class TeaserFurniWidget extends RoomWidgetBase
   {
       
      
      private var var_128:IHabboConfigurationManager;
      
      private var _window:IFrameWindow;
      
      private var var_1247:int = -1;
      
      private var _status:int = -1;
      
      private var var_1249:String;
      
      private var var_356:int = -1;
      
      private var var_1248:Array;
      
      private var _imageUrlPath:String;
      
      private var var_179:String;
      
      private const const_1614:int = 0;
      
      private const const_1618:int = 1;
      
      private const const_1616:int = 2;
      
      private const const_1617:int = 3;
      
      private const const_1898:int = 0;
      
      private const const_1902:int = 1;
      
      private const const_1901:int = 2;
      
      private const const_1903:int = 3;
      
      private const const_1900:int = 4;
      
      private const const_1942:int = 5;
      
      private const const_1619:String = "deco_img";
      
      private const const_1615:String = "dialog_bg";
      
      private const const_1905:String = "%campaign%_dialog_bg.png";
      
      private const const_395:String = "%campaign%_gift_package.png";
      
      private const const_1899:String = "%campaign%_gift_content.png";
      
      private const const_1904:String = "%campaign%_friend_gift_package.png";
      
      public function TeaserFurniWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         this.var_128 = param4;
         this.var_1248 = new Array();
         this._imageUrlPath = this.var_128.getKey("image.library.url","http://images.habbo.com/c_images/");
         this._imageUrlPath += "viral/";
      }
      
      override public function dispose() : void
      {
         var _loc2_:* = null;
         this.hideInterface();
         var _loc1_:int = 0;
         while(_loc1_ < this.var_1248.length)
         {
            _loc2_ = this.var_1248.pop();
            _loc2_.dispose();
            _loc1_++;
         }
         this.var_128 = null;
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetTeaserDataUpdateEvent.const_459,this.onObjectUpdate);
         param1.addEventListener(RoomWidgetTeaserDataUpdateEvent.const_624,this.onObjectUpdate);
         param1.addEventListener(RoomWidgetTeaserDataUpdateEvent.const_631,this.onObjectUpdate);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetTeaserDataUpdateEvent.const_459,this.onObjectUpdate);
      }
      
      private function onObjectUpdate(param1:RoomWidgetTeaserDataUpdateEvent) : void
      {
         var _loc2_:int = 0;
         var _loc4_:* = null;
         var _loc3_:String = param1.campaignID;
         switch(param1.type)
         {
            case RoomWidgetTeaserDataUpdateEvent.const_459:
               _loc2_ = this.const_1614;
               this.var_1249 = null;
               break;
            case RoomWidgetTeaserDataUpdateEvent.const_631:
               _loc4_ = param1.firstClickUserName;
               if(_loc4_ && _loc4_ != "")
               {
                  _loc2_ = this.const_1617;
                  _localizations.registerParameter("widget.furni.teaser.notify.unlocked.desc","username",_loc4_);
               }
               else
               {
                  _loc2_ = this.const_1616;
               }
               this.var_1249 = null;
               break;
            case RoomWidgetTeaserDataUpdateEvent.const_624:
               _loc2_ = this.const_1618;
               this.var_356 = param1.objectId;
               this.var_1249 = param1.data;
               this._status = param1.status;
               _localizations.registerParameter("notifications.viral_furni.fb.title","realname",param1.ownRealName);
               _localizations.registerParameter("notifications.viral_furni.fb.desc","realname",param1.ownRealName);
               _localizations.registerParameter("widget.furni.teaser.gift.unlocked.desc","username",param1.firstClickUserName);
               break;
            default:
               Logger.log("Error, invalid viral widget update message: " + param1.type);
         }
         if(this._window && (this.var_1247 != _loc2_ || _loc3_ != this.var_179))
         {
            this._window.dispose();
            this._window = null;
         }
         this.var_179 = _loc3_;
         this.var_1247 = _loc2_;
         this.mainWindow;
         this.showInterface();
      }
      
      override public function get mainWindow() : IWindow
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(this.var_1247 == -1)
         {
            return null;
         }
         if(!this._window)
         {
            switch(this.var_1247)
            {
               case this.const_1614:
                  _loc1_ = assets.getAssetByName("notification_teaser") as XmlAsset;
                  _loc2_ = this.const_395;
                  this.sendConversionPoint("viral_" + this.var_179,"client.show.teaser");
                  break;
               case this.const_1618:
                  if(this._status == this.const_1898)
                  {
                     _loc1_ = assets.getAssetByName("notification_gift_locked") as XmlAsset;
                     this.sendConversionPoint("viral_" + this.var_179,"client.show.locked");
                     _loc2_ = this.const_395;
                  }
                  else if(this._status == this.const_1902)
                  {
                     _loc1_ = assets.getAssetByName("notification_gift_unlocked") as XmlAsset;
                     this.sendConversionPoint("viral_" + this.var_179,"client.show.unlocked");
                     _loc2_ = this.const_1899;
                  }
                  else if(this._status == this.const_1901)
                  {
                     _loc1_ = assets.getAssetByName("notification_gift_alert") as XmlAsset;
                     this.sendConversionPoint("viral_" + this.var_179,"client.show.no_fb");
                     _loc3_ = _localizations.getKey("widget.furni.teaser.gift.no_fb.title");
                     _loc4_ = _localizations.getKey("widget.furni.teaser.gift.no_fb.desc");
                     _loc2_ = this.const_395;
                  }
                  else if(this._status == this.const_1903)
                  {
                     _loc1_ = assets.getAssetByName("notification_gift_alert") as XmlAsset;
                     this.sendConversionPoint("viral_" + this.var_179,"client.show.not_enough_fb_friends");
                     _loc3_ = _localizations.getKey("widget.furni.teaser.gift.no_spam.title");
                     _loc4_ = _localizations.getKey("widget.furni.teaser.gift.no_spam.desc");
                     _loc2_ = this.const_395;
                  }
                  else if(this._status == this.const_1900)
                  {
                     _loc1_ = assets.getAssetByName("notification_gift_alert") as XmlAsset;
                     this.sendConversionPoint("viral_" + this.var_179,"client.show.not_enough_fb_friends");
                     _loc3_ = _localizations.getKey("widget.furni.teaser.gift.no_min_fb_friends.title");
                     _loc4_ = _localizations.getKey("widget.furni.teaser.gift.no_min_fb_friends.desc");
                     _loc2_ = this.const_395;
                  }
                  break;
               case this.const_1616:
                  _loc1_ = assets.getAssetByName("notification_gift_received") as XmlAsset;
                  _loc2_ = this.const_1904;
                  break;
               case this.const_1617:
                  _loc1_ = assets.getAssetByName("notification_gift_unlocked_notify") as XmlAsset;
                  _loc2_ = this.const_395;
            }
            if(_loc1_ == null)
            {
               return null;
            }
            this._window = windowManager.buildFromXML(_loc1_.content as XML) as IFrameWindow;
            this._window.header.controls.visible = false;
            this._window.center();
            this._window.visible = false;
            _loc5_ = this.const_1905.replace("%campaign%",this.var_179);
            this.setDecoImage(_loc5_,this.const_1615);
            _loc2_ = _loc2_.replace("%campaign%",this.var_179);
            this.setDecoImage(_loc2_,this.const_1619);
            if(_loc3_)
            {
               _loc6_ = this._window.findChildByName("alert_title") as ITextWindow;
               _loc6_.text = _loc3_;
            }
            if(_loc4_)
            {
               _loc6_ = this._window.findChildByName("alert_desc") as ITextWindow;
               _loc6_.text = _loc4_;
            }
            _loc7_ = this._window.findChildByName("teaser_ok_btn");
            if(_loc7_ != null)
            {
               _loc7_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onTeaserOkButton);
            }
            _loc7_ = this._window.findChildByName("no_fb_btn");
            if(_loc7_ != null)
            {
               _loc7_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onNoFbButton);
            }
            _loc7_ = this._window.findChildByName("received_ok_btn");
            if(_loc7_ != null)
            {
               _loc7_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onReceivedOkButton);
            }
            _loc7_ = this._window.findChildByName("skip_btn");
            if(_loc7_ != null)
            {
               _loc7_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onSkipButton);
            }
            _loc7_ = this._window.findChildByName("post_btn");
            if(_loc7_ != null)
            {
               _loc7_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onPostButton);
            }
            _loc7_ = this._window.findChildByName("open_btn");
            if(_loc7_ != null)
            {
               _loc7_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onOpenButton);
            }
         }
         return this._window;
      }
      
      private function showInterface() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = true;
      }
      
      private function hideInterface() : void
      {
         if(this._window)
         {
            this._window.visible = false;
         }
      }
      
      private function onNoFbButton(param1:WindowEvent) : void
      {
         this.hideInterface();
      }
      
      private function onTeaserOkButton(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(messageListener != null)
         {
            _loc2_ = new RoomWidgetViralFurniMessage(RoomWidgetViralFurniMessage.const_805);
            messageListener.processWidgetMessage(_loc2_);
         }
         this.hideInterface();
      }
      
      private function onReceivedOkButton(param1:WindowEvent) : void
      {
         this.hideInterface();
      }
      
      private function onSkipButton(param1:WindowEvent) : void
      {
         this.sendConversionPoint("viral_" + this.var_179,"client.skip_post");
         this.hideInterface();
      }
      
      private function onPostButton(param1:WindowEvent) : void
      {
         var _loc2_:String = _localizations.getKey("notifications.viral_furni.fb.title");
         var _loc3_:String = _localizations.getKey("notifications.viral_furni.fb.desc");
         this.sendConversionPoint("viral_" + this.var_179,"client.start_post");
         var _loc4_:String = this.var_128.getKey("viral.furni.post_type","feed");
         HabboWebTools.facebookViralGiftPost(_loc2_,_loc3_,this.var_1249,_loc4_);
         this.hideInterface();
      }
      
      private function onOpenButton(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(messageListener != null)
         {
            _loc2_ = new RoomWidgetViralFurniMessage(RoomWidgetViralFurniMessage.const_156);
            _loc2_.objectId = this.var_356;
            messageListener.processWidgetMessage(_loc2_);
         }
         this.hideInterface();
         this.sendConversionPoint("viral_" + this.var_179,"client.open_gift");
      }
      
      private function sendConversionPoint(param1:String, param2:String, param3:String = "") : void
      {
         var _loc4_:* = null;
         if(messageListener != null)
         {
            _loc4_ = new RoomWidgetConversionPointMessage(RoomWidgetConversionPointMessage.const_725,"ViralGift",param1,param2,param3);
            messageListener.processWidgetMessage(_loc4_);
         }
      }
      
      private function setDecoImage(param1:String, param2:String) : void
      {
         var _loc3_:IBitmapWrapperWindow = this._window.findChildByName(param2) as IBitmapWrapperWindow;
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:IAsset = _assets.getAssetByName(param1);
         if(!_loc4_)
         {
            this.var_1248.push(new ImageDownloader(this,_assets,this.var_179,this._imageUrlPath,param1,param2));
            return;
         }
         var _loc5_:BitmapData = (_loc4_.content as BitmapData).clone();
         switch(param2)
         {
            case this.const_1615:
            case this.const_1619:
               _loc3_.bitmap = new BitmapData(_loc3_.width,_loc3_.height,true,0);
               _loc3_.bitmap.copyPixels(_loc5_,_loc5_.rect,new Point(0,_loc3_.height - _loc5_.height),null,null,true);
         }
      }
      
      function onDecoImageReady(param1:ImageDownloader) : void
      {
         if(!this._window || this.var_179 != param1.campaignID)
         {
            return;
         }
         var _loc2_:IAsset = _assets.getAssetByName(param1.imageName);
         if(!_loc2_)
         {
            return;
         }
         this.setDecoImage(param1.imageName,param1.viewElementID);
      }
   }
}
