package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_2726:int;
      
      private var var_326:RoomEventViewCtrl;
      
      private var var_236:Timer;
      
      private var var_164:RoomSettingsCtrl;
      
      private var var_237:RoomThumbnailCtrl;
      
      private var var_1141:TagRenderer;
      
      private var var_279:IWindowContainer;
      
      private var var_385:IWindowContainer;
      
      private var var_697:IWindowContainer;
      
      private var var_2280:IWindowContainer;
      
      private var var_2283:IWindowContainer;
      
      private var var_1307:IWindowContainer;
      
      private var var_817:ITextWindow;
      
      private var var_1068:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_849:ITextWindow;
      
      private var var_1305:ITextWindow;
      
      private var var_1065:ITextWindow;
      
      private var var_848:ITextWindow;
      
      private var var_1631:ITextWindow;
      
      private var var_235:IWindowContainer;
      
      private var var_847:IWindowContainer;
      
      private var var_1633:IWindowContainer;
      
      private var var_2285:ITextWindow;
      
      private var var_696:ITextWindow;
      
      private var var_2281:IWindow;
      
      private var var_1306:IContainerButtonWindow;
      
      private var var_1304:IContainerButtonWindow;
      
      private var var_1303:IContainerButtonWindow;
      
      private var var_1309:IContainerButtonWindow;
      
      private var var_1302:IContainerButtonWindow;
      
      private var var_1308:IContainerButtonWindow;
      
      private var var_1630:IButtonWindow;
      
      private var var_1629:IButtonWindow;
      
      private var var_1632:IButtonWindow;
      
      private var var_850:IWindowContainer;
      
      private var var_1301:ITextWindow;
      
      private var var_1067:ITextFieldWindow;
      
      private var var_63:IWindowContainer;
      
      private var var_1066:IButtonWindow;
      
      private var var_851:IButtonWindow;
      
      private var var_2282:String;
      
      private var var_2284:String;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_326 = new RoomEventViewCtrl(this._navigator);
         this.var_164 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_237 = new RoomThumbnailCtrl(this._navigator);
         this.var_1141 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_164);
         this.var_236 = new Timer(6000,1);
         this.var_236.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_98,this.onToolbarIconState);
         }
         if(this.var_236)
         {
            this.var_236.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_236.reset();
            this.var_236 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_236.reset();
         this.var_326.active = true;
         this.var_164.active = false;
         this.var_237.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_236.reset();
         this.var_164.load(param1);
         this.var_164.active = true;
         this.var_326.active = false;
         this.var_237.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_164.active = true;
         this.var_326.active = false;
         this.var_237.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_236.reset();
         this.var_164.active = false;
         this.var_326.active = false;
         this.var_237.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_990,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_236.reset();
         this.var_326.active = false;
         this.var_164.active = false;
         this.var_237.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_50,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_236.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_236.reset();
         this.var_326.active = false;
         this.var_164.active = false;
         this.var_237.active = false;
         this.refresh();
         if(!this._window.visible)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_50,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            this._window.parent.activate();
         }
         else
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_557,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
         this._window.height = Util.getLowestPoint(this._window);
         this._window.y = this._window.desktop.height - this._window.height - 5;
         Logger.log("MAIN: " + this.var_279.rectangle + ", " + this.var_235.rectangle + ", " + this._window.rectangle);
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_279);
         this.var_279.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_164.refresh(this.var_279);
         this.var_237.refresh(this.var_279);
         Util.moveChildrenToColumn(this.var_279,["room_details","room_buttons"],0,2);
         this.var_279.height = Util.getLowestPoint(this.var_279);
         this.var_279.visible = true;
         Logger.log("XORP: " + this.var_385.visible + ", " + this.var_1307.visible + ", " + this.var_697.visible + ", " + this.var_697.rectangle + ", " + this.var_279.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_235);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_326.refresh(this.var_235);
         if(Util.hasVisibleChildren(this.var_235) && !(this.var_164.active || this.var_237.active))
         {
            Util.moveChildrenToColumn(this.var_235,["event_details","event_buttons"],0,2);
            this.var_235.height = Util.getLowestPoint(this.var_235);
            this.var_235.visible = true;
         }
         else
         {
            this.var_235.visible = false;
         }
         Logger.log("EVENT: " + this.var_235.visible + ", " + this.var_235.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "OutfitView";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_164.active && !this.var_237.active && !this.var_326.active)
         {
            this.var_850.visible = true;
            this.var_1067.text = this.getEmbedData();
         }
         else
         {
            this.var_850.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this.var_63)
         {
            return;
         }
         if(this.var_164.active)
         {
            this.var_63.visible = false;
            return;
         }
         this.var_63.visible = true;
         if(this.var_1066)
         {
            if(this.var_2282 == "exit_homeroom")
            {
               this.var_1066.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_1066.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_851)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_851.visible = _loc1_;
            if(this.var_2284 == "0")
            {
               this.var_851.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_851.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_164.active || this.var_237.active)
         {
            return;
         }
         this.var_817.text = param1.roomName;
         this.var_817.height = this.var_817.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_849.text = param1.description;
         this.var_1141.refreshTags(this.var_385,param1.tags);
         this.var_849.visible = false;
         if(param1.description != "")
         {
            this.var_849.height = this.var_849.textHeight + 5;
            this.var_849.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1304,"facebook_logo_small",_loc3_,null,0);
         this.var_1304.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1306,"thumb_up",_loc4_,null,0);
         this.var_1306.visible = _loc4_;
         this.var_848.visible = !_loc4_;
         this.var_1631.visible = !_loc4_;
         this.var_1631.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_385,"home",param2,null,0);
         this._navigator.refreshButton(this.var_385,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_385,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_817.y,0);
         this.var_385.visible = true;
         this.var_385.height = Util.getLowestPoint(this.var_385);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_385.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_164.active || this.var_237.active)
         {
            return;
         }
         this.var_1068.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1068.height = this.var_1068.textHeight + 5;
         this.var_1305.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1305.height = this.var_1305.textHeight + 5;
         Util.moveChildrenToColumn(this.var_697,["public_space_name","public_space_desc"],this.var_1068.y,0);
         this.var_697.visible = true;
         this.var_697.height = Math.max(86,Util.getLowestPoint(this.var_697));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_326.active)
         {
            return;
         }
         this.var_2285.text = param1.eventName;
         this.var_696.text = param1.eventDescription;
         this.var_1141.refreshTags(this.var_847,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_696.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_696.height = this.var_696.textHeight + 5;
            this.var_696.y = Util.getLowestPoint(this.var_847) + 2;
            this.var_696.visible = true;
         }
         this.var_847.visible = true;
         this.var_847.height = Util.getLowestPoint(this.var_847);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_164.active || this.var_237.active)
         {
            return;
         }
         this.var_1630.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1303.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1309.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1302.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1308.visible = this._navigator.data.canEditRoomSettings && param1;
         this.var_1307.visible = Util.hasVisibleChildren(this.var_1307);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_326.active)
         {
            return;
         }
         this.var_1629.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1632.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1633.visible = Util.hasVisibleChildren(this.var_1633);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
         this._window.setParamFlag(HabboWindowParam.const_57,false);
         this._window.setParamFlag(HabboWindowParam.const_1400,true);
         this._window.visible = false;
         this.var_279 = IWindowContainer(this.find("room_info"));
         this.var_385 = IWindowContainer(this.find("room_details"));
         this.var_697 = IWindowContainer(this.find("public_space_details"));
         this.var_2280 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2283 = IWindowContainer(this.find("rating_cont"));
         this.var_1307 = IWindowContainer(this.find("room_buttons"));
         this.var_817 = ITextWindow(this.find("room_name"));
         this.var_1068 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_849 = ITextWindow(this.find("room_desc"));
         this.var_1305 = ITextWindow(this.find("public_space_desc"));
         this.var_1065 = ITextWindow(this.find("owner_caption"));
         this.var_848 = ITextWindow(this.find("rating_caption"));
         this.var_1631 = ITextWindow(this.find("rating_txt"));
         this.var_235 = IWindowContainer(this.find("event_info"));
         this.var_847 = IWindowContainer(this.find("event_details"));
         this.var_1633 = IWindowContainer(this.find("event_buttons"));
         this.var_2285 = ITextWindow(this.find("event_name"));
         this.var_696 = ITextWindow(this.find("event_desc"));
         this.var_1304 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1306 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2281 = this.find("staff_pick_button");
         this.var_1303 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1309 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1302 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1308 = IContainerButtonWindow(this.find("unmake_home_button"));
         this.var_1630 = IButtonWindow(this.find("room_settings_button"));
         this.var_1629 = IButtonWindow(this.find("create_event_button"));
         this.var_1632 = IButtonWindow(this.find("edit_event_button"));
         this.var_850 = IWindowContainer(this.find("embed_info"));
         this.var_1301 = ITextWindow(this.find("embed_info_txt"));
         this.var_1067 = ITextFieldWindow(this.find("embed_src_txt"));
         this.var_63 = IWindowContainer(this.find("buttons_container"));
         this.var_1066 = IButtonWindow(this.find("exit_room_button"));
         this.var_851 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1303,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1309,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1630,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1302,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1308,this.onUnmakeHomeClick);
         Util.setProcDirectly(this.var_1629,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1632,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1067,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1306,this.onThumbUp);
         Util.setProcDirectly(this.var_2281,this.onStaffPick);
         Util.setProcDirectly(this.var_1304,this.onFacebookLike);
         Util.setProcDirectly(this.var_851,this.onZoomClick);
         Util.setProcDirectly(this.var_1066,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1303,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1309,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1302,"home",true,null,0);
         this._navigator.refreshButton(this.var_1308,"home",true,null,0);
         this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_279,this.onHover);
         Util.setProcDirectly(this.var_235,this.onHover);
         this.var_1065.width = this.var_1065.textWidth;
         Util.moveChildrenToRow(this.var_2280,["owner_caption","owner_name"],this.var_1065.x,this.var_1065.y,3);
         this.var_848.width = this.var_848.textWidth;
         Util.moveChildrenToRow(this.var_2283,["rating_caption","rating_txt"],this.var_848.x,this.var_848.y,3);
         this.var_1301.height = this.var_1301.textHeight + 5;
         Util.moveChildrenToColumn(this.var_850,["embed_info_txt","embed_src_txt"],this.var_1301.y,2);
         this.var_850.height = Util.getLowestPoint(this.var_850) + 5;
         this.var_2726 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_1067.setSelection(0,this.var_1067.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_39);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_39);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_98)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2284 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2282 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_236.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_557,HabboToolbarIconEnum.ROOMINFO,this._window,false));
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_98,this.onToolbarIconState);
         }
      }
   }
}
