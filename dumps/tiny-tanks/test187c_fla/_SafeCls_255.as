package test187c_fla
{
   import Box2D.Common.Math.*;
   import _SafePkg_0.*;
   import _SafePkg_53.*;
   import _SafePkg_87.*;
   import _SafePkg_7.*;
   import _SafePkg_31.*;
   import _SafePkg_3._SafeCls_2;
   import _SafePkg_1.*;
   import _SafePkg_20.*;
   import _SafePkg_176.*;
   import _SafePkg_183._SafeCls_184;
   import _SafePkg_183._SafeCls_182;
   import _SafePkg_13.*;
   import _SafePkg_120.*;
   import _SafePkg_5.*;
   import _SafePkg_67.*;
   import _SafePkg_129.SWFBridgeAS3;
   import _SafePkg_9.*;
   import _SafePkg_28.*;
   import _SafePkg_118.*;
   import _SafePkg_168.Emitter2D;
   import _SafePkg_261.*;
   import _SafePkg_171.*;
   import _SafePkg_8.*;
   import _SafePkg_85.*;
   import _SafePkg_42.*;
   import _SafePkg_19.*;
   import _SafePkg_14.*;
   import adobe.utils.*;
   import com.coreyoneil.collision.CollisionList;
   import com.jaludo.*;
   import com.jaludo.services.*;
   import com.miniclip._SafeCls_4;
   import fl.controls.Button;
   import fl.controls.TextInput;
   import fl.controls.dataGridClasses.DataGridColumn;
   import fl.data.DataProvider;
   import fl.events.ListEvent;
   import fl.events.SliderEvent;
   import fl.motion.AdjustColor;
   import fl.text.RuntimeManager;
   import fl.text.TCMRuntimeManager;
   import fl.text.TCMText;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.engine.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   public dynamic class _SafeCls_255 extends MovieClip
   {
      
      public var flagbase1:MovieClip;
      
      public var _SafeStr_2402:MovieClip;
      
      public var tank0powerupicon:MovieClip;
      
      public var _SafeStr_2430:SimpleButton;
      
      public var tank1PingIndicator:MovieClip;
      
      public var spectateIcon3:MovieClip;
      
      public var tank2Preview:_SafeCls_220;
      
      public var _SafeStr_2240:MovieClip;
      
      public var _SafeStr_1170:SimpleButton;
      
      public var localNameText:TextField;
      
      public var _SafeStr_2661:MovieClip;
      
      public var _SafeStr_1810:TextField;
      
      public var _SafeStr_2567:MovieClip;
      
      public var tank1powerupicon:MovieClip;
      
      public var dmcaplimitbutton:SimpleButton;
      
      public var tank0PingIndicator:MovieClip;
      
      public var spectateIcon0:MovieClip;
      
      public var _SafeStr_701:TextField;
      
      public var tank3ReadyLight:MovieClip;
      
      public var changetitlebutton:SimpleButton;
      
      public var _SafeStr_2576:MovieClip;
      
      public var coinsHighlight:MovieClip;
      
      public var _SafeStr_2024:TextInput;
      
      public var _SafeStr_582:MovieClip;
      
      public var _SafeStr_1084:SimpleButton;
      
      public var tank2powerupicon:MovieClip;
      
      public var tank3PingIndicator:MovieClip;
      
      public var spectateIcon1:MovieClip;
      
      public var _SafeStr_631:MovieClip;
      
      public var tank2ReadyLight:MovieClip;
      
      public var editorbackground:editorbackgroundmc;
      
      public var tank3powerupicon:MovieClip;
      
      public var tank2PingIndicator:MovieClip;
      
      public var tank1ReadyLight:MovieClip;
      
      public var _SafeStr_742:MovieClip;
      
      public var newplayerhelper:MovieClip;
      
      public var _SafeStr_2580:MovieClip;
      
      public var premiumHighlight:MovieClip;
      
      public var __id2_:TCMText;
      
      public var _SafeStr_316:SimpleButton;
      
      public var custommapauthorlabel:TextField;
      
      public var tank0ReadyLight:MovieClip;
      
      public var changetitlelabel:MovieClip;
      
      public var referwindow:_SafeCls_244;
      
      public var _SafeStr_1847:SimpleButton;
      
      public var __id3_:TCMText;
      
      public var _SafeStr_2428:SimpleButton;
      
      public var _SafeStr_520:MovieClip;
      
      public var coinsicon:MovieClip;
      
      public var premiumicon:MovieClip;
      
      public var _SafeStr_1875:TextField;
      
      public var _SafeStr_1520:TextField;
      
      public var __id0_:TCMText;
      
      public var _SafeStr_1615:SimpleButton;
      
      public var kickbutton2:SimpleButton;
      
      public var _SafeStr_2415:SimpleButton;
      
      public var tank2changecolourbutton:SimpleButton;
      
      public var _SafeStr_336:SimpleButton;
      
      public var buygemsbutton:SimpleButton;
      
      public var _SafeStr_1474:MovieClip;
      
      public var localCoinsText:TextField;
      
      public var __id1_:TCMText;
      
      public var editortank6:editortankmc;
      
      public var _SafeStr_1338:MovieClip;
      
      public var modebutton:SimpleButton;
      
      public var kickbutton3:SimpleButton;
      
      public var teamplaybutton:SimpleButton;
      
      public var tank3changecolourbutton:SimpleButton;
      
      public var _SafeStr_2083:SimpleButton;
      
      public var miniclipavatar:MovieClip;
      
      public var _SafeStr_2635:MovieClip;
      
      public var _SafeStr_1092:TextField;
      
      public var glownotification:MovieClip;
      
      public var editortank7:editortankmc;
      
      public var friend0StarBackground:MovieClip;
      
      public var kickbutton0:SimpleButton;
      
      public var custommapnamelabel:TextField;
      
      public var tank0changecolourbutton:SimpleButton;
      
      public var nextMapButton:SimpleButton;
      
      public var _SafeStr_1546:TextField;
      
      public var _SafeStr_1344:TextField;
      
      public var editortank4:editortankmc;
      
      public var friend1StarBackground:MovieClip;
      
      public var kickbutton1:SimpleButton;
      
      public var _SafeStr_2365:SimpleButton;
      
      public var tank1changecolourbutton:SimpleButton;
      
      public var settingstextleft:TextField;
      
      public var _SafeStr_932:SimpleButton;
      
      public var namecardtitle:TextField;
      
      public var editortank5:editortankmc;
      
      public var friend2StarBackground:MovieClip;
      
      public var _SafeStr_459:SimpleButton;
      
      public var tank3aibutton:SimpleButton;
      
      public var _SafeStr_1638:MovieClip;
      
      public var _SafeStr_2379:SimpleButton;
      
      public var editorflag0:editorflagmc;
      
      public var editortank2:editortankmc;
      
      public var tank1FriendButton:SimpleButton;
      
      public var friend2Star:MovieClip;
      
      public var friend3StarBackground:MovieClip;
      
      public var tank2aibutton:SimpleButton;
      
      public var custommapnametext:TextField;
      
      public var joingamewindow:MovieClip;
      
      public var jamesives:MovieClip;
      
      public var signoutbutton:SimpleButton;
      
      public var _SafeStr_1886:MovieClip;
      
      public var editorflag1:editorflagmc;
      
      public var editortank3:editortankmc;
      
      public var _SafeStr_2263:SimpleButton;
      
      public var tank0FriendButton:SimpleButton;
      
      public var friend3Star:MovieClip;
      
      public var _SafeStr_1415:SimpleButton;
      
      public var _SafeStr_1892:MovieClip;
      
      public var tank1aibutton:SimpleButton;
      
      public var tank3NameSlot:TextField;
      
      public var localPremiumText:TextField;
      
      public var editortank0:editortankmc;
      
      public var _SafeStr_2608:TextField;
      
      public var tank3FriendButton:SimpleButton;
      
      public var friend0Star:MovieClip;
      
      public var _SafeStr_1663:TextField;
      
      public var tank0aibutton:SimpleButton;
      
      public var _SafeStr_2138:SimpleButton;
      
      public var settingstextright:TextField;
      
      public var tank2NameSlot:TextField;
      
      public var updatenotice:MovieClip;
      
      public var fullscreenbutton:SimpleButton;
      
      public var editortank1:editortankmc;
      
      public var _SafeStr_1756:Button;
      
      public var tank2FriendButton:SimpleButton;
      
      public var friend1Star:MovieClip;
      
      public var tanksetupbutton:SimpleButton;
      
      public var custommapauthortext:TextField;
      
      public var tank1NameSlot:TextField;
      
      public var tank1Preview:_SafeCls_220;
      
      public var _SafeStr_1601:MovieClip;
      
      public var facebook:MovieClip;
      
      public var _SafeStr_1251:SimpleButton;
      
      public var _SafeStr_1317:MovieClip;
      
      public var _SafeStr_823:MovieClip;
      
      public var _SafeStr_1003:SimpleButton;
      
      public var tank0NameSlot:TextField;
      
      public var tank0Preview:_SafeCls_220;
      
      public var localTitleText:TextField;
      
      public var _SafeStr_1882:SimpleButton;
      
      public var _SafeStr_2455:SimpleButton;
      
      public var editorvcam:MovieClip;
      
      public var flagbase0:MovieClip;
      
      public var _SafeStr_2249:MovieClip;
      
      public var _SafeStr_1994:SimpleButton;
      
      public var mouseaimbutton:SimpleButton;
      
      public var spectateIcon2:MovieClip;
      
      public var tank3Preview:_SafeCls_220;
      
      public var _SafeStr_975:MovieClip;
      
      public var _SafeStr_1165:_SafeCls_188;
      
      public var autoJoinAlreadyJoinedList:Array;
      
      public var _SafeStr_559:Boolean;
      
      public var _SafeStr_2458:*;
      
      public var _SafeStr_871:*;
      
      public var _SafeStr_1014:*;
      
      public var _SafeStr_733:*;
      
      public var _SafeStr_1374:_SafeCls_187;
      
      public var skinID:Number;
      
      public var _SafeStr_1759:Boolean;
      
      public var _SafeStr_1318:Boolean;
      
      public var _SafeStr_946:Number;
      
      public var secretEncryptionString:String;
      
      public var friendList:Array;
      
      public var _SafeStr_372:String;
      
      public var _SafeStr_2575:Object;
      
      public var _SafeStr_1227:SWFBridgeAS3;
      
      public var _SafeStr_1088:Object;
      
      public var _SafeStr_1669:DisplayObjectContainer;
      
      public var _SafeStr_2334:Object;
      
      public var _SafeStr_2451:String;
      
      public var _SafeStr_669:Array;
      
      public var _SafeStr_2196:*;
      
      public var developerConsole:_SafeCls_186;
      
      public var xTraceString:String;
      
      public var _SafeStr_2574:Boolean;
      
      public var _SafeStr_1789:*;
      
      public var localTankSetupArray:Array;
      
      public var _SafeStr_1050:Array;
      
      public var localUpdateCounter:ChazNumber;
      
      public var localMinuteCounter:ChazNumber;
      
      public var SERVER_ADDRESS:String;
      
      public var DEVELOPER_KEY:String;
      
      public var usingCumulus:Boolean;
      
      public var localCoinDrop:Number;
      
      public var _SafeStr_2561:Array;
      
      public var i:Number;
      
      public var _SafeStr_1690:Boolean;
      
      public var _SafeStr_2084:*;
      
      public var currentGameVersion:Number;
      
      public var basePasswordString:Number;
      
      public var defaultKongPassword:String;
      
      public var _SafeStr_1376:*;
      
      public var allowed_sites:Array;
      
      public var _SafeStr_1914:String;
      
      public var _SafeStr_1178:String;
      
      public var _SafeStr_1179:Object;
      
      public var _SafeStr_2371:String;
      
      public var _SafeStr_1076:String;
      
      public var fglSite1:String;
      
      public var fglSite2:String;
      
      public var ngSite:String;
      
      public var miniclipSite1:String;
      
      public var miniclipSite2:String;
      
      public var _SafeStr_281:String;
      
      public var jaludoSite1:String;
      
      public var jaludoSite2:String;
      
      public var jaludoSite3:String;
      
      public var jaludoSite4:String;
      
      public var jaludoSite5:String;
      
      public var jaludoSite6:String;
      
      public var jaludoSite7:String;
      
      public var jaludoSite8:String;
      
      public var jaludoSite9:String;
      
      public var jaludoSite10:String;
      
      public var jaludoSite11:String;
      
      public var jaludoSite12:String;
      
      public var jaludoSite13:String;
      
      public var onTinyTanksNet:Boolean;
      
      public var _SafeStr_656:Boolean;
      
      public var _SafeStr_1794:Boolean;
      
      public var _SafeStr_1981:Boolean;
      
      public var _SafeStr_912:Boolean;
      
      public var _SafeStr_1383:Boolean;
      
      public var domain2:String;
      
      public var _SafeStr_2527:Boolean;
      
      public var officialSites:Array;
      
      public var _SafeStr_1767:Boolean;
      
      public var _SafeStr_1078:*;
      
      public var _SafeStr_1032:String;
      
      public var _SafeStr_755:String;
      
      public var _SafeStr_1380:Boolean;
      
      public var _SafeStr_741:Boolean;
      
      public var _SafeStr_380:Array;
      
      public var _SafeStr_2069:Number;
      
      public var _SafeStr_1045:Array;
      
      public var singlePlayerScores:Array;
      
      public var tankItemDataArray:Array;
      
      public var _SafeStr_1266:Array;
      
      public var _SafeStr_1919:SharedObject;
      
      public var _SafeStr_1830:Number;
      
      public var singlePlayerMouseAiming:Boolean;
      
      public var _SafeStr_599:*;
      
      public var testFrictionThing:Number;
      
      public var toggleGraphicsSmoothing:Boolean;
      
      public var toggleSnowTest:Boolean;
      
      public var _SafeStr_1969:Boolean;
      
      public var _SafeStr_2091:*;
      
      public var ctfMode:Boolean;
      
      public var wtfMode:Boolean;
      
      public var _SafeStr_358:Boolean;
      
      public var _SafeStr_1093:Boolean;
      
      public var _SafeStr_2254:String;
      
      public var apiPath:String;
      
      public var request:URLRequest;
      
      public var loader:Loader;
      
      public var kongregate:*;
      
      public var _SafeStr_2566:Boolean;
      
      public var _SafeStr_1332:Boolean;
      
      public var _SafeStr_1562:SoundChannel;
      
      public var _SafeStr_1823:SoundTransform;
      
      public var _SafeStr_1342:Number;
      
      public var isPlayerNew:Boolean;
      
      public var _SafeStr_1368:SharedObject;
      
      public var _SafeStr_758:Boolean;
      
      public var fglWindowResponse:Number;
      
      public var _SafeStr_363:*;
      
      public var _SafeStr_1736:*;
      
      public var _SafeStr_1219:Boolean;
      
      public var _SafeStr_1921:Number;
      
      public var traceString:String;
      
      public var lobbyMapIDForJoinList:String;
      
      public var friendsAddedThisSession:Array;
      
      public var _SafeStr_479:*;
      
      public var _SafeStr_1418:Boolean;
      
      public var _SafeStr_1772:*;
      
      public var _SafeStr_2425:NetConnection;
      
      public var myPeerID:String;
      
      public var farPeerID:String;
      
      public var sendStream:NetStream;
      
      public var _SafeStr_1432:NetStream;
      
      public var _SafeStr_1024:Array;
      
      public var _SafeStr_2588:Number;
      
      public const _SafeStr_294:String = "aDewJyh";
      
      public const _SafeStr_486:Number = 8;
      
      public var localTankID:Number;
      
      public var localTankName:String;
      
      public var localTankNameLabel:String;
      
      public var localTankTitle:String;
      
      public var teamPlay:Boolean;
      
      public var mouseAiming:Boolean;
      
      public var _SafeStr_1036:Boolean;
      
      public var _SafeStr_781:Boolean;
      
      public var _SafeStr_1296:Boolean;
      
      public var gameMode:Number;
      
      public var _SafeStr_2147:Array;
      
      public var _SafeStr_451:Array;
      
      public var _SafeStr_1162:Array;
      
      public var _SafeStr_1573:Array;
      
      public var _SafeStr_1764:Array;
      
      public var tankNameArray:Array;
      
      public var tankTitleArray:Array;
      
      public var _SafeStr_1303:Array;
      
      public var _SafeStr_1250:Array;
      
      public var _SafeStr_2180:Array;
      
      public var _SafeStr_1325:Array;
      
      public var _SafeStr_430:Array;
      
      public var _SafeStr_1815:Array;
      
      public var _SafeStr_711:Array;
      
      public var _SafeStr_1233:Array;
      
      public var _SafeStr_2011:Array;
      
      public var _SafeStr_1766:Array;
      
      public var _SafeStr_1300:Array;
      
      public var _SafeStr_2061:Array;
      
      public var _SafeStr_2028:Array;
      
      public var _SafeStr_979:Array;
      
      public var _SafeStr_2356:Array;
      
      public var _SafeStr_964:Array;
      
      public var _SafeStr_1271:Number;
      
      public var _SafeStr_1738:*;
      
      public var _SafeStr_1404:*;
      
      public var lastPingUniqueID:Number;
      
      public var pingNumberOfValuesToAverage:Number;
      
      public var _SafeStr_2315:*;
      
      public var _SafeStr_553:Number;
      
      public var _SafeStr_2497:Number;
      
      public var _SafeStr_1419:Array;
      
      public var _SafeStr_1947:Number;
      
      public var _SafeStr_1190:*;
      
      public var _SafeStr_1948:Number;
      
      public var _SafeStr_1269:*;
      
      public var _SafeStr_2082:*;
      
      public var _SafeStr_2565:Boolean;
      
      public var _SafeStr_1579:Boolean;
      
      public var tankStatsArray:Array;
      
      public var _SafeStr_1297:*;
      
      public var _SafeStr_2343:Array;
      
      public var _SafeStr_879:Array;
      
      public var simpleStatsKillsTeam:Array;
      
      public var simpleStatsCapturesTeam:Array;
      
      public var _SafeStr_1119:Boolean;
      
      public var localStatsArray:Array;
      
      public var localDatabaseID:Number;
      
      public var localWeekRefs:Number;
      
      public var localSpecial:Number;
      
      public var _SafeStr_1475:Boolean;
      
      public var glowChosen:Boolean;
      
      public var localItemsInUse:String;
      
      public var _SafeStr_1655:Number;
      
      public var localCoins:Number;
      
      public var localPremium:Number;
      
      public var userLoggedIn:Boolean;
      
      public var _SafeStr_689:Boolean;
      
      public var tankFullHealthStock:Number;
      
      public const gunFireIntervalStock:Number = 250;
      
      public var bulletsPerMagStock:Number;
      
      public const engineSpeedStock:Number = 5;
      
      public const bulletStayTimeStock:Number = 3000;
      
      public const bulletMoveSpeedStock:Number = 10;
      
      public const tankFullHealthStockNormal:Number = 15;
      
      public const tankFullHealthStockDeathmatch:Number = 5;
      
      public const tankFullHealthStockCtf:Number = 1;
      
      public const bulletsPerMagStockNormal:Number = 5;
      
      public const bulletsPerMagStockCtf:Number = 1;
      
      public const _SafeStr_999:Number = 2500;
      
      public const _SafeStr_435:Number = -0.75;
      
      public const _SafeStr_1191:Number = 5;
      
      public const _SafeStr_1026:Number = 3;
      
      public const _SafeStr_2208:Number = 99;
      
      public const _SafeStr_1217:Number = 1.3;
      
      public const _SafeStr_1724:Number = 5;
      
      public var _SafeStr_1578:Number;
      
      public var _SafeStr_1387:Object;
      
      public var deathmatchKillLimit:Number;
      
      public var ctfCaptureLimit:Number;
      
      public var _SafeStr_873:Number;
      
      public var _SafeStr_1405:Number;
      
      public var _SafeStr_2552:Number;
      
      public var _SafeStr_1770:Array;
      
      public var setupTextStandardBody:Array;
      
      public var setupTextStandardTurret:Array;
      
      public var setupTextStandardBarrel:Array;
      
      public var setupTextShermanBody:Array;
      
      public var setupTextShermanTurret:Array;
      
      public var setupTextShermanBarrel:Array;
      
      public var setupTextStuartBody:Array;
      
      public var setupTextStuartTurret:Array;
      
      public var setupTextStuartBarrel:Array;
      
      public var setupTextTigerBody:Array;
      
      public var setupTextTigerTurret:Array;
      
      public var setupTextTigerBarrel:Array;
      
      public var hosting:Boolean;
      
      public var _SafeStr_290:Number;
      
      public var _SafeStr_1745:*;
      
      public var _SafeStr_2141:Array;
      
      public var inLobby:Boolean;
      
      public var inGame:Boolean;
      
      public var levelChosen:Number;
      
      public var levelChosenMaxPlayers:Number;
      
      public var newVaultMapID:Number;
      
      public var oldVaultMapID:Number;
      
      public var _SafeStr_1510:*;
      
      public var timeOfCorrectionRequest:Number;
      
      public var _SafeStr_814:Number;
      
      public var _SafeStr_1890:Number;
      
      public const _SafeStr_682:Number = 10;
      
      public var _SafeStr_2440:Number;
      
      public const _SafeStr_1960:Number = 0.001;
      
      public var _SafeStr_2605:Boolean;
      
      public var _SafeStr_2393:Number;
      
      public var _SafeStr_2381:Number;
      
      public var notificationwindow:*;
      
      public var _SafeStr_2536:*;
      
      public var _SafeStr_1918:*;
      
      public var _SafeStr_1559:*;
      
      public var _SafeStr_885:*;
      
      public var _SafeStr_2004:*;
      
      public var _SafeStr_441:*;
      
      public var _SafeStr_1390:*;
      
      public var _SafeStr_2169:*;
      
      public var _SafeStr_2309:*;
      
      public var newplayerwindow:*;
      
      public var _SafeStr_1060:*;
      
      public var _SafeStr_1192:*;
      
      public var _SafeStr_645:Boolean;
      
      public var _SafeStr_772:Boolean;
      
      public var expKillReward:Number;
      
      public var expBotKillReward:Number;
      
      public var expWinReward:Number;
      
      public var expBotWinReward:Number;
      
      public var _SafeStr_2290:Number;
      
      public var expHitReward:Number;
      
      public var expKillRewardDM:Number;
      
      public var expKillRewardCTF:Number;
      
      public var _SafeStr_1120:*;
      
      public var chatFloodTriggerLength:Number;
      
      public var _SafeStr_1957:Number;
      
      public var _SafeStr_1605:Number;
      
      public var _SafeStr_490:Number;
      
      public var _SafeStr_1402:Array;
      
      public var _SafeStr_641:Number;
      
      public var _SafeStr_1818:Array;
      
      public var _SafeStr_831:String;
      
      public var _SafeStr_2322:Boolean;
      
      public var _SafeStr_272:Number;
      
      public var _SafeStr_737:Number;
      
      public var ping:Number;
      
      public var writeSound1:Sound;
      
      public var writeSound2:Sound;
      
      public var musicLoopSound:Sound;
      
      public var musicIntroSound:Sound;
      
      public var _SafeStr_1878:SoundChannel;
      
      public var _SafeStr_1811:SoundTransform;
      
      public var readySound:Sound;
      
      public var beepLowSound:Sound;
      
      public var beepHighSound:Sound;
      
      public var harpSlammerSound:Sound;
      
      public var doorOpenSound:Sound;
      
      public var coinSound1:Sound;
      
      public var coinSound2:Sound;
      
      public var coinSound3:Sound;
      
      public var coinSound4:Sound;
      
      public var coinSound5:Sound;
      
      public var coinSound6:Sound;
      
      public var recvCoinSound:Sound;
      
      public var levelUpSound:Sound;
      
      public var equipItemSound:Sound;
      
      public var kachingSound:Sound;
      
      public var pageTurn1Sound:Sound;
      
      public var pageTurn2Sound:Sound;
      
      public var pageTurn3Sound:Sound;
      
      public var whooshSound:Sound;
      
      public var muteSfx:Boolean;
      
      public var muteMusic:Boolean;
      
      public var _SafeStr_1077:SharedObject;
      
      public var nearCityName:String;
      
      public var nearLongitude:Number;
      
      public var nearLatitude:Number;
      
      public var _SafeStr_2176:String;
      
      public var roomArray:Array;
      
      public var _SafeStr_1974:Font;
      
      public var _SafeStr_583:TextFormat;
      
      public var tfmlist:TextFormat;
      
      public var _SafeStr_1796:TextFormat;
      
      public var _SafeStr_2204:TextFormat;
      
      public var _SafeStr_2447:Array;
      
      public const _SafeStr_2616:int = 250111;
      
      public var _SafeStr_571:SharedObject;
      
      public var _SafeStr_2133:SharedObject;
      
      public var _SafeStr_1608:Number;
      
      public var _SafeStr_532:Boolean;
      
      public var _SafeStr_1644:Object;
      
      public var _SafeStr_2325:*;
      
      public var _SafeStr_1260:Object;
      
      public var pleasewait:*;
      
      public var storeOurMiniclipAvatar:Loader;
      
      public var _SafeStr_1944:Array;
      
      public var smallPremadeCameraArray:Array;
      
      public var _SafeStr_2282:Array;
      
      public var smallCustomCameraArray:Array;
      
      public var mediumCustomCameraArray:Array;
      
      public var largeCameraArray:Array;
      
      public var giantCameraArray:Array;
      
      public var _SafeStr_1626:Array;
      
      public var _SafeStr_2441:Array;
      
      public var _SafeStr_1104:Array;
      
      public var _SafeStr_1698:Array;
      
      public var _SafeStr_805:Array;
      
      public var _SafeStr_1038:Array;
      
      public var _SafeStr_2504:Array;
      
      public var _SafeStr_312:Array;
      
      public var _SafeStr_2563:Array;
      
      public var _SafeStr_2331:Array;
      
      public var _SafeStr_2285:Array;
      
      public var _SafeStr_1355:Array;
      
      public var _SafeStr_389:Array;
      
      public var _SafeStr_1566:Array;
      
      public var _SafeStr_1012:Array;
      
      public var _SafeStr_869:Array;
      
      public var _SafeStr_344:Array;
      
      public var _SafeStr_1265:Array;
      
      public var _SafeStr_909:Array;
      
      public var _SafeStr_2255:Array;
      
      public var _SafeStr_408:Array;
      
      public var _SafeStr_2529:Array;
      
      public var _SafeStr_1209:Array;
      
      public var _SafeStr_1741:Array;
      
      public var _SafeStr_649:Array;
      
      public var _SafeStr_2429:Array;
      
      public var _SafeStr_1705:Array;
      
      public var _SafeStr_1030:Array;
      
      public var _SafeStr_744:Array;
      
      public var _SafeStr_1279:Array;
      
      public var _SafeStr_2626:Array;
      
      public var _SafeStr_2197:Array;
      
      public var _SafeStr_1801:Array;
      
      public var _SafeStr_1369:Array;
      
      public var _SafeStr_622:Array;
      
      public var _SafeStr_596:Array;
      
      public var _SafeStr_492:Array;
      
      public var _SafeStr_2573:Array;
      
      public var _SafeStr_545:Array;
      
      public var _SafeStr_1548:Array;
      
      public var _SafeStr_2645:Array;
      
      public var _SafeStr_2437:Array;
      
      public var _SafeStr_1523:Array;
      
      public var _SafeStr_2463:Array;
      
      public var _SafeStr_310:Array;
      
      public var _SafeStr_1806:Array;
      
      public var _SafeStr_325:Array;
      
      public var _SafeStr_844:Array;
      
      public var _SafeStr_575:Array;
      
      public var _SafeStr_679:Array;
      
      public var _SafeStr_524:Array;
      
      public var _SafeStr_2581:Array;
      
      public var _SafeStr_2218:Array;
      
      public var _SafeStr_1212:Array;
      
      public var _SafeStr_2345:Array;
      
      public var _SafeStr_2115:Array;
      
      public var _SafeStr_2658:Number;
      
      public var _SafeStr_2137:_SafeCls_198;
      
      public var newAccUsername:String;
      
      public var newAccPassword:String;
      
      public var newaccaskaccountwindow:*;
      
      public var newaccenteruserpasswindow:*;
      
      public var newaccenteruserwindow:*;
      
      public var newaccenterpasswindow:*;
      
      public var newaccusertakenwindow:*;
      
      public var newaccregcompletewindow:*;
      
      public var newacclogincompletewindow:*;
      
      public var newaccloginerrorwindow:*;
      
      public var newaccregerrorwindow:*;
      
      public var _SafeStr_884:*;
      
      public var _SafeStr_1218:*;
      
      public var newLocalStatsToShow:Boolean;
      
      public var newLocalStatsArray:Array;
      
      public var continueRoomInterval:*;
      
      public var totalPlayersOnline:Number;
      
      public var _SafeStr_502:Boolean;
      
      public var _SafeStr_487:String;
      
      public var localRoomPassword:String;
      
      public var localMaxPlayers:Number;
      
      public var _SafeStr_1029:*;
      
      public var destinationRoomPassword:String;
      
      public var destinationRoomEnteredPassword:String;
      
      public var noFull:Boolean;
      
      public var noPass:Boolean;
      
      public var modeFilter:Number;
      
      public var _SafeStr_2186:*;
      
      public var _SafeStr_428:*;
      
      public var _SafeStr_2066:*;
      
      public var lastLogLength:Number;
      
      public var allChatMessages:String;
      
      public var _SafeStr_1544:Number;
      
      public var _SafeStr_1554:*;
      
      public var _SafeStr_652:*;
      
      public var xpdisplay:*;
      
      public var _SafeStr_1675:Array;
      
      public var _SafeStr_976:*;
      
      public var purchasewindow:*;
      
      public var checkPurchaseCompleteInterval:*;
      
      public var _SafeStr_1624:Number;
      
      public var _SafeStr_1429:*;
      
      public var _SafeStr_610:Number;
      
      public var _SafeStr_2114:Array;
      
      public var autoJoinFullRoomArray:Array;
      
      public var _SafeStr_867:Array;
      
      public var _SafeStr_1577:Number;
      
      public var _SafeStr_2534:Boolean;
      
      public var _SafeStr_1130:*;
      
      public var _SafeStr_361:Number;
      
      public var _SafeStr_1609:*;
      
      public var _SafeStr_1774:String;
      
      public var noplayerswindow:*;
      
      public var _SafeStr_1761:*;
      
      public var _SafeStr_1484:*;
      
      public var _SafeStr_2501:*;
      
      public var _SafeStr_846:*;
      
      public var _SafeStr_2368:*;
      
      public var _SafeStr_2399:*;
      
      public var _SafeStr_1313:*;
      
      public var _SafeStr_2067:Array;
      
      public var _SafeStr_2543:Number;
      
      public var nothighenoughlevelwindow:*;
      
      public var _SafeStr_2145:*;
      
      public var _SafeStr_2533:Number;
      
      public var _SafeStr_1381:*;
      
      public var _SafeStr_2578:*;
      
      public var lobbyCustomMapName:String;
      
      public var lobbyCustomMapAuthor:String;
      
      public var lobbyCustomMapSize:String;
      
      public var entireCustomLevelData:Array;
      
      public var lobbyTempLevelPreview:*;
      
      public var lobbyMainLevelPreview:*;
      
      public var _SafeStr_1428:*;
      
      public var _SafeStr_1248:Number;
      
      public var _SafeStr_1068:*;
      
      public var _SafeStr_1211:Number;
      
      public var _SafeStr_1358:Number;
      
      public var _SafeStr_1225:Number;
      
      public var _SafeStr_2397:Number;
      
      public var _SafeStr_639:Number;
      
      public var _SafeStr_934:Number;
      
      public var levelvaultwindow:*;
      
      public var _SafeStr_1912:String;
      
      public var _SafeStr_349:Number;
      
      public var vaultTempLevelPreview:*;
      
      public var _SafeStr_2466:Array;
      
      public var _SafeStr_2404:Number;
      
      public var _SafeStr_1934:Boolean;
      
      public var _SafeStr_754:*;
      
      public var _SafeStr_2101:*;
      
      public var _SafeStr_1200:*;
      
      public var setupTankWindowSlotID:*;
      
      public var _SafeStr_1097:*;
      
      public var _SafeStr_2017:*;
      
      public var confirmBuyItemID:Number;
      
      public var _SafeStr_2323:String;
      
      public var _SafeStr_2042:Number;
      
      public var spawnProtectionTime:Number;
      
      public var _SafeStr_1053:Object;
      
      public var _SafeStr_2117:*;
      
      public var _SafeStr_1502:*;
      
      public var _SafeStr_834:Number;
      
      public var _SafeStr_625:Number;
      
      public var _SafeStr_540:Number;
      
      public var _SafeStr_2357:Number;
      
      public var _SafeStr_2638:Number;
      
      public var hitSound:Sound;
      
      public var tankExplodeSound:Sound;
      
      public var tankExplodeChannel:SoundChannel;
      
      public var _SafeStr_339:SoundTransform;
      
      public var tankExplosionQLoSound:Sound;
      
      public var tankExplosionQSound:Sound;
      
      public var tankExplosionQChannel:SoundChannel;
      
      public var _SafeStr_2589:SoundTransform;
      
      public var fireSound1:Sound;
      
      public var fireSound2:Sound;
      
      public var fireSoundChannel:SoundChannel;
      
      public var _SafeStr_1841:SoundTransform;
      
      public var recvDamage7Sound:Sound;
      
      public var recvDamage710Sound:Sound;
      
      public var recvDamage720Sound:Sound;
      
      public var powerUpVanishSound:Sound;
      
      public var powerUpAppearSound:Sound;
      
      public var powerUpSoundChannel:SoundChannel;
      
      public var _SafeStr_638:SoundTransform;
      
      public var powerUpHealSound:Sound;
      
      public var newGunFire1Sound:Sound;
      
      public var newGunFire2Sound:Sound;
      
      public var newGunFire3Sound:Sound;
      
      public var newGunFire4Sound:Sound;
      
      public var powerUpShieldHitSound:Sound;
      
      public var powerUpShieldHumSound:Sound;
      
      public var powerUpShieldHumSoundChannel:SoundChannel;
      
      public var powerUpSpeedSound:Sound;
      
      public var spawnProtectionSound:Sound;
      
      public var spawnProtectionSoundChannel:SoundChannel;
      
      public var tiedLeadSound:Sound;
      
      public var lostLeadSound:Sound;
      
      public var takenLeadSound:Sound;
      
      public var _SafeStr_1091:b2World;
      
      public var _SafeStr_1551:Number;
      
      public var _SafeStr_863:uint;
      
      public var _SafeStr_1016:Number;
      
      public var _SafeStr_1695:Number;
      
      public var _SafeStr_2079:Number;
      
      public var _SafeStr_892:Number;
      
      public var _SafeStr_1869:*;
      
      public var _SafeStr_2555:Number;
      
      public var _SafeStr_1755:Number;
      
      public var _SafeStr_284:*;
      
      public var _SafeStr_763:*;
      
      public var timestampAgeLimit:*;
      
      public var _SafeStr_2063:Number;
      
      public var _SafeStr_775:ChazNumber;
      
      public var _SafeStr_271:*;
      
      public var _SafeStr_2008:Number;
      
      public var _SafeStr_2511:b2TensorDampingController;
      
      public var _SafeStr_1702:b2Controller;
      
      public var t_controller2:b2TensorDampingController;
      
      public var m_controller2:b2Controller;
      
      public var t_controller3:b2TensorDampingController;
      
      public var m_controller3:b2Controller;
      
      public var t_controller4:b2TensorDampingController;
      
      public var m_controller4:b2Controller;
      
      public var Tank0Health:*;
      
      public var Tank1Health:*;
      
      public var Tank2Health:*;
      
      public var Tank3Health:*;
      
      public var Tank4Health:*;
      
      public var Tank5Health:*;
      
      public var Tank6Health:*;
      
      public var Tank7Health:*;
      
      public var Tank0DataIsNew:Boolean;
      
      public var Tank1DataIsNew:Boolean;
      
      public var Tank2DataIsNew:Boolean;
      
      public var Tank3DataIsNew:Boolean;
      
      public var Tank4DataIsNew:Boolean;
      
      public var Tank5DataIsNew:Boolean;
      
      public var Tank6DataIsNew:Boolean;
      
      public var Tank7DataIsNew:Boolean;
      
      public var Tank8DataIsNew:Boolean;
      
      public var Tank0X:*;
      
      public var Tank0Y:*;
      
      public var Tank0Angle:*;
      
      public var Tank0AngleVelocity:*;
      
      public var Tank0LinearVelocityX:*;
      
      public var Tank0LinearVelocityY:*;
      
      public var Tank0LeftPressed:*;
      
      public var Tank0RightPressed:*;
      
      public var Tank0UpPressed:*;
      
      public var Tank0DownPressed:*;
      
      public var Tank0Alive:Boolean;
      
      public var Tank0MoveListenerSetUp:*;
      
      public var Tank0:b2Body;
      
      public var Tank0LeftWheel:b2Body;
      
      public var Tank0RightWheel:b2Body;
      
      public var tank0Graphic:*;
      
      public var tank0Label:*;
      
      public var Tank0BulletAngle:*;
      
      public var Tank0TurretAngle:*;
      
      public var Tank0FlintRenderer:*;
      
      public var Tank1X:*;
      
      public var Tank1Y:*;
      
      public var Tank1Angle:*;
      
      public var Tank1AngleVelocity:*;
      
      public var Tank1LinearVelocityX:*;
      
      public var Tank1LinearVelocityY:*;
      
      public var Tank1LeftPressed:*;
      
      public var Tank1RightPressed:*;
      
      public var Tank1UpPressed:*;
      
      public var Tank1DownPressed:*;
      
      public var Tank1Alive:Boolean;
      
      public var Tank1MoveListenerSetUp:*;
      
      public var Tank1:b2Body;
      
      public var Tank1LeftWheel:b2Body;
      
      public var Tank1RightWheel:b2Body;
      
      public var tank1Graphic:*;
      
      public var tank1Label:*;
      
      public var Tank1BulletAngle:*;
      
      public var Tank1TurretAngle:*;
      
      public var Tank1FlintRenderer:*;
      
      public var Tank2X:*;
      
      public var Tank2Y:*;
      
      public var Tank2Angle:*;
      
      public var Tank2AngleVelocity:*;
      
      public var Tank2LinearVelocityX:*;
      
      public var Tank2LinearVelocityY:*;
      
      public var Tank2LeftPressed:*;
      
      public var Tank2RightPressed:*;
      
      public var Tank2UpPressed:*;
      
      public var Tank2DownPressed:*;
      
      public var Tank2Alive:Boolean;
      
      public var Tank2MoveListenerSetUp:*;
      
      public var Tank2:b2Body;
      
      public var Tank2LeftWheel:b2Body;
      
      public var Tank2RightWheel:b2Body;
      
      public var tank2Graphic:*;
      
      public var tank2Label:*;
      
      public var Tank2BulletAngle:*;
      
      public var Tank2TurretAngle:*;
      
      public var Tank2FlintRenderer:*;
      
      public var Tank3X:*;
      
      public var Tank3Y:*;
      
      public var Tank3Angle:*;
      
      public var Tank3AngleVelocity:*;
      
      public var Tank3LinearVelocityX:*;
      
      public var Tank3LinearVelocityY:*;
      
      public var Tank3LeftPressed:*;
      
      public var Tank3RightPressed:*;
      
      public var Tank3UpPressed:*;
      
      public var Tank3DownPressed:*;
      
      public var Tank3Alive:Boolean;
      
      public var Tank3MoveListenerSetUp:*;
      
      public var Tank3:b2Body;
      
      public var Tank3LeftWheel:b2Body;
      
      public var Tank3RightWheel:b2Body;
      
      public var tank3Graphic:*;
      
      public var tank3Label:*;
      
      public var Tank3BulletAngle:*;
      
      public var Tank3TurretAngle:*;
      
      public var Tank3FlintRenderer:*;
      
      public var Tank4X:*;
      
      public var Tank4Y:*;
      
      public var Tank4Angle:*;
      
      public var Tank4AngleVelocity:*;
      
      public var Tank4LinearVelocityX:*;
      
      public var Tank4LinearVelocityY:*;
      
      public var Tank4LeftPressed:*;
      
      public var Tank4RightPressed:*;
      
      public var Tank4UpPressed:*;
      
      public var Tank4DownPressed:*;
      
      public var Tank4Alive:Boolean;
      
      public var Tank4MoveListenerSetUp:*;
      
      public var Tank4:b2Body;
      
      public var Tank4LeftWheel:b2Body;
      
      public var Tank4RightWheel:b2Body;
      
      public var tank4Graphic:*;
      
      public var tank4Label:*;
      
      public var Tank4BulletAngle:*;
      
      public var Tank4TurretAngle:*;
      
      public var Tank4FlintRenderer:*;
      
      public var Tank5X:*;
      
      public var Tank5Y:*;
      
      public var Tank5Angle:*;
      
      public var Tank5AngleVelocity:*;
      
      public var Tank5LinearVelocityX:*;
      
      public var Tank5LinearVelocityY:*;
      
      public var Tank5LeftPressed:*;
      
      public var Tank5RightPressed:*;
      
      public var Tank5UpPressed:*;
      
      public var Tank5DownPressed:*;
      
      public var Tank5Alive:Boolean;
      
      public var Tank5MoveListenerSetUp:*;
      
      public var Tank5:b2Body;
      
      public var Tank5LeftWheel:b2Body;
      
      public var Tank5RightWheel:b2Body;
      
      public var tank5Graphic:*;
      
      public var tank5Label:*;
      
      public var Tank5BulletAngle:*;
      
      public var Tank5TurretAngle:*;
      
      public var Tank5FlintRenderer:*;
      
      public var Tank6X:*;
      
      public var Tank6Y:*;
      
      public var Tank6Angle:*;
      
      public var Tank6AngleVelocity:*;
      
      public var Tank6LinearVelocityX:*;
      
      public var Tank6LinearVelocityY:*;
      
      public var Tank6LeftPressed:*;
      
      public var Tank6RightPressed:*;
      
      public var Tank6UpPressed:*;
      
      public var Tank6DownPressed:*;
      
      public var Tank6Alive:Boolean;
      
      public var Tank6MoveListenerSetUp:*;
      
      public var Tank6:b2Body;
      
      public var Tank6LeftWheel:b2Body;
      
      public var Tank6RightWheel:b2Body;
      
      public var tank6Graphic:*;
      
      public var tank6Label:*;
      
      public var Tank6BulletAngle:*;
      
      public var Tank6TurretAngle:*;
      
      public var Tank6FlintRenderer:*;
      
      public var Tank7X:*;
      
      public var Tank7Y:*;
      
      public var Tank7Angle:*;
      
      public var Tank7AngleVelocity:*;
      
      public var Tank7LinearVelocityX:*;
      
      public var Tank7LinearVelocityY:*;
      
      public var Tank7LeftPressed:*;
      
      public var Tank7RightPressed:*;
      
      public var Tank7UpPressed:*;
      
      public var Tank7DownPressed:*;
      
      public var Tank7Alive:Boolean;
      
      public var Tank7MoveListenerSetUp:*;
      
      public var Tank7:b2Body;
      
      public var Tank7LeftWheel:b2Body;
      
      public var Tank7RightWheel:b2Body;
      
      public var tank7Graphic:*;
      
      public var tank7Label:*;
      
      public var Tank7BulletAngle:*;
      
      public var Tank7TurretAngle:*;
      
      public var Tank7FlintRenderer:*;
      
      public var _SafeStr_570:Number;
      
      public var tankCameraFollowID:Number;
      
      public var _SafeStr_875:*;
      
      public var _SafeStr_2109:Boolean;
      
      public var _SafeStr_1189:Boolean;
      
      public var _SafeStr_2037:Boolean;
      
      public var _SafeStr_1525:Array;
      
      public var _SafeStr_2149:*;
      
      public var _SafeStr_1902:*;
      
      public var _SafeStr_1613:*;
      
      public var _SafeStr_1855:Array;
      
      public var _SafeStr_736:Array;
      
      public var _SafeStr_2570:Array;
      
      public var _SafeStr_2299:Array;
      
      public var _SafeStr_2372:Array;
      
      public var _SafeStr_1090:Number;
      
      public var _SafeStr_1988:*;
      
      public var _SafeStr_2360:Number;
      
      public var _SafeStr_2248:*;
      
      public var _SafeStr_2298:*;
      
      public var _SafeStr_1177:Number;
      
      public var localJuggernaut:Boolean;
      
      public var _SafeStr_1853:Number;
      
      public var _SafeStr_894:Number;
      
      public var _SafeStr_2052:Number;
      
      public var _SafeStr_1699:Number;
      
      public var _SafeStr_528:*;
      
      public var hudthing:*;
      
      public var _SafeStr_1808:*;
      
      public var _SafeStr_838:*;
      
      public var _SafeStr_1359:Array;
      
      public var _SafeStr_1114:Number;
      
      public var _SafeStr_2562:Sprite;
      
      public var flagHolder:Sprite;
      
      public var leftTrackSpeed:Array;
      
      public var rightTrackSpeed:Array;
      
      public var _SafeStr_2164:Array;
      
      public var _SafeStr_292:Array;
      
      public var _SafeStr_759:Array;
      
      public var _SafeStr_819:Array;
      
      public var _SafeStr_1838:Array;
      
      public var _SafeStr_723:Array;
      
      public var _SafeStr_1434:*;
      
      public var _SafeStr_790:Array;
      
      public var _SafeStr_2179:*;
      
      public var _SafeStr_2603:Array;
      
      public var Tank0SpawnX:*;
      
      public var Tank0SpawnY:*;
      
      public var Tank0SpawnAngle:*;
      
      public var Tank1SpawnX:*;
      
      public var Tank1SpawnY:*;
      
      public var Tank1SpawnAngle:*;
      
      public var Tank2SpawnX:*;
      
      public var Tank2SpawnY:*;
      
      public var Tank2SpawnAngle:*;
      
      public var Tank3SpawnX:*;
      
      public var Tank3SpawnY:*;
      
      public var Tank3SpawnAngle:*;
      
      public var Tank4SpawnX:*;
      
      public var Tank4SpawnY:*;
      
      public var Tank4SpawnAngle:*;
      
      public var Tank5SpawnX:*;
      
      public var Tank5SpawnY:*;
      
      public var Tank5SpawnAngle:*;
      
      public var Tank6SpawnX:*;
      
      public var Tank6SpawnY:*;
      
      public var Tank6SpawnAngle:*;
      
      public var Tank7SpawnX:*;
      
      public var Tank7SpawnY:*;
      
      public var Tank7SpawnAngle:*;
      
      public var _SafeStr_1666:*;
      
      public var _SafeStr_2359:*;
      
      public var _SafeStr_858:*;
      
      public var _SafeStr_1151:*;
      
      public var _SafeStr_2364:Array;
      
      public var _SafeStr_1863:Array;
      
      public var captureZone0:Point;
      
      public var captureZone1:Point;
      
      public var flagSpawnArray:Array;
      
      public var _SafeStr_477:Array;
      
      public var xi2:*;
      
      public var _SafeStr_1469:*;
      
      public var musicPlaying:Boolean;
      
      public var _SafeStr_1857:Array;
      
      public var _SafeStr_1676:b2DebugDraw;
      
      public var _SafeStr_1272:Sprite;
      
      public var newTS:b2TimeStep;
      
      public var _SafeStr_877:Array;
      
      public var _SafeStr_1454:Boolean;
      
      public var _SafeStr_1360:String;
      
      public var _SafeStr_1421:*;
      
      public var countdownSecondsRemaining:Number;
      
      public var _SafeStr_2488:b2Vec2;
      
      public var rayEnd:b2Vec2;
      
      public var _SafeStr_1691:Array;
      
      public var _SafeStr_2036:Number;
      
      public var _SafeStr_1507:Number;
      
      public var searchBestAngle:Number;
      
      public var _SafeStr_787:Array;
      
      public var _SafeStr_1356:Number;
      
      public var _SafeStr_2591:Array;
      
      public var _SafeStr_725:Array;
      
      public var _SafeStr_1940:Array;
      
      public var _SafeStr_1710:*;
      
      public var _SafeStr_1478:*;
      
      public var _SafeStr_2241:Array;
      
      public var _SafeStr_2121:Number;
      
      public var _SafeStr_1723:Array;
      
      public var _SafeStr_1314:Number;
      
      public var _SafeStr_1874:Array;
      
      public var _SafeStr_546:Number;
      
      public var _SafeStr_1993:Array;
      
      public var AIRetreatLength:Number;
      
      public var _SafeStr_1650:Number;
      
      public var _SafeStr_2160:Number;
      
      public var _SafeStr_661:Shape;
      
      public var rayShape2:Shape;
      
      public var moveThresholdForward:Number;
      
      public var _SafeStr_1453:Number;
      
      public var waypointx:Number;
      
      public var waypointy:Number;
      
      public var waypointID:Number;
      
      public var _SafeStr_2582:Shape;
      
      public var _SafeStr_2275:Boolean;
      
      public var TTstartLength:Number;
      
      public var TTkillTimeBoost:Number;
      
      public var _SafeStr_2558:Number;
      
      public var _SafeStr_936:Number;
      
      public var _SafeStr_1205:Number;
      
      public var _SafeStr_2167:Number;
      
      public var _SafeStr_963:Number;
      
      public var _SafeStr_2409:Number;
      
      public var TTminutesUnitsString:String;
      
      public var TTsecondsUnitsString:String;
      
      public var TTmsUnitsString:String;
      
      public var _SafeStr_1867:Array;
      
      public var _SafeStr_2470:*;
      
      public var flagStateArray:Array;
      
      public var flag0Team:Number;
      
      public var flag1Team:Number;
      
      public var flag0:*;
      
      public var flag1:*;
      
      public var _SafeStr_1749:Array;
      
      public var _SafeStr_1621:Number;
      
      public const _SafeStr_2279:Number = 5;
      
      public const smallLevelBorderArray:Array;
      
      public const smallLevelCameraArray:Array;
      
      public const largeLevelBorderArray:Array;
      
      public const largeLevelCameraArray:Array;
      
      public const giantLevelBorderArray:Array;
      
      public const giantLevelCameraArray:Array;
      
      public var customLevelArray:Array;
      
      public var _SafeStr_1187:Array;
      
      public var placeHolderMC0:MovieClip;
      
      public var placeHolderMC1:MovieClip;
      
      public var placeHolderMC2:MovieClip;
      
      public var placeHolderMC3:MovieClip;
      
      public var customLevelSpawnArray:Array;
      
      public var customLevelCameraArray:Array;
      
      public var _SafeStr_482:Array;
      
      public var _SafeStr_921:Number;
      
      public var customLevelFlagPositions:Array;
      
      public var editorhudthing:*;
      
      public var i1:*;
      
      public var i2:*;
      
      public var tfmeditor:TextFormat;
      
      public var waypointBodyArray:Array;
      
      public var _SafeStr_2113:Array;
      
      public var _SafeStr_920:Shape;
      
      public var _SafeStr_2524:Array;
      
      public var _SafeStr_2022:Shape;
      
      public var waypointnotificationwindow:*;
      
      public var _SafeStr_2498:*;
      
      public var _SafeStr_2554:*;
      
      public var _SafeStr_943:*;
      
      public var _SafeStr_1922:*;
      
      public var _SafeStr_896:*;
      
      public var _SafeStr_424:Number;
      
      public var _SafeStr_2181:Number;
      
      public var editorcamerapoint:Point;
      
      public var _SafeStr_1883:Number;
      
      public var _SafeStr_585:*;
      
      public var _SafeStr_1642:Boolean;
      
      public var _SafeStr_2545:*;
      
      public var _SafeStr_1971:*;
      
      public var _SafeStr_1073:*;
      
      public var editorhelpwindow:*;
      
      public var _SafeStr_1164:Array;
      
      public var mapListArray:Array;
      
      public var editorloadsavewindow:*;
      
      public var _SafeStr_748:Number;
      
      public var _SafeStr_2491:SharedObject;
      
      public var spawnsNotInOrderWindow:*;
      
      public var _SafeStr_1730:*;
      
      public var _SafeStr_1333:*;
      
      public var editorsavedelayinterval:*;
      
      public var _SafeStr_579:*;
      
      public var _SafeStr_2622:*;
      
      public var _SafeStr_314:*;
      
      public var nothighenoughforlevelvaultwindow:*;
      
      public var tempLevelPreview:*;
      
      public var _SafeStr_2510:String;
      
      public var _SafeStr_1263:Number;
      
      public var _SafeStr_2585:Number;
      
      public var _SafeStr_1489:Number;
      
      public const rotationSpeed:Number = 3;
      
      public var _SafeStr_913:*;
      
      public var editorPlaceOffsetX:Number;
      
      public var editorPlaceOffsetY:Number;
      
      public var _SafeStr_574:Number;
      
      public var _SafeStr_2092:*;
      
      public var editorMapSize:String;
      
      public var editorMapName:String;
      
      public var __checkFontName_:String;
      
      public var _SafeStr_2517:Object;
      
      public function _SafeCls_255()
      {
         this.smallLevelBorderArray = new Array(4);
         this.smallLevelCameraArray = new Array(4);
         this.largeLevelBorderArray = new Array(4);
         this.largeLevelCameraArray = new Array(4);
         this.giantLevelBorderArray = new Array(4);
         this.giantLevelCameraArray = new Array(4);
         super();
         this.__checkFontName_ = "test187c_fla.arialbold_3";
         if(!RuntimeManager.checkTLFFontsLoaded(null,this.__checkFontName_,this.__registerTLFFonts))
         {
            addEventListener(Event.FRAME_CONSTRUCTED,RuntimeManager.checkTLFFontsLoaded,false,1);
         }
         this._SafeStr_2517 = XML.settings();
         try
         {
            XML.ignoreProcessingInstructions = false;
            XML.ignoreWhitespace = false;
            XML.prettyPrinting = false;
            TCMRuntimeManager.getSingleton()._SafeStr_1135(this,"__id0_",new Rectangle(0,0,120,17.35),<tlfTextObject type="Paragraph" editPolicy="readOnly" columnCount="1" columnGap="20" verticalAlign="top" firstBaselineOffset="auto" paddingLeft="2" paddingTop="2" paddingRight="2" paddingBottom="2" background="false" backgroundColor="#ffffff" backgroundAlpha="1" border="false" borderColor="#000000" borderAlpha="1" borderWidth="1" paddingLock="false" multiline="true" antiAliasType="advanced" embedFonts="true"><TextFlow blockProgression="tb" locale="en_GB" whiteSpaceCollapse="preserve" version="2.0.0" xmlns="http://ns.adobe.com/textLayout/2008"><p direction="ltr" paragraphEndIndent="0" paragraphSpaceAfter="0" paragraphSpaceBefore="0" paragraphStartIndent="0" textAlign="center" textAlignLast="start" textIndent="0" textJustify="interWord"><span color="#000000" fontFamily="Arial" fontSize="12" fontStyle="normal" fontWeight="bold" kerning="off" lineHeight="117.647059%" textAlpha="1" textRotation="auto" trackingRight="0%">unnamed</span></p></TextFlow></tlfTextObject>
            ,null,undefined,3,3,"Scene 1",true,false);
            TCMRuntimeManager.getSingleton()._SafeStr_1135(this,"__id1_",new Rectangle(0,0,120,17.35),<tlfTextObject type="Paragraph" editPolicy="readOnly" columnCount="1" columnGap="20" verticalAlign="top" firstBaselineOffset="auto" paddingLeft="2" paddingTop="2" paddingRight="2" paddingBottom="2" background="false" backgroundColor="#ffffff" backgroundAlpha="1" border="false" borderColor="#000000" borderAlpha="1" borderWidth="1" paddingLock="false" multiline="true" antiAliasType="advanced" embedFonts="true"><TextFlow blockProgression="tb" locale="en_GB" whiteSpaceCollapse="preserve" version="2.0.0" xmlns="http://ns.adobe.com/textLayout/2008"><p direction="ltr" paragraphEndIndent="0" paragraphSpaceAfter="0" paragraphSpaceBefore="0" paragraphStartIndent="0" textAlign="center" textAlignLast="start" textIndent="0" textJustify="interWord"><span color="#000000" fontFamily="Arial" fontSize="12" fontStyle="normal" fontWeight="bold" kerning="off" lineHeight="117.647059%" textAlpha="1" textRotation="auto" trackingRight="0%">unnamed</span></p></TextFlow></tlfTextObject>
            ,null,undefined,3,3,"Scene 1",true,false);
            TCMRuntimeManager.getSingleton()._SafeStr_1135(this,"__id2_",new Rectangle(0,0,120,17.35),<tlfTextObject type="Paragraph" editPolicy="readOnly" columnCount="1" columnGap="20" verticalAlign="top" firstBaselineOffset="auto" paddingLeft="2" paddingTop="2" paddingRight="2" paddingBottom="2" background="false" backgroundColor="#ffffff" backgroundAlpha="1" border="false" borderColor="#000000" borderAlpha="1" borderWidth="1" paddingLock="false" multiline="true" antiAliasType="advanced" embedFonts="true"><TextFlow blockProgression="tb" locale="en_GB" whiteSpaceCollapse="preserve" version="2.0.0" xmlns="http://ns.adobe.com/textLayout/2008"><p direction="ltr" paragraphEndIndent="0" paragraphSpaceAfter="0" paragraphSpaceBefore="0" paragraphStartIndent="0" textAlign="center" textAlignLast="start" textIndent="0" textJustify="interWord"><span color="#000000" fontFamily="Arial" fontSize="12" fontStyle="normal" fontWeight="bold" kerning="off" lineHeight="117.647059%" textAlpha="1" textRotation="auto" trackingRight="0%">unnamed</span></p></TextFlow></tlfTextObject>
            ,null,undefined,3,3,"Scene 1",true,false);
            TCMRuntimeManager.getSingleton()._SafeStr_1135(this,"__id3_",new Rectangle(0,0,120,17.35),<tlfTextObject type="Paragraph" editPolicy="readOnly" columnCount="1" columnGap="20" verticalAlign="top" firstBaselineOffset="auto" paddingLeft="2" paddingTop="2" paddingRight="2" paddingBottom="2" background="false" backgroundColor="#ffffff" backgroundAlpha="1" border="false" borderColor="#000000" borderAlpha="1" borderWidth="1" paddingLock="false" multiline="true" antiAliasType="advanced" embedFonts="true"><TextFlow blockProgression="tb" locale="en_GB" whiteSpaceCollapse="preserve" version="2.0.0" xmlns="http://ns.adobe.com/textLayout/2008"><p direction="ltr" paragraphEndIndent="0" paragraphSpaceAfter="0" paragraphSpaceBefore="0" paragraphStartIndent="0" textAlign="center" textAlignLast="start" textIndent="0" textJustify="interWord"><span color="#000000" fontFamily="Arial" fontSize="12" fontStyle="normal" fontWeight="bold" kerning="off" lineHeight="117.647059%" textAlpha="1" textRotation="auto" trackingRight="0%">unnamed</span></p></TextFlow></tlfTextObject>
            ,null,undefined,3,3,"Scene 1",true,false);
         }
         finally
         {
            XML.setSettings(this._SafeStr_2517);
         }
         TCMRuntimeManager.getSingleton()._SafeStr_1241(this);
      }
      
      public function showAd() : *
      {
         try
         {
            trace("showAd");
            this._SafeStr_1374 = new _SafeCls_187();
            stage.addChild(this._SafeStr_1374);
         }
         catch(e:Error)
         {
         }
      }
      
      public function lolz(param1:MouseEvent) : *
      {
         this.showAd();
      }
      
      public function addFriend(param1:String) : *
      {
         var _loc2_:* = 0;
         while(_loc2_ < this.friendList.length)
         {
            if(this.friendList[_loc2_] == param1)
            {
               return;
            }
            _loc2_++;
         }
         this.friendList.push(param1);
         this._SafeStr_1751();
      }
      
      public function removeFriend(param1:String) : *
      {
         var _loc2_:* = 0;
         while(_loc2_ < this.friendList.length)
         {
            if(this.friendList[_loc2_] == param1)
            {
               this.friendList.splice(_loc2_,1);
               return;
            }
            _loc2_++;
         }
         this._SafeStr_1751();
      }
      
      public function amIFriendsWith(param1:Array) : Boolean
      {
         var _loc3_:* = undefined;
         var _loc2_:* = 0;
         while(_loc2_ < this.friendList.length)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               if(this.friendList[_loc2_] == param1[_loc3_])
               {
                  return true;
               }
               _loc3_++;
            }
            _loc2_++;
         }
         return false;
      }
      
      public function _SafeStr_1751() : *
      {
         var variables:URLVariables;
         var encryptedPass:String;
         var loader:URLLoader;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            var _loc2_:Number = Number(param1.target.data["code"]);
            xtr("got data update response from server, code: " + _loc2_);
            if(_loc2_ == 0)
            {
               trace("friend list updated successfully");
            }
            else if(_loc2_ == 1)
            {
               trace("username fail");
            }
            else if(_loc2_ == 2)
            {
               trace("password fail");
            }
         };
         var randomShit1:Number = Number(getTimer());
         var randomShit2:Number = Math.floor(Math.random() * 1000) + 1;
         var randomShit3:Number = randomShit1 * randomShit2;
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 12;
         variables.username = this.localTankName;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         encryptedPass = MD5.hash(this.newAccPassword);
         variables.password = encryptedPass;
         variables.friendlist = this.friendList.join("#");
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_355);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function _SafeStr_1136(param1:String) : *
      {
         if(Boolean(this._SafeStr_1227) && this._SafeStr_1227._SafeStr_1041)
         {
            this._SafeStr_1227.send("checkDoubleConnection",param1);
         }
      }
      
      public function _SafeStr_362(param1:Event) : *
      {
         this.i = 0;
         while(this.i < 224)
         {
            this._SafeStr_2561[this.i] = [this.i,false];
            ++this.i;
         }
      }
      
      public function _SafeStr_2280(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 223 && this._SafeStr_1093)
         {
            this.developerConsole.toggle();
         }
      }
      
      public function _SafeStr_2224(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 9)
         {
            if(Boolean(this.newaccenteruserpasswindow) && Boolean(this.newaccenteruserpasswindow.stage))
            {
               stage.focus = this.newaccenteruserpasswindow.usernametext;
            }
            else
            {
               stage.focus = stage;
               ExternalInterface.call("tabPressed");
            }
         }
         if(param1.keyCode == 13)
         {
            if(Boolean(this.newaccenteruserpasswindow) && Boolean(this.newaccenteruserpasswindow.stage))
            {
               this.newAccEnterUserPassSubmit(null);
            }
         }
      }
      
      public function _SafeStr_561() : *
      {
         trace("pausing");
      }
      
      public function recvDevConsoleCommand(param1:String) : *
      {
         trace("received remote console command: " + param1);
         this.developerConsole.interpretString(param1);
      }
      
      public function xtr(param1:String) : *
      {
         trace(param1);
         this.xTraceString += param1;
         this.xTraceString += "\n";
         if(this._SafeStr_2574)
         {
            this._SafeStr_1789.textarea.text = this.xTraceString;
            this._SafeStr_1789.textarea.verticalScrollPosition = this._SafeStr_1789.textarea.maxVerticalScrollPosition;
         }
      }
      
      public function _SafeStr_1408(param1:KeyboardEvent) : void
      {
         this._SafeStr_2561[param1.keyCode][1] = true;
      }
      
      public function _SafeStr_715(param1:KeyboardEvent) : void
      {
         this._SafeStr_2561[param1.keyCode][1] = false;
      }
      
      public function isKeyDown(param1:*) : *
      {
         return this._SafeStr_2561[param1][1];
      }
      
      public function _SafeStr_2237(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:String = "";
         _loc2_ += "=========\n";
         _loc2_ += "Error:\n";
         _loc2_ += param1.error.toString() + "\n";
         _loc2_ += "stack trace: \n";
         _loc2_ += param1.error.getStackTrace().toString() + "\n";
         this._SafeStr_1210(_loc2_);
      }
      
      public function _SafeStr_1322() : Boolean
      {
         var _loc1_:String = this.root.loaderInfo.url.split("/")[2];
         trace("domain: " + _loc1_);
         var _loc2_:* = 0;
         while(_loc2_ < this.allowed_sites.length)
         {
            if(_loc1_.indexOf(this.allowed_sites[_loc2_]) == _loc1_.length - this.allowed_sites[_loc2_].length && _loc1_.indexOf(this.allowed_sites[_loc2_]) != -1)
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }
      
      public function loading(param1:Event) : void
      {
         var _loc2_:Number = Number(this.loaderInfo.bytesTotal);
         var _loc3_:Number = Number(this.loaderInfo.bytesLoaded);
         trace("loading... total: " + _loc2_ + ", loaded: " + _loc3_);
         this._SafeStr_1810.text = Math.floor(_loc3_ / _loc2_ * 100) + "%";
         if(_loc2_ == _loc3_)
         {
            trace("done! total: " + _loc2_ + ", loaded: " + _loc3_);
            this.removeEventListener(Event.ENTER_FRAME,this.loading);
            if(this._SafeStr_758)
            {
               this.finshedLoading();
            }
         }
      }
      
      public function _SafeStr_433(param1:Event) : void
      {
         trace("!!! IO ERROR !!!");
      }
      
      public function finshedLoading() : void
      {
         gotoAndStop(2);
         this._SafeStr_850();
         if(this.root.loaderInfo.url.split("/")[0] != "file:")
         {
            this.beginMinuteLog();
         }
         else
         {
            trace("playing locally, no minute logging");
         }
      }
      
      public function _SafeStr_1656(param1:MouseEvent = null) : void
      {
         var _loc2_:URLRequest = new URLRequest(this._SafeStr_372 + "igl.php");
         navigateToURL(_loc2_,"_blank");
      }
      
      public function tryGetCampaignData() : *
      {
         this.xtr("tryGetCampaignData");
         if(!this.isUserAGuest(this.localTankName))
         {
            this.xtr("were a registered user, so checking from the DB first.");
            this.retreiveCampaignData(this.localTankName);
         }
         else
         {
            this.xtr("were a guest user, so going straight to localdata.");
            this.loadCampaignFromLocal();
         }
      }
      
      public function loadCampaignFromLocal() : *
      {
         this.xtr("loadCampaignFromLocal");
         if(this._SafeStr_1919.data.singlePlayerScores)
         {
            this.singlePlayerScores = this._SafeStr_1919.data.singlePlayerScores.slice();
            this.xtr("there is local campaign data, using it");
         }
         else
         {
            this.singlePlayerScores = this._SafeStr_1045.slice();
            this.xtr("no local campaign data, setting default scores");
         }
      }
      
      public function _SafeStr_2321() : void
      {
         this._SafeStr_2007(this.localTankName,this.singlePlayerScores.join(","));
         this._SafeStr_1919.data.singlePlayerScores = this.singlePlayerScores.slice();
         try
         {
            this._SafeStr_1919.flush();
         }
         catch(e:Error)
         {
            trace("SO FLUSH ERROR!");
         }
      }
      
      public function _SafeStr_810(param1:KeyboardEvent) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:TextField = null;
         if(Boolean(param1.ctrlKey) && Boolean(param1.shiftKey))
         {
            if(param1.keyCode == 57 && this._SafeStr_358)
            {
               this._SafeStr_1093 = !this._SafeStr_1093;
               this.readySound.play();
            }
         }
         if(Boolean(param1.ctrlKey) && Boolean(param1.shiftKey))
         {
            if(param1.keyCode == 80)
            {
               this._SafeStr_358 = !this._SafeStr_358;
            }
         }
         if(Boolean(param1.shiftKey) && this._SafeStr_1093)
         {
            if(param1.keyCode == 57)
            {
            }
            if(param1.keyCode == 56)
            {
               this.xtr("==================================" + "\n");
            }
            if(param1.keyCode == 55)
            {
               this.xtr("clearing explosionarray");
               _loc2_ = 0;
               while(_loc2_ < this._SafeStr_2299.length)
               {
                  try
                  {
                     removeChild(this._SafeStr_2299[_loc2_]);
                  }
                  catch(e:Error)
                  {
                  }
                  try
                  {
                     this._SafeStr_2299[_loc2_].stop();
                  }
                  catch(e:Error)
                  {
                  }
                  try
                  {
                     this._SafeStr_2299[_loc2_] = null;
                  }
                  catch(e:Error)
                  {
                  }
                  _loc2_++;
               }
               this._SafeStr_2299 = [];
            }
            if(param1.keyCode == 54)
            {
               this.toggleSnowTest = !this.toggleSnowTest;
            }
            if(param1.keyCode == 53)
            {
            }
            if(param1.keyCode == 52)
            {
               removeEventListener(Event.ENTER_FRAME,this.update);
            }
            if(param1.keyCode == 49)
            {
            }
            if(param1.keyCode == 50)
            {
               this.wtfMode = !this.wtfMode;
               this.xtr("wtfMode: " + this.wtfMode);
            }
            if(param1.keyCode == 51)
            {
               trace("stop");
            }
            if(param1.keyCode == 70)
            {
            }
         }
         if(Boolean(param1.shiftKey) && param1.keyCode == 70 && Boolean(this.localSpecial))
         {
            if(stage.focus is TextField)
            {
               _loc3_ = stage.focus as TextField;
               if(_loc3_.type != "input")
               {
                  this._SafeStr_2286();
               }
            }
            else
            {
               this._SafeStr_2286();
            }
         }
      }
      
      public function _SafeStr_1870(param1:Number) : *
      {
         this._SafeStr_741 = true;
         this._SafeStr_2147 = this._SafeStr_380[param1][0].slice();
         this._SafeStr_451 = this._SafeStr_380[param1][0].slice();
         this._SafeStr_430[0] = false;
         this._SafeStr_430[1] = this._SafeStr_380[param1][0][1];
         this._SafeStr_430[2] = this._SafeStr_380[param1][0][2];
         this._SafeStr_430[3] = this._SafeStr_380[param1][0][3];
         this._SafeStr_1815 = this._SafeStr_380[param1][1].slice();
         this.tankNameArray = this._SafeStr_380[param1][2].slice();
         this.tankNameArray[0] = this.localTankName;
         this._SafeStr_1162 = this._SafeStr_380[param1][3].slice();
         this.levelChosen = this._SafeStr_380[param1][4];
         this.teamPlay = this._SafeStr_380[param1][6];
         this.hosting = true;
         this.localTankID = 0;
         this._SafeStr_2381 = getTimer() + 4000;
         this._SafeStr_1890 = getTimer();
         if(param1 == 0)
         {
            this._SafeStr_1830 = 0;
         }
         this.mouseAiming = this.singlePlayerMouseAiming;
         var _loc2_:* = 0;
         while(_loc2_ < 8)
         {
            this._SafeStr_2011[_loc2_] = [0,1,11,12,16];
            _loc2_++;
         }
         this.inGame = true;
         this.inLobby = false;
         this._SafeStr_2565 = true;
         this._SafeStr_1579 = true;
         gotoAndStop(4);
      }
      
      public function _SafeStr_381() : *
      {
         if(this._SafeStr_2574)
         {
            stage.removeChild(this._SafeStr_1789);
            this._SafeStr_2574 = false;
         }
         else
         {
            this._SafeStr_1789 = stage.addChild(new _SafeCls_215());
            this._SafeStr_1789.x = 365;
            this._SafeStr_1789.y = 280;
            this._SafeStr_1789.textarea.text = this.xTraceString;
            this._SafeStr_1789.textarea.verticalScrollPosition = this._SafeStr_1789.textarea.maxVerticalScrollPosition;
            this._SafeStr_2574 = true;
         }
      }
      
      public function loadComplete(param1:Event) : void
      {
         this.kongregate = param1.target.content;
         this.kongregate.services.connect();
         this._SafeStr_2566 = true;
      }
      
      public function _SafeStr_1210(param1:String) : void
      {
      }
      
      public function _SafeStr_360(param1:String) : void
      {
      }
      
      public function _SafeStr_1530() : *
      {
         var onLoaded:Function;
         var myTextLoader:URLLoader = null;
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         this.xtr("check fgl window");
         if(this._SafeStr_1794)
         {
            onLoaded = function(param1:Event):void
            {
               fglWindowResponse = param1.target.data;
               xtr("got fgl window response: " + fglWindowResponse);
            };
            this.xtr("on fgl");
            myTextLoader = new URLLoader();
            myTextLoader.addEventListener(Event.COMPLETE,onLoaded);
            randomShit1 = Number(getTimer());
            randomShit2 = Math.floor(Math.random() * 1000) + 1;
            randomShit3 = randomShit1 * randomShit2;
            myTextLoader.load(new URLRequest(this._SafeStr_372 + "fglwindow.txt?ignore=" + randomShit3));
         }
      }
      
      public function _SafeStr_1634() : *
      {
      }
      
      public function _SafeStr_2384(param1:MouseEvent) : *
      {
      }
      
      public function beginMinuteLog() : *
      {
         this._SafeStr_1736 = setInterval(this._SafeStr_2327,180000);
         this._SafeStr_363 = setTimeout(this._SafeStr_2041,300000);
         stage.addEventListener(MouseEvent.CLICK,this._SafeStr_899);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this._SafeStr_899);
         this._SafeStr_1219 = true;
         trace("beginMinuteLog");
      }
      
      public function _SafeStr_2041() : *
      {
         clearInterval(this._SafeStr_1736);
         this._SafeStr_1219 = false;
         trace("endMinuteLog: 5 minutes of inactivity");
      }
      
      public function _SafeStr_899(param1:Event) : *
      {
         clearTimeout(this._SafeStr_363);
         this._SafeStr_363 = setTimeout(this._SafeStr_2041,300000);
         if(!this._SafeStr_1219)
         {
            this._SafeStr_1736 = setInterval(this._SafeStr_2327,60000);
            this._SafeStr_1219 = true;
            trace("restarting logging");
         }
      }
      
      public function _SafeStr_2209() : *
      {
         var randomShit1:Number;
         var randomShit2:Number;
         var randomShit3:Number;
         var onLoaded:Function = null;
         onLoaded = function(param1:Event):void
         {
            var _loc2_:String = null;
            var _loc3_:Array = null;
            _loc2_ = param1.target.data;
            _loc3_ = _loc2_.split(",");
            trace("using txt address: " + _loc3_[0]);
            trace("txt address: " + _loc3_[1]);
            trace("developer key: " + _loc3_[2]);
            if(_loc3_[0] == "1")
            {
               SERVER_ADDRESS = _loc3_[1];
               DEVELOPER_KEY = _loc3_[2];
               usingCumulus = true;
            }
         };
         var myTextLoader:URLLoader = new URLLoader();
         myTextLoader.addEventListener(Event.COMPLETE,onLoaded);
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         myTextLoader.load(new URLRequest(this._SafeStr_372 + "rtmfp.txt?ignore=" + randomShit3));
      }
      
      public function _SafeStr_1588(param1:MouseEvent) : *
      {
         this.newplayerhelper.visible = false;
      }
      
      public function _SafeStr_2307(param1:MouseEvent) : *
      {
         navigateToURL(new URLRequest("http://www.jamesives.com"));
      }
      
      public function _SafeStr_542(param1:MouseEvent) : *
      {
         navigateToURL(new URLRequest("https://www.facebook.com/pages/Tiny-Tanks/522139551180704"));
      }
      
      public function _SafeStr_987() : void
      {
         var randomShit1:Number;
         var randomShit2:Number;
         var randomShit3:Number;
         var onLoaded:Function = null;
         onLoaded = function(param1:Event):void
         {
            xtr("Latest version loaded from server: " + param1.target.data + " this is version" + currentGameVersion);
            if(currentGameVersion != param1.target.data)
            {
               updatenotice.visible = true;
            }
         };
         var myTextLoader:URLLoader = new URLLoader();
         myTextLoader.addEventListener(Event.COMPLETE,onLoaded);
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         myTextLoader.load(new URLRequest(this._SafeStr_372 + "latestversion.txt?ignore=" + randomShit3));
      }
      
      public function _SafeStr_469(param1:MouseEvent) : *
      {
         this._SafeStr_2187(0);
      }
      
      public function _SafeStr_2590(param1:MouseEvent) : *
      {
         this._SafeStr_2187(1);
      }
      
      public function _SafeStr_2187(param1:Number) : *
      {
         trace("logarmorclickattempt: " + param1);
         var _loc2_:URLRequest = new URLRequest(this._SafeStr_372 + "armorclicklog.php");
         _loc2_.method = URLRequestMethod.POST;
         var _loc3_:URLVariables = new URLVariables();
         _loc3_.logotype = param1;
         _loc3_.basePasswordString = this.basePasswordString;
         _loc2_.data = _loc3_;
         var _loc4_:URLLoader = new URLLoader(_loc2_);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         _loc4_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc4_.load(_loc2_);
      }
      
      public function _SafeStr_1156(param1:MouseEvent) : *
      {
         var _loc2_:String = "http://www.multiplayer.gg/tt/scripts/igl2.php?id=";
         if(this._SafeStr_1383)
         {
            _loc2_ += "splash_jaludo";
         }
         else
         {
            _loc2_ += "splash_viral";
         }
         navigateToURL(new URLRequest(_loc2_));
      }
      
      public function _SafeStr_1894(param1:MouseEvent) : *
      {
         navigateToURL(new URLRequest("http://www.multiplayer.gg/tt/scripts/igl2.php?id=menu_jaludo"));
      }
      
      public function _SafeStr_735(param1:Event) : *
      {
         this._SafeStr_1772.stop();
         stage.removeChild(this._SafeStr_1772);
         this._SafeStr_1872();
      }
      
      public function _SafeStr_2188(param1:MouseEvent) : *
      {
         this._SafeStr_480();
      }
      
      public function _SafeStr_480() : void
      {
         this._SafeStr_1772.stop();
         this._SafeStr_1772.removeEventListener(MouseEvent.CLICK,this._SafeStr_2188);
         stage.removeChild(this._SafeStr_1772);
      }
      
      public function _SafeStr_2432(param1:Event) : *
      {
         if(!this._SafeStr_1772.stage)
         {
            trace("Intro finished");
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_2432);
            this._SafeStr_1872();
         }
      }
      
      public function _SafeStr_288(param1:MouseEvent = null) : void
      {
         this._SafeStr_1418 = true;
         this._SafeStr_451[0] = true;
         this._SafeStr_451[1] = false;
         this._SafeStr_451[2] = false;
         this._SafeStr_451[3] = false;
         gotoAndStop(4);
         this.inLobby = false;
      }
      
      public function _SafeStr_2215() : *
      {
         var _loc1_:* = 0;
         while(_loc1_ < this._SafeStr_486)
         {
            this._SafeStr_2147[_loc1_] = false;
            this._SafeStr_451[_loc1_] = false;
            this._SafeStr_1162[_loc1_] = _loc1_ % 4;
            this._SafeStr_2011[_loc1_] = [0,1,2,12,16];
            this._SafeStr_1766[_loc1_] = false;
            this._SafeStr_1573[_loc1_] = false;
            this._SafeStr_1764[_loc1_] = false;
            this.tankNameArray[_loc1_] = null;
            this._SafeStr_1250[_loc1_] = null;
            this._SafeStr_2180[_loc1_] = 0;
            this._SafeStr_1233 = [];
            this._SafeStr_1303[_loc1_] = null;
            _loc1_++;
         }
      }
      
      public function _SafeStr_2494(param1:Event = null) : *
      {
         this._SafeStr_1878 = this.musicLoopSound.play(0,9999);
         if(!this.muteMusic)
         {
            this._SafeStr_1811.volume = this._SafeStr_946;
         }
         else
         {
            this._SafeStr_1811.volume = 0;
         }
         this._SafeStr_1878.soundTransform = this._SafeStr_1811;
      }
      
      public function apiInitialized(param1:_SafeCls_108, param2:_SafeCls_107) : void
      {
         trace("jaludo ad api initialised");
         this._SafeStr_532 = true;
      }
      
      public function _SafeStr_1872() : *
      {
         if(!this.userLoggedIn)
         {
            this.changetitlebutton.mouseEnabled = false;
            this.changetitlelabel.visible = false;
            this.coinsicon.visible = false;
            this.premiumicon.visible = false;
            this.signoutbutton.visible = false;
            this.buygemsbutton.visible = false;
            this.localNameText.text = "";
            this.localTitleText.text = "";
            this.localCoinsText.text = "";
            this.localPremiumText.text = "";
            this.namecardtitle.text = "";
            if(this._SafeStr_571.data.usernameoremail != undefined && this._SafeStr_571.data.password != undefined)
            {
               this.newAccLoginRequest(this._SafeStr_571.data.usernameoremail,this._SafeStr_571.data.password);
               this.newAccPassword = this._SafeStr_571.data.password;
               this.xtr("signing in automatically");
            }
            else if(this._SafeStr_1767)
            {
               this.newAccAskAccount();
            }
            else if(this._SafeStr_656)
            {
               this.loginWithKong();
            }
            else if(this._SafeStr_1794)
            {
               this._SafeStr_903();
            }
            else if(this._SafeStr_912)
            {
               trace("on miniclip!");
               this._SafeStr_2647();
            }
            else if(this._SafeStr_1383)
            {
               this._SafeStr_2377();
            }
            else
            {
               this.newAccAskAccount();
            }
         }
         else
         {
            this.localNameText.text = this.localTankNameLabel;
            if(this.localTankTitle != "")
            {
               this.localTitleText.text = this.localTankTitle;
            }
            else
            {
               this.localTitleText.text = this.getPlayerTitle(Math.floor(Math.sqrt(this.localStatsArray[5]) / 10));
            }
            if(this.localSpecial)
            {
               this.changetitlelabel.visible = true;
               this.changetitlebutton.mouseEnabled = true;
               this.fullscreenbutton.visible = true;
            }
            else
            {
               this.changetitlelabel.visible = false;
               this.changetitlebutton.mouseEnabled = false;
            }
            if(this.isUserAGuest(this.localTankName))
            {
               this.namecardtitle.text = "Playing as guest:";
               this.coinsHighlight.visible = false;
            }
            else
            {
               this.namecardtitle.text = "Logged in as:";
               this.localCoinsText.text = String(this.localCoins);
               this.coinsHighlight.visible = true;
               this.localPremiumText.text = String(this.localPremium);
            }
            if(this._SafeStr_912)
            {
               if(this.isUserAGuest(this.localTankName) == false)
               {
                  this._SafeStr_2383();
               }
               this._SafeStr_1882.visible = false;
               this.jamesives.visible = false;
               this.signoutbutton.visible = false;
            }
            this.buygemsbutton.visible = true;
         }
      }
      
      public function loginWithKong() : *
      {
         if(this._SafeStr_2566)
         {
            if(this.kongregate.services.isGuest())
            {
               this._SafeStr_2609();
            }
            else
            {
               this.kongLogin("k_" + this.kongregate.services.getUsername());
            }
            clearInterval(this._SafeStr_2325);
         }
         else
         {
            clearInterval(this._SafeStr_2325);
            this._SafeStr_2325 = setInterval(this.loginWithKong,1000);
         }
      }
      
      public function _SafeStr_2377() : *
      {
         var showXML:Function = null;
         var xmlLoader:URLLoader = null;
         showXML = function(param1:Event):void
         {
            var _loc2_:XML = null;
            traceString += "showXML. ";
            if(param1.target.data == "{\"ok\":false,\"error\":\"Not logged in\",\"code\":208}")
            {
               trace("on jaludo but not logged into their site");
               traceString += "on jaludo but not logged into their site. ";
               newAccAskAccount();
            }
            else
            {
               _loc2_ = new XML(param1.target.data);
               trace("got jaludo username: " + _loc2_.profile.username);
               traceString += "got jaludo username: " + _loc2_.profile.username;
               kongLogin("j_" + _loc2_.profile.username);
            }
         };
         trace("on jaludo");
         this.traceString += "beginJaludo(). ";
         if(this._SafeStr_755.toLowerCase() == "speeleiland.nl" || this._SafeStr_755.toLowerCase() == "wyspagier.pl" || this._SafeStr_755.toLowerCase() == "brincar.pt" || this._SafeStr_755.toLowerCase() == "oyunyolu.net" || this._SafeStr_755.toLowerCase() == "leukespellen.be" || this._SafeStr_755.toLowerCase() == "spielkarussell.de" || this._SafeStr_755.toLowerCase() == "juegoswapos.es")
         {
            this.traceString += " We are on an SSO site. ";
            xmlLoader = new URLLoader();
            xmlLoader.addEventListener(Event.COMPLETE,showXML);
            xmlLoader.load(new URLRequest("http://www." + this._SafeStr_755 + "/api/user/1.0/multiplayeruserdata/"));
         }
         else
         {
            this.newAccAskAccount();
         }
      }
      
      public function _SafeStr_2647() : *
      {
         trace("BEGIN MINICLIP IS BEING RUNNNNNNNNN");
         this._SafeStr_1882.visible = false;
         this.jamesives.visible = false;
         this.signoutbutton.visible = false;
         this._SafeStr_289(null);
      }
      
      public function _SafeStr_289(param1:Event) : void
      {
         if(_SafeCls_4.services._SafeStr_607())
         {
            trace("miniclip location validated");
            _SafeCls_4.services.addEventListener(_SafeCls_84._SafeStr_2496,this.miniclipHandleUserDetails);
            _SafeCls_4.services.addEventListener(_SafeCls_84._SafeStr_1558,this._SafeStr_1908);
            _SafeCls_4.services._SafeStr_608();
         }
         else
         {
            trace("miniclip API location failed but our own location said we\'re on miniclip...");
         }
      }
      
      public function miniclipHandleUserDetails(param1:Event) : *
      {
         _SafeCls_4.services.removeEventListener(_SafeCls_84._SafeStr_2496,this.miniclipHandleUserDetails);
         trace("miniclipHandleUserDetails");
         this._SafeStr_1260 = _SafeCls_4.services._SafeStr_782;
         trace("Got miniclip user details! id : " + this._SafeStr_1260.id);
         this._SafeStr_2383();
         var _loc2_:String = "m#" + this._SafeStr_1260.id + "#" + this._SafeStr_1260.nickname;
         this.kongLogin(_loc2_,true);
      }
      
      public function _SafeStr_1908(param1:Event) : *
      {
         this._SafeStr_2609();
      }
      
      public function _SafeStr_2383() : *
      {
         trace("Avatar location: " + this._SafeStr_1260.playerAvatarURL);
         if(!this.storeOurMiniclipAvatar)
         {
            this.storeOurMiniclipAvatar = new Loader();
            this.storeOurMiniclipAvatar.load(new URLRequest("http://" + this.root.loaderInfo.url.split("/")[2] + this._SafeStr_1260.playerAvatarURL + "&w=100&h=100"));
         }
         this.miniclipavatar.addChild(this.storeOurMiniclipAvatar);
         this.miniclipavatar.addChild(new _SafeCls_241());
      }
      
      public function _SafeStr_1366(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         if(!(this.localNameText.text == "Unnamed" || this.localNameText.text == ""))
         {
            this.joingamewindow.visible = true;
            this._SafeStr_742.visible = false;
            this._SafeStr_1354();
            this.getRoomList(null);
            this.joingamewindow.y = 760;
            _SafeCls_2._SafeStr_923(this.joingamewindow,{
               "y":250,
               "time":0.3,
               "transition":"easeoutback"
            });
         }
      }
      
      public function _SafeStr_1571(param1:FocusEvent) : *
      {
         if(this.localNameText.text == "Unnamed")
         {
            this.localNameText.text = "";
         }
      }
      
      public function _SafeStr_1290(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         _SafeCls_2._SafeStr_923(this.joingamewindow,{
            "y":760,
            "time":0.3,
            "transition":"easeinback",
            "onComplete":this._SafeStr_2090
         });
      }
      
      public function _SafeStr_2090(param1:MouseEvent = null) : *
      {
         this.joingamewindow.visible = false;
      }
      
      public function itemRollOver(param1:ListEvent) : *
      {
         if(param1.index != this._SafeStr_2658)
         {
            this._SafeStr_1700();
            this._SafeStr_2387(param1);
            this._SafeStr_2658 = param1.index;
         }
      }
      
      public function itemRollOut(param1:ListEvent) : *
      {
         this._SafeStr_1700();
         this._SafeStr_2658 = -1;
      }
      
      public function _SafeStr_347(param1:MouseEvent) : *
      {
         this._SafeStr_1700();
         this._SafeStr_2658 = -1;
      }
      
      public function _SafeStr_1700() : *
      {
         if(this._SafeStr_2137)
         {
            this._SafeStr_2137.destroy();
            this.joingamewindow.removeChild(this._SafeStr_2137);
            this._SafeStr_2137 = null;
         }
      }
      
      public function stripHTML(param1:String) : String
      {
         return param1.replace(/<.*?>/g,"");
      }
      
      public function _SafeStr_2387(param1:ListEvent) : *
      {
         var _loc2_:Number = param1.index;
         var _loc3_:String = this.stripHTML(this.joingamewindow.roomList.dataProvider.getItemAt(_loc2_).Roomname);
         var _loc4_:String = this.stripHTML(this.joingamewindow.roomList.dataProvider.getItemAt(_loc2_).Players);
         var _loc5_:String = this.stripHTML(this.joingamewindow.roomList.dataProvider.getItemAt(_loc2_).Mode);
         var _loc6_:String = this.stripHTML(this.joingamewindow.roomList.dataProvider.getItemAt(_loc2_).Password);
         var _loc7_:String = this.stripHTML(this.joingamewindow.roomList.dataProvider.getItemAt(_loc2_).Aiming);
         var _loc8_:String = this.stripHTML(this.joingamewindow.roomList.dataProvider.getItemAt(_loc2_).Distancekm);
         var _loc9_:Array = this.joingamewindow.roomList.dataProvider.getItemAt(_loc2_).UsernameList.split("#");
         var _loc10_:String = this.joingamewindow.roomList.dataProvider.getItemAt(_loc2_).Mapdata;
         var _loc11_:String = this.joingamewindow.roomList.dataProvider.getItemAt(_loc2_).Mapsize;
         var _loc12_:String = this.joingamewindow.roomList.dataProvider.getItemAt(_loc2_).Mapid;
         this._SafeStr_2137 = new _SafeCls_198(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_,_loc12_);
         this._SafeStr_2137.mouseEnabled = false;
         this._SafeStr_2137.mouseChildren = false;
         this._SafeStr_2137.tabChildren = false;
         this._SafeStr_2137.tabEnabled = false;
         this.joingamewindow.addChild(this._SafeStr_2137);
         this._SafeStr_2137.x = 185;
         this._SafeStr_2137.y = 100;
         this._SafeStr_2137.alpha = 0;
         _SafeCls_2._SafeStr_923(this._SafeStr_2137,{
            "alpha":1,
            "delay":0.6,
            "time":0.2,
            "transition":"linear"
         });
      }
      
      public function _SafeStr_688(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this.joingamewindow.mouseChildren = false;
         this._SafeStr_742.visible = true;
         this._SafeStr_742.gamename.text = this.localNameText.text + "\'s game";
         this._SafeStr_742.gamemaxplayers.text = String(this.localMaxPlayers);
         switch(this.gameMode)
         {
            case 0:
               this._SafeStr_742.gamegamemode.text = "Last tank alive";
               break;
            case 1:
               this._SafeStr_742.gamegamemode.text = "Deathmatch";
               break;
            case 2:
               this._SafeStr_742.gamegamemode.text = "Capture the flag";
         }
         if(this.mouseAiming)
         {
            this._SafeStr_742.gameaimingmode.text = "Mouse";
         }
         else
         {
            this._SafeStr_742.gameaimingmode.text = "Normal";
         }
      }
      
      public function _SafeStr_1888(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this._SafeStr_742.visible = false;
         this.joingamewindow.mouseChildren = true;
      }
      
      public function startLevelEditor(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         if(!(this.localNameText.text == "Unnamed" || this.localNameText.text == ""))
         {
            this._SafeStr_1237();
            gotoAndStop(5);
         }
      }
      
      public function newAccCheckSO() : void
      {
         if(this._SafeStr_571.data.usernameoremail != undefined && this._SafeStr_571.data.password != undefined)
         {
            this.newAccLoginRequest(this._SafeStr_571.data.usernameoremail,this._SafeStr_571.data.password);
         }
         else
         {
            this.newAccAskAccount();
         }
      }
      
      public function newAccAskAccount() : void
      {
         this.newaccaskaccountwindow = addChild(new newaccaskaccountwindowmc());
         this.newaccaskaccountwindow.x = 365;
         this.newaccaskaccountwindow.y = -100;
         this.newaccaskaccountwindow.yesbutton.addEventListener(MouseEvent.CLICK,this.newAccAskAccountYes);
         this.newaccaskaccountwindow.nobutton.addEventListener(MouseEvent.CLICK,this.newAccAskAccountNo);
         _SafeCls_2._SafeStr_923(this.newaccaskaccountwindow,{
            "y":250,
            "time":0.4,
            "transition":"easeoutback"
         });
         if(!this.muteSfx)
         {
            this.whooshSound.play();
         }
      }
      
      public function newAccAskAccountYes(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         removeChild(this.newaccaskaccountwindow);
         this.newAccEnterUserPass();
      }
      
      public function newAccAskAccountNo(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         removeChild(this.newaccaskaccountwindow);
         this.newAccEnterUser();
      }
      
      public function newAccEnterUserPass() : void
      {
         this.newaccenteruserpasswindow = addChild(new newaccenteruserpasswindowmc());
         this.newaccenteruserpasswindow.x = 365;
         this.newaccenteruserpasswindow.y = 250;
         this.newaccenteruserpasswindow.login_remember.rememberbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1239);
         this._SafeStr_645 = true;
         this.newaccenteruserpasswindow.login_remember.gotoAndStop(2);
         this.newaccenteruserpasswindow.submitbutton.addEventListener(MouseEvent.CLICK,this.newAccEnterUserPassSubmit);
         this.newaccenteruserpasswindow.backbutton.addEventListener(MouseEvent.CLICK,this.newAccEnterUserPassBack);
      }
      
      public function newAccEnterUserPassSubmit(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         this.newaccenteruserpasswindow.submitbutton.mouseEnabled = false;
         this.newaccenteruserpasswindow.backbutton.mouseEnabled = false;
         this.newaccenteruserpasswindow.submitbutton.alpha = 0.6;
         this.newaccenteruserpasswindow.backbutton.alpha = 0.6;
         this.newAccUsername = this.newaccenteruserpasswindow.usernametext.text;
         this.newAccPassword = this.newaccenteruserpasswindow.passwordtext.text;
         this.newAccLoginRequest();
      }
      
      public function checkServerReponseHash(param1:Event) : Boolean
      {
         var _loc4_:String = null;
         var _loc2_:String = param1.target.data;
         var _loc3_:URLVariables = new URLVariables(_loc2_);
         var _loc5_:Array = _loc2_.split("&");
         _loc5_.pop();
         _loc4_ = _loc5_.join("&");
         if(MD5.hash(_loc4_ + this.secretEncryptionString) != _loc3_.entirehash)
         {
            this._SafeStr_830("Security error");
            trace("server response hash failed!");
            return false;
         }
         param1.target.data = _loc3_;
         return true;
      }
      
      public function newAccLoginRequest(param1:String = "", param2:String = "") : void
      {
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         var usernameS:String = param1;
         var passwordS:String = param2;
         onComplete = function(param1:Event):void
         {
            var _loc3_:String = null;
            var _loc4_:* = undefined;
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            var _loc2_:Number = Number(param1.target.data["code"]);
            newAccUsername = param1.target.data["retreivedusername"];
            if(_loc2_ == 0)
            {
               _loc3_ = param1.target.data["checksum"];
               if(MD5.hash(newAccUsername + secretEncryptionString) != _loc3_)
               {
                  newAccLoginError("Please try again");
               }
               else
               {
                  _loc4_ = param1.target.data["friendlist"];
                  friendList = _loc4_.split("#");
                  nearLatitude = Number(param1.target.data["lat"]);
                  nearLongitude = Number(param1.target.data["long"]);
                  trace("maxmind lat: " + nearLatitude + " long " + nearLongitude);
                  newAccLoginComplete();
               }
            }
            else if(_loc2_ == 1)
            {
               newAccLoginError("Username or email not recognised");
            }
            else if(_loc2_ == 2)
            {
               newAccLoginError("Password incorrect");
            }
            else if(_loc2_ == 3)
            {
               newAccLoginError("Please try again");
            }
         };
         var randomShit1:Number = Number(getTimer());
         var randomShit2:Number = Math.floor(Math.random() * 1000) + 1;
         var randomShit3:Number = randomShit1 * randomShit2;
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 1;
         if(Boolean(usernameS) && Boolean(passwordS))
         {
            variables.usernameoremail = usernameS;
            variables.password = passwordS;
         }
         else
         {
            variables.usernameoremail = this.newAccUsername;
            variables.password = this.newAccPassword;
         }
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_866);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function newAccEnterUserPassBack(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         removeChild(this.newaccenteruserpasswindow);
         this.newAccAskAccount();
      }
      
      public function newAccLoginComplete() : void
      {
         try
         {
            _SafeCls_188._SafeStr_2479.trackEvent("Total Plays","Total Plays: Logged In");
         }
         catch(e:Error)
         {
         }
         this._SafeStr_559 = true;
         if(this._SafeStr_571.data.usernameoremail == undefined || this._SafeStr_571.data.password == undefined)
         {
            removeChild(this.newaccenteruserpasswindow);
         }
         this.newacclogincompletewindow = addChild(new newacclogincompletewindowmc());
         this.newacclogincompletewindow.x = 365;
         this.newacclogincompletewindow.y = 250;
         this.newacclogincompletewindow.usernametext.text = this.newAccUsername;
         this.newacclogincompletewindow.okbutton.addEventListener(MouseEvent.CLICK,this.newAccLoginCompleteOk);
         this.localTankName = this.newAccUsername;
         this.localTankNameLabel = this.localTankName;
         this.localNameText.text = this.localTankName;
         this.namecardtitle.text = "Logged in as:";
         this.coinsicon.visible = true;
         this.premiumicon.visible = true;
         this.signoutbutton.visible = true;
         this.buygemsbutton.visible = true;
         this.retreiveUserData(this.localTankName);
         this.userLoggedIn = true;
         this.getItemCostsFromServer();
         this.tryGetCampaignData();
         if(this._SafeStr_645)
         {
            this._SafeStr_571.data.usernameoremail = this.newAccUsername;
            this._SafeStr_571.data.password = this.newAccPassword;
            try
            {
               this._SafeStr_571.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
         }
         this._SafeStr_1178 = "";
      }
      
      public function newAccLoginCompleteOk(param1:MouseEvent) : void
      {
         var me:MouseEvent = param1;
         this.buttonClickSound();
         _SafeCls_2._SafeStr_923(this.newacclogincompletewindow,{
            "y":750,
            "time":0.3,
            "transition":"easeinback",
            "onComplete":function():*
            {
               removeChild(newacclogincompletewindow);
            }
         });
      }
      
      public function newAccLoginError(param1:String) : void
      {
         if(this.newaccenteruserpasswindow)
         {
            removeChild(this.newaccenteruserpasswindow);
         }
         this.newaccloginerrorwindow = addChild(new newaccloginerrorwindowmc());
         this.newaccloginerrorwindow.x = 365;
         this.newaccloginerrorwindow.y = 250;
         this.newaccloginerrorwindow.errortext.text = param1;
         this.newaccloginerrorwindow.backbutton.addEventListener(MouseEvent.CLICK,this.newAccLoginErrorBack);
      }
      
      public function newAccLoginErrorBack(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         removeChild(this.newaccloginerrorwindow);
         this.newAccEnterUserPass();
      }
      
      public function newAccEnterUser() : void
      {
         this.newaccenteruserwindow = addChild(new newaccenteruserwindowmc());
         this.newaccenteruserwindow.x = 365;
         this.newaccenteruserwindow.y = 250;
         this.newaccenteruserwindow.submitbutton.addEventListener(MouseEvent.CLICK,this.newAccEnterUserSubmit);
         this.newaccenteruserwindow.backbutton.addEventListener(MouseEvent.CLICK,this.newAccEnterUserBack);
      }
      
      public function newAccEnterUserSubmit(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         this.newaccenteruserwindow.submitbutton.mouseEnabled = false;
         this.newaccenteruserwindow.submitbutton.mouseEnabled = false;
         this.newaccenteruserwindow.submitbutton.alpha = 0.6;
         this.newaccenteruserwindow.submitbutton.alpha = 0.6;
         this.newAccUsername = this.newaccenteruserwindow.usernametext.text;
         this.newAccCheckUserFree();
      }
      
      public function newAccEnterUserBack(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         removeChild(this.newaccenteruserwindow);
         this.newAccAskAccount();
      }
      
      public function newAccCheckUserFree() : void
      {
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            var _loc2_:Number = Number(param1.target.data["code"]);
            xtr("got register response from server, code: " + _loc2_);
            if(_loc2_ == 0)
            {
               newAccUserTaken();
            }
            else if(_loc2_ == 1)
            {
               newAccEnterPass();
            }
         };
         var randomShit1:Number = Number(getTimer());
         var randomShit2:Number = Math.floor(Math.random() * 1000) + 1;
         var randomShit3:Number = randomShit1 * randomShit2;
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 9;
         variables.usernameoremail = this.newAccUsername;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_581);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function newAccUserTaken() : void
      {
         removeChild(this.newaccenteruserwindow);
         this.newaccusertakenwindow = addChild(new newaccusertakenwindowmc());
         this.newaccusertakenwindow.x = 365;
         this.newaccusertakenwindow.y = 250;
         this.newaccusertakenwindow.okbutton.addEventListener(MouseEvent.CLICK,this.newAccUserTakenOk);
      }
      
      public function newAccUserTakenOk(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         removeChild(this.newaccusertakenwindow);
         this.newAccEnterUser();
      }
      
      public function newAccEnterPass() : void
      {
         removeChild(this.newaccenteruserwindow);
         this.newaccenterpasswindow = addChild(new newaccenterpasswindowmc());
         this.newaccenterpasswindow.x = 365;
         this.newaccenterpasswindow.y = 250;
         this.newaccenterpasswindow.register_remember.rememberbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_273);
         this._SafeStr_772 = true;
         this.newaccenterpasswindow.register_remember.gotoAndStop(2);
         this.newaccenterpasswindow.submitbutton.addEventListener(MouseEvent.CLICK,this.newAccEnterPassSubmit);
         this.newaccenterpasswindow.backbutton.addEventListener(MouseEvent.CLICK,this.newAccEnterPassBack);
      }
      
      public function newAccEnterPassSubmit(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         this.newAccPassword = this.newaccenterpasswindow.passwordtext.text;
         this.newaccenterpasswindow.submitbutton.mouseEnabled = false;
         this.newaccenterpasswindow.submitbutton.alpha = 0.6;
         this.newAccRegisterRequest();
      }
      
      public function newAccEnterPassBack(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         removeChild(this.newaccenterpasswindow);
         this.newAccEnterUser();
      }
      
      public function newAccRegisterRequest() : void
      {
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            var _loc2_:Number = Number(param1.target.data["code"]);
            xtr("got register response from server, code: " + _loc2_);
            if(_loc2_ == 0)
            {
               newAccRegComplete();
               nearLatitude = Number(param1.target.data["lat"]);
               nearLongitude = Number(param1.target.data["long"]);
               trace("maxmind lat: " + nearLatitude + " long " + nearLongitude);
            }
            else if(_loc2_ == 1)
            {
               newAccRegError("Username or password left blank!");
            }
            else if(_loc2_ == 2)
            {
               newAccRegError("Username unavailable!");
            }
            else if(_loc2_ == 3)
            {
               newAccRegError("An account with this email already exists!");
            }
            else if(_loc2_ == 4)
            {
               newAccRegError("Username invalid!");
            }
         };
         var randomShit1:Number = Number(getTimer());
         var randomShit2:Number = Math.floor(Math.random() * 1000) + 1;
         var randomShit3:Number = randomShit1 * randomShit2;
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 2;
         variables.username = this.newAccUsername;
         variables.password = this.newAccPassword;
         variables.activereferrer = this._SafeStr_1178;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_581);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function newAccRegError(param1:String) : *
      {
         removeChild(this.newaccenterpasswindow);
         this.newaccregerrorwindow = addChild(new newaccregerrorwindowmc());
         this.newaccregerrorwindow.x = 365;
         this.newaccregerrorwindow.y = 250;
         this.newaccregerrorwindow.errortext.text = param1;
         this.newaccregerrorwindow.backbutton.addEventListener(MouseEvent.CLICK,this.newAccRegErrorBack);
      }
      
      public function newAccRegErrorBack(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         removeChild(this.newaccregerrorwindow);
         this.newAccEnterUser();
      }
      
      public function newAccRegComplete() : void
      {
         try
         {
            _SafeCls_188._SafeStr_2479.trackEvent("Total Plays","Total Plays: Account created");
         }
         catch(e:Error)
         {
         }
         if(!this._SafeStr_559)
         {
            try
            {
               _SafeCls_188._SafeStr_2479.trackEvent("Retention","Retention: Account created");
            }
            catch(e:Error)
            {
            }
         }
         this.newplayerhelper.visible = true;
         removeChild(this.newaccenterpasswindow);
         this.newaccregcompletewindow = addChild(new newaccregcompletewindowmc());
         this.newaccregcompletewindow.x = 365;
         this.newaccregcompletewindow.y = 250;
         this.newaccregcompletewindow.usernametext.text = this.newAccUsername;
         this.newaccregcompletewindow.passwordtext.addEventListener(MouseEvent.MOUSE_OVER,this.newAccRegCompleteShowPassword);
         this.newaccregcompletewindow.passwordtext.addEventListener(MouseEvent.MOUSE_OUT,this.newAccRegCompleteHidePassword);
         this.newAccRegCompleteHidePassword();
         this.newaccregcompletewindow.okbutton.addEventListener(MouseEvent.CLICK,this.newAccRegCompleteOk);
         this.localTankName = this.newAccUsername;
         this.localTankNameLabel = this.localTankName;
         this.localNameText.text = this.localTankName;
         this.namecardtitle.text = "Logged in as:";
         this.coinsicon.visible = true;
         this.premiumicon.visible = true;
         this.signoutbutton.visible = true;
         this.buygemsbutton.visible = true;
         this.retreiveUserData(this.localTankName);
         this.userLoggedIn = true;
         this.getItemCostsFromServer();
         this.tryGetCampaignData();
         if(this._SafeStr_772)
         {
            this._SafeStr_571.data.usernameoremail = this.newAccUsername;
            this._SafeStr_571.data.password = this.newAccPassword;
            try
            {
               this._SafeStr_571.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
         }
      }
      
      public function newAccRegCompleteHidePassword(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         var _loc2_:Number = Number(this.newAccPassword.length);
         var _loc4_:String = "****************************************".substr(0,_loc2_);
         this.newaccregcompletewindow.passwordtext.text = _loc4_;
      }
      
      public function newAccRegCompleteShowPassword(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this.newaccregcompletewindow.passwordtext.text = this.newAccPassword;
      }
      
      public function newAccRegCompleteOk(param1:MouseEvent) : void
      {
         this.buttonClickSound();
         removeChild(this.newaccregcompletewindow);
      }
      
      public function _SafeStr_903() : *
      {
         this._SafeStr_884 = addChild(new newaccfglmc());
         this._SafeStr_884.x = 365;
         this._SafeStr_884.y = 250;
         this._SafeStr_884.submitbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1927);
      }
      
      public function _SafeStr_1927(param1:MouseEvent) : *
      {
         var _loc2_:String = null;
         this.buttonClickSound();
         if(this._SafeStr_884.usernametext.text != "" && this._SafeStr_884.usernametext.text.substr(0,1) != "_")
         {
            _loc2_ = "f_" + this._SafeStr_884.usernametext.text;
            this.kongLogin(_loc2_);
            removeChild(this._SafeStr_884);
         }
      }
      
      public function _SafeStr_2476(param1:MouseEvent) : *
      {
         if(this.localSpecial)
         {
            if(param1)
            {
               this.buttonClickSound();
            }
            this._SafeStr_1218 = addChild(new _SafeCls_201());
            this._SafeStr_1218.x = 365;
            this._SafeStr_1218.y = 250;
            this._SafeStr_1218.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2044);
            this._SafeStr_1218.cancelbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1832);
            if(this.localTankTitle != "")
            {
               this._SafeStr_1218.titletext.text = this.localTankTitle;
            }
            else
            {
               this._SafeStr_1218.titletext.text = this.getPlayerTitle(Math.floor(Math.sqrt(this.localStatsArray[5]) / 10));
            }
         }
      }
      
      public function _SafeStr_1832(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         removeChild(this._SafeStr_1218);
         this._SafeStr_1218 = null;
      }
      
      public function _SafeStr_2044(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this.localTankTitle = this._SafeStr_1218.titletext.text;
         this.localTankTitle = this.localTankTitle.replace(/admin/gi,"");
         this.localTankTitle = this.localTankTitle.replace(/staff/gi,"");
         this.localTankTitle = this.localTankTitle.replace(/moderator/gi,"");
         this.localTankTitle = this.localTankTitle.replace(/developer/gi,"");
         if(this.localTankTitle == "mod" || this.localTankTitle == "Mod")
         {
            this.localTankTitle = "";
         }
         this._SafeStr_1832();
         if(this.localTankTitle != "")
         {
            this._SafeStr_2171();
            this.localTitleText.text = this.localTankTitle;
         }
         else
         {
            this.localTitleText.text = this.getPlayerTitle(Math.floor(Math.sqrt(this.localStatsArray[5]) / 10));
         }
      }
      
      public function _SafeStr_1277() : *
      {
         this._SafeStr_885 = addChild(new _SafeCls_235());
         this._SafeStr_885.x = 365;
         this._SafeStr_885.y = 250;
         this._SafeStr_885.guest_button.addEventListener(MouseEvent.CLICK,this._SafeStr_2127);
         this._SafeStr_885.signinregister_button.addEventListener(MouseEvent.CLICK,this._SafeStr_1850);
      }
      
      public function _SafeStr_1253() : *
      {
         removeChild(this._SafeStr_885);
      }
      
      public function _SafeStr_1850(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         this._SafeStr_885.guest_button.removeEventListener(MouseEvent.CLICK,this._SafeStr_2127);
         this._SafeStr_885.signinregister_button.removeEventListener(MouseEvent.CLICK,this._SafeStr_1850);
         if(this.onTinyTanksNet || true)
         {
            this._SafeStr_885.gotoAndStop(2);
            this._SafeStr_885.login_button.addEventListener(MouseEvent.CLICK,this._SafeStr_1037);
            this._SafeStr_885.register_button.addEventListener(MouseEvent.CLICK,this._SafeStr_1158);
            this._SafeStr_885.login_remember.rememberbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1239);
            this._SafeStr_885.register_remember.rememberbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_273);
            this._SafeStr_885.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2624);
         }
         else
         {
            this._SafeStr_2519();
         }
      }
      
      public function _SafeStr_2519() : *
      {
         this._SafeStr_2169 = this._SafeStr_885.addChild(new _SafeCls_234());
         this._SafeStr_2169.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1465);
         this._SafeStr_2169.backlinkbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1656);
      }
      
      public function _SafeStr_1465(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         this._SafeStr_885.removeChild(this._SafeStr_2169);
         this._SafeStr_885.guest_button.addEventListener(MouseEvent.CLICK,this._SafeStr_2127);
         this._SafeStr_885.signinregister_button.addEventListener(MouseEvent.CLICK,this._SafeStr_1850);
      }
      
      public function _SafeStr_1239(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         if(this._SafeStr_645 == false)
         {
            this._SafeStr_645 = true;
            this.newaccenteruserpasswindow.login_remember.gotoAndStop(2);
         }
         else
         {
            this._SafeStr_645 = false;
            this.newaccenteruserpasswindow.login_remember.gotoAndStop(1);
         }
      }
      
      public function _SafeStr_273(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         if(this._SafeStr_772 == false)
         {
            this._SafeStr_772 = true;
            this.newaccenterpasswindow.register_remember.gotoAndStop(2);
         }
         else
         {
            this._SafeStr_772 = false;
            this.newaccenterpasswindow.register_remember.gotoAndStop(1);
         }
      }
      
      public function _SafeStr_2624(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         this._SafeStr_885.gotoAndStop(1);
         this._SafeStr_885.guest_button.addEventListener(MouseEvent.CLICK,this._SafeStr_2127);
         this._SafeStr_885.signinregister_button.addEventListener(MouseEvent.CLICK,this._SafeStr_1850);
      }
      
      public function _SafeStr_1037(param1:MouseEvent) : *
      {
         if(Boolean(this._SafeStr_885.login_usernameoremail.text) && Boolean(this._SafeStr_885.login_password.text))
         {
            this.buttonClickSound();
            this._SafeStr_885.login_button.mouseEnabled = false;
            this._SafeStr_885.register_button.mouseEnabled = false;
            this.loginRequest(this._SafeStr_885.login_usernameoremail.text,this._SafeStr_885.login_password.text);
         }
      }
      
      public function _SafeStr_1158(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         if(Boolean(this._SafeStr_885.register_username.text) && Boolean(this._SafeStr_885.register_password1.text) && this._SafeStr_885.register_password1.text == this._SafeStr_885.register_password2.text)
         {
            this._SafeStr_885.login_button.mouseEnabled = false;
            this._SafeStr_885.register_button.mouseEnabled = false;
            this.registerRequest(this._SafeStr_885.register_username.text,this._SafeStr_885.register_password1.text,this._SafeStr_885.register_email.text);
         }
      }
      
      public function _SafeStr_2127(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         this._SafeStr_1390 = this._SafeStr_885.addChild(new _SafeCls_222());
         this._SafeStr_1390.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2631);
         this._SafeStr_885.guest_button.removeEventListener(MouseEvent.CLICK,this._SafeStr_2127);
         this._SafeStr_885.signinregister_button.removeEventListener(MouseEvent.CLICK,this._SafeStr_1850);
      }
      
      public function _SafeStr_2609() : *
      {
         this._SafeStr_1390 = addChild(new _SafeCls_222());
         this._SafeStr_1390.x = 365;
         this._SafeStr_1390.y = 250;
         this._SafeStr_1390.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2077);
      }
      
      public function _SafeStr_2631(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         var _loc2_:String = this._SafeStr_1390.nametext.text;
         if(_loc2_.substring(0,1) != " " && _loc2_.substring(_loc2_.length,_loc2_.length - 1) != " " && _loc2_ != "guest_" && _loc2_ != "")
         {
            this.localTankName = "guest_" + this._SafeStr_1390.nametext.text;
            this.localTankNameLabel = this.localTankName.replace("guest_","");
            this._SafeStr_1253();
            this.localNameText.text = this.localTankNameLabel;
            this.namecardtitle.text = "Playing as guest:";
            this.userLoggedIn = true;
            this.tryGetCampaignData();
            this.getItemCostsFromServer();
            if(this.isPlayerNew)
            {
            }
            this.localTankSetupArray = [0,1,2,12];
         }
      }
      
      public function _SafeStr_2077(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         var _loc2_:String = this._SafeStr_1390.nametext.text;
         if(_loc2_.substring(0,1) != " " && _loc2_.substring(_loc2_.length,_loc2_.length - 1) != " " && _loc2_ != "guest_" && _loc2_ != "" && _loc2_ != "Chaz")
         {
            this.localTankName = "guest_" + this._SafeStr_1390.nametext.text;
            this.localTankNameLabel = this.localTankName.replace("guest_","");
            this.localNameText.text = this.localTankNameLabel;
            this.namecardtitle.text = "Playing as guest:";
            this.userLoggedIn = true;
            this.tryGetCampaignData();
            this.getItemCostsFromServer();
            removeChild(this._SafeStr_1390);
            if(this.isPlayerNew)
            {
            }
            this.localTankSetupArray = [0,1,2,12];
         }
      }
      
      public function loginRequest(param1:String, param2:String) : void
      {
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         var usernameoremailString:String = param1;
         var passwordString:String = param2;
         onComplete = function(param1:Event):void
         {
            var responseCode:Number;
            var event:Event = param1;
            if(checkServerReponseHash(event) == false)
            {
               return;
            }
            responseCode = Number(event.target.data["code"]);
            localTankName = event.target.data["retreivedusername"];
            xtr("got login response from server, code: " + responseCode);
            if(responseCode == 0)
            {
               if(Boolean(_SafeStr_885) && Boolean(_SafeStr_885.stage))
               {
                  _SafeStr_1253();
               }
               localTankNameLabel = localTankName;
               localNameText.text = localTankName;
               namecardtitle.text = "Logged in as:";
               coinsicon.visible = true;
               premiumicon.visible = true;
               signoutbutton.visible = true;
               buygemsbutton.visible = true;
               retreiveUserData(localTankName);
               userLoggedIn = true;
               getItemCostsFromServer();
               tryGetCampaignData();
               if(_SafeStr_645)
               {
                  _SafeStr_571.data.usernameoremail = usernameoremailString;
                  _SafeStr_571.data.password = passwordString;
                  try
                  {
                     _SafeStr_571.flush();
                  }
                  catch(e:Error)
                  {
                     trace("SO FLUSH ERROR!");
                  }
               }
               _SafeStr_2004.notificationtext.text = "Logged in successfully!";
               _SafeStr_2004.okbutton.visible = true;
            }
            else if(responseCode == 1)
            {
               _SafeStr_2004.notificationtext.text = "Username or email not recognised";
               _SafeStr_2004.okbutton.visible = true;
            }
            else if(responseCode == 2)
            {
               _SafeStr_2004.notificationtext.text = "Password  incorrect";
               _SafeStr_2004.okbutton.visible = true;
            }
            else if(responseCode == 3)
            {
               _SafeStr_2004.notificationtext.text = "Please try again";
               _SafeStr_2004.okbutton.visible = true;
            }
         };
         var randomShit1:Number = Number(getTimer());
         var randomShit2:Number = Math.floor(Math.random() * 1000) + 1;
         var randomShit3:Number = randomShit1 * randomShit2;
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 1;
         variables.usernameoremail = usernameoremailString;
         variables.password = passwordString;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         request.data = variables;
         this.xtr("usernameoremailString:_" + usernameoremailString + "_");
         this.xtr("passwordString:_" + passwordString + "_");
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_866);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
         this._SafeStr_2004 = addChild(new _SafeCls_233());
         this._SafeStr_2004.x = 365;
         this._SafeStr_2004.y = 250;
         this._SafeStr_2004.notificationtext.text = "Logging in...";
         this._SafeStr_2004.okbutton.visible = false;
         this._SafeStr_2004.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2478);
      }
      
      public function registerRequest(param1:String, param2:String, param3:String) : void
      {
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         var usernameString:String = param1;
         var passwordString:String = param2;
         var emailString:String = param3;
         onComplete = function(param1:Event):void
         {
            var responseCode:Number;
            var event:Event = param1;
            if(checkServerReponseHash(event) == false)
            {
               return;
            }
            responseCode = Number(event.target.data["code"]);
            xtr("got register response from server, code: " + responseCode);
            if(responseCode == 0)
            {
               _SafeStr_1253();
               localTankName = usernameString;
               localTankNameLabel = localTankName;
               localNameText.text = localTankName;
               namecardtitle.text = "Logged in as:";
               coinsicon.visible = true;
               premiumicon.visible = true;
               signoutbutton.visible = true;
               buygemsbutton.visible = true;
               retreiveUserData(localTankName);
               userLoggedIn = true;
               getItemCostsFromServer();
               tryGetCampaignData();
               if(_SafeStr_772)
               {
                  _SafeStr_571.data.usernameoremail = usernameString;
                  _SafeStr_571.data.password = passwordString;
                  try
                  {
                     _SafeStr_571.flush();
                  }
                  catch(e:Error)
                  {
                     trace("SO FLUSH ERROR!");
                  }
               }
               _SafeStr_2004.notificationtext.text = "Account created!";
               _SafeStr_2004.okbutton.visible = true;
               if(isPlayerNew)
               {
                  _SafeStr_2478(null);
               }
            }
            else if(responseCode != 1)
            {
               if(responseCode == 2)
               {
                  _SafeStr_2004.notificationtext.text = "Username unavailable!";
                  _SafeStr_2004.okbutton.visible = true;
               }
               else if(responseCode == 3)
               {
                  _SafeStr_2004.notificationtext.text = "An account exists with this email!";
                  _SafeStr_2004.okbutton.visible = true;
               }
               else if(responseCode == 4)
               {
                  _SafeStr_2004.notificationtext.text = "Username invalid!";
                  _SafeStr_2004.okbutton.visible = true;
               }
            }
         };
         var randomShit1:Number = Number(getTimer());
         var randomShit2:Number = Math.floor(Math.random() * 1000) + 1;
         var randomShit3:Number = randomShit1 * randomShit2;
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 2;
         variables.username = usernameString;
         variables.password = passwordString;
         variables.email = emailString;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_581);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
         this._SafeStr_2004 = addChild(new _SafeCls_233());
         this._SafeStr_2004.x = 365;
         this._SafeStr_2004.y = 250;
         this._SafeStr_2004.notificationtext.text = "Registering...";
         this._SafeStr_2004.okbutton.visible = false;
         this._SafeStr_2004.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2478);
      }
      
      public function kongLogin(param1:String, param2:Boolean = false) : void
      {
         var randomShit1:Number;
         var randomShit2:Number;
         var randomShit3:Number;
         var request:URLRequest;
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         var usernameString:String = param1;
         var forMiniclip:Boolean = param2;
         onComplete = function(param1:Event):void
         {
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            var _loc2_:Number = Number(param1.target.data["code"]);
            xtr("got kong login response from server, code: " + _loc2_);
            traceString += "  Ggot kong login response: " + _loc2_;
            if(_loc2_ == 0)
            {
               localTankName = usernameString;
               localTankNameLabel = fixUsernameString(localTankName);
               localNameText.text = localTankNameLabel;
               namecardtitle.text = "Logged in as:";
               coinsicon.visible = true;
               premiumicon.visible = true;
               signoutbutton.visible = true;
               buygemsbutton.visible = true;
               retreiveUserData(localTankName);
               userLoggedIn = true;
               getItemCostsFromServer();
               tryGetCampaignData();
               removeChild(pleasewait);
            }
            else if(_loc2_ == 1)
            {
               kongRegister(usernameString);
            }
            else if(_loc2_ != 2)
            {
               if(_loc2_ == 3)
               {
               }
            }
         };
         this.xtr("kongLogin");
         this.traceString += "kongLogin. ";
         this.pleasewait = addChild(new _SafeCls_242());
         this.pleasewait.x = 365;
         this.pleasewait.y = 250;
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 1;
         variables.usernameoremail = usernameString;
         if(!forMiniclip)
         {
            variables.password = this.defaultKongPassword;
            this.newAccPassword = this.defaultKongPassword;
         }
         else
         {
            variables.password = this.defaultKongPassword + this._SafeStr_1260.id;
         }
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_866);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function kongRegister(param1:String, param2:Boolean = false) : void
      {
         var randomShit1:Number;
         var randomShit2:Number;
         var randomShit3:Number;
         var request:URLRequest;
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         var usernameString:String = param1;
         var forMiniclip:Boolean = param2;
         onComplete = function(param1:Event):void
         {
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            var _loc2_:Number = Number(param1.target.data["code"]);
            xtr("got kong register response from server, code: " + _loc2_);
            if(_loc2_ == 0)
            {
               localTankName = usernameString;
               localTankNameLabel = fixUsernameString(localTankName);
               localNameText.text = localTankNameLabel;
               namecardtitle.text = "Logged in as:";
               coinsicon.visible = true;
               premiumicon.visible = true;
               signoutbutton.visible = true;
               buygemsbutton.visible = true;
               retreiveUserData(localTankName);
               userLoggedIn = true;
               getItemCostsFromServer();
               tryGetCampaignData();
               removeChild(pleasewait);
               if(isPlayerNew)
               {
               }
            }
            else if(_loc2_ != 1)
            {
               if(_loc2_ == 2)
               {
                  trace("username taken!!");
               }
               else if(_loc2_ != 3)
               {
                  if(_loc2_ == 4)
                  {
                     trace("Username invalid!!!");
                  }
               }
            }
         };
         this.xtr("kongRegister");
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 2;
         variables.username = usernameString;
         if(!forMiniclip)
         {
            variables.password = this.defaultKongPassword;
            this.newAccPassword = this.defaultKongPassword;
         }
         else
         {
            variables.password = this.defaultKongPassword + this._SafeStr_1260.id;
            variables.allowhash = 1;
         }
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_581);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function _SafeStr_866(param1:Event) : void
      {
         this.xtr("!!! LOGIN IO ERROR !!!");
         this._SafeStr_2004.notificationtext.text = "Connection error please try again";
         this._SafeStr_2004.okbutton.visible = true;
      }
      
      public function _SafeStr_581(param1:Event) : void
      {
         this.xtr("!!! REGISTER IO ERROR !!!");
         this._SafeStr_2004.notificationtext.text = "Connection error please try again";
         this._SafeStr_2004.okbutton.visible = true;
      }
      
      public function retreiveUserData(param1:String) : *
      {
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         var usernameString:String = param1;
         onComplete = function(param1:Event):void
         {
            var _loc2_:* = undefined;
            var _loc3_:* = undefined;
            var _loc4_:* = undefined;
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            trace("retreiveuserdata complete: " + param1.target.data);
            if(param1.target.data["username"] == localTankName)
            {
               localStatsArray[0] = Number(param1.target.data["kills"]);
               localStatsArray[1] = Number(param1.target.data["deaths"]);
               localStatsArray[2] = Number(param1.target.data["wins"]);
               localStatsArray[3] = Number(param1.target.data["losses"]);
               localStatsArray[4] = Number(param1.target.data["gameshosted"]);
               localStatsArray[5] = Number(param1.target.data["xp"]);
               localStatsArray[6] = Number(param1.target.data["referrals"]);
               localDatabaseID = Number(param1.target.data["id"]);
               localWeekRefs = Number(param1.target.data["weekrefs"]);
               localSpecial = Number(param1.target.data["special"]);
               localTankTitle = unescape(param1.target.data["customtitle"]);
               localUpdateCounter.s = Number(param1.target.data["updatecounter"]);
               localMinuteCounter.s = Number(param1.target.data["minutesplayed"]);
               trace("localMinuteCounter.s " + localMinuteCounter.s);
               _loc2_ = 0;
               while(_loc2_ < tankItemDataArray.length)
               {
                  if(_loc2_ != 0 && _loc2_ != 1 && _loc2_ != 11 && _loc2_ != 12 && _loc2_ != 16)
                  {
                     tankItemDataArray[_loc2_][6] = false;
                  }
                  else
                  {
                     tankItemDataArray[_loc2_][6] = true;
                  }
                  _loc2_++;
               }
               _loc3_ = 0;
               while(_loc3_ < Number(param1.target.data["totalunlocks"]))
               {
                  tankItemDataArray[Number(param1.target.data["unlock" + _loc3_])][6] = true;
                  trace("unlocking " + Number(param1.target.data["unlock" + _loc3_]));
                  _loc3_++;
               }
               localItemsInUse = param1.target.data["itemsinuse"];
               localTankSetupArray = localItemsInUse.split("x");
               _loc4_ = 0;
               while(_loc4_ < localTankSetupArray.length)
               {
                  localTankSetupArray[_loc4_] = Number(localTankSetupArray[_loc4_]);
                  _loc4_++;
               }
               if(!localTankSetupArray[3])
               {
                  localTankSetupArray[3] = 12;
               }
               if(!localTankSetupArray[4])
               {
                  localTankSetupArray[4] = 16;
               }
               localCoins = Number(param1.target.data["coins"]);
               localPremium = Number(param1.target.data["premium"]);
               if(!inLobby && !inGame)
               {
                  localCoinsText.text = String(localCoins);
                  coinsHighlight.visible = true;
                  localPremiumText.text = String(localPremium);
                  if(localTankTitle != "")
                  {
                     localTitleText.text = localTankTitle;
                  }
                  else
                  {
                     localTitleText.text = getPlayerTitle(Math.floor(Math.sqrt(localStatsArray[5]) / 10));
                  }
                  if(localSpecial)
                  {
                     changetitlelabel.visible = true;
                     changetitlebutton.mouseEnabled = true;
                     fullscreenbutton.visible = true;
                  }
                  else
                  {
                     changetitlelabel.visible = false;
                     changetitlebutton.mouseEnabled = false;
                  }
               }
               if(onTinyTanksNet)
               {
                  ExternalInterface.call("changeText",localTankName + " ($" + localCoins + ")");
               }
            }
            if(hosting)
            {
               _loc2_ = 0;
               while(_loc2_ < tankNameArray.length)
               {
                  if(tankNameArray[_loc2_] == param1.target.data["username"])
                  {
                     tankStatsArray[_loc2_][0] = Number(param1.target.data["kills"]);
                     tankStatsArray[_loc2_][1] = Number(param1.target.data["deaths"]);
                     tankStatsArray[_loc2_][2] = Number(param1.target.data["wins"]);
                     tankStatsArray[_loc2_][3] = Number(param1.target.data["losses"]);
                     tankStatsArray[_loc2_][4] = Number(param1.target.data["gameshosted"]);
                     tankStatsArray[_loc2_][5] = Number(param1.target.data["xp"]);
                     tankStatsArray[_loc2_][6] = Number(param1.target.data["referrals"]);
                     tankTitleArray[_loc2_] = unescape(param1.target.data["customtitle"]);
                     xtr("User data for user " + param1.target.data["username"] + " retreived, slot " + _loc2_);
                  }
                  _loc2_++;
               }
               if(hosting)
               {
                  try
                  {
                     sendAllPlayerStats();
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
            xtr("stats retreived: " + param1.target.data["kills"] + param1.target.data["deaths"] + param1.target.data["wins"] + param1.target.data["losses"] + param1.target.data["gameshosted"] + param1.target.data["xp"] + param1.target.data["referrals"]);
         };
         var randomShit1:Number = Number(getTimer());
         var randomShit2:Number = Math.floor(Math.random() * 1000) + 1;
         var randomShit3:Number = randomShit1 * randomShit2;
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 3;
         variables.username = usernameString;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_2012);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function retreiveCampaignData(param1:String) : void
      {
         var randomShit1:Number;
         var randomShit2:Number;
         var randomShit3:Number;
         var request:URLRequest;
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         var usernameString:String = param1;
         onComplete = function(param1:Event):void
         {
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            trace("retreiveCampaignData complete: " + param1.target.data);
            var _loc2_:String = param1.target.data["datastring"];
            if(_loc2_ == "0")
            {
               xtr("no saved campaign data found on db");
            }
            else
            {
               singlePlayerScores = _loc2_.split(",");
               xtr("campaign data successfully retreived from database");
            }
         };
         this.xtr("retreiveCampaignData");
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 5;
         variables.username = usernameString;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_2012);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function _SafeStr_2007(param1:String, param2:String) : void
      {
         var variables:URLVariables;
         var encryptedPass:String;
         var hashString:String;
         var loader:URLLoader;
         var onComplete:Function = null;
         var usernameString:String = param1;
         var dataString:String = param2;
         onComplete = function(param1:Event):void
         {
            xtr("campaign data updated in database");
         };
         var randomShit1:Number = Number(getTimer());
         var randomShit2:Number = Math.floor(Math.random() * 1000) + 1;
         var randomShit3:Number = randomShit1 * randomShit2;
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 6;
         variables.username = usernameString;
         variables.datastring = dataString;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         encryptedPass = MD5.hash(this.newAccPassword);
         hashString = MD5.hash(String(encryptedPass) + String(dataString) + String(this.secretEncryptionString));
         variables.hashstring = hashString;
         this.xtr("updating database campaign data");
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_355);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function _SafeStr_2012(param1:Event) : void
      {
         this.xtr("!!! RETREIVE DATA IO ERROR !!!");
      }
      
      public function sendAllPlayerStats() : *
      {
         this.sendStream.send("recvAllPlayerStats",this.tankStatsArray,this.tankTitleArray);
      }
      
      public function recvAllPlayerStats(param1:Array, param2:Array) : *
      {
         var _loc3_:* = undefined;
         if(this._SafeStr_1579)
         {
            this.tankStatsArray = param1.slice();
            this.tankTitleArray = param2.slice();
            this.xtr("received tank stats array");
            _loc3_ = 0;
            while(_loc3_ < 6)
            {
               this.localStatsArray[_loc3_] = this.tankStatsArray[this.localTankID][_loc3_];
               _loc3_++;
            }
         }
      }
      
      public function _SafeStr_1384(param1:Array) : *
      {
         this.sendStream.send("recvEndGameStats",param1);
      }
      
      public function recvEndGameStats(param1:Array) : *
      {
         var _loc4_:* = undefined;
         var _loc2_:* = 0;
         while(_loc2_ < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[_loc2_] == true && this._SafeStr_451[_loc2_] == true && this.isUserAGuest(this.tankNameArray[_loc2_]) == false)
            {
               _loc4_ = 0;
               while(_loc4_ < 6)
               {
                  if(_loc4_ == 5)
                  {
                     this.tankStatsArray[_loc2_][_loc4_] += Math.floor(param1[_loc2_][_loc4_] * this._SafeStr_2028[_loc2_]);
                  }
                  else
                  {
                     this.tankStatsArray[_loc2_][_loc4_] += param1[_loc2_][_loc4_];
                  }
                  _loc4_++;
               }
            }
            if(_loc2_ == this.localTankID && param1[_loc2_][8] > 0)
            {
               this.localCoins += param1[_loc2_][8];
               if(this.onTinyTanksNet)
               {
                  ExternalInterface.call("changeText",this.localTankName + " ($" + this.localCoins + ")");
               }
            }
            _loc2_++;
         }
         this.newLocalStatsToShow = true;
         this.newLocalStatsArray = param1[this.localTankID].slice();
         var _loc3_:* = 0;
         while(_loc3_ < 6)
         {
            this.localStatsArray[_loc3_] = this.tankStatsArray[this.localTankID][_loc3_];
            _loc3_++;
         }
         trace("checking if we\'ve levelled");
         trace("old level: " + Math.floor(Math.sqrt(this.localStatsArray[5] - this.newLocalStatsArray[5]) / 10));
         trace("new level: " + Math.floor(Math.sqrt(this.localStatsArray[5]) / 10));
         if(Math.floor(Math.sqrt(this.localStatsArray[5] - this.newLocalStatsArray[5]) / 10) != Math.floor(Math.sqrt(this.localStatsArray[5]) / 10))
         {
            if(!isNaN(this.localStatsArray[5]) && !isNaN(this.newLocalStatsArray[5]))
            {
               this.localCoins += 100;
               param1[this.localTankID][8] += 100;
            }
         }
         param1[this.localTankID][5] = Math.floor(param1[this.localTankID][5] * this._SafeStr_1921);
         this._SafeStr_1185(param1[this.localTankID]);
      }
      
      public function _SafeStr_1185(param1:Array) : *
      {
         var randomShit1:Number;
         var randomShit2:Number;
         var randomShit3:Number;
         var request:URLRequest;
         var variables:URLVariables;
         var encryptedPass:String;
         var hashString:String;
         var i:*;
         var loader:URLLoader;
         var onComplete:Function = null;
         var newStats:Array = param1;
         onComplete = function(param1:Event):void
         {
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            var _loc2_:Number = Number(param1.target.data["code"]);
            var _loc3_:Number = Number(param1.target.data["coindrop"]);
            xtr("got data update response from server, code: " + _loc2_);
            if(_loc2_ == 0)
            {
               xtr("stats successfully updated");
               trace("coinDrop: " + _loc3_);
               localCoinDrop += _loc3_;
               localCoins += _loc3_;
               if(!inLobby && !inGame)
               {
                  localCoinsText.text = String(localCoins);
               }
               if(onTinyTanksNet)
               {
                  ExternalInterface.call("changeText",localTankName + " ($" + localCoins + ")");
               }
            }
            else if(_loc2_ == 1)
            {
               xtr("Stats failed to update");
            }
            else if(_loc2_ == 2)
            {
               xtr("SECURITY FAILED");
            }
            else if(_loc2_ == 3)
            {
               xtr("response 3");
            }
         };
         ++this.localUpdateCounter.s;
         trace("localUpdateCounter.s: " + this.localUpdateCounter.s);
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 4;
         variables.username = this.localTankName;
         variables.kills = newStats[0];
         variables.deaths = newStats[1];
         variables.wins = newStats[2];
         variables.losses = newStats[3];
         variables.gameshosted = newStats[4];
         variables.xp = newStats[5];
         variables.coins = newStats[8];
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.updatecounter = this.localUpdateCounter.s;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         encryptedPass = MD5.hash(this.newAccPassword);
         hashString = MD5.hash(String(this.localTankName) + String(newStats[0]) + String(newStats[1]) + String(newStats[2]) + String(newStats[3]) + String(newStats[4]) + String(newStats[5]) + String(newStats[8]) + String(encryptedPass) + String(this.localUpdateCounter.s) + String(this.secretEncryptionString));
         variables.hashstring = hashString;
         this.xtr("about to update " + this.localTankName + "\'s stats:");
         i = 0;
         while(i < newStats.length)
         {
            trace("newStats[" + i + "]: " + newStats[i]);
            i++;
         }
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_355);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function _SafeStr_355(param1:Event) : void
      {
         this.xtr("!!! UPDATE DATA IO ERROR !!!");
      }
      
      public function _SafeStr_2171() : *
      {
         var variables:URLVariables;
         var encryptedPass:String;
         var hashString:String;
         var loader:URLLoader;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            var _loc2_:Number = Number(param1.target.data["code"]);
            xtr("got data update response from server, code: " + _loc2_);
            if(_loc2_ == 0)
            {
               xtr("title successfully updated");
            }
            else if(_loc2_ == 1)
            {
               xtr("title username fail");
            }
            else if(_loc2_ == 2)
            {
               xtr("title SECURITY FAILED");
            }
         };
         var randomShit1:Number = Number(getTimer());
         var randomShit2:Number = Math.floor(Math.random() * 1000) + 1;
         var randomShit3:Number = randomShit1 * randomShit2;
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 11;
         variables.username = this.localTankName;
         variables.usertitle = escape(this.localTankTitle);
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         encryptedPass = MD5.hash(this.newAccPassword);
         hashString = MD5.hash(String(this.localTankName) + String(escape(this.localTankTitle)) + String(encryptedPass) + String(this.secretEncryptionString));
         variables.hashstring = hashString;
         this.xtr("about to update " + this.localTankName + "\'s title.");
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_355);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function isUserAGuest(param1:String) : Boolean
      {
         if(param1.substring(0,6) == "guest_")
         {
            return true;
         }
         return false;
      }
      
      public function _SafeStr_558(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         if(this.userLoggedIn)
         {
            this._SafeStr_559 = true;
            if(!this._SafeStr_1794)
            {
               this.newAccAskAccount();
            }
            else
            {
               this._SafeStr_903();
            }
            this.localNameText.text = "";
            this.namecardtitle.text = "";
            this.localTitleText.text = "";
            this.localCoinsText.text = "";
            this.localPremiumText.text = "";
            this.changetitlelabel.visible = false;
            this.coinsicon.visible = false;
            this.premiumicon.visible = false;
            this.signoutbutton.visible = false;
            this.buygemsbutton.visible = false;
            this.userLoggedIn = false;
            this._SafeStr_571.clear();
            this._SafeStr_645 = false;
            this._SafeStr_772 = false;
            if(this.onTinyTanksNet)
            {
               ExternalInterface.call("changeText","Signed out");
            }
            this._SafeStr_1716();
            this._SafeStr_1475 = false;
            this.glownotification.visible = false;
            this.localSpecial = 0;
            this.fullscreenbutton.visible = false;
            this.localCoinDrop = 0;
            this.friendList = new Array();
         }
      }
      
      public function _SafeStr_2478(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         removeChild(this._SafeStr_2004);
         this._SafeStr_885.login_button.mouseEnabled = true;
         this._SafeStr_885.register_button.mouseEnabled = true;
      }
      
      public function _SafeStr_1972(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this._SafeStr_631.startgame.addEventListener(MouseEvent.CLICK,this.startGameButt);
         removeChild(this.noplayerswindow);
      }
      
      public function _SafeStr_850() : *
      {
         this.joingamewindow.buttonGetRoomList.addEventListener(MouseEvent.CLICK,this.getRoomList);
         this.joingamewindow.buttonJoin.addEventListener(MouseEvent.CLICK,this.joinRoom);
         this.joingamewindow.roomList.addEventListener(Event.CHANGE,this.itemClick);
         this.joingamewindow.fullbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_675);
         this.joingamewindow.passbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_675);
         this.joingamewindow.modebutton.addEventListener(MouseEvent.CLICK,this._SafeStr_675);
         this.joingamewindow.buttonCreateGame.addEventListener(MouseEvent.CLICK,this._SafeStr_688);
         this.joingamewindow.roomList.addEventListener(ListEvent.ITEM_ROLL_OVER,this.itemRollOver);
         this.joingamewindow.roomList.addEventListener(ListEvent.ITEM_ROLL_OUT,this.itemRollOut);
         this.joingamewindow.roomList.addEventListener(MouseEvent.ROLL_OUT,this._SafeStr_347);
         this.joingamewindow.nogamestext.mouseEnabled = false;
         this._SafeStr_2379.addEventListener(MouseEvent.CLICK,this.startSinglePlayer);
         this._SafeStr_2455.addEventListener(MouseEvent.CLICK,this._SafeStr_1366);
         this._SafeStr_1847.addEventListener(MouseEvent.CLICK,this._SafeStr_2541);
         this._SafeStr_1170.addEventListener(MouseEvent.CLICK,this._SafeStr_851);
         this._SafeStr_1251.addEventListener(MouseEvent.CLICK,this.startLevelEditor);
         this._SafeStr_742.okbutton.addEventListener(MouseEvent.CLICK,this.createRoom);
         this._SafeStr_742.creategamebackbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1888);
         this._SafeStr_742.increasemaxplayers.addEventListener(MouseEvent.CLICK,this.changeMaxPlayers);
         this._SafeStr_742.decreasemaxplayers.addEventListener(MouseEvent.CLICK,this.changeMaxPlayers);
         this._SafeStr_742.increasegamemode.addEventListener(MouseEvent.CLICK,this.changeMaxPlayers);
         this._SafeStr_742.decreasegamemode.addEventListener(MouseEvent.CLICK,this.changeMaxPlayers);
         this._SafeStr_742.increaseaimingmode.addEventListener(MouseEvent.CLICK,this.changeMaxPlayers);
         this._SafeStr_742.decreaseaimingmode.addEventListener(MouseEvent.CLICK,this.changeMaxPlayers);
         this.joingamewindow.joingamebackbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1290);
      }
      
      public function _SafeStr_1354() : *
      {
         this.joingamewindow.fulltick.visible = this.noFull;
         this.joingamewindow.passtick.visible = this.noPass;
         if(this.modeFilter == -1)
         {
            this.joingamewindow.modetext.text = "ANY";
         }
         else if(this.modeFilter == 0)
         {
            this.joingamewindow.modetext.text = "LTA";
         }
         else if(this.modeFilter == 1)
         {
            this.joingamewindow.modetext.text = "DM";
         }
         else if(this.modeFilter == 2)
         {
            this.joingamewindow.modetext.text = "CTF";
         }
      }
      
      public function _SafeStr_675(param1:MouseEvent) : *
      {
         if(param1.target.name == "fullbutton")
         {
            this.noFull = !this.noFull;
         }
         if(param1.target.name == "passbutton")
         {
            this.noPass = !this.noPass;
         }
         if(param1.target.name == "modebutton")
         {
            ++this.modeFilter;
            if(this.modeFilter > 2)
            {
               this.modeFilter = -1;
            }
         }
         this._SafeStr_1354();
         this.populateRoomList();
      }
      
      public function _SafeStr_747() : void
      {
         var randomShit1:Number;
         var randomShit2:Number;
         var randomShit3:Number;
         var request:URLRequest;
         var variables:URLVariables;
         var onDataLoad:Function = null;
         onDataLoad = function(param1:Event):*
         {
            nearCityName = param1.target.data["city"];
            nearLongitude = param1.target.data["longitude"];
            nearLatitude = param1.target.data["latitude"];
            xtr("Got player location: " + nearCityName + ", " + nearLatitude + "," + nearLongitude);
         };
         var myLoader:URLLoader = new URLLoader();
         myLoader.dataFormat = URLLoaderDataFormat.VARIABLES;
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "ip_query4.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.ignorethis = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         request.data = variables;
         myLoader.dataFormat = URLLoaderDataFormat.VARIABLES;
         myLoader.load(request);
         myLoader.addEventListener(Event.COMPLETE,onDataLoad);
         myLoader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
      }
      
      public function getLatLngDistance(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean = true) : Number
      {
         var _loc6_:Number = Math.PI / 180;
         param1 *= _loc6_;
         param2 *= _loc6_;
         param3 *= _loc6_;
         param4 *= _loc6_;
         var _loc8_:Number = param3 - param1;
         var _loc9_:Number = param4 - param2;
         var _loc10_:Number = Math.sin(_loc8_ / 2) * Math.sin(_loc8_ / 2) + Math.cos(param1) * Math.cos(param3) * Math.sin(_loc9_ / 2) * Math.sin(_loc9_ / 2);
         var _loc11_:Number = 2 * Math.atan2(Math.sqrt(_loc10_),Math.sqrt(1 - _loc10_));
         var _loc12_:Number = 6372.797 * _loc11_;
         return Math.round(param5 ? _loc12_ * 0.621371192 : _loc12_);
      }
      
      public function getRoomList(param1:MouseEvent = null) : void
      {
         var myLoader:URLLoader;
         var randomShit1:Number;
         var randomShit2:Number;
         var randomShit3:Number;
         var request:URLRequest;
         var variables:URLVariables;
         var onDataLoad:Function = null;
         var me:MouseEvent = param1;
         onDataLoad = function(param1:Event):*
         {
            var _loc2_:uint = 0;
            var _loc3_:String = null;
            var _loc4_:String = null;
            var _loc5_:String = null;
            var _loc6_:String = null;
            var _loc7_:String = null;
            var _loc8_:Array = null;
            var _loc9_:Boolean = false;
            var _loc10_:Number = NaN;
            var _loc11_:String = null;
            var _loc12_:Object = null;
            joingamewindow.roomList.removeAll();
            if(param1.target.data.cant == 0)
            {
               roomArray = [];
               joingamewindow.nogamestext.text = "There are currently no joinable games!";
            }
            else
            {
               roomArray = [];
               joingamewindow.nogamestext.text = "";
               _loc2_ = 0;
               while(_loc2_ < param1.target.data.cant)
               {
                  _loc3_ = param1.target.data["hash" + _loc2_];
                  if(MD5.hash(param1.target.data["address" + _loc2_] + param1.target.data["password" + _loc2_] + secretEncryptionString) == _loc3_)
                  {
                     if(param1.target.data["special" + _loc2_] == 1)
                     {
                        _loc4_ = "<font color=\'#2E485F\'>";
                        _loc5_ = "</font>";
                     }
                     else
                     {
                        _loc4_ = "";
                        _loc5_ = "";
                     }
                     if(param1.target.data["aiming" + _loc2_] == 1)
                     {
                        _loc6_ = "<font color=\'#BB1111\'>";
                        _loc7_ = "</font>";
                     }
                     else
                     {
                        _loc6_ = "";
                        _loc7_ = "";
                     }
                     _loc8_ = param1.target.data["usernamelist" + _loc2_].split("#");
                     _loc9_ = false;
                     if(amIFriendsWith(_loc8_))
                     {
                        _loc9_ = true;
                     }
                     if(_loc9_)
                     {
                        _loc10_ = -1;
                     }
                     else
                     {
                        _loc10_ = getLatLngDistance(nearLatitude,nearLongitude,param1.target.data["latitude" + _loc2_],param1.target.data["longitude" + _loc2_],false);
                     }
                     _loc11_ = param1.target.data["roomname" + _loc2_];
                     _loc11_ = _loc11_.split("<").join("&lt;");
                     _loc11_ = _loc11_.split(">").join("&gt;");
                     _loc12_ = {
                        "Roomname":_loc4_ + _loc11_,
                        "Players":_loc4_ + param1.target.data["players" + _loc2_] + "/" + param1.target.data["maxplayers" + _loc2_],
                        "Distance":_loc10_,
                        "Distancekm":_loc4_ + getLatLngDistance(nearLatitude,nearLongitude,param1.target.data["latitude" + _loc2_],param1.target.data["longitude" + _loc2_],false) + "km",
                        "Address":param1.target.data["address" + _loc2_],
                        "Password":(param1.target.data["password" + _loc2_] == "" ? _loc4_ + "No" : _loc4_ + "Yes"),
                        "PasswordString":param1.target.data["password" + _loc2_],
                        "ModeRaw":Number(param1.target.data["gamemode" + _loc2_]),
                        "Mode":(param1.target.data["gamemode" + _loc2_] == "0" ? _loc4_ + "LTA" : (param1.target.data["gamemode" + _loc2_] == "1" ? _loc4_ + "DM" : _loc4_ + "CTF")),
                        "Aiming":(param1.target.data["aiming" + _loc2_] == 0 ? _loc4_ + "Normal" : _loc4_ + _loc6_ + "Mouse"),
                        "UsernameList":param1.target.data["usernamelist" + _loc2_],
                        "Mapdata":param1.target.data["mapdata" + _loc2_],
                        "Mapsize":param1.target.data["mapsize" + _loc2_],
                        "Mapid":param1.target.data["mapid" + _loc2_],
                        "Friendsinthisroom":_loc9_,
                        "Full":Number(param1.target.data["players" + _loc2_]) >= param1.target.data["maxplayers" + _loc2_]
                     };
                     roomArray.push(_loc12_);
                     totalPlayersOnline += int(param1.target.data["players" + _loc2_]);
                  }
                  _loc2_++;
               }
               populateRoomList();
            }
         };
         this.buttonClickSound();
         this.joingamewindow.roomList.removeAll();
         this.joingamewindow.roomList.setStyle("color",52224);
         myLoader = new URLLoader();
         myLoader.dataFormat = URLLoaderDataFormat.VARIABLES;
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "testscript4.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.basePasswordString = this.basePasswordString;
         variables.ignorethis = randomShit3;
         variables.password = 8;
         variables.versionstring = this.currentGameVersion;
         request.data = variables;
         myLoader.load(request);
         myLoader.addEventListener(Event.COMPLETE,onDataLoad);
         myLoader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         this.joingamewindow.nogamestext.text = "Getting list of games";
      }
      
      public function populateRoomList() : *
      {
         var _loc1_:DataProvider = new DataProvider();
         var _loc2_:* = 0;
         for(; _loc2_ < this.roomArray.length; _loc2_++)
         {
            if(!(this.noPass && this.roomArray[_loc2_].PasswordString != ""))
            {
               if(!(this.noFull && Boolean(this.roomArray[_loc2_].Full)))
               {
                  if(this.modeFilter != -1)
                  {
                     if(this.modeFilter != this.roomArray[_loc2_].ModeRaw)
                     {
                        continue;
                     }
                  }
                  _loc1_.addItem(this.roomArray[_loc2_]);
               }
            }
         }
         this.joingamewindow.roomList.dataProvider = _loc1_;
         this.joingamewindow.roomList.rowHeight = 20.5;
         this.joingamewindow.roomList.width = 452;
         var _loc3_:DataGridColumn = new DataGridColumn("Roomname");
         _loc3_.cellRenderer = _SafeCls_263;
         var _loc4_:DataGridColumn = new DataGridColumn("Players");
         _loc4_.cellRenderer = _SafeCls_263;
         var _loc5_:DataGridColumn = new DataGridColumn("Mode");
         _loc5_.cellRenderer = _SafeCls_263;
         var _loc6_:DataGridColumn = new DataGridColumn("Password");
         _loc6_.cellRenderer = _SafeCls_263;
         var _loc7_:DataGridColumn = new DataGridColumn("Aiming");
         _loc7_.cellRenderer = _SafeCls_263;
         var _loc8_:DataGridColumn = new DataGridColumn("Distancekm");
         _loc8_.cellRenderer = _SafeCls_263;
         this.joingamewindow.roomList.columns = [_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_];
         this.joingamewindow.roomList.columns[0].width = 150;
         this.joingamewindow.roomList.columns[1].width = 60;
         this.joingamewindow.roomList.columns[2].width = 50;
         this.joingamewindow.roomList.columns[3].width = 45;
         this.joingamewindow.roomList.columns[4].width = 60;
         this.joingamewindow.roomList.columns[5].sortOptions = Array.NUMERIC;
         this.joingamewindow.roomList.sortItemsOn("Distance",Array.NUMERIC);
         this.joingamewindow.roomList.showHeaders = true;
         this.joingamewindow.roomList.headerHeight = 0;
         this.joingamewindow.roomList.resizableColumns = false;
         if(!this._SafeStr_502)
         {
            this._SafeStr_502 = true;
         }
      }
      
      public function _SafeStr_673() : void
      {
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            xtr("room added to db");
            continueRoomInterval = setInterval(continueRoomDatabase,25000);
         };
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "addnewroom.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.roomnamestring = this._SafeStr_487;
         variables.addressstring = this.myPeerID;
         if(this.localRoomPassword)
         {
            variables.passwordstring = MD5.hash(String(this.localRoomPassword) + String(this._SafeStr_294));
         }
         variables.maxplayersstring = this.localMaxPlayers;
         variables.versionstring = this.currentGameVersion;
         variables.specialstring = this.localSpecial;
         if(Boolean(this.nearLongitude) && Boolean(this.nearLatitude))
         {
            variables.longitude = this.nearLongitude;
            variables.latitude = this.nearLatitude;
         }
         variables.avgkillsstring = this.tankStatsArray[this.localTankID][0];
         variables.usernameliststring = this.localTankName.replace("guest_","");
         variables.basePasswordString = this.basePasswordString;
         variables.gamemodestring = this.gameMode;
         if(this.gameMode == 2)
         {
            variables.mapidstring = "13";
         }
         else
         {
            variables.mapidstring = "1";
         }
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function _SafeStr_1461() : void
      {
         var randomShit1:Number;
         var randomShit2:Number;
         var randomShit3:Number;
         var requestremove:URLRequest;
         var variables:URLVariables;
         var hashString:String;
         var loaderremove:URLLoader;
         var roomToRemove:String = null;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            xtr("room removed from db");
            trace(param1.target.data);
            xtr(param1.target.data);
         };
         this.xtr("removing room...");
         if(this.hosting)
         {
            roomToRemove = this.myPeerID;
         }
         else
         {
            roomToRemove = this.farPeerID;
         }
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         requestremove = new URLRequest(this._SafeStr_372 + "removeroom.php?ignorethis=" + randomShit3);
         requestremove.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.addressstring = roomToRemove;
         variables.basePasswordString = this.basePasswordString;
         hashString = MD5.hash(String(roomToRemove) + String(this.secretEncryptionString));
         variables.hashstring = hashString;
         requestremove.data = variables;
         loaderremove = new URLLoader(requestremove);
         loaderremove.addEventListener(Event.COMPLETE,onComplete);
         loaderremove.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         loaderremove.dataFormat = URLLoaderDataFormat.TEXT;
         loaderremove.load(requestremove);
      }
      
      public function _SafeStr_1339() : Number
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:* = 0;
         while(_loc3_ < this._SafeStr_2147.length)
         {
            if(this.tankStatsArray[_loc3_][0] >= 0)
            {
               if(!isNaN(this.tankStatsArray[_loc3_][0]))
               {
                  _loc1_ += this.tankStatsArray[_loc3_][0];
                  _loc2_++;
               }
            }
            _loc3_++;
         }
         return Number(Math.round(_loc1_ / _loc2_));
      }
      
      public function _SafeStr_1597() : Number
      {
         if(this.inGame)
         {
            return 0;
         }
         return Math.floor((getTimer() - this._SafeStr_479) / 1000);
      }
      
      public function continueRoomDatabase() : void
      {
         var variables:URLVariables;
         var howManyPlayers:Number;
         var j:*;
         var loader:URLLoader;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
         };
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "continueroom.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.addressstring = this.myPeerID;
         variables.basePasswordString = this.basePasswordString;
         variables.gamemodestring = this.gameMode;
         variables.aimingstring = this.mouseAiming == true ? "1" : "0";
         variables.mapidstring = this.lobbyMapIDForJoinList;
         variables.avgkillsstring = this._SafeStr_1339();
         variables.timeinlobbystring = this._SafeStr_1597();
         trace("continueroom, timeinlobby is " + String(this._SafeStr_1597()));
         if(Boolean(this.nearLongitude) && Boolean(this.nearLatitude))
         {
         }
         howManyPlayers = 0;
         j = 0;
         while(j < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[j] == true)
            {
               howManyPlayers++;
            }
            j++;
         }
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function _SafeStr_612() : void
      {
         var usernamelist:String;
         var t:*;
         var request:URLRequest;
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            xtr("updated player count in db");
            xtr(param1.target.data);
         };
         var howManyPlayers:Number = 0;
         var j:* = 0;
         while(j < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[j] == true)
            {
               howManyPlayers++;
            }
            j++;
         }
         usernamelist = "";
         t = 0;
         while(t < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[t] == true)
            {
               if(t != 0)
               {
                  usernamelist += "#";
               }
               usernamelist += this.tankNameArray[t].replace("guest_","");
            }
            t++;
         }
         this.xtr("update, how many players: " + howManyPlayers);
         request = new URLRequest(this._SafeStr_372 + "joinroom.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.addressstring = this.myPeerID;
         variables.howmanyplayers = howManyPlayers;
         variables.usernameliststring = usernamelist;
         variables.basePasswordString = this.basePasswordString;
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function _SafeStr_1139() : void
      {
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            xtr("logged game completed successfully");
         };
         var randomShit1:Number = Number(getTimer());
         var randomShit2:Number = Math.floor(Math.random() * 1000) + 1;
         var randomShit3:Number = randomShit1 * randomShit2;
         var request:URLRequest = new URLRequest(this._SafeStr_372 + "loggamecompleted.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.ignorethis = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function _SafeStr_2327() : void
      {
         var onComplete:Function;
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var hashString:String = null;
         var loader:URLLoader = null;
         if(this.userLoggedIn)
         {
            onComplete = function(param1:Event):void
            {
               trace(param1.target.data["code"]);
            };
            ++this.localMinuteCounter.s;
            randomShit1 = Number(getTimer());
            randomShit2 = Math.floor(Math.random() * 1000) + 1;
            randomShit3 = randomShit1 * randomShit2;
            request = new URLRequest(this._SafeStr_372 + "logmins2.php");
            request.method = URLRequestMethod.POST;
            variables = new URLVariables();
            variables.ignorethis = randomShit3;
            variables.basePasswordString = this.basePasswordString;
            variables.dbid = this.localDatabaseID;
            variables.minutesplayed = this.localMinuteCounter.s;
            hashString = MD5.hash(String(this.localDatabaseID) + String(MD5.hash(this.newAccPassword)) + String(this.localMinuteCounter.s) + String(this.secretEncryptionString));
            variables.hashstring = hashString;
            request.data = variables;
            loader = new URLLoader(request);
            loader.addEventListener(Event.COMPLETE,onComplete);
            loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
            loader.dataFormat = URLLoaderDataFormat.VARIABLES;
            loader.load(request);
            trace("log min played");
         }
      }
      
      public function _SafeStr_791(param1:String, param2:String = "") : void
      {
         var request:URLRequest;
         var variables:URLVariables;
         var loader:URLLoader;
         var onComplete:Function = null;
         var chatString:String = param1;
         var extraString:String = param2;
         onComplete = function(param1:Event):void
         {
            xtr("chat sent to server successfully");
         };
         var chatStringSnipped:String = chatString.substring(this.lastLogLength) + extraString;
         this.lastLogLength = chatString.length;
         request = new URLRequest(this._SafeStr_372 + "chatlog.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.chatstring = chatStringSnipped;
         variables.basePasswordString = this.basePasswordString;
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function logAIDeltaHealth(param1:Number, param2:Number) : void
      {
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         var deltaHealth:Number = param1;
         var difficulty:Number = param2;
         onComplete = function(param1:Event):void
         {
            xtr("ai delta health sent to server successfully");
         };
         request = new URLRequest(this._SafeStr_372 + "ailog.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.deltahealth = deltaHealth;
         variables.difficulty = difficulty;
         variables.basePasswordString = this.basePasswordString;
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function _SafeStr_267(param1:String) : void
      {
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         var messageString:String = param1;
         onComplete = function(param1:Event):void
         {
            xtr("campaign event logged");
         };
         request = new URLRequest(this._SafeStr_372 + "campaignlog.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.usernamestring = this.localTankName;
         variables.messagestring = messageString;
         variables.basePasswordString = this.basePasswordString;
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function _SafeStr_2010(param1:String) : void
      {
         var _loc2_:URLRequest = null;
         var _loc3_:URLVariables = null;
         var _loc4_:URLLoader = null;
         _loc2_ = new URLRequest(this._SafeStr_372 + "logconnectionattempt.php");
         _loc2_.method = URLRequestMethod.POST;
         _loc3_ = new URLVariables();
         _loc3_.contype = param1;
         _loc3_.usingcumulus = this.usingCumulus;
         _loc3_.basePasswordString = this.basePasswordString;
         _loc2_.data = _loc3_;
         _loc4_ = new URLLoader(_loc2_);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         _loc4_.dataFormat = URLLoaderDataFormat.VARIABLES;
         _loc4_.load(_loc2_);
      }
      
      public function joinRoom(param1:MouseEvent = null) : void
      {
         this.buttonClickSound();
         this._SafeStr_2534 = false;
         if(this._SafeStr_1029)
         {
            if(!this.destinationRoomPassword)
            {
               this._SafeStr_1688(this._SafeStr_1029);
               this._SafeStr_981();
            }
            else
            {
               this._SafeStr_2417();
               this.xtr("room requires password");
            }
         }
      }
      
      public function _SafeStr_2417() : *
      {
         this._SafeStr_1918 = addChild(new _SafeCls_216());
         this._SafeStr_1918.x = 365;
         this._SafeStr_1918.y = 250;
         this._SafeStr_1918.okbutton.addEventListener(MouseEvent.CLICK,this.submitPassword);
         this._SafeStr_1918.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1176);
         this.joingamewindow.mouseChildren = false;
      }
      
      public function submitPassword(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this.destinationRoomEnteredPassword = this._SafeStr_1918.passwordtext.text;
         if(MD5.hash(String(this.destinationRoomEnteredPassword) + String(this._SafeStr_294)) == this.destinationRoomPassword)
         {
            this.xtr("password correct");
            this._SafeStr_1176();
            this._SafeStr_1688(this._SafeStr_1029);
            this._SafeStr_981();
         }
         else
         {
            this.xtr("password wrong");
            this._SafeStr_1176();
            this._SafeStr_2134();
         }
      }
      
      public function _SafeStr_1176(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this._SafeStr_1918.okbutton.removeEventListener(MouseEvent.CLICK,this.submitPassword);
         this._SafeStr_1918.backbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_1176);
         removeChild(this._SafeStr_1918);
         this.joingamewindow.mouseChildren = true;
      }
      
      public function _SafeStr_2134(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this._SafeStr_1559 = addChild(new _SafeCls_259());
         this._SafeStr_1559.x = 365;
         this._SafeStr_1559.y = 250;
         this._SafeStr_1559.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2326);
      }
      
      public function _SafeStr_2326(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this._SafeStr_1559.backbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_2326);
         removeChild(this._SafeStr_1559);
      }
      
      public function _SafeStr_981() : *
      {
         this._SafeStr_2536 = addChild(new _SafeCls_226());
         this._SafeStr_2536.x = 365;
         this._SafeStr_2536.y = 250;
         this._SafeStr_2536.joininggamebackbutton.addEventListener(MouseEvent.CLICK,this.cancelJoining);
         this.joingamewindow.mouseChildren = false;
      }
      
      public function cancelJoining(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this._SafeStr_2281();
         clearInterval(this._SafeStr_2186);
         this._SafeStr_2425.close();
      }
      
      public function cancelCreating(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this._SafeStr_1537();
         clearInterval(this._SafeStr_2186);
         this._SafeStr_2425.close();
      }
      
      public function _SafeStr_2281() : *
      {
         this._SafeStr_2536.joininggamebackbutton.removeEventListener(MouseEvent.CLICK,this.cancelJoining);
         removeChild(this._SafeStr_2536);
         this.joingamewindow.mouseChildren = true;
      }
      
      public function _SafeStr_1953() : *
      {
         this._SafeStr_2536 = addChild(new _SafeCls_226());
         this._SafeStr_2536.x = 365;
         this._SafeStr_2536.y = 250;
         this._SafeStr_2536.joininggamebackbutton.addEventListener(MouseEvent.CLICK,this.cancelCreating);
         this._SafeStr_742.okbutton.mouseEnabled = false;
      }
      
      public function _SafeStr_1537() : *
      {
         this._SafeStr_2536.joininggamebackbutton.removeEventListener(MouseEvent.CLICK,this.cancelJoining);
         removeChild(this._SafeStr_2536);
         try
         {
            this._SafeStr_742.okbutton.mouseEnabled = true;
         }
         catch(e:Error)
         {
         }
      }
      
      public function changeMaxPlayers(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         if(param1.target.name == "increasemaxplayers" || param1.target.name == "decreasemaxplayers")
         {
            if(param1.target.name == "increasemaxplayers")
            {
               ++this.localMaxPlayers;
            }
            else if(param1.target.name == "decreasemaxplayers")
            {
               --this.localMaxPlayers;
            }
            if(this.localMaxPlayers < 2)
            {
               this.localMaxPlayers = 2;
            }
            else if(this.localMaxPlayers > this._SafeStr_486)
            {
               this.localMaxPlayers = this._SafeStr_486;
            }
            this._SafeStr_742.gamemaxplayers.text = String(this.localMaxPlayers);
         }
         else if(param1.target.name == "increasegamemode" || param1.target.name == "decreasegamemode")
         {
            if(param1.target.name == "increasegamemode")
            {
               ++this.gameMode;
            }
            else if(param1.target.name == "decreasegamemode")
            {
               --this.gameMode;
            }
            if(this.gameMode < 0)
            {
               this.gameMode = 2;
            }
            else if(this.gameMode == 3)
            {
               this.gameMode = 0;
            }
            switch(this.gameMode)
            {
               case 0:
                  this._SafeStr_742.gamegamemode.text = "Last tank alive";
                  this.levelChosen = 0;
                  this.teamPlay = false;
                  break;
               case 1:
                  this._SafeStr_742.gamegamemode.text = "Deathmatch";
                  this.levelChosen = 0;
                  this.teamPlay = false;
                  break;
               case 2:
                  this._SafeStr_742.gamegamemode.text = "Capture the flag";
                  this.levelChosen = 12;
                  this.teamPlay = true;
            }
            if(this.gameMode == 0)
            {
               this.tankFullHealthStock = this.tankFullHealthStockNormal;
               this.bulletsPerMagStock = this.bulletsPerMagStockNormal;
            }
            else if(this.gameMode == 1)
            {
               this.tankFullHealthStock = this.tankFullHealthStockDeathmatch;
               this.bulletsPerMagStock = this.bulletsPerMagStockNormal;
            }
            else if(this.gameMode == 2)
            {
               this.tankFullHealthStock = this.tankFullHealthStockCtf;
               this.bulletsPerMagStock = this.bulletsPerMagStockCtf;
            }
            this._SafeStr_1387.tankFullHealth = this.tankFullHealthStock;
            this._SafeStr_1387.bulletsPerMag = this.bulletsPerMagStock;
         }
         else if(param1.target.name == "increaseaimingmode" || param1.target.name == "decreaseaimingmode")
         {
            this.mouseAiming = !this.mouseAiming;
            if(this.mouseAiming)
            {
               this._SafeStr_742.gameaimingmode.text = "Mouse";
            }
            else
            {
               this._SafeStr_742.gameaimingmode.text = "Normal";
            }
         }
      }
      
      public function createRoom(param1:MouseEvent = null) : void
      {
         this.buttonClickSound();
         this.xtr("createRoom");
         if(!this._SafeStr_742.gamename.text)
         {
            this._SafeStr_2024.text = "TinyTanks game!";
         }
         this._SafeStr_487 = this._SafeStr_742.gamename.text.replace("&","");
         this.localRoomPassword = this._SafeStr_742.gamepassword.text.replace("&","");
         this._SafeStr_1688(null);
         this._SafeStr_1953();
      }
      
      public function itemClick(param1:Event) : void
      {
         this._SafeStr_1029 = param1.target.selectedItem.Address;
         this.destinationRoomPassword = param1.target.selectedItem.PasswordString;
      }
      
      public function _SafeStr_1688(param1:String) : void
      {
         var _loc2_:* = undefined;
         this.xtr("Initialising Connection");
         this._SafeStr_2215();
         this.inLobby = false;
         this._SafeStr_741 = false;
         this._SafeStr_2141 = new Array();
         if(param1)
         {
            this.farPeerID = param1;
            this.hosting = false;
            this.localTankID = -1;
            this._SafeStr_2565 = false;
            this._SafeStr_1579 = false;
            this._SafeStr_1136(param1);
            if(this.root.loaderInfo.url.split("/")[0] != "file:")
            {
            }
            if(!this._SafeStr_871 && !this._SafeStr_559)
            {
               try
               {
                  _SafeCls_188._SafeStr_2479.trackEvent("Retention","Retention: Join attempt");
               }
               catch(e:Error)
               {
               }
            }
            this._SafeStr_871 = true;
         }
         else
         {
            this.farPeerID = null;
            this.hosting = true;
            this.localTankID = 0;
            this._SafeStr_2147[0] = true;
            this.tankNameArray[0] = this.localTankName;
            this._SafeStr_2011[0] = this.localTankSetupArray;
            this._SafeStr_1766[0] = this._SafeStr_1475;
            this._SafeStr_1300[0] = this._SafeStr_1608;
            this.tankTitleArray[0] = this.localTankTitle;
            this._SafeStr_2028[0] = this._SafeStr_1921;
            _loc2_ = 0;
            while(_loc2_ < this.localStatsArray.length)
            {
               this.tankStatsArray[0][_loc2_] = this.localStatsArray[_loc2_];
               _loc2_++;
            }
            this._SafeStr_2565 = true;
            this._SafeStr_1579 = true;
         }
         this._SafeStr_2425.close();
         this._SafeStr_1024 = [];
         this._SafeStr_2588 = 0;
         this._SafeStr_2425 = null;
         this._SafeStr_1745 = 0;
         this._SafeStr_290 = 0;
         this._SafeStr_2425 = new NetConnection();
         this._SafeStr_2425.addEventListener(NetStatusEvent.NET_STATUS,this._SafeStr_1616);
         trace("ocnnecting to " + String(this.SERVER_ADDRESS + this.DEVELOPER_KEY));
         this._SafeStr_2425.connect(this.SERVER_ADDRESS + this.DEVELOPER_KEY);
         if(this.hosting)
         {
            this._SafeStr_2425.maxPeerConnections = 8;
         }
         else
         {
            this._SafeStr_2425.maxPeerConnections = 1;
         }
         if(!this._SafeStr_2534)
         {
            this._SafeStr_2186 = setInterval(this.connectionTimeout,this._SafeStr_428);
         }
         else
         {
            this._SafeStr_2186 = setInterval(this.connectionTimeout,this._SafeStr_2066);
         }
      }
      
      public function connectionTimeout() : *
      {
         trace("connectionTimeout");
         if(this._SafeStr_2534)
         {
            this._SafeStr_2425.close();
            clearInterval(this._SafeStr_2186);
            this.autoJoinNext();
         }
         else if(this.hosting)
         {
            this._SafeStr_2536.joininggamewindowtext.text = "Unable to \nconnect!";
            this._SafeStr_2425.close();
            clearInterval(this._SafeStr_2186);
         }
         else
         {
            this._SafeStr_2425.close();
            clearInterval(this._SafeStr_2186);
            this._SafeStr_2536.joininggamewindowtext.text = "Unable to join!";
         }
      }
      
      public function _SafeStr_1616(param1:NetStatusEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = undefined;
         this.xtr("ncStatus event: " + param1.info.code);
         if(param1.info.code == "NetConnection.Connect.Success")
         {
            this.myPeerID = this._SafeStr_2425.nearID;
            this.initSendStream();
            if(this.hosting)
            {
               this._SafeStr_1233[0] = 0;
               this.inLobby = true;
               this._SafeStr_1237();
               gotoAndStop(3);
               this._SafeStr_1172();
               this.allChatMessages = "";
               this._SafeStr_814 = getTimer();
               this._SafeStr_1137(null);
               addEventListener(Event.ENTER_FRAME,this._SafeStr_1137);
               this._SafeStr_1250[0] = this.myPeerID;
               this._SafeStr_673();
               clearInterval(this._SafeStr_2186);
               this._SafeStr_1537();
               this._SafeStr_1738 = setInterval(this.sendPing,this._SafeStr_1404);
               this._SafeStr_2315 = setInterval(this.sendSpeedHackTest,this._SafeStr_553);
            }
            else if(!this._SafeStr_2534)
            {
               this._SafeStr_2536.joininggamewindowtext.text = "Joining game...";
               this._SafeStr_2536.joininggamewindowtext.y = -20;
            }
            if(this.farPeerID != null)
            {
               this._SafeStr_2550();
            }
         }
         if(param1.info.code == "NetStream.Connect.Closed")
         {
            trace("closed farid: " + param1.info.stream.farID);
            _loc2_ = false;
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_2141.length)
            {
               if(this._SafeStr_2141[_loc3_] == param1.info.stream.farID)
               {
                  _loc2_ = true;
                  this._SafeStr_2141.splice(_loc3_,1);
                  break;
               }
               _loc3_++;
            }
            trace("foundInArray: " + _loc2_);
            if(!_loc2_)
            {
               if(this.hosting)
               {
                  this._SafeStr_812(param1.info.stream.farID);
               }
               else
               {
                  this._SafeStr_1583();
               }
            }
         }
      }
      
      public function _SafeStr_812(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:String = null;
         _loc3_ = 1;
         while(_loc3_ < this._SafeStr_1250.length)
         {
            if(this._SafeStr_1250[_loc3_] == param1)
            {
               if(this.inLobby)
               {
                  if(this.tankNameArray[_loc3_] != "connecting...")
                  {
                     if(param2)
                     {
                        _loc7_ = "<font color=\'#5C3030\'>* " + this.fixUsernameString(this.tankNameArray[_loc3_]) + " has been kicked</font> \n";
                     }
                     else
                     {
                        _loc7_ = "<font color=\'#5C3030\'>* " + this.fixUsernameString(this.tankNameArray[_loc3_]) + " has left the game</font> \n";
                     }
                     this.allChatMessages += _loc7_;
                     this._SafeStr_1546.htmlText += _loc7_;
                     this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
                     this.sendStream.send("recvChatMessage",this.localTankID,_loc7_);
                  }
               }
               else
               {
                  if(this.tankNameArray[_loc3_] != "connecting...")
                  {
                     _loc7_ = "* " + this.fixUsernameString(this.tankNameArray[_loc3_]) + " has left the game \n";
                     this.allChatMessages += _loc7_;
                     this.hudthing.txtInGameChat.appendText(_loc7_);
                     this.hudthing.txtInGameChat.scrollV = this.hudthing.txtInGameChat.numLines;
                     this.hudthing.txtInGameChat.visible = true;
                     clearInterval(this._SafeStr_1120);
                     this._SafeStr_1120 = setInterval(this._SafeStr_1791,8000);
                     this.sendStream.send("recvChatMessage",this.localTankID,_loc7_);
                  }
                  if(this._SafeStr_451[_loc3_] == true)
                  {
                     this.destroyTank(_loc3_);
                  }
                  if(this.gameMode == 2)
                  {
                     if(this._SafeStr_1867[_loc3_] != -1)
                     {
                        this.flagDropped(this._SafeStr_1867[_loc3_],_loc3_);
                     }
                  }
               }
               this._SafeStr_2147[_loc3_] = false;
               this.tankNameArray[_loc3_] = null;
               this._SafeStr_1250[_loc3_] = null;
               this._SafeStr_451[_loc3_] = false;
               this._SafeStr_1162[_loc3_] = _loc3_ % 4;
               this._SafeStr_1573[_loc3_] = false;
               this._SafeStr_1764[_loc3_] = false;
               this._SafeStr_1300[_loc3_] = null;
               this._SafeStr_2343[_loc3_] = 0;
               this._SafeStr_879[_loc3_] = 0;
               this._SafeStr_1303[_loc3_] = null;
               this._SafeStr_2028[_loc3_] = null;
               this._SafeStr_2011[_loc3_] = [0,1,2,12,16];
               this._SafeStr_1766[_loc3_] = false;
               this.tankTitleArray[_loc3_] = "";
               _loc4_ = 0;
               while(_loc4_ < this._SafeStr_1233.length)
               {
                  if(this._SafeStr_1233[_loc4_] == _loc3_)
                  {
                     this._SafeStr_1233.splice(_loc4_,1);
                     break;
                  }
                  _loc4_++;
               }
               _loc5_ = 0;
               while(_loc5_ < this.localStatsArray.length)
               {
                  this.tankStatsArray[_loc3_][_loc5_] = null;
                  if(this.inGame)
                  {
                     this._SafeStr_1525[_loc3_][_loc5_] = 0;
                  }
                  _loc5_++;
               }
               if(this.inLobby)
               {
                  this._SafeStr_1625();
               }
               else if(this.tankCameraFollowID == _loc3_)
               {
                  this._SafeStr_904();
               }
               _loc6_ = 0;
               while(_loc6_ < this.pingNumberOfValuesToAverage)
               {
                  this._SafeStr_1325[_loc3_][_loc6_] = -1;
                  _loc6_++;
               }
               this.sendStream.send("recvPeerDisconnected",_loc3_);
               break;
            }
            _loc3_++;
         }
         this._SafeStr_612();
      }
      
      public function recvPeerDisconnected(param1:Number) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         this.xtr("recvPeerDisconnected: " + param1);
         if(this._SafeStr_1579)
         {
            if(Boolean(this._SafeStr_451[param1]) && this.inGame)
            {
               this.destroyTank(param1);
            }
            this._SafeStr_2147[param1] = false;
            this.tankNameArray[param1] = null;
            this._SafeStr_1250[param1] = null;
            this._SafeStr_451[param1] = false;
            this._SafeStr_1162[param1] = param1;
            this._SafeStr_1573[param1] = false;
            this._SafeStr_1764[param1] = false;
            this._SafeStr_2343[param1] = 0;
            this._SafeStr_879[param1] = 0;
            this._SafeStr_2028[param1] = null;
            this._SafeStr_2011[param1] = [0,1,2,12];
            this._SafeStr_1766[param1] = false;
            this.tankTitleArray[param1] = "";
            _loc2_ = 0;
            while(_loc2_ < this._SafeStr_1233.length)
            {
               if(this._SafeStr_1233[_loc2_] == param1)
               {
                  this._SafeStr_1233.splice(_loc2_,1);
                  break;
               }
               _loc2_++;
            }
            _loc3_ = 0;
            while(_loc3_ < this.localStatsArray.length)
            {
               this.tankStatsArray[param1][_loc3_] = null;
               _loc3_++;
            }
            if(this.inLobby)
            {
               this._SafeStr_1625();
            }
            if(!this.inLobby)
            {
               if(this.gameMode == 2)
               {
                  if(this._SafeStr_1867[param1] != -1)
                  {
                     this.flagDropped(this._SafeStr_1867[param1],param1);
                  }
               }
            }
         }
      }
      
      public function _SafeStr_1583() : void
      {
         this.xtr("Host disconnected!");
         if(Boolean(this._SafeStr_2536) && Boolean(this._SafeStr_2536.stage))
         {
            trace("prekick");
            this._SafeStr_2536.joininggamewindowtext.text = "Unable to connect";
         }
         else
         {
            this.notificationwindow = stage.addChild(new notificationwindowmc());
            this.notificationwindow.x = 365;
            this.notificationwindow.y = 250;
            this.notificationwindow.notificationtext.text = "Disconnected from host";
            this.notificationwindow.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_726);
         }
      }
      
      public function initSendStream() : void
      {
         var sendStreamClient:Object = null;
         this.xtr("initSendStream");
         this.sendStream = new NetStream(this._SafeStr_2425,NetStream.DIRECT_CONNECTIONS);
         this.sendStream.addEventListener(NetStatusEvent.NET_STATUS,this._SafeStr_2532);
         this.sendStream.publish("media");
         this.sendStream.bufferTime = 0;
         this.xtr("buffertime sendstream test: " + this.sendStream.bufferTime);
         sendStreamClient = new Object();
         sendStreamClient.onPeerConnect = function(param1:NetStream):Boolean
         {
            if(hosting)
            {
               if(_SafeStr_1959())
               {
                  farPeerID = param1.farID;
                  xtr("onPeerConnect " + farPeerID);
                  _SafeStr_2550();
                  return true;
               }
               return false;
            }
            farPeerID = param1.farID;
            xtr("onPeerConnect " + farPeerID);
            return true;
         };
         this.sendStream.client = sendStreamClient;
      }
      
      public function _SafeStr_1959() : Boolean
      {
         var _loc1_:Number = NaN;
         var _loc2_:* = undefined;
         _loc1_ = 0;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[_loc2_] == true)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         if(_loc1_ < this.localMaxPlayers)
         {
            return true;
         }
         return false;
      }
      
      public function _SafeStr_2550(param1:MouseEvent = null) : void
      {
         this.xtr("initRecvStream, nc: " + this._SafeStr_2425 + "  farPeerID: " + this.farPeerID);
         this._SafeStr_1024[this._SafeStr_2588] = new NetStream(this._SafeStr_2425,this.farPeerID);
         this._SafeStr_1024[this._SafeStr_2588].addEventListener(NetStatusEvent.NET_STATUS,this._SafeStr_2532);
         this._SafeStr_1024[this._SafeStr_2588].play("media");
         this._SafeStr_1024[this._SafeStr_2588].bufferTime = 0;
         this.xtr("buffertime test: " + this._SafeStr_1024[this._SafeStr_2588].bufferTime);
         this._SafeStr_1024[this._SafeStr_2588].client = this;
         ++this._SafeStr_2588;
      }
      
      public function _SafeStr_2532(param1:NetStatusEvent) : void
      {
         var _loc2_:* = undefined;
         trace("netStatusHandler " + param1.info.code);
         if(param1.info.code == "NetStream.Play.Start")
         {
            trace("event.target.farID: " + param1.target.farID);
            if(param1.target == this.sendStream)
            {
               trace("its sendstream");
            }
            _loc2_ = 0;
            while(_loc2_ < this._SafeStr_1024.length)
            {
               if(param1.target == this._SafeStr_1024[_loc2_])
               {
                  trace("its recvstream");
               }
               _loc2_++;
            }
            if(param1.target.farID)
            {
               this._SafeStr_2141.push(param1.target.farID);
               if(this.hosting)
               {
                  this.sendClientAllGameData(param1.target.farID);
                  trace("sendClientAllGameData(" + param1.target.farID + ")");
               }
            }
         }
         if(!this.hosting && param1.info.code == "NetStream.Play.Failed")
         {
            this._SafeStr_2425.close();
            clearInterval(this._SafeStr_2186);
            this._SafeStr_2536.joininggamewindowtext.text = "Room full!";
         }
      }
      
      public function sendClientsAIJoined() : void
      {
         this.xtr("sendClientsAIJoined");
         this.sendStream.send("recvAIJoined",this._SafeStr_2147,this._SafeStr_451,this.tankNameArray,this._SafeStr_430,this._SafeStr_1233,this._SafeStr_2011);
      }
      
      public function recvAIJoined(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:Array) : void
      {
         if(this._SafeStr_1579)
         {
            this.xtr("recvAIJoined");
            this._SafeStr_2147 = param1.slice();
            this._SafeStr_451 = param2.slice();
            this.tankNameArray = param3.slice();
            this._SafeStr_430 = param4.slice();
            this._SafeStr_1233 = param5.slice();
            this._SafeStr_2011 = param6.slice();
            if(this.inLobby)
            {
               this._SafeStr_1625();
            }
         }
      }
      
      public function sendClientsAIRemoved() : void
      {
         this.xtr("sendClientsAIRemoved");
         this.sendStream.send("recvAIRemoved",this._SafeStr_2147,this._SafeStr_451,this.tankNameArray,this._SafeStr_430,this._SafeStr_1233);
      }
      
      public function recvAIRemoved(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array) : void
      {
         if(this._SafeStr_1579)
         {
            this.xtr("recvAIRemoved");
            this._SafeStr_2147 = param1.slice();
            this._SafeStr_451 = param2.slice();
            this.tankNameArray = param3.slice();
            this._SafeStr_430 = param4.slice();
            this._SafeStr_1233 = param5.slice();
            if(this.inLobby)
            {
               this._SafeStr_1625();
            }
         }
      }
      
      public function sendClientAllGameData(param1:String) : void
      {
         var _loc2_:* = undefined;
         this.xtr("sendClientAllGameData");
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_2147.length)
         {
            this.xtr("for loop in tankIDArray, i: " + _loc2_);
            if(this._SafeStr_2147[_loc2_] == false)
            {
               this.xtr("assigning new tank id");
               this._SafeStr_2147[_loc2_] = true;
               this._SafeStr_1250[_loc2_] = param1;
               this.tankNameArray[_loc2_] = "connecting...";
               this._SafeStr_2180[_loc2_] = 500;
               this._SafeStr_1233.push(_loc2_);
               this.sendStream.send("recvAllGameData",_loc2_,param1,this._SafeStr_2147,this._SafeStr_451,this.tankNameArray,this._SafeStr_1162,this._SafeStr_1573,this._SafeStr_1764,this.levelChosen,this.entireCustomLevelData,this.newVaultMapID,this.levelChosenMaxPlayers,this.teamPlay,this._SafeStr_1387,this.mouseAiming,this._SafeStr_1036,this._SafeStr_430,this._SafeStr_1233,this._SafeStr_2322,this._SafeStr_2011,this._SafeStr_781,this._SafeStr_1296,this._SafeStr_1766,this.gameMode,this._SafeStr_2343,this._SafeStr_879,this.simpleStatsKillsTeam,this.simpleStatsCapturesTeam,this.deathmatchKillLimit,this.ctfCaptureLimit);
               if(this.inLobby)
               {
                  this._SafeStr_1625();
               }
               break;
            }
            _loc2_++;
         }
      }
      
      public function recvAllGameData(param1:Number, param2:String, param3:Array, param4:Array, param5:*, param6:*, param7:*, param8:*, param9:Number, param10:Array, param11:Number, param12:Number, param13:*, param14:*, param15:*, param16:*, param17:*, param18:*, param19:*, param20:*, param21:*, param22:*, param23:*, param24:*, param25:*, param26:*, param27:*, param28:*, param29:*, param30:*) : void
      {
         this.xtr("recvAllGameData from host!");
         if(this.myPeerID == param2)
         {
            this.localTankID = param1;
            this.xtr("received local id: " + this.localTankID);
            this._SafeStr_2483();
            if(this.root.loaderInfo.url.split("/")[0] != "file:")
            {
            }
            clearInterval(this._SafeStr_2186);
            this._SafeStr_1579 = true;
         }
         this._SafeStr_2147 = param3.slice();
         this._SafeStr_451 = param4.slice();
         this.tankNameArray = param5.slice();
         this._SafeStr_1162 = param6.slice();
         this._SafeStr_1573 = param7.slice();
         this._SafeStr_1764 = param8.slice();
         this.levelChosen = param9;
         this.entireCustomLevelData = param10;
         this.newVaultMapID = param11;
         this.levelChosenMaxPlayers = param12;
         this._SafeStr_1387 = param14;
         this.teamPlay = param13;
         this.mouseAiming = param15;
         this._SafeStr_1036 = param16;
         this._SafeStr_781 = param21;
         this._SafeStr_1296 = param22;
         this.gameMode = param24;
         this._SafeStr_430 = param17.slice();
         this._SafeStr_1233 = param18.slice();
         this._SafeStr_2322 = param19;
         this._SafeStr_2011 = param20.slice();
         this._SafeStr_1766 = param23.slice();
         this._SafeStr_2343 = param25.slice();
         this._SafeStr_879 = param26.slice();
         this.simpleStatsKillsTeam = param27.slice();
         this.simpleStatsCapturesTeam = param28.slice();
         this.deathmatchKillLimit = param29;
         this.ctfCaptureLimit = param30;
         if(this.gameMode == 0)
         {
            this.tankFullHealthStock = this.tankFullHealthStockNormal;
            this.bulletsPerMagStock = this.bulletsPerMagStockNormal;
         }
         else if(this.gameMode == 1)
         {
            this.tankFullHealthStock = this.tankFullHealthStockDeathmatch;
            this.bulletsPerMagStock = this.bulletsPerMagStockNormal;
         }
         else if(this.gameMode == 2)
         {
            this.tankFullHealthStock = this.tankFullHealthStockCtf;
            this.bulletsPerMagStock = this.bulletsPerMagStockCtf;
         }
         if(this.inLobby)
         {
            this._SafeStr_1625();
         }
      }
      
      public function _SafeStr_2483() : void
      {
         this.xtr("send local tank name");
         this.sendStream.send("recvSingleTankName",this.localTankID,this.localTankName,this.localTankSetupArray,this._SafeStr_1475,this._SafeStr_1608,this._SafeStr_1921);
      }
      
      public function recvSingleTankName(param1:Number, param2:String, param3:Array, param4:Boolean, param5:Number, param6:Number) : void
      {
         var _loc7_:String = null;
         if(this._SafeStr_956(param2,param5) || this._SafeStr_709(param2,param5))
         {
            this._SafeStr_770(param1);
         }
         else
         {
            this.tankNameArray[param1] = param2;
            this._SafeStr_2011[param1] = param3.slice();
            this._SafeStr_1766[param1] = param4;
            this._SafeStr_1300[param1] = param5;
            this._SafeStr_2028[param1] = param6;
            this._SafeStr_721();
            this._SafeStr_1172();
            if(this.inLobby)
            {
               this._SafeStr_1625();
               _loc7_ = "<font color=\'#2E485F\'>* " + this.fixUsernameString(param2) + " has joined the game</font> \n";
               this.allChatMessages += _loc7_;
               this._SafeStr_1546.htmlText += _loc7_;
               this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
               this.sendStream.send("recvChatMessage",this.localTankID,_loc7_,false);
               this.sendStream.send("playNewPlayerSound");
               this.playNewPlayerSound();
               this._SafeStr_1779();
            }
            else if(this.inGame)
            {
               _loc7_ = "* " + this.fixUsernameString(param2) + " has joined the game \n";
               this.allChatMessages += _loc7_;
               this.hudthing.txtInGameChat.appendText(_loc7_);
               this.hudthing.txtInGameChat.scrollV = this.hudthing.txtInGameChat.numLines;
               this.hudthing.txtInGameChat.visible = true;
               clearInterval(this._SafeStr_1120);
               this._SafeStr_1120 = setInterval(this._SafeStr_1791,8000);
               this.sendStream.send("recvChatMessage",this.localTankID,_loc7_,false);
               this.sendStream.send("playNewPlayerSound");
               this.playNewPlayerSound();
            }
            if(this.isUserAGuest(param2) == true)
            {
               this.sendAllPlayerStats();
            }
            else
            {
               this.retreiveUserData(param2);
            }
            this._SafeStr_1928(param1);
            this._SafeStr_612();
         }
      }
      
      public function playNewPlayerSound() : void
      {
         if(this._SafeStr_1579)
         {
            if(!this.muteSfx)
            {
               this.doorOpenSound.play();
            }
         }
      }
      
      public function _SafeStr_721() : void
      {
         this.sendStream.send("recvAllTankNames",this.tankNameArray,this._SafeStr_2011,this._SafeStr_1766,this._SafeStr_2028);
      }
      
      public function recvAllTankNames(param1:Array, param2:Array, param3:Array, param4:Array) : void
      {
         if(this._SafeStr_1579)
         {
            this.xtr("recvAllTankNames");
            this.tankNameArray = param1.slice();
            this._SafeStr_2011 = param2.slice();
            this._SafeStr_1766 = param3.slice();
            this._SafeStr_2028 = param4.slice();
            if(this.inLobby)
            {
               this._SafeStr_1625();
            }
            this._SafeStr_1172();
         }
      }
      
      public function _SafeStr_1172() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_2147.length)
         {
            if(Boolean(this._SafeStr_2147[_loc1_]) && this.tankNameArray[_loc1_].substr(0,2) == "m#")
            {
               if(!this._SafeStr_1303[_loc1_])
               {
                  _loc2_ = this.tankNameArray[_loc1_].split("#");
                  _loc3_ = _loc2_[1];
                  _loc4_ = new Loader();
                  _loc4_.load(new URLRequest("http://" + this.root.loaderInfo.url.split("/")[2] + "/players/en/resize.php?uid=" + _loc3_ + "&w=70&h=70"));
                  this._SafeStr_1303[_loc1_] = _loc4_;
               }
            }
            _loc1_++;
         }
      }
      
      public function _SafeStr_1928(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.inLobby)
         {
            this.sendStream.send("recvLobbyStatus",this.inLobby,param1);
         }
         else
         {
            trace("SENDING LOBBY STATUS AND ALL TANK X Y ANGLE DATA");
            if(this.gameMode == 2)
            {
               _loc2_ = Number(this.flag0.x);
               _loc3_ = Number(this.flag0.y);
               _loc4_ = Number(this.flag1.x);
               _loc5_ = Number(this.flag1.y);
            }
            else
            {
               _loc2_ = Number(undefined);
               _loc3_ = Number(undefined);
               _loc4_ = Number(undefined);
               _loc5_ = Number(undefined);
            }
            this.sendStream.send("recvLobbyStatus",this.inLobby,param1,this.Tank0Health,this.Tank1Health,this.Tank2Health,this.Tank3Health,this.Tank4Health,this.Tank5Health,this.Tank6Health,this.Tank7Health,this.Tank0X,this.Tank1X,this.Tank2X,this.Tank3X,this.Tank4X,this.Tank5X,this.Tank6X,this.Tank7X,this.Tank0Y,this.Tank1Y,this.Tank2Y,this.Tank3Y,this.Tank4Y,this.Tank5Y,this.Tank6Y,this.Tank7Y,this.Tank0Angle,this.Tank1Angle,this.Tank2Angle,this.Tank3Angle,this.Tank4Angle,this.Tank5Angle,this.Tank6Angle,this.Tank7Angle,this._SafeStr_1867,this.flagStateArray,_loc2_,_loc3_,_loc4_,_loc5_);
         }
      }
      
      public function recvLobbyStatus(param1:Boolean, param2:Number, param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:Number = 0, param7:Number = 0, param8:Number = 0, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 0, param16:Number = 0, param17:Number = 0, param18:Number = 0, param19:Number = 0, param20:Number = 0, param21:Number = 0, param22:Number = 0, param23:Number = 0, param24:Number = 0, param25:Number = 0, param26:Number = 0, param27:Number = 0, param28:Number = 0, param29:Number = 0, param30:Number = 0, param31:Number = 0, param32:Number = 0, param33:Number = 0, param34:Number = 0, param35:Array = null, param36:Array = null, param37:* = null, param38:* = null, param39:* = null, param40:* = null) : void
      {
         var _loc41_:* = undefined;
         this.xtr("recvLobbyStatus, inLobby: " + this.inLobby + ", lobbyStatus: " + param1);
         if(this.localTankID == param2)
         {
            this.inLobby = param1;
            if(!this._SafeStr_2534)
            {
               this._SafeStr_2281();
            }
            if(!this._SafeStr_1014 && !this._SafeStr_559)
            {
               try
               {
                  _SafeCls_188._SafeStr_2479.trackEvent("Retention","Retention: Join success");
               }
               catch(e:Error)
               {
               }
            }
            this._SafeStr_1014 = true;
            if(this._SafeStr_2534)
            {
               try
               {
                  _SafeCls_188._SafeStr_2479.trackEvent("AutoJoin","AutoJoin: Success");
               }
               catch(e:Error)
               {
               }
            }
            if(param1)
            {
               this.xtr("host says in lobby");
               this.inLobby = true;
               this._SafeStr_1237();
               gotoAndStop(3);
               this.allChatMessages = "";
            }
            else
            {
               this.xtr("host says in game");
               this._SafeStr_2381 = 0;
               this.inLobby = false;
               this.inGame = true;
               this._SafeStr_689 = true;
               this.Tank0Health = param3;
               this.Tank1Health = param4;
               this.Tank2Health = param5;
               this.Tank3Health = param6;
               this.Tank4Health = param7;
               this.Tank5Health = param8;
               this.Tank6Health = param9;
               this.Tank7Health = param10;
               this.Tank0X = param11;
               this.Tank1X = param12;
               this.Tank2X = param13;
               this.Tank3X = param14;
               this.Tank4X = param15;
               this.Tank5X = param16;
               this.Tank6X = param17;
               this.Tank7X = param18;
               this.Tank0Y = param19;
               this.Tank1Y = param20;
               this.Tank2Y = param21;
               this.Tank3Y = param22;
               this.Tank4Y = param23;
               this.Tank5Y = param24;
               this.Tank6Y = param25;
               this.Tank7Y = param26;
               this.Tank0Angle = param27;
               this.Tank1Angle = param28;
               this.Tank2Angle = param29;
               this.Tank3Angle = param30;
               this.Tank4Angle = param31;
               this.Tank5Angle = param32;
               this.Tank6Angle = param33;
               this.Tank7Angle = param34;
               this.Tank0DataIsNew = true;
               this.Tank1DataIsNew = true;
               this.Tank2DataIsNew = true;
               this.Tank3DataIsNew = true;
               this.Tank4DataIsNew = true;
               this.Tank5DataIsNew = true;
               this.Tank6DataIsNew = true;
               this.Tank7DataIsNew = true;
               if(this._SafeStr_1969)
               {
               }
               trace("got recvlobby status, tank0X is " + this.Tank0X);
               _loc41_ = 0;
               while(_loc41_ < 8)
               {
                  this.xtr("tank " + _loc41_ + "Health: " + this["Tank" + _loc41_ + "Health"]);
                  this.xtr("tank " + _loc41_ + "X: " + this["Tank" + _loc41_ + "X"]);
                  this.xtr("tank " + _loc41_ + "Y: " + this["Tank" + _loc41_ + "Y"]);
                  this.xtr("tank " + _loc41_ + "Angle: " + this["Tank" + _loc41_ + "Angle"]);
                  _loc41_++;
               }
               gotoAndStop(4);
               this._SafeStr_1867 = param35;
               this.flagStateArray = param36;
               if(this.gameMode == 2)
               {
                  this.flag0.x = param37;
                  this.flag0.y = param38;
                  this.flag1.x = param39;
                  this.flag1.y = param40;
               }
            }
            this._SafeStr_2565 = true;
         }
      }
      
      public function _SafeStr_1137(param1:Event) : void
      {
         this._SafeStr_1890 = getTimer() - this._SafeStr_814;
      }
      
      public function _SafeStr_2200() : Object
      {
         var _loc1_:Object = null;
         this[this._SafeStr_1118()] = this._SafeStr_1612();
         _loc1_ = new Object();
         _loc1_.activated = true;
         return _loc1_;
      }
      
      public function beginSyncAsHost(param1:Number) : void
      {
         this.xtr("begin sync as host");
         this._SafeStr_1137(null);
         this._SafeStr_1510 = this._SafeStr_1890;
         this.sendStream.send("beginSyncAsClient",param1,this._SafeStr_1890);
      }
      
      public function beginSyncAsClient(param1:Number, param2:Number) : void
      {
         if(this.localTankID == param1)
         {
            this.xtr("CLIENT: received message from host to begin sync process");
            this._SafeStr_2536.joininggamewindowtext.text = "Syncing";
            this._SafeStr_814 = getTimer();
            this._SafeStr_814 -= param2;
            this._SafeStr_1137(null);
            addEventListener(Event.ENTER_FRAME,this._SafeStr_1137);
            this.sendStream.send("recvClientSyncStarted",param1);
         }
      }
      
      public function recvClientSyncStarted(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         this.xtr("HOST: client indicates it has started sync, timerNear: " + this._SafeStr_1890);
         this._SafeStr_1137(null);
         this.xtr("host, about to send first thing, timerNear: " + this._SafeStr_1890 + ", timerAtSyncStart: " + this._SafeStr_1510);
         _loc2_ = (this._SafeStr_1890 - this._SafeStr_1510) / 2;
         this.sendStream.send("correctFirstDelay",_loc2_,param1);
      }
      
      public function correctFirstDelay(param1:Number, param2:Number) : void
      {
         if(this.localTankID == param2)
         {
            this.xtr("CLIENT: received first correction number: " + param1);
            this._SafeStr_814 -= param1;
            this._SafeStr_1907();
         }
      }
      
      public function _SafeStr_1907() : void
      {
         this.xtr("CLIENT: requesting correction time from host, gettimer():" + getTimer());
         this._SafeStr_1137(null);
         this.timeOfCorrectionRequest = getTimer();
         this.sendStream.send("hostRecvCorrectionRequest",this.localTankID);
      }
      
      public function hostRecvCorrectionRequest(param1:Number) : void
      {
         this._SafeStr_1137(null);
         this.sendStream.send("clientRecvCorrectionTime",this._SafeStr_1890,param1);
      }
      
      public function clientRecvCorrectionTime(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.localTankID == param2)
         {
            this.xtr("CLIENT: correction time has come back from host, hostTimer: " + param1 + ", getTimer(): " + getTimer());
            this._SafeStr_1137(null);
            ++this._SafeStr_2440;
            _loc3_ = (getTimer() - this.timeOfCorrectionRequest) / 2;
            this.xtr("oneWayTime: " + _loc3_ + ", timerNear: " + this._SafeStr_1890 + ", timeOfCorrectionRequest: " + this.timeOfCorrectionRequest);
            _loc4_ = _loc3_ + param1;
            _loc5_ = (_loc4_ + this._SafeStr_1890) / 2;
            if(Math.abs(this._SafeStr_1890 - _loc4_) < this._SafeStr_1960)
            {
               this._SafeStr_2605 = true;
               this.xtr("stopping correction after " + this._SafeStr_2440);
            }
            else
            {
               this._SafeStr_2605 = true;
            }
            this._SafeStr_814 -= _loc5_ - this._SafeStr_1890;
            this._SafeStr_1137(null);
            this.xtr("end of correction cycle, timer here is now: " + this._SafeStr_1890);
            if(this._SafeStr_2440 < this._SafeStr_682 && this._SafeStr_2605)
            {
               this._SafeStr_1907();
            }
            else
            {
               this.sendStream.send("correctionCompleteHost",param2);
               this._SafeStr_955();
            }
         }
      }
      
      public function correctionCompleteHost(param1:Number) : void
      {
         this.xtr("HOST: sync process is finished with client in slot: " + param1 + ", sending lobby status");
         this._SafeStr_1928(param1);
      }
      
      public function _SafeStr_955() : void
      {
         this.xtr("correction complete client");
      }
      
      public function recvChatMessage(param1:Number, param2:String, param3:Boolean = true) : *
      {
         if(this._SafeStr_2565)
         {
            if(this.inLobby)
            {
               if(param1 != this.localTankID)
               {
                  this.allChatMessages += param2;
                  this._SafeStr_1546.htmlText += param2;
                  this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
               }
            }
            else if(this.inGame)
            {
               if(param1 != this.localTankID)
               {
                  this.allChatMessages += param2;
                  this.hudthing.txtInGameChat.appendText(param2.replace("&lt;","<").replace("&gt;",">"));
                  this.hudthing.txtInGameChat.scrollV = this.hudthing.txtInGameChat.numLines;
                  this.hudthing.txtInGameChat.visible = true;
                  clearInterval(this._SafeStr_1120);
                  this._SafeStr_1120 = setInterval(this._SafeStr_1791,8000);
               }
            }
            if(this.hosting)
            {
               this.sendStream.send("recvChatMessage",param1,param2);
            }
            if(param3)
            {
               this.playChatSound();
            }
         }
      }
      
      public function _SafeStr_2157(param1:KeyboardEvent) : *
      {
         if(this.inLobby && !this._SafeStr_741)
         {
            if(param1.keyCode == Keyboard.ENTER)
            {
               this._SafeStr_2469(null);
            }
         }
         else if(this.inGame && !this._SafeStr_741)
         {
            if(param1.keyCode == Keyboard.ENTER && !this._SafeStr_1093)
            {
               if(stage.focus == this.hudthing.txtInGameChatSend)
               {
                  this._SafeStr_2469(null);
                  this.hudthing.txtInGameChatSend.y = 510;
               }
               else
               {
                  stage.focus = this.hudthing.txtInGameChatSend;
                  this.hudthing.txtInGameChatSend.y = 470;
               }
            }
         }
      }
      
      public function _SafeStr_2469(param1:MouseEvent = null) : *
      {
         var _loc2_:Array = null;
         var _loc3_:* = undefined;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = undefined;
         var _loc7_:String = null;
         if(!this.inLobby && (this.hudthing.txtInGameChatSend.text.substr(0,7) == "/setvar" || this.hudthing.txtInGameChatSend.text.substr(0,7) == "/setVar"))
         {
            if(this.hosting)
            {
               _loc2_ = this.hudthing.txtInGameChatSend.text.split(" ");
               this.setVar(_loc2_[1],_loc2_[2]);
            }
         }
         if(getTimer() - this._SafeStr_1402[this.chatFloodTriggerLength - 1] >= this._SafeStr_1957)
         {
            if(this._SafeStr_641 < getTimer())
            {
               _loc3_ = getTimer();
               if(this.inLobby)
               {
                  if(this._SafeStr_701.text)
                  {
                     _loc5_ = this._SafeStr_701.text;
                     _loc5_ = _loc5_.split("<").join("&lt;");
                     _loc5_ = _loc5_.split(">").join("&gt;");
                     _loc4_ = "&lt;" + this.localTankNameLabel + "&gt; " + _loc5_ + "\n";
                     this.allChatMessages += _loc4_;
                     this._SafeStr_1546.htmlText += _loc4_;
                     this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
                     this.sendStream.send("recvChatMessage",this.localTankID,_loc4_);
                     this._SafeStr_701.text = "";
                     if(this.hosting)
                     {
                        this.playChatSound();
                     }
                     _loc6_ = this.chatFloodTriggerLength - 2;
                     while(_loc6_ >= 0)
                     {
                        this._SafeStr_1402[_loc6_ + 1] = this._SafeStr_1402[_loc6_];
                        _loc6_--;
                     }
                     this._SafeStr_1402[0] = _loc3_;
                  }
                  stage.focus = this._SafeStr_701;
               }
               else
               {
                  if(this.hudthing.txtInGameChatSend.text)
                  {
                     _loc7_ = this.hudthing.txtInGameChatSend.text;
                     _loc7_ = _loc7_.split("<").join("&lt;");
                     _loc7_ = _loc7_.split(">").join("&gt;");
                     _loc4_ = "&lt;" + this.localTankNameLabel + "&gt; " + _loc7_ + "\n";
                     this.allChatMessages += _loc4_;
                     this.hudthing.txtInGameChat.appendText(_loc4_.replace("&lt;","<").replace("&gt;",">"));
                     this.hudthing.txtInGameChat.scrollV = this.hudthing.txtInGameChat.numLines;
                     this.sendStream.send("recvChatMessage",this.localTankID,_loc4_);
                     this.hudthing.txtInGameChatSend.text = "";
                     this.hudthing.txtInGameChat.visible = true;
                     clearInterval(this._SafeStr_1120);
                     this._SafeStr_1120 = setInterval(this._SafeStr_1791,8000);
                  }
                  stage.focus = this._SafeStr_2608;
               }
            }
            else
            {
               trace("currently in punish");
               this.notifyFloodFilterActive();
            }
         }
         else
         {
            trace("punishing player, will be able to chat at " + this._SafeStr_641);
            this._SafeStr_641 = getTimer() + this._SafeStr_1605;
            this._SafeStr_1605 += this._SafeStr_490;
            this.notifyFloodFilterActive();
         }
      }
      
      public function notifyFloodFilterActive() : *
      {
         this._SafeStr_701.text = "";
         this._SafeStr_1546.htmlText += "<font color=\'#913131\'>*Message not sent";
         this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
      }
      
      public function _SafeStr_1791() : *
      {
         this.hudthing.txtInGameChat.visible = false;
         clearInterval(this._SafeStr_1120);
      }
      
      public function playChatSound() : *
      {
         if(!this.muteSfx)
         {
            if(Math.random() < 0.5)
            {
               this.writeSound1.play();
            }
            else
            {
               this.writeSound2.play();
            }
         }
      }
      
      public function sendSpeedHackTest() : *
      {
         ++this._SafeStr_2497;
         this._SafeStr_1419[this._SafeStr_2497] = getTimer();
         this.sendStream.send("recvSpeedHackTest",this._SafeStr_2497,this._SafeStr_553);
      }
      
      public function recvSpeedHackTest(param1:*, param2:*) : *
      {
         clearTimeout(this._SafeStr_1190);
         this._SafeStr_1190 = setTimeout(this._SafeStr_1336,param2,param1);
      }
      
      public function _SafeStr_1336(param1:Number) : *
      {
         this.sendStream.send("recvSpeedHackResponse",this.localTankID,param1);
      }
      
      public function recvSpeedHackResponse(param1:*, param2:*) : *
      {
         var _loc3_:Number = NaN;
         _loc3_ = Number(getTimer());
         trace("got clients speedhack response");
         if(param2 == this._SafeStr_2497 && _loc3_ - this._SafeStr_1419[param2] < this._SafeStr_553 * this._SafeStr_1947)
         {
            trace("tank id " + param1 + " has failed speedhack test! kicking.");
            this._SafeStr_770(param1);
         }
      }
      
      public function sendPing() : void
      {
         this._SafeStr_272 = getTimer();
         this.lastPingUniqueID = Math.round(Math.random() * 9999);
         this.sendStream.send("sendPong",this._SafeStr_2180,this.lastPingUniqueID);
         ++this._SafeStr_1948;
         if(this._SafeStr_1948 > 2)
         {
            this._SafeStr_1948 = 0;
         }
      }
      
      public function sendPong(param1:Array, param2:Number) : void
      {
         if(this._SafeStr_1579)
         {
            this._SafeStr_2180 = param1.slice();
            this.sendStream.send("recvPong",this.localTankID,param2);
            if(this.inLobby)
            {
               this._SafeStr_2190();
            }
         }
      }
      
      public function recvPong(param1:*, param2:*) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc7_:Number = NaN;
         if(param2 == this.lastPingUniqueID)
         {
            this._SafeStr_737 = getTimer();
            this.ping = (this._SafeStr_737 - this._SafeStr_272) / 2;
            _loc3_ = this._SafeStr_1948;
         }
         else
         {
            this.ping = this._SafeStr_1404 / 2;
            _loc3_ = this._SafeStr_1948 - 1;
            if(_loc3_ < 0)
            {
               _loc3_ = this.pingNumberOfValuesToAverage;
            }
         }
         this._SafeStr_1325[param1][_loc3_] = this.ping + this._SafeStr_1544;
         _loc4_ = 0;
         _loc5_ = 0;
         _loc6_ = 0;
         while(_loc6_ < this.pingNumberOfValuesToAverage)
         {
            if(this._SafeStr_1325[param1][_loc6_] != -1)
            {
               _loc5_ += this._SafeStr_1325[param1][_loc6_];
               _loc4_++;
            }
            _loc6_++;
         }
         _loc7_ = _loc5_ / _loc4_;
         this._SafeStr_2180[param1] = _loc7_;
         if(this.inLobby)
         {
            this._SafeStr_2190();
         }
      }
      
      public function _SafeStr_2190() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = 0;
         while(_loc1_ < 4)
         {
            if(this._SafeStr_2180[this._SafeStr_2067[_loc1_]] < 50)
            {
               this["tank" + _loc1_ + "PingIndicator"].gotoAndStop(5);
            }
            else if(this._SafeStr_2180[this._SafeStr_2067[_loc1_]] < 100)
            {
               this["tank" + _loc1_ + "PingIndicator"].gotoAndStop(4);
            }
            else if(this._SafeStr_2180[this._SafeStr_2067[_loc1_]] < 150)
            {
               this["tank" + _loc1_ + "PingIndicator"].gotoAndStop(3);
            }
            else if(this._SafeStr_2180[this._SafeStr_2067[_loc1_]] < 200)
            {
               this["tank" + _loc1_ + "PingIndicator"].gotoAndStop(2);
            }
            else
            {
               this["tank" + _loc1_ + "PingIndicator"].gotoAndStop(1);
            }
            _loc1_++;
         }
      }
      
      public function _SafeStr_726(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this.notificationwindow);
         this._SafeStr_2062();
      }
      
      public function _SafeStr_1844(param1:MouseEvent = null) : *
      {
         var _loc2_:DropShadowFilter = null;
         this.buttonClickSound();
         this._SafeStr_441 = addChild(new _SafeCls_211());
         this._SafeStr_441.x = 365;
         this._SafeStr_441.y = 250;
         this._SafeStr_441.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_925);
         _loc2_ = new DropShadowFilter();
         _loc2_.distance = 9;
         _loc2_.angle = 58;
         _loc2_.color = 3355443;
         _loc2_.alpha = 1;
         _loc2_.blurX = 6;
         _loc2_.blurY = 6;
         _loc2_.strength = 0.91;
         _loc2_.quality = 15;
         _loc2_.inner = false;
         _loc2_.knockout = false;
         _loc2_.hideObject = false;
         this._SafeStr_441.filters = new Array(_loc2_);
         this._SafeStr_2415.removeEventListener(MouseEvent.CLICK,this._SafeStr_1844);
      }
      
      public function _SafeStr_925(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         try
         {
            this._SafeStr_441.okbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_925);
            removeChild(this._SafeStr_441);
            this._SafeStr_2415.addEventListener(MouseEvent.CLICK,this._SafeStr_1844);
         }
         catch(e:Error)
         {
         }
      }
      
      public function _SafeStr_2068(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2309 = addChild(new _SafeCls_249());
         this._SafeStr_2309.x = 365;
         this._SafeStr_2309.y = 760;
         _SafeCls_2._SafeStr_923(this._SafeStr_2309,{
            "y":250,
            "time":0.3,
            "transition":"easeoutback"
         });
         this._SafeStr_2309.continuebtn.visible = false;
      }
      
      public function _SafeStr_1238(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc5_:Number = NaN;
         this._SafeStr_2068();
         this._SafeStr_267("Mission " + this._SafeStr_2069 + " ended, localHealth: " + param1 + " Tank1Health: " + param2 + ", tank2Health: " + param3 + ", tank3Health: " + param4);
         if(this._SafeStr_2069 == 0)
         {
            if(param1 >= 50)
            {
               _loc5_ = 3;
               this._SafeStr_2309.medaltext.text = "Gold medal awarded: " + param1 + " tanks killed!";
               this._SafeStr_2309.medalmc.gotoAndStop(4);
            }
            else if(param1 >= 20)
            {
               _loc5_ = 2;
               this._SafeStr_2309.medaltext.text = "Silver medal awarded: " + param1 + " tanks killed!";
               this._SafeStr_2309.medalmc.gotoAndStop(3);
            }
            else if(param1 > 0)
            {
               _loc5_ = 1;
               this._SafeStr_2309.medaltext.text = "Bronze medal awarded: " + param1 + " tanks killed!";
               this._SafeStr_2309.medalmc.gotoAndStop(2);
            }
            else
            {
               _loc5_ = 0;
               this._SafeStr_2309.medaltext.text = "";
               this._SafeStr_2309.medalmc.gotoAndStop(0);
            }
         }
         else if(param1 >= 13)
         {
            _loc5_ = 3;
            this._SafeStr_2309.medaltext.text = "Gold medal awarded";
            this._SafeStr_2309.medalmc.gotoAndStop(4);
         }
         else if(param1 >= 7)
         {
            _loc5_ = 2;
            this._SafeStr_2309.medaltext.text = "Silver medal awarded";
            this._SafeStr_2309.medalmc.gotoAndStop(3);
         }
         else if(param1 > 0)
         {
            _loc5_ = 1;
            this._SafeStr_2309.medaltext.text = "Bronze medal awarded";
            this._SafeStr_2309.medalmc.gotoAndStop(2);
         }
         else
         {
            _loc5_ = 0;
            this._SafeStr_2309.medaltext.text = "";
            this._SafeStr_2309.medalmc.gotoAndStop(0);
         }
         if(_loc5_ > 0)
         {
            this._SafeStr_2309.resulttext.text = "Mission complete!";
            if(this.singlePlayerScores[this._SafeStr_2069 + 1] == -1)
            {
               this.singlePlayerScores[this._SafeStr_2069 + 1] = 0;
            }
            if(this._SafeStr_2069 == 11)
            {
               this._SafeStr_2309.resulttext.y = -160;
               this._SafeStr_2309.nextmissionbtn.visible = false;
               this._SafeStr_2309.replaymissionbtn.x = -125;
               this._SafeStr_2309.replaymissionbtn.y = 213;
               this._SafeStr_2309.selectmissionbtn.visible = false;
               this._SafeStr_2309.continuebtn.visible = true;
               this._SafeStr_2309.continuebtn.addEventListener(MouseEvent.CLICK,this.singlePlayerContinueToEnd);
            }
            else
            {
               this._SafeStr_2309.resulttext.y = -160;
               this._SafeStr_2309.nextmissionbtn.visible = true;
               this._SafeStr_2309.replaymissionbtn.x = -125;
               this._SafeStr_2309.replaymissionbtn.y = 213;
               this._SafeStr_2309.selectmissionbtn.visible = false;
            }
         }
         else
         {
            this._SafeStr_2309.resulttext.text = "Mission failed!";
            this._SafeStr_2309.nextmissionbtn.enabled = false;
            this._SafeStr_2309.resulttext.y = -100;
            this._SafeStr_2309.nextmissionbtn.visible = false;
            this._SafeStr_2309.replaymissionbtn.x = 106;
            this._SafeStr_2309.replaymissionbtn.y = 100;
            this._SafeStr_2309.selectmissionbtn.visible = true;
            this._SafeStr_2309.selectmissionbtn.y = 100;
         }
         if(param1 > this.singlePlayerScores[this._SafeStr_2069])
         {
            this.singlePlayerScores[this._SafeStr_2069] = param1;
         }
         this._SafeStr_2321();
         this._SafeStr_2309.nextmissionbtn.addEventListener(MouseEvent.CLICK,this._SafeStr_2369);
         this._SafeStr_2309.replaymissionbtn.addEventListener(MouseEvent.CLICK,this._SafeStr_1410);
         this._SafeStr_2309.selectmissionbtn.addEventListener(MouseEvent.CLICK,this._SafeStr_2431);
         this._SafeStr_2309.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2258);
      }
      
      public function _SafeStr_1410(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2258();
         this._SafeStr_1870(this._SafeStr_2069);
      }
      
      public function _SafeStr_2369(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         ++this._SafeStr_2069;
         this._SafeStr_2617();
         this._SafeStr_1539();
         if(this.localStatsArray[0] == 0)
         {
            if(this._SafeStr_2069 == 1)
            {
               this._SafeStr_887();
            }
         }
      }
      
      public function _SafeStr_887() : *
      {
         this._SafeStr_1554 = addChild(new _SafeCls_248());
         this._SafeStr_1554.x = 365;
         this._SafeStr_1554.y = 250;
         this._SafeStr_1554.multiplayerbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2135);
         this._SafeStr_1554.singleplayerbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2135);
      }
      
      public function _SafeStr_837(param1:MouseEvent = null) : *
      {
         removeChild(this._SafeStr_1554);
      }
      
      public function _SafeStr_2135(param1:MouseEvent) : *
      {
         if(param1.target.name == "singleplayerbutton")
         {
            this._SafeStr_837();
         }
         else
         {
            this._SafeStr_1000();
            this._SafeStr_837();
         }
      }
      
      public function _SafeStr_1000() : *
      {
         this._SafeStr_2258();
         this._SafeStr_1366();
      }
      
      public function _SafeStr_2431(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2617();
         this._SafeStr_1539();
      }
      
      public function _SafeStr_1646(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2258();
         this._SafeStr_1870(this._SafeStr_2069);
      }
      
      public function singlePlayerContinueToEnd(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2309.gotoAndStop(3);
         this._SafeStr_2309.selectmissionbtn.addEventListener(MouseEvent.CLICK,this._SafeStr_2431);
      }
      
      public function _SafeStr_2258(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
            _SafeCls_2._SafeStr_923(this._SafeStr_2309,{
               "y":760,
               "time":0.3,
               "transition":"easeinback",
               "onComplete":this._SafeStr_2002
            });
         }
         else
         {
            removeChild(this._SafeStr_2309);
            this._SafeStr_2309 = null;
         }
      }
      
      public function _SafeStr_2002() : *
      {
         removeChild(this._SafeStr_2309);
         this._SafeStr_2309 = null;
      }
      
      public function _SafeStr_2617(param1:MouseEvent = null) : *
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2309.gotoAndStop(2);
         this._SafeStr_2309.startmissionbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1646);
         this._SafeStr_2309.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2258);
         _loc2_ = 0;
         while(_loc2_ < this.singlePlayerScores.length)
         {
            this._SafeStr_2309["mission" + _loc2_ + "button"].addEventListener(MouseEvent.CLICK,this._SafeStr_2205);
            if(this.singlePlayerScores[_loc2_] >= 0)
            {
               this._SafeStr_2309["mission" + _loc2_ + "button"].mouseEnabled = true;
            }
            else
            {
               this._SafeStr_2309["mission" + _loc2_ + "button"].mouseEnabled = false;
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_1539() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         this._SafeStr_2309.briefheadertext.text = "Mission " + (this._SafeStr_2069 + 1);
         if(this._SafeStr_2069 == 0)
         {
            this._SafeStr_2309.briefheadertext.appendText(" - Tutorial");
         }
         this._SafeStr_2309.briefmaintext.text = this._SafeStr_380[this._SafeStr_2069][5];
         if(this.singlePlayerScores[0] >= 50)
         {
            this._SafeStr_2309["medal" + 0].gotoAndStop(5);
         }
         else if(this.singlePlayerScores[0] >= 20)
         {
            this._SafeStr_2309["medal" + 0].gotoAndStop(4);
         }
         else if(this.singlePlayerScores[0] > 0)
         {
            this._SafeStr_2309["medal" + 0].gotoAndStop(3);
         }
         else if(this.singlePlayerScores[0] == 0)
         {
            this._SafeStr_2309["medal" + 0].gotoAndStop(2);
         }
         _loc1_ = 1;
         while(_loc1_ < this.singlePlayerScores.length)
         {
            if(this.singlePlayerScores[_loc1_] >= 13)
            {
               this._SafeStr_2309["medal" + _loc1_].gotoAndStop(5);
            }
            else if(this.singlePlayerScores[_loc1_] >= 9)
            {
               this._SafeStr_2309["medal" + _loc1_].gotoAndStop(4);
            }
            else if(this.singlePlayerScores[_loc1_] > 0)
            {
               this._SafeStr_2309["medal" + _loc1_].gotoAndStop(3);
            }
            else if(this.singlePlayerScores[_loc1_] == 0)
            {
               this._SafeStr_2309["medal" + _loc1_].gotoAndStop(2);
            }
            _loc1_++;
         }
         this._SafeStr_2309.bigthumbnails.gotoAndStop(this._SafeStr_380[this._SafeStr_2069][4] + 1);
         _loc2_ = 0;
         while(_loc2_ < 12)
         {
            this._SafeStr_2309["thumb" + _loc2_].gotoAndStop(_loc2_ + 1);
            if(this.singlePlayerScores[_loc2_] >= 0)
            {
               this._SafeStr_2309["thumb" + _loc2_].fade.visible = false;
            }
            else
            {
               this._SafeStr_2309["thumb" + _loc2_].fade.visible = true;
            }
            _loc2_++;
         }
         this._SafeStr_2309.mouseaimmc.visible = true;
         this._SafeStr_2309.mouseaimmc.mouseaimbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2606);
         if(this.singlePlayerMouseAiming)
         {
            this._SafeStr_2309.mouseaimmc.gotoAndStop(2);
         }
         else
         {
            this._SafeStr_2309.mouseaimmc.gotoAndStop(1);
         }
      }
      
      public function _SafeStr_2205(param1:MouseEvent) : *
      {
         var _loc2_:Number = NaN;
         this.buttonClickSound();
         switch(param1.target.name)
         {
            case "mission0button":
               _loc2_ = 0;
               break;
            case "mission1button":
               _loc2_ = 1;
               break;
            case "mission2button":
               _loc2_ = 2;
               break;
            case "mission3button":
               _loc2_ = 3;
               break;
            case "mission4button":
               _loc2_ = 4;
               break;
            case "mission5button":
               _loc2_ = 5;
               break;
            case "mission6button":
               _loc2_ = 6;
               break;
            case "mission7button":
               _loc2_ = 7;
               break;
            case "mission8button":
               _loc2_ = 8;
               break;
            case "mission9button":
               _loc2_ = 9;
               break;
            case "mission10button":
               _loc2_ = 10;
               break;
            case "mission11button":
               _loc2_ = 11;
         }
         this._SafeStr_2069 = _loc2_;
         this._SafeStr_1539();
      }
      
      public function startSinglePlayer(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(!(this.localNameText.text == "Unnamed" || this.localNameText.text == ""))
         {
            if(this.singlePlayerScores[0] == -1)
            {
               this.singlePlayerScores[0] = 0;
            }
            this._SafeStr_2068();
            this._SafeStr_2617();
            this._SafeStr_1539();
            this._SafeStr_267("Single player started, the player has " + this.localStatsArray[0] + " kills on their account.");
         }
      }
      
      public function _SafeStr_2606(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this.singlePlayerMouseAiming = !this.singlePlayerMouseAiming;
         if(this.singlePlayerMouseAiming)
         {
            this._SafeStr_2309.mouseaimmc.gotoAndStop(2);
         }
         else
         {
            this._SafeStr_2309.mouseaimmc.gotoAndStop(1);
         }
      }
      
      public function _SafeStr_1066() : *
      {
         this.newplayerwindow = addChild(new newplayersuggestcampaignwindowmc());
         this.newplayerwindow.x = 365;
         this.newplayerwindow.y = 250;
         this.newplayerwindow.continuebutton.addEventListener(MouseEvent.CLICK,this.newPlayerNextFrame);
      }
      
      public function newPlayerNextFrame(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this.newplayerwindow.nextFrame();
         if(this.newplayerwindow.currentFrame == 4)
         {
            this.newplayerwindow.spbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1522);
            this.newplayerwindow.mpbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1522);
         }
      }
      
      public function _SafeStr_1522(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         if(param1.target.name == "spbutton")
         {
            removeChild(this.newplayerwindow);
            this.startSinglePlayer();
         }
         else
         {
            removeChild(this.newplayerwindow);
         }
      }
      
      public function getPlayerTitle(param1:Number) : String
      {
         if(param1 < 1)
         {
            return "New Recruit";
         }
         if(param1 < 3)
         {
            return "Private";
         }
         if(param1 < 5)
         {
            return "Corporal";
         }
         if(param1 < 10)
         {
            return "Sergeant";
         }
         if(param1 < 15)
         {
            return "Sergeant Major";
         }
         if(param1 < 20)
         {
            return "Lieutenant";
         }
         if(param1 < 30)
         {
            return "Captain";
         }
         if(param1 < 40)
         {
            return "Major";
         }
         return "Colonel";
      }
      
      public function _SafeStr_952() : *
      {
         this._SafeStr_1060 = addChild(new _SafeCls_227());
         this._SafeStr_1060.x = 365;
         this._SafeStr_1060.y = 250;
         this._SafeStr_1060.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2502);
      }
      
      public function _SafeStr_2502(param1:MouseEvent) : *
      {
         this.buttonClickSound();
         removeChild(this._SafeStr_1060);
      }
      
      public function _SafeStr_1514(param1:Number) : Boolean
      {
         var _loc2_:SharedObject = null;
         var _loc3_:Array = null;
         var _loc4_:* = undefined;
         _loc2_ = SharedObject.getLocal("tinytanks/votehistory","/");
         if(_loc2_.data.voteArray)
         {
            _loc3_ = _loc2_.data.voteArray;
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc3_[_loc4_] == param1)
               {
                  return true;
               }
               _loc4_++;
            }
         }
         return false;
      }
      
      public function _SafeStr_2243(param1:Number, param2:Boolean) : *
      {
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         var voteArrayObject:SharedObject = null;
         var voteArray:Array = null;
         var mapID:Number = param1;
         var upVote:Boolean = param2;
         onComplete = function(param1:Event):void
         {
            var _loc2_:Number = NaN;
            _loc2_ = Number(param1.target.data["result"]);
            if(_loc2_ == 0)
            {
               trace("success");
            }
            else
            {
               trace("failure");
            }
         };
         ++this.localUpdateCounter.s;
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "maps2.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.username = this.localTankName;
         variables.updatecounter = this.localUpdateCounter.s;
         variables.hash = MD5.hash(this.localTankName + String(this.localUpdateCounter.s) + mapID + this.secretEncryptionString);
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.task = 4;
         variables.specificmap = mapID;
         if(upVote)
         {
            variables.thumbs = 1;
         }
         else
         {
            variables.thumbs = 0;
         }
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
         voteArrayObject = SharedObject.getLocal("tinytanks/votehistory","/");
         if(voteArrayObject.data.voteArray)
         {
            voteArray = voteArrayObject.data.voteArray;
         }
         else
         {
            voteArray = new Array();
         }
         voteArray.push(mapID);
         voteArrayObject.data.voteArray = voteArray;
         try
         {
            voteArrayObject.flush();
         }
         catch(e:Error)
         {
            trace("SO FLUSH ERROR!");
         }
      }
      
      public function _SafeStr_2547() : *
      {
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var tempSetupString:String = null;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var hashString:String = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            var _loc2_:Number = NaN;
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            trace("setup update complete");
            _loc2_ = Number(param1.target.data["code"]);
            if(_loc2_ == 1)
            {
               trace("PASSWORD FAILED FOR UPDATE TANK SETUP");
            }
         };
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         tempSetupString = this.localTankSetupArray.join("x");
         request = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 7;
         variables.username = this.localTankName;
         variables.setupstring = tempSetupString;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         hashString = MD5.hash(String(MD5.hash(this.newAccPassword)) + String(tempSetupString) + String(this.secretEncryptionString));
         variables.hashstring = hashString;
         this.xtr("updating " + this.localTankName + "\'s tank setup on server, pass: " + this.newAccPassword);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_355);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function _SafeStr_503() : Number
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         _loc1_ = Math.random() * 0.9 + 0.1;
         _loc2_ = 1 / (_loc1_ * _loc1_);
         return Math.round(_loc2_);
      }
      
      public function recvCoinNotification(param1:Number, param2:Number) : *
      {
         if(this.inGame && this._SafeStr_2565)
         {
            trace("recvCoinNotification, coin amount: " + param2);
            trace("text string:   " + "+" + param2);
            this._SafeStr_652 = addChild(new _SafeCls_202());
            this._SafeStr_652.cointext.text = "+" + param2;
            this._SafeStr_652.x = this["tank" + param1 + "Graphic"].x;
            this._SafeStr_652.y = this["tank" + param1 + "Graphic"].y - 20;
            if(param1 == this.localTankID)
            {
               this.playCoinSound();
            }
         }
      }
      
      public function _SafeStr_1506(param1:Number, param2:Number) : *
      {
         if(this.inGame && this._SafeStr_2565 && this.localTankID == param1)
         {
            trace("recvXPNotification, coin amount: " + param2);
            this.xpdisplay = addChild(new xpdisplaymc());
            this.xpdisplay.xptext.text = "+" + param2 + "xp";
            this.xpdisplay.x = this["tank" + param1 + "Graphic"].x;
            this.xpdisplay.y = this["tank" + param1 + "Graphic"].y - 20;
         }
      }
      
      public function buyItemServer(param1:Number, param2:String) : void
      {
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         var itemCode:Number = param1;
         var coinsOrPremium:String = param2;
         onComplete = function(param1:Event):void
         {
            var _loc2_:Number = NaN;
            var _loc3_:Number = NaN;
            var _loc4_:Number = NaN;
            var _loc5_:Number = NaN;
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            _loc2_ = Number(param1.target.data["code"]);
            _loc3_ = Number(param1.target.data["item"]);
            _loc4_ = Number(param1.target.data["remainingcoins"]);
            _loc5_ = Number(param1.target.data["remainingpremium"]);
            trace("BLAH BLAH BLAH: " + _loc4_);
            if(_loc2_ == 0)
            {
               trace("success!");
               gotServerBuyResponse(0,_loc3_,_loc4_,_loc5_);
            }
            else if(_loc2_ == 1)
            {
               trace("item already unlocked!");
               gotServerBuyResponse(1,_loc3_,_loc4_,_loc5_);
            }
            else if(_loc2_ == 2)
            {
               trace("not enough money!");
               gotServerBuyResponse(2,_loc3_,_loc4_,_loc5_);
            }
            else if(_loc2_ == 3)
            {
               trace("invalid item!");
               gotServerBuyResponse(3,_loc3_,_loc4_,_loc5_);
            }
            else if(_loc2_ == 4)
            {
               trace("password wrong");
               gotServerBuyResponse(4,_loc3_,_loc4_,_loc5_);
            }
         };
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 8;
         variables.username = this.localTankName;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.unlockitemcode = itemCode;
         variables.password = MD5.hash(this.newAccPassword);
         variables.coinsorpremium = coinsOrPremium;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function gotServerBuyResponse(param1:Number, param2:Number, param3:Number, param4:Number) : *
      {
         var _loc5_:String = null;
         this._SafeStr_846.removeChild(this._SafeStr_1097);
         this._SafeStr_2017 = this._SafeStr_846.addChild(new _SafeCls_203());
         this._SafeStr_2017.okbutton.visible = false;
         this._SafeStr_2017.backbutton.visible = false;
         this._SafeStr_2017.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_845);
         this._SafeStr_2017.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_845);
         if(param1 == 0)
         {
            this._SafeStr_2017.maintext.text = "Purchase successful!";
            this._SafeStr_2017.okbutton.visible = true;
            this._SafeStr_1655 += Math.pow(2,param2);
            this.tankItemDataArray[param2][1] = 0;
            this.tankItemDataArray[param2][6] = true;
            this.localCoins = param3;
            this.localPremium = param4;
            trace("we have " + param3 + " coins left.");
            trace("we have " + param4 + " coins left.");
            if(this.onTinyTanksNet)
            {
               ExternalInterface.call("changeText",this.localTankName + " ($" + this.localCoins + ")");
            }
            this._SafeStr_916(param2,false);
            if(!(this.inLobby || this.inGame))
            {
               this.localCoinsText.text = String(this.localCoins);
               this.localPremiumText.text = String(this.localPremium);
            }
            try
            {
               this._SafeStr_846.coinstext.text = this.localCoins;
               this._SafeStr_846.localPremiumText.text = String(this.localPremium);
               if(!this.muteSfx)
               {
                  this.kachingSound.play();
               }
            }
            catch(e:Error)
            {
            }
            if(this.inLobby)
            {
               _loc5_ = "<font color=\'#370037\'>*" + this.fixUsernameString(this.localTankName) + " has just bought a part: " + this.tankItemDataArray[param2][2] + "!</font> \n";
               this.allChatMessages += _loc5_;
               this._SafeStr_1546.htmlText += _loc5_;
               this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
               this.sendStream.send("recvChatMessage",this.localTankID,_loc5_);
            }
         }
         else if(param1 == 1)
         {
            this._SafeStr_2017.maintext.text = "You already own this item!";
            this._SafeStr_2017.backbutton.visible = true;
         }
         else if(param1 == 2)
         {
            this._SafeStr_2017.maintext.text = "You cannot afford this item!";
            this._SafeStr_2017.backbutton.visible = true;
         }
         else if(param1 == 3)
         {
            this._SafeStr_2017.maintext.text = "Invalid item";
            this._SafeStr_2017.backbutton.visible = true;
         }
         else if(param1 == 4)
         {
            this._SafeStr_2017.maintext.text = "Bad password";
            this._SafeStr_2017.backbutton.visible = true;
         }
         else if(param1 == 5)
         {
            this._SafeStr_2017.maintext.text = "No payment type selected";
            this._SafeStr_2017.backbutton.visible = true;
         }
      }
      
      public function _SafeStr_845(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_846.removeChild(this._SafeStr_2017);
      }
      
      public function getItemCostsFromServer() : void
      {
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            var _loc2_:Number = NaN;
            var _loc3_:* = undefined;
            var _loc4_:Number = NaN;
            var _loc5_:Number = NaN;
            var _loc6_:Number = NaN;
            _loc2_ = Number(param1.target.data["cant"]);
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = Number(param1.target.data["id" + _loc3_]);
               _loc5_ = Number(param1.target.data["cost" + _loc3_]);
               _loc6_ = Number(param1.target.data["premiumcost" + _loc3_]);
               tankItemDataArray[_loc4_][1] = _loc5_;
               tankItemDataArray[_loc4_][8] = _loc6_;
               trace("item " + _loc4_ + " premium cost: " + _loc6_);
               _loc3_++;
            }
         };
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "itemcosts.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.basePasswordString = this.basePasswordString;
         variables.ignore = randomShit3;
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function giveLocalCoins(param1:Number) : *
      {
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var encryptedPass:String = null;
         var hashString:String = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         var amount:Number = param1;
         onComplete = function(param1:Event):void
         {
            var _loc2_:Number = NaN;
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            _loc2_ = Number(param1.target.data["code"]);
            if(_loc2_ == 0)
            {
               trace("coins successfully granted");
            }
            else if(_loc2_ == 1)
            {
               trace("coin grain failed");
            }
            else if(_loc2_ == 2)
            {
               trace("SECURITY FAILED");
            }
         };
         this.localCoins += amount;
         if(this.onTinyTanksNet)
         {
            ExternalInterface.call("changeText",this.localTankName + " ($" + this.localCoins + ")");
         }
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 4;
         variables.username = this.localTankName;
         variables.kills = 0;
         variables.deaths = 0;
         variables.wins = 0;
         variables.losses = 0;
         variables.gameshosted = 0;
         variables.xp = 0;
         variables.coins = amount;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         encryptedPass = MD5.hash(this.newAccPassword);
         hashString = MD5.hash(String(this.localTankName) + "0" + "0" + "0" + "0" + "0" + "0" + String(amount) + String(encryptedPass) + String(this.secretEncryptionString));
         variables.hashstring = hashString;
         this.xtr("sending " + amount + " coins to " + this.localTankName + "\'s account: ");
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_355);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function _SafeStr_301(param1:Number) : void
      {
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         var stateCode:Number = param1;
         if(this.root.loaderInfo.url.split("/")[0] != "file:")
         {
            if(this._SafeStr_669[stateCode] == false)
            {
               onComplete = function(param1:Event):void
               {
                  trace("state code reported successfully");
               };
               request = new URLRequest(this._SafeStr_372 + "accountlog.php");
               request.method = URLRequestMethod.POST;
               variables = new URLVariables();
               randomShit1 = Number(getTimer());
               randomShit2 = Math.floor(Math.random() * 1000) + 1;
               randomShit3 = randomShit1 * randomShit2;
               variables.statecode = stateCode;
               variables.basePasswordString = this.basePasswordString;
               variables.randomshit = randomShit3;
               request.data = variables;
               loader = new URLLoader(request);
               loader.addEventListener(Event.COMPLETE,onComplete);
               loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
               loader.dataFormat = URLLoaderDataFormat.VARIABLES;
               loader.load(request);
               this._SafeStr_669[stateCode] = true;
            }
         }
         else
         {
            trace("didnt log acc progress, appear to be running locally");
         }
      }
      
      public function _SafeStr_1061(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this._SafeStr_2661.y = 450;
      }
      
      public function _SafeStr_1701(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         this._SafeStr_2661.y = 770;
      }
      
      public function _SafeStr_2256(param1:MouseEvent = null) : *
      {
         this.buttonClickSound();
         if(this.userLoggedIn)
         {
            this._SafeStr_1882.visible = false;
            this.referwindow.x = 180;
            this.referwindow.y = 458;
            this.referwindow._SafeStr_998.text = "www.tinytanks.net/?p=" + String(this.localDatabaseID);
            this.referwindow._SafeStr_680.htmlText = "You\'ve referred: <font color=\'#990000\'>" + this.localStatsArray[6] + "</font> in total and <font color=\'#990000\'>" + this.localWeekRefs + "</font> this week.";
            this.referwindow.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1716);
         }
      }
      
      public function _SafeStr_1716(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(!this._SafeStr_1794)
         {
            this._SafeStr_1882.visible = true;
         }
         this.referwindow.x = 180;
         this.referwindow.y = 900;
         this.referwindow.toprefs.text = "";
      }
      
      public function _SafeStr_1149() : void
      {
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            var _loc2_:Array = null;
            var _loc3_:Array = null;
            var _loc4_:Number = NaN;
            var _loc5_:* = undefined;
            _loc2_ = new Array("--");
            _loc3_ = new Array("0");
            _loc4_ = Number(Number(param1.target.data["cant"]));
            if(_loc4_ == 0)
            {
               referwindow.toprefs.text = "No referrals so far this week!";
            }
            else
            {
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  _loc2_[_loc5_] = String(param1.target.data["username" + _loc5_]);
                  _loc3_[_loc5_] = String(param1.target.data["weekrefs" + _loc5_]);
                  referwindow.toprefs.appendText(_loc5_ + 1 + ") " + fixUsernameString(_loc2_[_loc5_]) + " (" + _loc3_[_loc5_] + " refs)\n");
                  _loc5_++;
               }
            }
         };
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "topweekrefs.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.username = this.newAccUsername;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_581);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function _SafeStr_1276(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1475 = !this._SafeStr_1475;
         this.glowChosen = true;
         if(this._SafeStr_1475)
         {
            this.glownotification.gotoAndStop(1);
         }
         else
         {
            this.glownotification.gotoAndStop(2);
         }
      }
      
      public function _SafeStr_1963(param1:*) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = undefined;
         _loc2_ = Number(this._SafeStr_1300[param1]);
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_1300.length)
         {
            if(_loc2_ == this._SafeStr_1300[_loc3_] && _loc3_ != param1)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function buttonClickSound() : *
      {
         var _loc1_:Number = NaN;
         if(!this.muteSfx)
         {
            _loc1_ = Number(Math.random());
            if(_loc1_ < 0.33)
            {
               this.pageTurn1Sound.play();
            }
            else if(_loc1_ < 0.66)
            {
               this.pageTurn2Sound.play();
            }
            else
            {
               this.pageTurn3Sound.play();
            }
         }
      }
      
      public function fixUsernameString(param1:String) : String
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         _loc2_ = param1;
         _loc2_ = _loc2_.replace("k_","");
         _loc2_ = _loc2_.replace("f_","");
         _loc2_ = _loc2_.replace("j_","");
         if(_loc2_.substring(6,9) == "CPU")
         {
            _loc2_ = _loc2_.replace("guest_","");
         }
         if(_loc2_.substring(0,2) == "m#")
         {
            _loc3_ = _loc2_.split("#");
            _loc2_ = _loc3_[2];
         }
         return _loc2_;
      }
      
      public function setVar(param1:String, param2:String) : *
      {
         var variableValue:Number = NaN;
         var hasItWorked:Boolean = false;
         var chatNotificationString:String = null;
         var variableName:String = param1;
         var variableValueString:String = param2;
         variableValue = Number(Number(variableValueString));
         hasItWorked = true;
         if(!this.hasOwnProperty(variableName))
         {
            hasItWorked = false;
         }
         try
         {
            this[variableName] = variableValue;
         }
         catch(e:Error)
         {
            hasItWorked = false;
         }
         if(hasItWorked)
         {
            chatNotificationString = variableName + " set to: " + variableValue;
            this.allChatMessages += chatNotificationString;
            this.hudthing.txtInGameChatSend.text += chatNotificationString;
            this.hudthing.txtInGameChatSend.scrollV = this.hudthing.txtInGameChatSend.numLines;
         }
         else
         {
            chatNotificationString = "UNABLE to set " + variableName + " to: " + variableValue;
            this.allChatMessages += chatNotificationString;
            this.hudthing.txtInGameChatSend.text += chatNotificationString;
            this.hudthing.txtInGameChatSend.scrollV = this.hudthing.txtInGameChatSend.numLines;
         }
         if(this.hosting)
         {
            this.sendStream.send("setVar",variableName,variableValueString);
         }
      }
      
      public function _SafeStr_1237() : *
      {
      }
      
      public function _SafeStr_800(param1:Number) : *
      {
         var _loc2_:* = undefined;
         this._SafeStr_976.gotoAndStop(param1);
         _loc2_ = 1;
         while(_loc2_ < this._SafeStr_1266[param1].length)
         {
            this._SafeStr_976["tank" + _loc2_].skin.gotoAndStop(this.tankItemDataArray[this._SafeStr_1266[param1][_loc2_]][5]);
            this._SafeStr_976["tank" + _loc2_].barrel.colour.colour.gotoAndStop(this.tankItemDataArray[this._SafeStr_1266[param1][_loc2_]][7]);
            this._SafeStr_976["tank" + _loc2_].tankmain.gotoAndStop(4);
            this._SafeStr_976["tank" + _loc2_].tankmainmask.gotoAndStop(4);
            this._SafeStr_976["tank" + _loc2_].tankmain.colour.gotoAndStop(5);
            this._SafeStr_976["tank" + _loc2_].spinnybit.colour.gotoAndStop(5);
            this._SafeStr_976["tank" + _loc2_].skin.mask = this._SafeStr_976["tank" + _loc2_].tankmainmask;
            this._SafeStr_976["tank" + _loc2_ + "label"].text = this.tankItemDataArray[this._SafeStr_1266[param1][_loc2_]][2];
            this._SafeStr_976["tank" + _loc2_].tankmain.blendMode = "hardlight";
            this._SafeStr_976["tank" + _loc2_].spinnybit.blendMode = "hardlight";
            _loc2_++;
         }
      }
      
      public function _SafeStr_1752(param1:*) : *
      {
         this._SafeStr_976 = addChild(new _SafeCls_250());
         this._SafeStr_976.x = 204;
         this._SafeStr_976.y = 468;
         this._SafeStr_976.rotation = -2;
         this._SafeStr_800(param1);
      }
      
      public function openPurchaseWindow(param1:MouseEvent = null) : *
      {
         this.purchasewindow = stage.addChild(new _SafeCls_243());
         this.purchasewindow.x = 365;
         this.purchasewindow.y = 250;
         this.purchasewindow.gotoAndStop(1);
         this.purchasewindow.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_969);
         this.purchasewindow.buybutton1.addEventListener(MouseEvent.CLICK,this._SafeStr_535);
         this.purchasewindow.buybutton2.addEventListener(MouseEvent.CLICK,this._SafeStr_535);
      }
      
      public function _SafeStr_969(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this.purchasewindow);
         this._SafeStr_1429 = setTimeout(this.stopCheckingPurchaseComplete,60000);
      }
      
      public function stopCheckingPurchaseComplete() : *
      {
         clearInterval(this.checkPurchaseCompleteInterval);
      }
      
      public function _SafeStr_535(param1:MouseEvent) : *
      {
         var _loc2_:* = undefined;
         this.purchasewindow.gotoAndStop("inprogress");
         clearInterval(this.checkPurchaseCompleteInterval);
         clearTimeout(this._SafeStr_1429);
         this.checkPurchaseCompleteInterval = setInterval(this._SafeStr_1257,this._SafeStr_1624);
         _loc2_ = Number(param1.target.name.substr(9,1));
         this._SafeStr_2480(_loc2_);
      }
      
      public function _SafeStr_2480(param1:Number) : *
      {
         var _loc2_:String = null;
         var _loc3_:URLRequest = null;
         var _loc4_:URLVariables = null;
         _loc2_ = "https://www.paypal.com/cgi-bin/webscr";
         _loc3_ = new URLRequest(_loc2_);
         _loc4_ = new URLVariables();
         _loc4_.cmd = "_s-xclick";
         if(param1 == 1)
         {
            _loc4_.hosted_button_id = "9J8PAVWJUCSCU";
            _loc4_.item_name = "10 Gems";
         }
         else if(param1 == 2)
         {
            _loc4_.hosted_button_id = "HY3REN6763XTN";
            _loc4_.item_name = "30 Gems";
         }
         _loc4_.item_number = param1;
         _loc4_.custom = String(this.localDatabaseID) + "%" + this._SafeStr_1088.customLoaderInfo.split("/")[2];
         _loc3_.data = _loc4_;
         navigateToURL(_loc3_,"_blank");
      }
      
      public function _SafeStr_1257() : *
      {
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var encryptedPass:String = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         onComplete = function(param1:Event):void
         {
            var _loc2_:* = undefined;
            var _loc3_:* = undefined;
            var _loc4_:* = undefined;
            if(checkServerReponseHash(param1) == false)
            {
               return;
            }
            trace("checkPurchaseComplete response: " + Number(param1.target.data["code"]));
            if(Number(param1.target.data["code"]) != 0)
            {
               if(Boolean(purchasewindow) && Boolean(purchasewindow.stage))
               {
                  purchasewindow.gotoAndStop("complete");
               }
               else
               {
                  openPurchaseWindow();
                  purchasewindow.gotoAndStop("complete");
               }
               clearInterval(checkPurchaseCompleteInterval);
               localSpecial = Number(param1.target.data["special"]);
               _loc2_ = 0;
               while(_loc2_ < tankItemDataArray.length)
               {
                  if(_loc2_ != 0 && _loc2_ != 1 && _loc2_ != 2 && _loc2_ != 12 && _loc2_ != 16)
                  {
                     tankItemDataArray[_loc2_][6] = false;
                  }
                  else
                  {
                     tankItemDataArray[_loc2_][6] = true;
                  }
                  _loc2_++;
               }
               _loc3_ = 0;
               while(_loc3_ < Number(param1.target.data["totalunlocks"]))
               {
                  tankItemDataArray[Number(param1.target.data["unlock" + _loc3_])][6] = true;
                  trace("unlocking " + Number(param1.target.data["unlock" + _loc3_]));
                  _loc3_++;
               }
               localItemsInUse = param1.target.data["itemsinuse"];
               localTankSetupArray = localItemsInUse.split("x");
               _loc4_ = 0;
               while(_loc4_ < localTankSetupArray.length)
               {
                  localTankSetupArray[_loc4_] = Number(localTankSetupArray[_loc4_]);
                  _loc4_++;
               }
               if(!localTankSetupArray[3])
               {
                  localTankSetupArray[3] = 12;
               }
               if(!localTankSetupArray[4])
               {
                  localTankSetupArray[4] = 16;
               }
               localCoins = Number(param1.target.data["coins"]);
               localPremium = Number(param1.target.data["premium"]);
               if(!inLobby && !inGame)
               {
                  localCoinsText.text = String(localCoins);
                  coinsHighlight.visible = true;
                  localPremiumText.text = String(localPremium);
               }
               if(onTinyTanksNet)
               {
                  ExternalInterface.call("changeText",localTankName + " ($" + localCoins + ")");
               }
               if(localSpecial)
               {
                  glownotification.visible = true;
                  if(glowChosen)
                  {
                  }
               }
               trace("got new post purchase stats");
            }
         };
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "account9.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.task = 10;
         variables.username = this.localTankName;
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.nonce = Math.round(Math.random() * 2000000000000000);
         variables.noncehash = MD5.hash(variables.nonce + this.secretEncryptionString);
         encryptedPass = MD5.hash(this.newAccPassword);
         variables.password = encryptedPass;
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_2012);
         loader.dataFormat = URLLoaderDataFormat.TEXT;
         loader.load(request);
      }
      
      public function _SafeStr_956(param1:*, param2:*) : Boolean
      {
         var _loc3_:* = undefined;
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_2114.length)
         {
            if(this._SafeStr_2114[_loc3_].tankName == param1 || this._SafeStr_2114[_loc3_].tankMachineKey == param2)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function _SafeStr_709(param1:*, param2:*) : Boolean
      {
         var _loc3_:* = undefined;
         if(this._SafeStr_1093)
         {
            return false;
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_486)
         {
            if(this.tankNameArray[_loc3_] == param1 || this._SafeStr_1300[_loc3_] == param2)
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function _SafeStr_902(param1:MouseEvent) : *
      {
         this._SafeStr_2286();
      }
      
      public function _SafeStr_2286() : *
      {
         stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
         this._SafeStr_2091 = stage.addChild(new _SafeCls_218());
         this._SafeStr_2091.x = 365;
         this._SafeStr_2091.y = 250;
      }
      
      public function _SafeStr_2634(param1:MouseEvent = null) : *
      {
         var me:MouseEvent = param1;
         if(me)
         {
            this.buttonClickSound();
         }
         if(this.muteSfx)
         {
            this.muteSfx = false;
            this._SafeStr_1601.gotoAndStop(1);
            this._SafeStr_1077.data.muteSfx = false;
            try
            {
               this._SafeStr_1077.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
         }
         else
         {
            this.muteSfx = true;
            this._SafeStr_1601.gotoAndStop(2);
            this._SafeStr_1077.data.muteSfx = true;
            try
            {
               this._SafeStr_1077.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
         }
      }
      
      public function _SafeStr_2627(param1:MouseEvent = null) : *
      {
         var me:MouseEvent = param1;
         this.buttonClickSound();
         if(this.muteMusic)
         {
            this.muteMusic = false;
            this._SafeStr_975.gotoAndStop(1);
            this._SafeStr_1077.data.muteMusic = false;
            try
            {
               this._SafeStr_1077.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
            this._SafeStr_1811.volume = this._SafeStr_946;
            this._SafeStr_1878.soundTransform = this._SafeStr_1811;
         }
         else
         {
            this.muteMusic = true;
            this._SafeStr_975.gotoAndStop(2);
            this._SafeStr_1077.data.muteMusic = true;
            try
            {
               this._SafeStr_1077.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
            this._SafeStr_1811.volume = 0;
            this._SafeStr_1878.soundTransform = this._SafeStr_1811;
         }
      }
      
      public function _SafeStr_1221(param1:Number, param2:Number, param3:String, param4:String = "") : void
      {
         var _loc5_:URLRequest = null;
         var _loc6_:URLVariables = null;
         var _loc7_:URLLoader = null;
         _loc5_ = new URLRequest(this._SafeStr_372 + "clicklog.php");
         _loc5_.method = URLRequestMethod.POST;
         _loc6_ = new URLVariables();
         _loc6_.xpos = param1;
         _loc6_.ypos = param2;
         _loc6_.clipname = param3;
         _loc6_.time = getTimer() / 1000;
         _loc6_.username = this.localTankName;
         _loc6_.customstring = param4;
         _loc6_.basePasswordString = this.basePasswordString;
         _loc5_.data = _loc6_;
         _loc7_ = new URLLoader(_loc5_);
         _loc7_.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         _loc7_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc7_.load(_loc5_);
      }
      
      public function _SafeStr_851(param1:MouseEvent = null) : *
      {
         var myLoader:URLLoader = null;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var onDataLoad:Function = null;
         var me:MouseEvent = param1;
         onDataLoad = function(param1:Event):*
         {
            var _loc2_:uint = 0;
            var _loc3_:String = null;
            var _loc4_:String = null;
            var _loc5_:Number = NaN;
            var _loc6_:Number = NaN;
            var _loc7_:Object = null;
            if(param1.target.data.cant != 0)
            {
               _loc2_ = 0;
               while(_loc2_ < param1.target.data.cant)
               {
                  _loc3_ = param1.target.data["hash" + _loc2_];
                  if(MD5.hash(param1.target.data["address" + _loc2_] + param1.target.data["password" + _loc2_] + secretEncryptionString) == _loc3_)
                  {
                     _loc4_ = param1.target.data["roomname" + _loc2_];
                     _loc4_ = _loc4_.split("<").join("&lt;");
                     _loc4_ = _loc4_.split(">").join("&gt;");
                     _loc5_ = getLatLngDistance(nearLatitude,nearLongitude,param1.target.data["latitude" + _loc2_],param1.target.data["longitude" + _loc2_],false);
                     _loc6_ = Number(Math.abs(localStatsArray[0] - Number(param1.target.data["averagekills" + _loc2_])));
                     _loc7_ = {
                        "Roomname":_loc4_,
                        "Players":Number(param1.target.data["players" + _loc2_]),
                        "Distance":_loc5_,
                        "Address":param1.target.data["address" + _loc2_],
                        "PasswordString":param1.target.data["password" + _loc2_],
                        "ModeRaw":Number(param1.target.data["gamemode" + _loc2_]),
                        "Aiming":param1.target.data["aiming" + _loc2_],
                        "Full":Number(param1.target.data["players" + _loc2_]) >= param1.target.data["maxplayers" + _loc2_],
                        "AverageKills":Number(param1.target.data["averagekills" + _loc2_]),
                        "Suitability":_loc6_ * 10 + _loc5_,
                        "LobbyTime":Number(param1.target.data["timeinlobby" + _loc2_])
                     };
                     autoJoinFullRoomArray.push(_loc7_);
                  }
                  _loc2_++;
               }
               filterJoinList();
            }
         };
         trace("getAutojoinList");
         if(this.localNameText.text == "Unnamed" || this.localNameText.text == "")
         {
            return;
         }
         this.buttonClickSound();
         try
         {
            _SafeCls_188._SafeStr_2479.trackEvent("AutoJoin","AutoJoin: Started");
         }
         catch(e:Error)
         {
         }
         this._SafeStr_2635.visible = true;
         myLoader = new URLLoader();
         myLoader.dataFormat = URLLoaderDataFormat.VARIABLES;
         request = new URLRequest(this._SafeStr_372 + "testscript4.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.basePasswordString = this.basePasswordString;
         variables.ignorethis = getTimer();
         variables.password = 8;
         variables.versionstring = this.currentGameVersion;
         request.data = variables;
         myLoader.load(request);
         myLoader.addEventListener(Event.COMPLETE,onDataLoad);
         myLoader.addEventListener(IOErrorEvent.IO_ERROR,this._SafeStr_433);
         this.autoJoinFullRoomArray = new Array();
      }
      
      public function filterJoinList() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         trace("filterJoinList");
         this._SafeStr_867 = new Array();
         _loc1_ = 0;
         while(_loc1_ < this.autoJoinFullRoomArray.length)
         {
            if(!this.autoJoinFullRoomArray[_loc1_].Full)
            {
               if(this.autoJoinFullRoomArray[_loc1_].PasswordString == "")
               {
                  if(this.autoJoinFullRoomArray[_loc1_].Aiming != true)
                  {
                     if(this.autoJoinFullRoomArray[_loc1_].Players > 1)
                     {
                        if(this.autoJoinFullRoomArray[_loc1_].LobbyTime < 90)
                        {
                           _loc2_ = 0;
                           while(true)
                           {
                              if(_loc2_ >= this.autoJoinAlreadyJoinedList.length)
                              {
                                 this._SafeStr_867.push(this.autoJoinFullRoomArray[_loc1_]);
                                 break;
                              }
                              if(this.autoJoinAlreadyJoinedList[_loc2_] == this.autoJoinFullRoomArray[_loc1_].Address)
                              {
                                 break;
                              }
                              _loc2_++;
                           }
                        }
                     }
                  }
               }
            }
            _loc1_++;
         }
         this._SafeStr_867.sortOn("Suitability",Array.NUMERIC);
         this._SafeStr_1577 = -1;
         this._SafeStr_2534 = true;
         this.autoJoinNext();
      }
      
      public function autoJoinNext() : *
      {
         trace("autoJoinNext");
         ++this._SafeStr_1577;
         this.autoJoinAlreadyJoinedList.push(this._SafeStr_867[this._SafeStr_1577].Address);
         this._SafeStr_1688(this._SafeStr_867[this._SafeStr_1577].Address);
         this._SafeStr_2635.statustext.text = "Joining " + this._SafeStr_867[this._SafeStr_1577].Roomname;
      }
      
      public function cancelAutoJoin(param1:MouseEvent = null) : *
      {
         try
         {
            _SafeCls_188._SafeStr_2479.trackEvent("AutoJoin","AutoJoin: Cancelled");
         }
         catch(e:Error)
         {
         }
         this._SafeStr_2635.visible = false;
         this._SafeStr_2534 = false;
         clearInterval(this._SafeStr_2186);
         this._SafeStr_2425.close();
      }
      
      public function _SafeStr_830(param1:String) : void
      {
         if(this._SafeStr_1130)
         {
            this._SafeStr_1938();
         }
         this._SafeStr_1130 = addChild(new _SafeCls_217());
         this._SafeStr_1130.x = 365;
         this._SafeStr_1130.y = 250;
         this._SafeStr_1130.errortext.text = param1;
         this._SafeStr_1130.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1938);
      }
      
      public function _SafeStr_1938(param1:MouseEvent = null) : *
      {
         if(this._SafeStr_1130)
         {
            removeChild(this._SafeStr_1130);
            this._SafeStr_1130 = null;
         }
      }
      
      public function _SafeStr_1508(param1:MouseEvent = null) : *
      {
         var me:MouseEvent = param1;
         this.buttonClickSound();
         if(this.muteSfx)
         {
            this.muteSfx = false;
            this._SafeStr_520.gotoAndStop(1);
            this._SafeStr_1077.data.muteSfx = false;
            try
            {
               this._SafeStr_1077.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
         }
         else
         {
            this.muteSfx = true;
            this._SafeStr_520.gotoAndStop(2);
            this._SafeStr_1077.data.muteSfx = true;
            try
            {
               this._SafeStr_1077.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
         }
      }
      
      public function _SafeStr_1722(param1:MouseEvent = null) : *
      {
         var me:MouseEvent = param1;
         this.buttonClickSound();
         if(this.muteMusic)
         {
            this.muteMusic = false;
            this._SafeStr_1638.gotoAndStop(1);
            this._SafeStr_1077.data.muteMusic = false;
            try
            {
               this._SafeStr_1077.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
            this._SafeStr_1811.volume = this._SafeStr_946;
            this._SafeStr_1878.soundTransform = this._SafeStr_1811;
         }
         else
         {
            this.muteMusic = true;
            this._SafeStr_1638.gotoAndStop(2);
            this._SafeStr_1077.data.muteMusic = true;
            try
            {
               this._SafeStr_1077.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
            this._SafeStr_1811.volume = 0;
            this._SafeStr_1878.soundTransform = this._SafeStr_1811;
         }
      }
      
      public function _SafeStr_340() : *
      {
         this.teamplaybutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_2508);
         this.mouseaimbutton.removeEventListener(MouseEvent.CLICK,this.toggleMouseAiming);
         this._SafeStr_1994.removeEventListener(MouseEvent.CLICK,this._SafeStr_1399);
         this._SafeStr_1415.removeEventListener(MouseEvent.CLICK,this._SafeStr_822);
         this._SafeStr_459.removeEventListener(MouseEvent.CLICK,this._SafeStr_1013);
         this.modebutton.removeEventListener(MouseEvent.CLICK,this.toggleMode);
         this.dmcaplimitbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2428.removeEventListener(MouseEvent.CLICK,this._SafeStr_2193);
         this._SafeStr_1615.removeEventListener(MouseEvent.CLICK,this._SafeStr_2045);
         this.teamplaybutton.enabled = false;
         this.mouseaimbutton.enabled = false;
         this._SafeStr_1994.enabled = false;
         this._SafeStr_1415.enabled = false;
         this.modebutton.enabled = false;
         this.dmcaplimitbutton.enabled = false;
         this._SafeStr_2428.enabled = false;
         this.tank0aibutton.mouseEnabled = false;
         this.tank1aibutton.mouseEnabled = false;
         this.tank2aibutton.mouseEnabled = false;
         this.tank3aibutton.mouseEnabled = false;
         this.kickbutton0.mouseEnabled = false;
         this.kickbutton1.mouseEnabled = false;
         this.kickbutton2.mouseEnabled = false;
         this.kickbutton3.mouseEnabled = false;
      }
      
      public function _SafeStr_589() : *
      {
         if(this.hosting)
         {
            this.teamplaybutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2508);
            this.mouseaimbutton.addEventListener(MouseEvent.CLICK,this.toggleMouseAiming);
            this._SafeStr_1994.addEventListener(MouseEvent.CLICK,this._SafeStr_1399);
            this._SafeStr_1415.addEventListener(MouseEvent.CLICK,this._SafeStr_822);
            this._SafeStr_459.addEventListener(MouseEvent.CLICK,this._SafeStr_1013);
            this.modebutton.addEventListener(MouseEvent.CLICK,this.toggleMode);
            this.dmcaplimitbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1395);
            this.teamplaybutton.enabled = true;
            this.mouseaimbutton.enabled = true;
            this._SafeStr_1994.enabled = true;
            this._SafeStr_1415.enabled = true;
            this.modebutton.enabled = true;
            this.dmcaplimitbutton.enabled = true;
            this.tank0aibutton.mouseEnabled = true;
            this.tank1aibutton.mouseEnabled = true;
            this.tank2aibutton.mouseEnabled = true;
            this.tank3aibutton.mouseEnabled = true;
            this.kickbutton0.mouseEnabled = true;
            this.kickbutton1.mouseEnabled = true;
            this.kickbutton2.mouseEnabled = true;
            this.kickbutton3.mouseEnabled = true;
         }
         this._SafeStr_2428.addEventListener(MouseEvent.CLICK,this._SafeStr_2193);
         this._SafeStr_2428.enabled = true;
         this._SafeStr_1615.addEventListener(MouseEvent.CLICK,this._SafeStr_2045);
         this._SafeStr_1615.enabled = true;
      }
      
      public function _SafeStr_2531() : *
      {
         this._SafeStr_2399.startinghealthbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2399.magazinesizebutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2399.enginepowerbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2399.bulletstaybutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2399.bulletfirebutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2399.bulletmovespeedbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         if(this.hosting)
         {
            this._SafeStr_2399.resetsettingsbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_2156);
         }
      }
      
      public function _SafeStr_2000() : *
      {
         this._SafeStr_2399.startinghealthbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2399.magazinesizebutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2399.enginepowerbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2399.bulletstaybutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2399.bulletfirebutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         this._SafeStr_2399.bulletmovespeedbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1395);
         if(this.hosting)
         {
            this._SafeStr_2399.resetsettingsbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2156);
         }
      }
      
      public function _SafeStr_406() : *
      {
         this._SafeStr_2399.startinghealthbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_995);
         this._SafeStr_2399.magazinesizebutton.addEventListener(MouseEvent.CLICK,this._SafeStr_995);
         this._SafeStr_2399.enginepowerbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_995);
         this._SafeStr_2399.bulletstaybutton.addEventListener(MouseEvent.CLICK,this._SafeStr_995);
         this._SafeStr_2399.bulletfirebutton.addEventListener(MouseEvent.CLICK,this._SafeStr_995);
         this._SafeStr_2399.bulletmovespeedbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_995);
      }
      
      public function _SafeStr_995(param1:MouseEvent) : *
      {
         if(this.nothighenoughlevelwindow)
         {
            return;
         }
         this.nothighenoughlevelwindow = addChild(new nothighenoughlevelwindowmc());
         this.nothighenoughlevelwindow.x = 365;
         this.nothighenoughlevelwindow.y = 250;
         this.nothighenoughlevelwindow.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_635);
      }
      
      public function _SafeStr_635(param1:MouseEvent) : *
      {
         removeChild(this.nothighenoughlevelwindow);
         this.nothighenoughlevelwindow = null;
      }
      
      public function startGameButt(param1:MouseEvent = null) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:Array = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         this.buttonClickSound();
         if(this.hosting)
         {
            _loc2_ = 0;
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_2147.length)
            {
               if(this._SafeStr_2147[_loc3_] == true && this._SafeStr_1162[_loc3_] != 4)
               {
                  _loc2_++;
               }
               _loc3_++;
            }
            _loc4_ = 0;
            _loc5_ = new Array(4);
            _loc6_ = 0;
            while(_loc6_ < _loc5_.length)
            {
               _loc5_[_loc6_] = 0;
               _loc6_++;
            }
            _loc7_ = 0;
            while(_loc7_ < this._SafeStr_451.length)
            {
               if(this._SafeStr_2147[_loc7_] == true && this._SafeStr_1162[_loc7_] != 4)
               {
                  ++_loc5_[this._SafeStr_1162[_loc7_]];
               }
               _loc7_++;
            }
            _loc8_ = 0;
            while(_loc8_ < _loc5_.length)
            {
               if(_loc5_[_loc8_] > 0)
               {
                  _loc4_++;
               }
               _loc8_++;
            }
            if(_loc2_ > this.levelChosenMaxPlayers)
            {
               this._SafeStr_1484 = addChild(new _SafeCls_232());
               this._SafeStr_1484.x = 365;
               this._SafeStr_1484.y = 250;
               this._SafeStr_1484.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_654);
               this._SafeStr_1484.maintext.text = "The map you have chosen is for up to " + this.levelChosenMaxPlayers + " players, and there are " + _loc2_ + " active players";
            }
            else if(_loc2_ == 0)
            {
               this._SafeStr_1484 = addChild(new _SafeCls_232());
               this._SafeStr_1484.x = 365;
               this._SafeStr_1484.y = 250;
               this._SafeStr_1484.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_654);
               this._SafeStr_1484.maintext.text = "There must be at least one active player!";
            }
            else if(this.gameMode == 2 && _loc4_ != 2)
            {
               this._SafeStr_1484 = addChild(new _SafeCls_232());
               this._SafeStr_1484.x = 365;
               this._SafeStr_1484.y = 250;
               this._SafeStr_1484.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_654);
               this._SafeStr_1484.maintext.text = "There must be two teams in capture the flag!";
               this._SafeStr_1484.titletext.text = "Incorrect teams";
            }
            else
            {
               _loc9_ = 0;
               while(_loc9_ < this._SafeStr_2147.length)
               {
                  if(this._SafeStr_2147[_loc9_] == true && this._SafeStr_1162[_loc9_] != 4 && this.tankNameArray[_loc9_] != "connecting...")
                  {
                     this._SafeStr_451[_loc9_] = true;
                  }
                  else
                  {
                     this._SafeStr_451[_loc9_] = false;
                  }
                  _loc9_++;
               }
               if(!this._SafeStr_1546.text)
               {
               }
               this._SafeStr_2381 = getTimer() + 4000;
               this._SafeStr_1562.stop();
               this.startGameHost();
               this.sendStream.send("startGameClient",this._SafeStr_451);
               _loc10_ = 0;
               while(_loc10_ < this._SafeStr_1573.length)
               {
                  this._SafeStr_1573[_loc10_] = false;
                  this._SafeStr_1764[_loc10_] = false;
                  _loc10_++;
               }
               try
               {
                  this._SafeStr_1052();
               }
               catch(e:Error)
               {
               }
               try
               {
                  this._SafeStr_1779();
               }
               catch(e:Error)
               {
               }
               try
               {
                  this._SafeStr_1229();
               }
               catch(e:Error)
               {
               }
               try
               {
                  this._SafeStr_635(null);
               }
               catch(e:Error)
               {
               }
            }
         }
      }
      
      public function _SafeStr_654(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         removeChild(this._SafeStr_1484);
      }
      
      public function startGameHost() : void
      {
         this._SafeStr_631.startgame.removeEventListener(MouseEvent.CLICK,this.startGameButt);
         this._SafeStr_925();
         this._SafeStr_974();
         try
         {
            this._SafeStr_1490(null,true);
         }
         catch(e:Error)
         {
         }
         try
         {
            removeChild(this._SafeStr_2399);
         }
         catch(e:Error)
         {
         }
         if(this._SafeStr_2145)
         {
            removeChild(this._SafeStr_2145);
            this._SafeStr_2145 = null;
         }
         removeEventListener(Event.ENTER_FRAME,this.statswindowsnap);
         this._SafeStr_1237();
         gotoAndStop(4);
         this.inLobby = false;
         this.inGame = true;
      }
      
      public function startGameClient(param1:Array) : void
      {
         var _loc2_:* = undefined;
         if(this._SafeStr_2565)
         {
            this.xtr("being told to start game, my colour array is: " + this._SafeStr_1162[this.localTankID]);
            this._SafeStr_925();
            this._SafeStr_974();
            try
            {
               this._SafeStr_1490(null,true);
            }
            catch(e:Error)
            {
            }
            try
            {
               removeChild(this._SafeStr_2399);
            }
            catch(e:Error)
            {
            }
            if(this._SafeStr_2145)
            {
               removeChild(this._SafeStr_2145);
               this._SafeStr_2145 = null;
            }
            _loc2_ = 0;
            while(_loc2_ < this._SafeStr_1573.length)
            {
               this._SafeStr_1573[_loc2_] = false;
               this._SafeStr_1764[_loc2_] = false;
               _loc2_++;
            }
            this._SafeStr_451 = param1.slice();
            this._SafeStr_2381 = getTimer() + 4000 - this._SafeStr_2180[this.localTankID];
            removeEventListener(Event.ENTER_FRAME,this.statswindowsnap);
            this._SafeStr_1237();
            gotoAndStop(4);
            this.inLobby = false;
            this.inGame = true;
         }
      }
      
      public function _SafeStr_1625() : void
      {
         var _loc1_:Array = null;
         var _loc2_:* = undefined;
         var _loc3_:GlowFilter = null;
         var _loc4_:AdjustColor = null;
         var _loc5_:ColorMatrixFilter = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:AdjustColor = null;
         var _loc9_:ColorMatrixFilter = null;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         this.xtr("UPDATE PLAYER NAME TEXTS");
         this._SafeStr_2474();
         _loc1_ = new Array(8);
         if(this.tankNameArray[0])
         {
            _loc1_[0] = this.tankNameArray[0];
         }
         else
         {
            _loc1_[0] = "";
         }
         if(this.tankNameArray[1])
         {
            _loc1_[1] = this.tankNameArray[1];
         }
         else
         {
            _loc1_[1] = "";
         }
         if(this.tankNameArray[2])
         {
            _loc1_[2] = this.tankNameArray[2];
         }
         else
         {
            _loc1_[2] = "";
         }
         if(this.tankNameArray[3])
         {
            _loc1_[3] = this.tankNameArray[3];
         }
         else
         {
            _loc1_[3] = "";
         }
         if(this.tankNameArray[4])
         {
            _loc1_[4] = this.tankNameArray[4];
         }
         else
         {
            _loc1_[4] = "";
         }
         if(this.tankNameArray[5])
         {
            _loc1_[5] = this.tankNameArray[5];
         }
         else
         {
            _loc1_[5] = "";
         }
         if(this.tankNameArray[6])
         {
            _loc1_[6] = this.tankNameArray[6];
         }
         else
         {
            _loc1_[6] = "";
         }
         if(this.tankNameArray[7])
         {
            _loc1_[7] = this.tankNameArray[7];
         }
         else
         {
            _loc1_[7] = "";
         }
         trace(["wawawawa slot" + this._SafeStr_2067[0] + "String"]);
         if(this._SafeStr_2067[0] != -1)
         {
            if(_loc1_[this._SafeStr_2067[0]].substring(6,9) != "CPU")
            {
               this.tank0NameSlot.text = this.fixUsernameString(_loc1_[this._SafeStr_2067[0]]);
            }
            else
            {
               this.tank0NameSlot.text = this.fixUsernameString(_loc1_[this._SafeStr_2067[0]]);
            }
            this.tank0changecolourbutton.mouseEnabled = true;
         }
         else
         {
            this.tank0NameSlot.text = "";
            this.tank0changecolourbutton.mouseEnabled = false;
         }
         if(this._SafeStr_2067[1] != -1)
         {
            if(_loc1_[this._SafeStr_2067[1]].substring(6,9) != "CPU")
            {
               this.tank1NameSlot.text = this.fixUsernameString(_loc1_[this._SafeStr_2067[1]]);
            }
            else
            {
               this.tank1NameSlot.text = this.fixUsernameString(_loc1_[this._SafeStr_2067[1]]);
            }
            this.tank1changecolourbutton.mouseEnabled = true;
         }
         else
         {
            this.tank1NameSlot.text = "";
            this.tank1changecolourbutton.mouseEnabled = false;
         }
         if(this._SafeStr_2067[2] != -1)
         {
            if(_loc1_[this._SafeStr_2067[2]].substring(6,9) != "CPU")
            {
               this.tank2NameSlot.text = this.fixUsernameString(_loc1_[this._SafeStr_2067[2]]);
            }
            else
            {
               this.tank2NameSlot.text = this.fixUsernameString(_loc1_[this._SafeStr_2067[2]]);
            }
            this.tank2changecolourbutton.mouseEnabled = true;
         }
         else
         {
            this.tank2NameSlot.text = "";
            this.tank2changecolourbutton.mouseEnabled = false;
         }
         if(this._SafeStr_2067[3] != -1)
         {
            if(_loc1_[this._SafeStr_2067[3]].substring(6,9) != "CPU")
            {
               this.tank3NameSlot.text = this.fixUsernameString(_loc1_[this._SafeStr_2067[3]]);
            }
            else
            {
               this.tank3NameSlot.text = this.fixUsernameString(_loc1_[this._SafeStr_2067[3]]);
            }
            this.tank3changecolourbutton.mouseEnabled = true;
         }
         else
         {
            this.tank3NameSlot.text = "";
            this.tank3changecolourbutton.mouseEnabled = false;
         }
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            if(this.tankNameArray[this._SafeStr_2067[_loc2_]])
            {
               if(!this._SafeStr_430[this._SafeStr_2067[_loc2_]] && this._SafeStr_2067[_loc2_] != this.localTankID)
               {
                  this["friend" + _loc2_ + "StarBackground"].visible = true;
                  this["tank" + _loc2_ + "FriendButton"].mouseEnabled = true;
               }
               else
               {
                  this["friend" + _loc2_ + "StarBackground"].visible = false;
                  this["tank" + _loc2_ + "FriendButton"].mouseEnabled = false;
               }
               if(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] != 4)
               {
                  this["tank" + _loc2_ + "Preview"].visible = true;
                  this["spectateIcon" + _loc2_].visible = false;
                  if(this._SafeStr_1296)
                  {
                     this["tank" + _loc2_ + "powerupicon"].visible = true;
                  }
                  else
                  {
                     this["tank" + _loc2_ + "powerupicon"].visible = false;
                  }
                  if(this._SafeStr_1766[this._SafeStr_2067[_loc2_]])
                  {
                     _loc3_ = new GlowFilter();
                     _loc3_.inner = false;
                     if(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] == 0)
                     {
                        _loc3_.color = 3850834;
                     }
                     else if(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] == 1)
                     {
                        _loc3_.color = 3770052;
                     }
                     else if(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] == 2)
                     {
                        _loc3_.color = 12929592;
                     }
                     else
                     {
                        _loc3_.color = 13555256;
                     }
                     _loc3_.blurX = 16;
                     _loc3_.blurY = 16;
                     this["tank" + _loc2_ + "Preview"].filters = [_loc3_];
                  }
                  else
                  {
                     this["tank" + _loc2_ + "Preview"].filters = [];
                  }
                  this.xtr("showing tank: " + this._SafeStr_2067[_loc2_] + ", array val is: " + this._SafeStr_1162[this._SafeStr_2067[_loc2_]]);
               }
               else
               {
                  this.xtr("hiding tank: " + this._SafeStr_2067[_loc2_]);
                  this["tank" + _loc2_ + "Preview"].visible = false;
                  this["spectateIcon" + _loc2_].visible = true;
                  this["tank" + _loc2_ + "powerupicon"].visible = false;
               }
               if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][0] == 0)
               {
                  this["tank" + _loc2_ + "Preview"].tankmain.gotoAndStop(1);
                  this["tank" + _loc2_ + "Preview"].tankmainmask.gotoAndStop(1);
               }
               else if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][0] == 3)
               {
                  this["tank" + _loc2_ + "Preview"].tankmain.gotoAndStop(2);
                  this["tank" + _loc2_ + "Preview"].tankmainmask.gotoAndStop(2);
               }
               else if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][0] == 6)
               {
                  this["tank" + _loc2_ + "Preview"].tankmain.gotoAndStop(3);
                  this["tank" + _loc2_ + "Preview"].tankmainmask.gotoAndStop(3);
               }
               else if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][0] == 9)
               {
                  this["tank" + _loc2_ + "Preview"].tankmain.gotoAndStop(4);
                  this["tank" + _loc2_ + "Preview"].tankmainmask.gotoAndStop(4);
               }
               if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][1] == 1)
               {
                  this["tank" + _loc2_ + "Preview"].spinnybit.gotoAndStop(1);
               }
               else if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][1] == 4)
               {
                  this["tank" + _loc2_ + "Preview"].spinnybit.gotoAndStop(2);
               }
               else if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][1] == 7)
               {
                  this["tank" + _loc2_ + "Preview"].spinnybit.gotoAndStop(3);
               }
               else if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][1] == 10)
               {
                  this["tank" + _loc2_ + "Preview"].spinnybit.gotoAndStop(4);
               }
               if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][2] == 2)
               {
                  this["tank" + _loc2_ + "Preview"].barrel.colour.gotoAndStop(1);
               }
               else if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][2] == 5)
               {
                  this["tank" + _loc2_ + "Preview"].barrel.colour.gotoAndStop(2);
               }
               else if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][2] == 8)
               {
                  this["tank" + _loc2_ + "Preview"].barrel.colour.gotoAndStop(3);
               }
               else if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][2] == 11)
               {
                  this["tank" + _loc2_ + "Preview"].barrel.colour.gotoAndStop(4);
               }
               this["tank" + _loc2_ + "Preview"].tankmain.colour.gotoAndStop(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] + 1);
               this["tank" + _loc2_ + "Preview"].barrel.colour.colour.gotoAndStop(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] + 1);
               this["tank" + _loc2_ + "Preview"].spinnybit.colour.gotoAndStop(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] + 1);
               this["tank" + _loc2_ + "ReadyLight"].visible = true;
               this["tank" + _loc2_ + "PingIndicator"].visible = true;
               switch(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][3])
               {
                  case 12:
                     this["tank" + _loc2_ + "powerupicon"].gotoAndStop(1);
                     break;
                  case 13:
                     this["tank" + _loc2_ + "powerupicon"].gotoAndStop(2);
                     break;
                  case 14:
                     this["tank" + _loc2_ + "powerupicon"].gotoAndStop(3);
                     break;
                  case 15:
                     this["tank" + _loc2_ + "powerupicon"].gotoAndStop(4);
                     break;
                  case 38:
                     this["tank" + _loc2_ + "powerupicon"].gotoAndStop(5);
               }
               this["tank" + _loc2_ + "Preview"].tankmain.colour.gotoAndStop(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] + 1);
               this["tank" + _loc2_ + "Preview"].tankmain.blendMode = "normal";
               this["tank" + _loc2_ + "Preview"].spinnybit.blendMode = "normal";
               this["tank" + _loc2_ + "Preview"].skin.visible = false;
               this["tank" + _loc2_ + "Preview"].tankmainmask.visible = false;
               if(this._SafeStr_2011[this._SafeStr_2067[_loc2_]][4] != 16)
               {
                  if(!this.teamPlay)
                  {
                     this["tank" + _loc2_ + "Preview"].tankmain.blendMode = "hardlight";
                     this["tank" + _loc2_ + "Preview"].spinnybit.blendMode = "hardlight";
                     this["tank" + _loc2_ + "Preview"].tankmain.colour.gotoAndStop(5);
                     this["tank" + _loc2_ + "Preview"].spinnybit.colour.gotoAndStop(5);
                     this["tank" + _loc2_ + "Preview"].skin.filters = [];
                     this["tank" + _loc2_ + "Preview"].tankmain.filters = [];
                     this["tank" + _loc2_ + "Preview"].spinnybit.filters = [];
                  }
                  else
                  {
                     this["tank" + _loc2_ + "Preview"].tankmain.blendMode = "hardlight";
                     this["tank" + _loc2_ + "Preview"].spinnybit.blendMode = "hardlight";
                     _loc4_ = new AdjustColor();
                     _loc4_.brightness = -15;
                     _loc4_.contrast = 0;
                     _loc4_.hue = 0;
                     _loc4_.saturation = -100;
                     _loc6_ = _loc4_.CalculateFinalFlatArray();
                     _loc5_ = new ColorMatrixFilter(_loc6_);
                     _loc7_ = [_loc5_];
                     this["tank" + _loc2_ + "Preview"].skin.filters = _loc7_;
                     if(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] == 0 || this._SafeStr_1162[this._SafeStr_2067[_loc2_]] == 2 || this._SafeStr_1162[this._SafeStr_2067[_loc2_]] == 3)
                     {
                        _loc8_ = new AdjustColor();
                        if(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] == 0)
                        {
                           _loc8_.brightness = -15;
                        }
                        else if(this._SafeStr_1162[this._SafeStr_2067[_loc2_]] == 2)
                        {
                           _loc8_.brightness = -15;
                        }
                        else
                        {
                           _loc8_.brightness = -35;
                        }
                        _loc8_.contrast = 0;
                        _loc8_.hue = 0;
                        _loc8_.saturation = 0;
                        _loc10_ = _loc8_.CalculateFinalFlatArray();
                        _loc9_ = new ColorMatrixFilter(_loc10_);
                        _loc11_ = [_loc9_];
                        this["tank" + _loc2_ + "Preview"].tankmain.filters = _loc11_;
                        this["tank" + _loc2_ + "Preview"].spinnybit.filters = _loc11_;
                     }
                  }
                  this["tank" + _loc2_ + "Preview"].skin.visible = true;
                  this["tank" + _loc2_ + "Preview"].skin.gotoAndStop(this.tankItemDataArray[this._SafeStr_2011[this._SafeStr_2067[_loc2_]][4]][5]);
                  this["tank" + _loc2_ + "Preview"].skin.mask = this["tank" + _loc2_ + "Preview"].tankmainmask;
               }
               if(this.tankNameArray[this._SafeStr_2067[_loc2_]] != "" && this.amIFriendsWith([this.tankNameArray[this._SafeStr_2067[_loc2_]]]))
               {
                  this["friend" + _loc2_ + "Star"].visible = true;
               }
               else
               {
                  this["friend" + _loc2_ + "Star"].visible = false;
               }
            }
            else
            {
               this["tank" + _loc2_ + "Preview"].visible = false;
               this["tank" + _loc2_ + "ReadyLight"].visible = false;
               this["spectateIcon" + _loc2_].visible = false;
               this["tank" + _loc2_ + "PingIndicator"].visible = false;
               this["tank" + _loc2_ + "powerupicon"].gotoAndStop(1);
               this["friend" + _loc2_ + "Star"].visible = false;
               this["friend" + _loc2_ + "StarBackground"].visible = false;
               this["tank" + _loc2_ + "FriendButton"].mouseEnabled = false;
            }
            if(this._SafeStr_1764[this._SafeStr_2067[_loc2_]])
            {
               this["tank" + _loc2_ + "ReadyLight"].gotoAndStop(3);
            }
            else if(this._SafeStr_1573[this._SafeStr_2067[_loc2_]])
            {
               this["tank" + _loc2_ + "ReadyLight"].gotoAndStop(2);
            }
            else
            {
               this["tank" + _loc2_ + "ReadyLight"].gotoAndStop(1);
            }
            if(this.hosting)
            {
               if(this._SafeStr_2147[this._SafeStr_2067[_loc2_]] == true && !this._SafeStr_430[this._SafeStr_2067[_loc2_]] || !this._SafeStr_2147[this._SafeStr_2067[_loc2_ - 1]] && _loc2_ != 0)
               {
                  this["tank" + _loc2_ + "aibutton"].visible = false;
               }
               else
               {
                  this["tank" + _loc2_ + "aibutton"].visible = true;
               }
            }
            else if(!this._SafeStr_430[this._SafeStr_2067[_loc2_]])
            {
               this["tank" + _loc2_ + "aibutton"].visible = false;
            }
            else
            {
               this["tank" + _loc2_ + "aibutton"].visible = true;
               this["tank" + _loc2_ + "aibutton"].mouseEnabled = false;
            }
            if(this.hosting)
            {
               if(this._SafeStr_2147[this._SafeStr_2067[_loc2_]] == true && !this._SafeStr_430[this._SafeStr_2067[_loc2_]] && this._SafeStr_2067[_loc2_] != 0)
               {
                  this["kickbutton" + _loc2_].visible = true;
               }
               else
               {
                  this["kickbutton" + _loc2_].visible = false;
               }
            }
            else
            {
               this["kickbutton" + _loc2_].visible = false;
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_2474() : *
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:* = undefined;
         _loc1_ = 0;
         this._SafeStr_2067 = [-1,-1,-1,-1];
         _loc2_ = 0;
         _loc3_ = 0;
         while(_loc3_ < 4)
         {
            while(_loc1_ < this._SafeStr_2147.length)
            {
               if(this._SafeStr_2147[this._SafeStr_1233[_loc1_]])
               {
                  this._SafeStr_2067[_loc3_] = this._SafeStr_1233[_loc1_];
                  _loc1_++;
                  if(_loc2_ < this._SafeStr_2543)
                  {
                     this._SafeStr_2067[_loc3_] = -1;
                     _loc3_--;
                     _loc2_++;
                  }
                  break;
               }
               _loc1_++;
            }
            _loc3_++;
         }
      }
      
      public function friendButtonClicked(param1:MouseEvent) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         switch(param1.target.name)
         {
            case "tank0FriendButton":
               _loc2_ = 0;
               break;
            case "tank1FriendButton":
               _loc2_ = 1;
               break;
            case "tank2FriendButton":
               _loc2_ = 2;
               break;
            case "tank3FriendButton":
               _loc2_ = 3;
         }
         if(this.amIFriendsWith([this.tankNameArray[this._SafeStr_2067[_loc2_]]]))
         {
            this.removeFriend(this.tankNameArray[this._SafeStr_2067[_loc2_]]);
         }
         else
         {
            this.addFriend(this.tankNameArray[this._SafeStr_2067[_loc2_]]);
            _loc3_ = false;
            _loc4_ = 0;
            while(_loc4_ < this.friendsAddedThisSession.length)
            {
               if(this.tankNameArray[this._SafeStr_2067[_loc2_]] == this.friendsAddedThisSession[_loc4_])
               {
                  _loc3_ = true;
               }
               _loc4_++;
            }
            if(_loc3_ == false)
            {
               _loc5_ = "<font color=\'#57334F\'>* " + this.fixUsernameString(this.localTankName) + " has added " + this.fixUsernameString(this.tankNameArray[this._SafeStr_2067[_loc2_]]) + " as a friend!</font> \n";
               this.allChatMessages += _loc5_;
               this._SafeStr_1546.htmlText += _loc5_;
               this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
               this.sendStream.send("recvChatMessage",this.localTankID,_loc5_,false);
               this.friendsAddedThisSession.push(this.tankNameArray[this._SafeStr_2067[_loc2_]]);
            }
         }
         this._SafeStr_1625();
      }
      
      public function _SafeStr_2618(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this.hosting)
         {
            switch(param1.target.name)
            {
               case "tank0changecolourbutton":
                  if(this._SafeStr_2147[this._SafeStr_2067[0]])
                  {
                     this._SafeStr_2177(this._SafeStr_2067[0]);
                  }
                  break;
               case "tank1changecolourbutton":
                  if(this._SafeStr_2147[this._SafeStr_2067[1]])
                  {
                     this._SafeStr_2177(this._SafeStr_2067[1]);
                  }
                  break;
               case "tank2changecolourbutton":
                  if(this._SafeStr_2147[this._SafeStr_2067[2]])
                  {
                     this._SafeStr_2177(this._SafeStr_2067[2]);
                  }
                  break;
               case "tank3changecolourbutton":
                  if(this._SafeStr_2147[this._SafeStr_2067[3]])
                  {
                     this._SafeStr_2177(this._SafeStr_2067[3]);
                  }
            }
         }
         else
         {
            switch(param1.target.name)
            {
               case "tank0changecolourbutton":
                  this.sendStream.send("recvCycleRequest",this.localTankID,this._SafeStr_2067[0]);
                  break;
               case "tank1changecolourbutton":
                  this.sendStream.send("recvCycleRequest",this.localTankID,this._SafeStr_2067[1]);
                  break;
               case "tank2changecolourbutton":
                  this.sendStream.send("recvCycleRequest",this.localTankID,this._SafeStr_2067[2]);
                  break;
               case "tank3changecolourbutton":
                  this.sendStream.send("recvCycleRequest",this.localTankID,this._SafeStr_2067[3]);
            }
         }
      }
      
      public function recvCycleRequest(param1:*, param2:*) : *
      {
         if(param1 == param2 && this._SafeStr_2322 == false && this.inLobby && !this.inGame)
         {
            this._SafeStr_2177(param1);
         }
      }
      
      public function _SafeStr_2177(param1:*) : *
      {
         if(++this._SafeStr_1162[param1] == 5)
         {
            this._SafeStr_1162[param1] = 0;
         }
         this._SafeStr_1625();
         this.sendStream.send("recvCycleColour",param1,this._SafeStr_1162[param1]);
      }
      
      public function recvCycleColour(param1:Number, param2:Number) : *
      {
         if(this._SafeStr_1579)
         {
            if(param2 != 4)
            {
               this._SafeStr_1162[param1] = param2;
            }
            else
            {
               this._SafeStr_1162[param1] = param2;
            }
            this._SafeStr_1625();
         }
      }
      
      public function _SafeStr_2062(param1:MouseEvent = null) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            this.buttonClickSound();
         }
         this.xtr("quitting to main menu");
         this._SafeStr_1562.stop();
         this._SafeStr_2425.close();
         this.sendStream.close();
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_1024.length)
         {
            this._SafeStr_1024[_loc2_].close();
            _loc2_++;
         }
         if(this.inGame)
         {
            this.destroyWorld();
         }
         if(this.hosting)
         {
            this._SafeStr_1461();
            clearInterval(this.continueRoomInterval);
            clearInterval(this._SafeStr_1738);
            if(this.inLobby)
            {
               if(!this._SafeStr_1546.text)
               {
               }
            }
         }
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_1137);
         this._SafeStr_974();
         removeEventListener(Event.ENTER_FRAME,this.statswindowsnap);
         try
         {
            removeEventListener(Event.ENTER_FRAME,this.rotateSetupWindowPreviewTank);
            removeChild(this._SafeStr_846);
         }
         catch(e:Error)
         {
         }
         try
         {
            this._SafeStr_806();
         }
         catch(e:Error)
         {
         }
         try
         {
            removeChild(this._SafeStr_2399);
         }
         catch(e:Error)
         {
         }
         if(this._SafeStr_2145)
         {
            removeChild(this._SafeStr_2145);
            this._SafeStr_2145 = null;
         }
         try
         {
            removeChild(this._SafeStr_1609);
         }
         catch(e:Error)
         {
         }
         try
         {
            this._SafeStr_1052();
         }
         catch(e:Error)
         {
         }
         try
         {
            this._SafeStr_1779();
         }
         catch(e:Error)
         {
         }
         try
         {
            this._SafeStr_1229();
         }
         catch(e:Error)
         {
         }
         try
         {
            this._SafeStr_635(null);
         }
         catch(e:Error)
         {
         }
         this.lobbyMapIDForJoinList = "1";
         clearInterval(this._SafeStr_2315);
         clearTimeout(this._SafeStr_1190);
         this._SafeStr_2497 = 0;
         this.gameMode = 0;
         this._SafeStr_1237();
         this.hosting = false;
         gotoAndStop(2);
         this.inGame = false;
         this.inLobby = false;
         this._SafeStr_850();
         this._SafeStr_1872();
         if(this._SafeStr_1383)
         {
            this.showAd();
         }
      }
      
      public function _SafeStr_2542(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(!this.hosting)
         {
            if(!this._SafeStr_1573[this.localTankID])
            {
               this.sendStream.send("recvReadyChangeHost",this.localTankID,true);
            }
            else
            {
               this.sendStream.send("recvReadyChangeHost",this.localTankID,false);
            }
         }
         else if(this.hosting)
         {
            if(this._SafeStr_1573[this.localTankID])
            {
               this.recvReadyChangeHost(this.localTankID,false);
            }
            else
            {
               this.recvReadyChangeHost(this.localTankID,true);
            }
         }
      }
      
      public function recvReadyChangeHost(param1:*, param2:Boolean) : *
      {
         this._SafeStr_1573[param1] = param2;
         if(this.inLobby)
         {
            this._SafeStr_1625();
            if(param2)
            {
               if(!this.muteSfx)
               {
                  this.readySound.play();
               }
            }
         }
         this.sendStream.send("recvReadyChangeClient",this._SafeStr_1573,param2);
      }
      
      public function recvReadyChangeClient(param1:*, param2:*) : *
      {
         if(this._SafeStr_1579)
         {
            this._SafeStr_1573 = param1.slice();
            if(this.inLobby)
            {
               this._SafeStr_1625();
               if(param2)
               {
                  if(!this.muteSfx)
                  {
                     this.readySound.play();
                  }
               }
            }
         }
      }
      
      public function _SafeStr_373(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this.hosting)
         {
            if(this.gameMode == 2)
            {
               this.levelChosen = this._SafeStr_2218.length - 1;
            }
            else if(param1.target.name == "nextMapButton")
            {
               if(++this.levelChosen == this._SafeStr_2218.length - 1)
               {
                  this.levelChosen = 0;
               }
            }
            else if(--this.levelChosen <= -1)
            {
               this.levelChosen = this._SafeStr_2218.length - 2;
            }
            this.lobbyMapIDForJoinList = String(this.levelChosen + 1);
            this._SafeStr_2240.gotoAndStop(this.levelChosen + 1);
            this.lobbyRemoveMapPreview();
            this.custommapnamelabel.visible = false;
            this.custommapnametext.visible = false;
            this.custommapauthorlabel.visible = false;
            this.custommapauthortext.visible = false;
            this.sendStream.send("recvChangeMap",this.levelChosen);
            this.calculateMaxPlayers();
         }
      }
      
      public function recvChangeMap(param1:Number, param2:Array = null, param3:Number = NaN) : *
      {
         if(this._SafeStr_1579)
         {
            this.levelChosen = param1;
            this.newVaultMapID = param3;
            if(param1 != -1)
            {
               this._SafeStr_2240.gotoAndStop(this.levelChosen + 1);
               this.custommapnamelabel.visible = false;
               this.custommapnametext.visible = false;
               this.custommapauthorlabel.visible = false;
               this.custommapauthortext.visible = false;
               this.lobbyRemoveMapPreview();
            }
            else
            {
               this.lobbyCustomMapName = param2[0];
               this.lobbyCustomMapAuthor = param2[1];
               this.lobbyCustomMapSize = param2[2];
               this.customLevelArray = param2[3].slice();
               this.customLevelCameraArray = param2[4].slice();
               this.customLevelSpawnArray = param2[5].slice();
               this.lobbyRemoveMapPreview();
               this.lobbyMainDrawMapPreview(param2);
               this.entireCustomLevelData = param2.slice();
               this.custommapnametext.text = this.lobbyCustomMapName;
               this.custommapauthortext.text = this.fixUsernameString(this.lobbyCustomMapAuthor);
               this.custommapnamelabel.visible = true;
               this.custommapnametext.visible = true;
               this.custommapauthorlabel.visible = true;
               this.custommapauthortext.visible = true;
            }
            this.calculateMaxPlayers();
         }
      }
      
      public function _SafeStr_1395(param1:Event) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(param1.target.name != "dmcaplimitbutton")
         {
            this._SafeStr_2531();
         }
         else
         {
            this._SafeStr_340();
         }
         this._SafeStr_1609 = addChild(new _SafeCls_245());
         this._SafeStr_1609.x = 365;
         this._SafeStr_1609.y = 250;
         this._SafeStr_1609.settingslider.setSize(118,3);
         this._SafeStr_1609.settingslider.addEventListener(SliderEvent.CHANGE,this._SafeStr_1460);
         this._SafeStr_1609.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1703);
         this._SafeStr_1609.settingName = param1.target.name;
         switch(param1.target.name)
         {
            case "startinghealthbutton":
               this._SafeStr_1774 = "startinghealth";
               this._SafeStr_1609.settingnametext.text = "Starting health";
               this._SafeStr_1609.settingvaluetext.text = String(this._SafeStr_1387.tankFullHealth);
               this._SafeStr_1609.settingslider.minimum = 1;
               this._SafeStr_1609.settingslider.maximum = 25;
               this._SafeStr_1609.settingslider.snapInterval = 1;
               this._SafeStr_1609.settingslider.tickInterval = 1;
               this._SafeStr_1609.settingslider.value = this._SafeStr_1387.tankFullHealth;
               break;
            case "magazinesizebutton":
               this._SafeStr_1774 = "magazinesize";
               this._SafeStr_1609.settingnametext.text = "Magazine size";
               this._SafeStr_1609.settingvaluetext.text = String(this._SafeStr_1387.bulletsPerMag);
               this._SafeStr_1609.settingslider.minimum = 1;
               this._SafeStr_1609.settingslider.maximum = 10;
               this._SafeStr_1609.settingslider.snapInterval = 1;
               this._SafeStr_1609.settingslider.tickInterval = 1;
               this._SafeStr_1609.settingslider.value = this._SafeStr_1387.bulletsPerMag;
               break;
            case "enginepowerbutton":
               this._SafeStr_1774 = "enginepower";
               this._SafeStr_1609.settingnametext.text = "Engine power";
               this._SafeStr_1609.settingvaluetext.text = String(this._SafeStr_1387.engineSpeed);
               this._SafeStr_1609.settingslider.minimum = 3;
               this._SafeStr_1609.settingslider.maximum = 10;
               this._SafeStr_1609.settingslider.snapInterval = 1;
               this._SafeStr_1609.settingslider.tickInterval = 1;
               this._SafeStr_1609.settingslider.value = this._SafeStr_1387.engineSpeed;
               break;
            case "bulletstaybutton":
               this._SafeStr_1774 = "bulletstay";
               this._SafeStr_1609.settingnametext.text = "Bullet stay time";
               this._SafeStr_1609.settingvaluetext.text = String(this._SafeStr_1387.bulletStayTime / 1000);
               this._SafeStr_1609.settingslider.minimum = 0.5;
               this._SafeStr_1609.settingslider.maximum = 5;
               this._SafeStr_1609.settingslider.snapInterval = 0.5;
               this._SafeStr_1609.settingslider.tickInterval = 1;
               this._SafeStr_1609.settingslider.value = this._SafeStr_1387.bulletStayTime / 1000;
               break;
            case "bulletfirebutton":
               this._SafeStr_1774 = "bulletfire";
               this._SafeStr_1609.settingnametext.text = "Bullet fire rate";
               this._SafeStr_1609.settingvaluetext.text = String(1 / (this._SafeStr_1387.gunFireInterval / 1000));
               this._SafeStr_1609.settingslider.minimum = 1;
               this._SafeStr_1609.settingslider.maximum = 10;
               this._SafeStr_1609.settingslider.snapInterval = 1;
               this._SafeStr_1609.settingslider.tickInterval = 1;
               this._SafeStr_1609.settingslider.value = 1 / (this._SafeStr_1387.gunFireInterval / 1000);
               break;
            case "bulletmovespeedbutton":
               this._SafeStr_1774 = "bulletmovespeed";
               this._SafeStr_1609.settingnametext.text = "Bullet move speed";
               this._SafeStr_1609.settingvaluetext.text = String(this._SafeStr_1387.bulletMoveSpeed);
               this._SafeStr_1609.settingslider.minimum = 6;
               this._SafeStr_1609.settingslider.maximum = 16;
               this._SafeStr_1609.settingslider.snapInterval = 1;
               this._SafeStr_1609.settingslider.tickInterval = 1;
               this._SafeStr_1609.settingslider.value = this._SafeStr_1387.bulletMoveSpeed;
               break;
            case "dmcaplimitbutton":
               if(this.gameMode == 1)
               {
                  this._SafeStr_1774 = "dmkilllimit";
                  this._SafeStr_1609.settingnametext.text = "Kill limit";
                  this._SafeStr_1609.settingvaluetext.text = this.deathmatchKillLimit;
                  this._SafeStr_1609.settingslider.minimum = 2;
                  this._SafeStr_1609.settingslider.maximum = 25;
                  this._SafeStr_1609.settingslider.snapInterval = 1;
                  this._SafeStr_1609.settingslider.tickInterval = 1;
                  this._SafeStr_1609.settingslider.value = this.deathmatchKillLimit;
                  break;
               }
               if(this.gameMode == 2)
               {
                  this._SafeStr_1774 = "ctfcaplimit";
                  this._SafeStr_1609.settingnametext.text = "Capture limit";
                  this._SafeStr_1609.settingvaluetext.text = this.ctfCaptureLimit;
                  this._SafeStr_1609.settingslider.minimum = 1;
                  this._SafeStr_1609.settingslider.maximum = 15;
                  this._SafeStr_1609.settingslider.snapInterval = 1;
                  this._SafeStr_1609.settingslider.tickInterval = 1;
                  this._SafeStr_1609.settingslider.value = this.ctfCaptureLimit;
               }
         }
      }
      
      public function _SafeStr_1460(param1:SliderEvent) : *
      {
         var _loc2_:String = null;
         switch(this._SafeStr_1774)
         {
            case "startinghealth":
               _loc2_ = "tankFullHealth";
               break;
            case "magazinesize":
               _loc2_ = "bulletsPerMag";
               break;
            case "enginepower":
               _loc2_ = "engineSpeed";
               break;
            case "bulletstay":
               _loc2_ = "bulletStayTime";
               break;
            case "bulletfire":
               _loc2_ = "gunFireInterval";
               break;
            case "bulletmovespeed":
               _loc2_ = "bulletMoveSpeed";
               break;
            case "dmkilllimit":
               _loc2_ = "deathmatchKillLimit";
               break;
            case "ctfcaplimit":
               _loc2_ = "ctfCaptureLimit";
         }
         if(_loc2_ == "deathmatchKillLimit" || _loc2_ == "ctfCaptureLimit")
         {
            this[_loc2_] = param1.value;
            this._SafeStr_1609.settingvaluetext.text = String(this[_loc2_]);
         }
         else if(_loc2_ == "bulletStayTime")
         {
            this._SafeStr_1387[_loc2_] = param1.value * 1000;
            this._SafeStr_1609.settingvaluetext.text = String(this._SafeStr_1387.bulletStayTime / 1000);
         }
         else if(_loc2_ == "gunFireInterval")
         {
            this._SafeStr_1387[_loc2_] = 1 / param1.value * 1000;
            this._SafeStr_1609.settingvaluetext.text = String(1 / (this._SafeStr_1387.gunFireInterval / 1000));
         }
         else
         {
            this._SafeStr_1387[_loc2_] = param1.value;
            this._SafeStr_1609.settingvaluetext.text = String(this._SafeStr_1387[_loc2_]);
         }
      }
      
      public function _SafeStr_1703(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         removeChild(this._SafeStr_1609);
         if(this._SafeStr_1609.settingName != "dmcaplimitbutton")
         {
            this._SafeStr_2000();
            this._SafeStr_1975();
         }
         else
         {
            this._SafeStr_589();
            this._SafeStr_1159();
         }
         if(this.hosting)
         {
            this._SafeStr_1133();
         }
      }
      
      public function _SafeStr_2193(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_340();
         this._SafeStr_2399 = addChild(new _SafeCls_214());
         this._SafeStr_2399.x = 365;
         this._SafeStr_2399.y = 250;
         if(this.hosting)
         {
            if(Math.sqrt(this.localStatsArray[5]) / 10 > this._SafeStr_361)
            {
               this._SafeStr_2000();
            }
            else
            {
               this._SafeStr_406();
            }
         }
         else
         {
            this._SafeStr_2399.resetsettingsbutton.visible = false;
         }
         this._SafeStr_2399.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_470);
         this._SafeStr_1975();
      }
      
      public function _SafeStr_470(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_589();
         this._SafeStr_1159();
         removeChild(this._SafeStr_2399);
      }
      
      public function _SafeStr_2045(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_340();
         this._SafeStr_2145 = addChild(new _SafeCls_199());
         this._SafeStr_2145.x = 365;
         this._SafeStr_2145.y = 250;
         if(this.hosting)
         {
            if(Math.sqrt(this.localStatsArray[5]) / 10 > this._SafeStr_361)
            {
               this._SafeStr_2145.cantshoot0button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.cantshoot1button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.cantshoot2button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.cantshoot3button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.juggernaut0button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.juggernaut1button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.juggernaut2button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.juggernaut3button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.slidy0button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.slidy1button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.slidy2button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.slidy3button.addEventListener(MouseEvent.CLICK,this.changeAdvancedSetting);
               this._SafeStr_2145.resetsettingsbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1065);
            }
            else
            {
               this._SafeStr_995(null);
            }
         }
         else
         {
            this._SafeStr_2145.resetsettingsbutton.visible = false;
            this._SafeStr_2145.resetsettingstext.visible = false;
            this._SafeStr_2145.cantshoot0button.enabled = false;
            this._SafeStr_2145.cantshoot1button.enabled = false;
            this._SafeStr_2145.cantshoot2button.enabled = false;
            this._SafeStr_2145.cantshoot3button.enabled = false;
            this._SafeStr_2145.juggernaut0button.enabled = false;
            this._SafeStr_2145.juggernaut1button.enabled = false;
            this._SafeStr_2145.juggernaut2button.enabled = false;
            this._SafeStr_2145.juggernaut3button.enabled = false;
            this._SafeStr_2145.slidy0button.enabled = false;
            this._SafeStr_2145.slidy1button.enabled = false;
            this._SafeStr_2145.slidy2button.enabled = false;
            this._SafeStr_2145.slidy3button.enabled = false;
         }
         this._SafeStr_1709();
         this._SafeStr_2145.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2446);
      }
      
      public function _SafeStr_1065(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1387.team0CantShoot = false;
         this._SafeStr_1387.team1CantShoot = false;
         this._SafeStr_1387.team2CantShoot = false;
         this._SafeStr_1387.team3CantShoot = false;
         this._SafeStr_1387.team0Juggernaut = false;
         this._SafeStr_1387.team1Juggernaut = false;
         this._SafeStr_1387.team2Juggernaut = false;
         this._SafeStr_1387.team3Juggernaut = false;
         this._SafeStr_1387.team0Slidy = false;
         this._SafeStr_1387.team1Slidy = false;
         this._SafeStr_1387.team2Slidy = false;
         this._SafeStr_1387.team3Slidy = false;
         this._SafeStr_1709();
         this._SafeStr_1133();
      }
      
      public function _SafeStr_2446(param1:MouseEvent = null) : *
      {
         removeChild(this._SafeStr_2145);
         this._SafeStr_2145 = null;
         this._SafeStr_589();
         this._SafeStr_1159();
         if(param1)
         {
            this.buttonClickSound();
         }
      }
      
      public function _SafeStr_1709() : *
      {
         this._SafeStr_2145.cantshoot0.htmlText = this.boolToString(this._SafeStr_1387.team0CantShoot);
         this._SafeStr_2145.cantshoot1.htmlText = this.boolToString(this._SafeStr_1387.team1CantShoot);
         this._SafeStr_2145.cantshoot2.htmlText = this.boolToString(this._SafeStr_1387.team2CantShoot);
         this._SafeStr_2145.cantshoot3.htmlText = this.boolToString(this._SafeStr_1387.team3CantShoot);
         this._SafeStr_2145.juggernaut0.htmlText = this.boolToString(this._SafeStr_1387.team0Juggernaut);
         this._SafeStr_2145.juggernaut1.htmlText = this.boolToString(this._SafeStr_1387.team1Juggernaut);
         this._SafeStr_2145.juggernaut2.htmlText = this.boolToString(this._SafeStr_1387.team2Juggernaut);
         this._SafeStr_2145.juggernaut3.htmlText = this.boolToString(this._SafeStr_1387.team3Juggernaut);
         this._SafeStr_2145.slidy0.htmlText = this.boolToString(this._SafeStr_1387.team0Slidy);
         this._SafeStr_2145.slidy1.htmlText = this.boolToString(this._SafeStr_1387.team1Slidy);
         this._SafeStr_2145.slidy2.htmlText = this.boolToString(this._SafeStr_1387.team2Slidy);
         this._SafeStr_2145.slidy3.htmlText = this.boolToString(this._SafeStr_1387.team3Slidy);
      }
      
      public function boolToString(param1:Boolean) : String
      {
         if(param1)
         {
            return "<font color=\'#993300\'>True";
         }
         return "<font color=\'#666666\'>False";
      }
      
      public function changeAdvancedSetting(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         switch(param1.target.name)
         {
            case "cantshoot0button":
               this._SafeStr_1387.team0CantShoot = !this._SafeStr_1387.team0CantShoot;
               break;
            case "cantshoot1button":
               this._SafeStr_1387.team1CantShoot = !this._SafeStr_1387.team1CantShoot;
               break;
            case "cantshoot2button":
               this._SafeStr_1387.team2CantShoot = !this._SafeStr_1387.team2CantShoot;
               break;
            case "cantshoot3button":
               this._SafeStr_1387.team3CantShoot = !this._SafeStr_1387.team3CantShoot;
               break;
            case "juggernaut0button":
               this._SafeStr_1387.team0Juggernaut = !this._SafeStr_1387.team0Juggernaut;
               break;
            case "juggernaut1button":
               this._SafeStr_1387.team1Juggernaut = !this._SafeStr_1387.team1Juggernaut;
               break;
            case "juggernaut2button":
               this._SafeStr_1387.team2Juggernaut = !this._SafeStr_1387.team2Juggernaut;
               break;
            case "juggernaut3button":
               this._SafeStr_1387.team3Juggernaut = !this._SafeStr_1387.team3Juggernaut;
               break;
            case "slidy0button":
               this._SafeStr_1387.team0Slidy = !this._SafeStr_1387.team0Slidy;
               break;
            case "slidy1button":
               this._SafeStr_1387.team1Slidy = !this._SafeStr_1387.team1Slidy;
               break;
            case "slidy2button":
               this._SafeStr_1387.team2Slidy = !this._SafeStr_1387.team2Slidy;
               break;
            case "slidy3button":
               this._SafeStr_1387.team3Slidy = !this._SafeStr_1387.team3Slidy;
         }
         if(this.hosting)
         {
            this._SafeStr_1133();
         }
         this._SafeStr_1709();
      }
      
      public function _SafeStr_2610() : Boolean
      {
         return Boolean(this._SafeStr_1387.team0CantShoot) || Boolean(this._SafeStr_1387.team1CantShoot) || Boolean(this._SafeStr_1387.team2CantShoot) || Boolean(this._SafeStr_1387.team3CantShoot) || Boolean(this._SafeStr_1387.team0Juggernaut) || Boolean(this._SafeStr_1387.team1Juggernaut) || Boolean(this._SafeStr_1387.team2Juggernaut) || Boolean(this._SafeStr_1387.team3Juggernaut) || Boolean(this._SafeStr_1387.team0Slidy) || Boolean(this._SafeStr_1387.team1Slidy) || Boolean(this._SafeStr_1387.team2Slidy) || Boolean(this._SafeStr_1387.team3Slidy);
      }
      
      public function _SafeStr_2508(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this.gameMode != 2)
         {
            this.teamPlay = !this.teamPlay;
            this._SafeStr_1133();
            this._SafeStr_1625();
            this._SafeStr_1159();
         }
      }
      
      public function toggleMouseAiming(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this.mouseAiming = !this.mouseAiming;
         this._SafeStr_1133();
         this._SafeStr_1159();
      }
      
      public function _SafeStr_1399(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1036 = !this._SafeStr_1036;
         this._SafeStr_1133();
         this._SafeStr_1159();
      }
      
      public function _SafeStr_1291(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_781 = !this._SafeStr_781;
         this._SafeStr_1133();
         this._SafeStr_1159();
      }
      
      public function _SafeStr_822(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this._SafeStr_1387.bulletMaxBounces == 99)
         {
            this._SafeStr_1387.bulletMaxBounces = 1;
         }
         else
         {
            this._SafeStr_1387.bulletMaxBounces = 99;
         }
         this._SafeStr_1133();
         this._SafeStr_1159();
      }
      
      public function _SafeStr_1013(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1296 = !this._SafeStr_1296;
         this._SafeStr_1133();
         this._SafeStr_1159();
         this._SafeStr_1625();
      }
      
      public function toggleMode(param1:MouseEvent) : *
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         if(param1)
         {
            this.buttonClickSound();
         }
         ++this.gameMode;
         if(this.gameMode == 3)
         {
            this.gameMode = 0;
            this.teamPlay = this._SafeStr_1119;
         }
         if(this.gameMode == 2)
         {
            this._SafeStr_1119 = this.teamPlay;
            this.teamPlay = true;
            this.levelChosen = 12;
            this.lobbyMapIDForJoinList = String(this.levelChosen + 1);
            this._SafeStr_2240.gotoAndStop(this.levelChosen + 1);
            this.lobbyRemoveMapPreview();
            this.custommapnamelabel.visible = false;
            this.custommapnametext.visible = false;
            this.custommapauthorlabel.visible = false;
            this.custommapauthortext.visible = false;
            this.sendStream.send("recvChangeMap",this.levelChosen);
            this.calculateMaxPlayers();
         }
         else if(this.gameMode == 0)
         {
            this.levelChosen = 0;
            this.lobbyMapIDForJoinList = String(this.levelChosen + 1);
            this._SafeStr_2240.gotoAndStop(this.levelChosen + 1);
            this.lobbyRemoveMapPreview();
            this.custommapnamelabel.visible = false;
            this.custommapnametext.visible = false;
            this.custommapauthorlabel.visible = false;
            this.custommapauthortext.visible = false;
            this.sendStream.send("recvChangeMap",this.levelChosen);
            this.calculateMaxPlayers();
         }
         if(this._SafeStr_1387.tankFullHealth == this.tankFullHealthStock)
         {
            _loc2_ = false;
         }
         else
         {
            _loc2_ = true;
         }
         if(this._SafeStr_1387.bulletsPerMag == this.bulletsPerMagStock)
         {
            _loc3_ = false;
         }
         else
         {
            _loc3_ = true;
         }
         if(this.gameMode == 0)
         {
            this.tankFullHealthStock = this.tankFullHealthStockNormal;
            this.bulletsPerMagStock = this.bulletsPerMagStockNormal;
         }
         else if(this.gameMode == 1)
         {
            this.tankFullHealthStock = this.tankFullHealthStockDeathmatch;
            this.bulletsPerMagStock = this.bulletsPerMagStockNormal;
         }
         else if(this.gameMode == 2)
         {
            this.tankFullHealthStock = this.tankFullHealthStockCtf;
            this.bulletsPerMagStock = this.bulletsPerMagStockCtf;
         }
         if(!_loc2_)
         {
            this._SafeStr_1387.tankFullHealth = this.tankFullHealthStock;
         }
         if(!_loc3_)
         {
            this._SafeStr_1387.bulletsPerMag = this.bulletsPerMagStock;
         }
         this._SafeStr_1133();
         this._SafeStr_1159();
         this._SafeStr_1625();
      }
      
      public function _SafeStr_2156(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1387.tankFullHealth = this.tankFullHealthStock;
         this._SafeStr_1387.gunFireInterval = this.gunFireIntervalStock;
         this._SafeStr_1387.bulletsPerMag = this.bulletsPerMagStock;
         this._SafeStr_1387.engineSpeed = this.engineSpeedStock;
         this._SafeStr_1387.bulletStayTime = this.bulletStayTimeStock;
         this._SafeStr_1387.bulletMoveSpeed = this.bulletMoveSpeedStock;
         if(this.hosting)
         {
            this._SafeStr_1133();
         }
         this._SafeStr_1975();
         this._SafeStr_1159();
      }
      
      public function _SafeStr_1133() : *
      {
         this.sendStream.send("recvSettings",this.teamPlay,this._SafeStr_1387,this.mouseAiming,this._SafeStr_1036,this._SafeStr_781,this._SafeStr_1296,this.gameMode,this.deathmatchKillLimit,this.ctfCaptureLimit);
      }
      
      public function recvSettings(param1:*, param2:*, param3:*, param4:*, param5:*, param6:*, param7:*, param8:*, param9:*) : *
      {
         if(this._SafeStr_1579)
         {
            this.teamPlay = param1;
            this._SafeStr_1387 = param2;
            this.mouseAiming = param3;
            this._SafeStr_1036 = param4;
            this._SafeStr_781 = param5;
            this._SafeStr_1296 = param6;
            this.gameMode = param7;
            this.deathmatchKillLimit = param8;
            this.ctfCaptureLimit = param9;
            try
            {
               if(this._SafeStr_781)
               {
                  this._SafeStr_846.upgradesdisabledtext.visible = false;
                  this._SafeStr_846.loadoutgood.visible = true;
                  this._SafeStr_846.loadoutbad.visible = true;
               }
               else
               {
                  this._SafeStr_846.upgradesdisabledtext.visible = true;
                  this._SafeStr_846.loadoutgood.visible = false;
                  this._SafeStr_846.loadoutbad.visible = false;
               }
            }
            catch(e:Error)
            {
            }
            if(this.gameMode == 0)
            {
               this.tankFullHealthStock = this.tankFullHealthStockNormal;
               this.bulletsPerMagStock = this.bulletsPerMagStockNormal;
            }
            else if(this.gameMode == 1)
            {
               this.tankFullHealthStock = this.tankFullHealthStockDeathmatch;
               this.bulletsPerMagStock = this.bulletsPerMagStockNormal;
            }
            else if(this.gameMode == 2)
            {
               this.tankFullHealthStock = this.tankFullHealthStockCtf;
               this.bulletsPerMagStock = this.bulletsPerMagStockCtf;
            }
            this._SafeStr_1159();
            this._SafeStr_1625();
            if(Boolean(this._SafeStr_2399) && Boolean(this._SafeStr_2399.stage))
            {
               this._SafeStr_1975();
            }
         }
      }
      
      public function _SafeStr_1159() : *
      {
         var _loc1_:String = null;
         if(!this.teamPlay)
         {
            _loc1_ = "<font color=\'#999999\'>Teamplay: OFF<br>";
         }
         else
         {
            _loc1_ = "<font color=\'#333333\'>Teamplay: <font color=\'#BB1111\'>ON<br>";
         }
         if(!this.mouseAiming)
         {
            _loc1_ += "<font color=\'#333333\'>Mouse aiming: <font color=\'#BB1111\'>OFF<br>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>Mouse aiming: <font color=\'#BB1111\'>ON<br>";
         }
         if(this._SafeStr_1036)
         {
            _loc1_ += "<font color=\'#999999\'>View distance: Normal<br>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>View distance: <font color=\'#BB1111\'>CLOSE<br>";
         }
         if(this._SafeStr_1387.bulletMaxBounces == 99)
         {
            _loc1_ += "<font color=\'#999999\'>Bullets bounce: ON<br>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>Bullets bounce: <font color=\'#BB1111\'>OFF<br>";
         }
         if(this._SafeStr_1296)
         {
            _loc1_ += "<font color=\'#999999\'>Tank powerups: ON<br>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>Tank powerups: <font color=\'#BB1111\'>OFF<br>";
         }
         this.settingstextleft.htmlText = _loc1_;
         _loc1_ = "";
         _loc1_ += "<font color=\'#333333\'>";
         if(this.gameMode == 0)
         {
            _loc1_ += "Mode: Last tank alive<br>";
         }
         else if(this.gameMode == 1)
         {
            _loc1_ += "Mode: Deathmatch<br>";
         }
         else if(this.gameMode == 2)
         {
            _loc1_ += "Mode: Capture the Flag<br>";
         }
         if(this.gameMode == 1)
         {
            _loc1_ += "Kill limit: " + this.deathmatchKillLimit + "<br>";
            this.dmcaplimitbutton.x = 656;
            this._SafeStr_2428.x = 658;
            this._SafeStr_2428.y = 298;
            this._SafeStr_1615.x = 661;
            this._SafeStr_1615.y = 325;
         }
         else if(this.gameMode == 2)
         {
            _loc1_ += "Capture limit: " + this.ctfCaptureLimit + "<br>";
            this.dmcaplimitbutton.x = 656;
            this._SafeStr_2428.x = 658;
            this._SafeStr_2428.y = 298;
            this._SafeStr_1615.x = 661;
            this._SafeStr_1615.y = 325;
         }
         else
         {
            this.dmcaplimitbutton.x = 3000;
            this._SafeStr_2428.x = 656;
            this._SafeStr_2428.y = 272;
            this._SafeStr_1615.x = 658;
            this._SafeStr_1615.y = 298;
         }
         if(this._SafeStr_1387.tankFullHealth == this.tankFullHealthStock && this._SafeStr_1387.bulletsPerMag == this.bulletsPerMagStock && this._SafeStr_1387.engineSpeed == this.engineSpeedStock && this._SafeStr_1387.bulletStayTime == this.bulletStayTimeStock && this._SafeStr_1387.gunFireInterval == this.gunFireIntervalStock && this._SafeStr_1387.bulletMoveSpeed == this.bulletMoveSpeedStock)
         {
            _loc1_ += "<font color=\'#999999\'>Custom tanks: OFF<br>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>Custom tanks: <font color=\'#BB1111\'>ON<br>";
         }
         if(this._SafeStr_2610() == false)
         {
            _loc1_ += "<font color=\'#999999\'>Advanced settings<br>";
         }
         else
         {
            _loc1_ += "<font color=\'#BB1111\'>Advanced settings<br>";
         }
         this.settingstextright.htmlText = _loc1_;
      }
      
      public function _SafeStr_1975() : *
      {
         var _loc1_:String = null;
         _loc1_ = "";
         if(this._SafeStr_1387.tankFullHealth == this.tankFullHealthStock)
         {
            _loc1_ += "<font color=\'#999999\'>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>";
         }
         _loc1_ += "Starting health: " + this._SafeStr_1387.tankFullHealth + "<br>";
         if(this._SafeStr_1387.bulletsPerMag == this.bulletsPerMagStock)
         {
            _loc1_ += "<font color=\'#999999\'>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>";
         }
         _loc1_ += "Magazine size: " + this._SafeStr_1387.bulletsPerMag + "<br>";
         if(this._SafeStr_1387.engineSpeed == this.engineSpeedStock)
         {
            _loc1_ += "<font color=\'#999999\'>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>";
         }
         _loc1_ += "Engine power: " + this._SafeStr_1387.engineSpeed + "<br>";
         this._SafeStr_2399.settingstextleft.htmlText = _loc1_;
         _loc1_ = "";
         if(this._SafeStr_1387.bulletStayTime == this.bulletStayTimeStock)
         {
            _loc1_ += "<font color=\'#999999\'>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>";
         }
         _loc1_ += "Bullet stay time: " + this._SafeStr_1387.bulletStayTime / 1000 + "<br>";
         if(this._SafeStr_1387.gunFireInterval == this.gunFireIntervalStock)
         {
            _loc1_ += "<font color=\'#999999\'>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>";
         }
         _loc1_ += "Bullet fire rate: " + 1 / (this._SafeStr_1387.gunFireInterval / 1000) + "<br>";
         if(this._SafeStr_1387.bulletMoveSpeed == this.bulletMoveSpeedStock)
         {
            _loc1_ += "<font color=\'#999999\'>";
         }
         else
         {
            _loc1_ += "<font color=\'#333333\'>";
         }
         _loc1_ += "Bullet move speed: " + this._SafeStr_1387.bulletMoveSpeed + "<br>";
         if(this.hosting)
         {
            this._SafeStr_2399.resetsettingstext.visible = true;
         }
         else
         {
            this._SafeStr_2399.resetsettingstext.visible = false;
         }
         this._SafeStr_2399.settingstextright.htmlText = _loc1_;
      }
      
      public function _SafeStr_833(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this.hosting)
         {
            this._SafeStr_2501 = addChild(new _SafeCls_206());
            this._SafeStr_2501.x = 365;
            this._SafeStr_2501.y = 250;
            switch(param1.target.name)
            {
               case "kickbutton0":
                  this._SafeStr_2501.whichTankToBeKicked = this._SafeStr_2067[0];
                  break;
               case "kickbutton1":
                  this._SafeStr_2501.whichTankToBeKicked = this._SafeStr_2067[1];
                  break;
               case "kickbutton2":
                  this._SafeStr_2501.whichTankToBeKicked = this._SafeStr_2067[2];
                  break;
               case "kickbutton3":
                  this._SafeStr_2501.whichTankToBeKicked = this._SafeStr_2067[3];
            }
            this._SafeStr_2501.kicktext.text = this.fixUsernameString(String(this.tankNameArray[this._SafeStr_2501.whichTankToBeKicked]));
            this._SafeStr_2501.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1334);
            this._SafeStr_2501.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1229);
         }
      }
      
      public function _SafeStr_1229(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         removeChild(this._SafeStr_2501);
      }
      
      public function _SafeStr_1334(param1:MouseEvent = null) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this.hosting)
         {
            _loc2_ = Number(this._SafeStr_2501.whichTankToBeKicked);
            _loc3_ = new Object();
            _loc3_.tankName = this.tankNameArray[_loc2_];
            _loc3_.tankMachineKey = this._SafeStr_1300[_loc2_];
            this._SafeStr_2114.push(_loc3_);
            this._SafeStr_770(_loc2_);
         }
         this._SafeStr_1229();
      }
      
      public function _SafeStr_770(param1:*) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_1024.length)
         {
            if(this._SafeStr_1024[_loc2_].farID == this._SafeStr_1250[param1])
            {
               this.sendStream.send("recvLocalKick",param1);
               this._SafeStr_1024[_loc2_].close();
               this._SafeStr_812(this._SafeStr_1250[param1],true);
               break;
            }
            _loc2_++;
         }
      }
      
      public function recvLocalKick(param1:Number) : *
      {
         trace("recvLocalKick");
         if(this.localTankID == param1)
         {
            trace("we\'re being kicked");
            if(!this.inGame && !this.inLobby)
            {
               this.connectionTimeout();
            }
            else
            {
               this._SafeStr_952();
               this._SafeStr_2062();
            }
         }
      }
      
      public function _SafeStr_2182(param1:MouseEvent) : *
      {
         switch(param1.target.name)
         {
            case "tank0changecolourbutton":
               this._SafeStr_2533 = this._SafeStr_2067[0];
               break;
            case "tank1changecolourbutton":
               this._SafeStr_2533 = this._SafeStr_2067[1];
               break;
            case "tank2changecolourbutton":
               this._SafeStr_2533 = this._SafeStr_2067[2];
               break;
            case "tank3changecolourbutton":
               this._SafeStr_2533 = this._SafeStr_2067[3];
         }
         if(Boolean(this._SafeStr_2147[this._SafeStr_2533]) && !this.isUserAGuest(this.tankNameArray[this._SafeStr_2533]))
         {
            this._SafeStr_1892.visible = true;
            addEventListener(Event.ENTER_FRAME,this.statswindowsnap);
            this._SafeStr_713(this._SafeStr_2533);
         }
      }
      
      public function _SafeStr_842(param1:MouseEvent) : *
      {
         this._SafeStr_1892.visible = false;
         removeEventListener(Event.ENTER_FRAME,this.statswindowsnap);
         this._SafeStr_1892.x = -500;
      }
      
      public function statswindowsnap(param1:Event) : *
      {
         this._SafeStr_1892.x = stage.mouseX + 5;
         this._SafeStr_1892.y = stage.mouseY + 5;
      }
      
      public function _SafeStr_713(param1:Number) : *
      {
         this._SafeStr_1892.playerstatsname.text = this.fixUsernameString(this.tankNameArray[param1]);
         if(this.tankNameArray[param1] == "Chaz")
         {
            this._SafeStr_1892.playerstatstitle.text = "Creator of Tiny Tanks";
         }
         else if(this.tankNameArray[param1] == "Master1")
         {
            this._SafeStr_1892.playerstatstitle.text = "Generally Awesome";
         }
         else if(this.tankTitleArray[param1] != "")
         {
            this._SafeStr_1892.playerstatstitle.text = this.tankTitleArray[param1];
         }
         else
         {
            this._SafeStr_1892.playerstatstitle.text = this.getPlayerTitle(Math.floor(Math.sqrt(this.tankStatsArray[param1][5]) / 10));
         }
         if(this.tankStatsArray[param1][0])
         {
            this._SafeStr_1892.kills.text = this.tankStatsArray[param1][0];
         }
         else
         {
            this._SafeStr_1892.kills.text = "--";
         }
         if(this.tankStatsArray[param1][1])
         {
            this._SafeStr_1892.deaths.text = this.tankStatsArray[param1][1];
         }
         else
         {
            this._SafeStr_1892.deaths.text = "--";
         }
         if(this.tankStatsArray[param1][2])
         {
            this._SafeStr_1892.roundwins.text = this.tankStatsArray[param1][2];
         }
         else
         {
            this._SafeStr_1892.roundwins.text = "--";
         }
         if(this.tankStatsArray[param1][3])
         {
            this._SafeStr_1892.roundlosses.text = this.tankStatsArray[param1][3];
         }
         else
         {
            this._SafeStr_1892.roundlosses.text = "--";
         }
         if(this.tankStatsArray[param1][5])
         {
            this._SafeStr_1892.level.text = Math.floor(Math.sqrt(this.tankStatsArray[param1][5]) / 10);
         }
         else
         {
            this._SafeStr_1892.level.text = "--";
         }
         while(this._SafeStr_1892.miniclipavatar.numChildren > 0)
         {
            this._SafeStr_1892.miniclipavatar.removeChildAt(0);
         }
         if(Boolean(this.tankNameArray[param1].substr(0,2) == "m#") && Boolean(this._SafeStr_1303[param1]) && this._SafeStr_912)
         {
            this._SafeStr_1892.miniclipavatar.addChild(this._SafeStr_1303[param1]);
            this._SafeStr_1892.miniclipavatar.addChild(new _SafeCls_256());
         }
      }
      
      public function _SafeStr_2154(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2578 = stage.addChild(new _SafeCls_229());
         this._SafeStr_2578.x = 365;
         this._SafeStr_2578.y = 250;
         this._SafeStr_2578.ownlevelbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1533,false,0,true);
         this._SafeStr_2578.someoneelsesbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_334,false,0,true);
         this._SafeStr_2578.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1052,false,0,true);
         this._SafeStr_2430.mouseEnabled = false;
      }
      
      public function _SafeStr_1533(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1052();
         this._SafeStr_1426();
      }
      
      public function _SafeStr_334(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1052();
         this._SafeStr_1497();
      }
      
      public function _SafeStr_1052(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_2578);
         this._SafeStr_2430.mouseEnabled = true;
      }
      
      public function _SafeStr_1426(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1381 = stage.addChild(new editorloadsavewindowmc());
         this._SafeStr_1381.x = 365;
         this._SafeStr_1381.y = 250;
         this._SafeStr_1381.loadsavegrid.setRendererStyle("textFormat",this._SafeStr_1796);
         this._SafeStr_1381.loadsavegrid.setStyle("headerTextFormat",this._SafeStr_1796);
         this._SafeStr_1381.loadsavegrid.setStyle("fontFamily",this._SafeStr_1974);
         this._SafeStr_1381.loadsavegrid.setStyle("embedFonts",true);
         this._SafeStr_1381.loadsavegrid.setRendererStyle("embedFonts",true);
         this._SafeStr_1381.loadbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2651,false,0,true);
         this._SafeStr_1381.savebutton.visible = false;
         this._SafeStr_1381.deletebutton.visible = false;
         this._SafeStr_1381.loadbutton.visible = true;
         this._SafeStr_1381.loadsavegrid.addEventListener(Event.CHANGE,this._SafeStr_1970,false,0,true);
         this.updateLoadSaveList(false,"lobby");
         this._SafeStr_748 = -1;
         this._SafeStr_1381.mapname.selectable = false;
         this._SafeStr_1381.greenhighlight.visible = false;
         this._SafeStr_1381.loadsavegrid.rowHeight = 35;
         this._SafeStr_1381.loadsavegrid.columns = ["Mapname","Mapauthor","Mapsize"];
         this._SafeStr_1381.loadsavegrid.columns[0].width = 200;
         this._SafeStr_1381.loadsavegrid.columns[1].width = 130;
         this._SafeStr_1381.loadsavegrid.columns[2].width = 90;
         this._SafeStr_1381.loadsavegrid.showHeaders = false;
         this._SafeStr_1381.loadsavegrid.resizableColumns = false;
         this._SafeStr_1381.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_788,false,0,true);
      }
      
      public function _SafeStr_788(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_1381);
         stage.focus = this._SafeStr_701;
      }
      
      public function _SafeStr_2651(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this._SafeStr_748 != -1)
         {
            this._SafeStr_788(null);
            this.lobbyCustomMapName = this._SafeStr_1164[this._SafeStr_748 - 1][0];
            this.lobbyCustomMapAuthor = this._SafeStr_1164[this._SafeStr_748 - 1][1];
            this.lobbyCustomMapSize = this._SafeStr_1164[this._SafeStr_748 - 1][2];
            this.customLevelArray = this._SafeStr_1164[this._SafeStr_748 - 1][3].slice();
            this.customLevelCameraArray = this._SafeStr_1164[this._SafeStr_748 - 1][4].slice();
            this.customLevelSpawnArray = this._SafeStr_1164[this._SafeStr_748 - 1][5].slice();
            this.entireCustomLevelData = this._SafeStr_1164[this._SafeStr_748 - 1].slice();
            this.custommapnametext.text = this.lobbyCustomMapName;
            this.custommapauthortext.text = this.fixUsernameString(this.lobbyCustomMapAuthor);
            this.custommapnamelabel.visible = true;
            this.custommapnametext.visible = true;
            this.custommapauthorlabel.visible = true;
            this.custommapauthortext.visible = true;
            this.lobbyRemoveMapPreview();
            this.lobbyMainDrawMapPreview(this._SafeStr_1164[this._SafeStr_748 - 1]);
            this.levelChosen = -1;
            this.sendStream.send("recvChangeMap",this.levelChosen,this._SafeStr_1164[this._SafeStr_748 - 1]);
            this.calculateMaxPlayers();
         }
      }
      
      public function _SafeStr_1970(param1:Event, param2:int = -1) : void
      {
         if(param2 != -1)
         {
            this._SafeStr_748 = param2;
         }
         else
         {
            this._SafeStr_748 = param1.target.selectedItem.Mapid + 1;
         }
         this._SafeStr_1381.mapname.text = this._SafeStr_1164[this._SafeStr_748 - 1][0];
         this._SafeStr_1381.authorname.text = this.fixUsernameString(this._SafeStr_1164[this._SafeStr_748 - 1][1]);
         this._SafeStr_1381.mapsize.text = this._SafeStr_1164[this._SafeStr_748 - 1][2];
         this.lobbyLoadWindowDrawMapPreview();
      }
      
      public function lobbyLoadWindowDrawMapPreview(param1:MouseEvent = null) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:Shape = null;
         this.lobbyTempLevelPreview = new editorbackgroundmc();
         _loc2_ = 4;
         while(_loc2_ < this._SafeStr_1164[this._SafeStr_748 - 1][3].length)
         {
            _loc4_ = this.lobbyTempLevelPreview.addChild(this._SafeStr_1326(this._SafeStr_1164[this._SafeStr_748 - 1][3][_loc2_][0]));
            _loc4_.x = this._SafeStr_1164[this._SafeStr_748 - 1][3][_loc2_][1];
            _loc4_.y = this._SafeStr_1164[this._SafeStr_748 - 1][3][_loc2_][2];
            _loc4_.rotation = this._SafeStr_1164[this._SafeStr_748 - 1][3][_loc2_][5];
            _loc4_.button.mouseEnabled = false;
            _loc2_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_1164[this._SafeStr_748 - 1][5].length)
         {
            _loc5_ = this.lobbyTempLevelPreview.addChild(new _SafeCls_220());
            _loc5_.x = this._SafeStr_1164[this._SafeStr_748 - 1][5][_loc3_][0];
            _loc5_.y = this._SafeStr_1164[this._SafeStr_748 - 1][5][_loc3_][1];
            _loc5_.rotation = this._SafeStr_1164[this._SafeStr_748 - 1][5][_loc3_][2];
            _loc5_.spinnybit.colour.gotoAndStop(_loc3_ % 4 + 1);
            _loc5_.barrel.colour.colour.gotoAndStop(_loc3_ % 4 + 1);
            _loc5_.tankmain.colour.gotoAndStop(_loc3_ % 4 + 1);
            _loc5_.skin.visible = false;
            _loc3_++;
         }
         if(this._SafeStr_1164[this._SafeStr_748 - 1][7])
         {
            if(!(this._SafeStr_1164[this._SafeStr_748 - 1][7][0][0] == -100 && this._SafeStr_1164[this._SafeStr_748 - 1][7][0][1] == -100 && this._SafeStr_1164[this._SafeStr_748 - 1][7][1][0] == -100 && this._SafeStr_1164[this._SafeStr_748 - 1][7][1][1] == -100))
            {
               _loc6_ = this.lobbyTempLevelPreview.addChild(new newflagmc());
               _loc6_.x = this._SafeStr_1164[this._SafeStr_748 - 1][7][0][0];
               _loc6_.y = this._SafeStr_1164[this._SafeStr_748 - 1][7][0][1];
               _loc6_ = this.lobbyTempLevelPreview.addChild(new newflagmc());
               _loc6_.x = this._SafeStr_1164[this._SafeStr_748 - 1][7][1][0];
               _loc6_.y = this._SafeStr_1164[this._SafeStr_748 - 1][7][1][1];
            }
         }
         if(this._SafeStr_1164[this._SafeStr_748 - 1][2] == "Large")
         {
            this.lobbyTempLevelPreview.gotoAndStop(1);
            this.lobbyTempLevelPreview.scaleX = 0.1667;
            this.lobbyTempLevelPreview.scaleY = 0.1667;
            this.lobbyTempLevelPreview.rotation = 2;
            this.lobbyTempLevelPreview.scrollRect = new Rectangle(20,20,860,860);
         }
         else if(this._SafeStr_1164[this._SafeStr_748 - 1][2] == "Small")
         {
            this.lobbyTempLevelPreview.gotoAndStop(2);
            this.lobbyTempLevelPreview.scaleX = 0.2031;
            this.lobbyTempLevelPreview.scaleY = 0.2031;
            this.lobbyTempLevelPreview.rotation = 2;
            this.lobbyTempLevelPreview.scrollRect = new Rectangle(26,32,704,704);
         }
         else
         {
            this.lobbyTempLevelPreview.gotoAndStop(3);
            this.lobbyTempLevelPreview.scaleX = 0.121;
            this.lobbyTempLevelPreview.scaleY = 0.121;
            this.lobbyTempLevelPreview.rotation = 2;
            this.lobbyTempLevelPreview.scrollRect = new Rectangle(-35,40,1180,1180);
            _loc7_ = new Shape();
            _loc7_.graphics.beginFill(14998541);
            _loc7_.graphics.drawRect(-100,0,100,1300);
            _loc7_.graphics.drawRect(1100,0,100,1300);
            _loc7_.graphics.endFill();
            this.lobbyTempLevelPreview.addChild(_loc7_);
         }
         this.lobbyTempLevelPreview.cacheAsBitmap = true;
         this.lobbyTempLevelPreview.smoothing = true;
         this._SafeStr_1381.addChild(this.lobbyTempLevelPreview);
         this.lobbyTempLevelPreview.x = 37;
         this.lobbyTempLevelPreview.y = -184;
      }
      
      public function lobbyMainDrawMapPreview(param1:Array = null) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:Shape = null;
         this.lobbyMainLevelPreview = new editorbackgroundmc();
         _loc2_ = 4;
         while(_loc2_ < param1[3].length)
         {
            _loc4_ = this.lobbyMainLevelPreview.addChild(this._SafeStr_1326(param1[3][_loc2_][0]));
            _loc4_.x = param1[3][_loc2_][1];
            _loc4_.y = param1[3][_loc2_][2];
            _loc4_.rotation = param1[3][_loc2_][5];
            _loc4_.button.mouseEnabled = false;
            _loc2_++;
         }
         _loc3_ = 0;
         while(_loc3_ < param1[5].length)
         {
            _loc5_ = this.lobbyMainLevelPreview.addChild(new _SafeCls_220());
            _loc5_.x = param1[5][_loc3_][0];
            _loc5_.y = param1[5][_loc3_][1];
            _loc5_.rotation = param1[5][_loc3_][2];
            _loc5_.spinnybit.colour.gotoAndStop(_loc3_ % 4 + 1);
            _loc5_.barrel.colour.colour.gotoAndStop(_loc3_ % 4 + 1);
            _loc5_.tankmain.colour.gotoAndStop(_loc3_ % 4 + 1);
            _loc5_.skin.visible = false;
            _loc3_++;
         }
         if(param1[7])
         {
            if(!(param1[7][0][0] == -100 && param1[7][0][1] == -100 && param1[7][1][0] == -100 && param1[7][1][1] == -100))
            {
               _loc6_ = this.lobbyMainLevelPreview.addChild(new newflagmc());
               _loc6_.x = param1[7][0][0];
               _loc6_.y = param1[7][0][1];
               _loc6_ = this.lobbyMainLevelPreview.addChild(new newflagmc());
               _loc6_.x = param1[7][1][0];
               _loc6_.y = param1[7][1][1];
            }
         }
         if(param1[2] == "Large")
         {
            this.lobbyMainLevelPreview.gotoAndStop(1);
            this.lobbyMainLevelPreview.scaleX = 0.1667;
            this.lobbyMainLevelPreview.scaleY = 0.1667;
            this.lobbyMainLevelPreview.rotation = 2;
            this.lobbyMainLevelPreview.scrollRect = new Rectangle(20,20,860,860);
         }
         else if(param1[2] == "Small")
         {
            this.lobbyMainLevelPreview.gotoAndStop(2);
            this.lobbyMainLevelPreview.scaleX = 0.2031;
            this.lobbyMainLevelPreview.scaleY = 0.2031;
            this.lobbyMainLevelPreview.rotation = 2;
            this.lobbyMainLevelPreview.scrollRect = new Rectangle(26,32,704,704);
         }
         else
         {
            this.lobbyMainLevelPreview.gotoAndStop(3);
            this.lobbyMainLevelPreview.scaleX = 0.121;
            this.lobbyMainLevelPreview.scaleY = 0.121;
            this.lobbyMainLevelPreview.rotation = 2;
            this.lobbyMainLevelPreview.scrollRect = new Rectangle(-35,40,1180,1180);
            _loc7_ = new Shape();
            _loc7_.graphics.beginFill(14998541);
            _loc7_.graphics.drawRect(-100,0,100,1300);
            _loc7_.graphics.drawRect(1100,0,100,1300);
            _loc7_.graphics.endFill();
            this.lobbyMainLevelPreview.addChild(_loc7_);
         }
         this.lobbyMainLevelPreview.cacheAsBitmap = true;
         this.lobbyMainLevelPreview.smoothing = true;
         this._SafeStr_2240.addChild(this.lobbyMainLevelPreview);
         this.lobbyMainLevelPreview.x = -70;
         this.lobbyMainLevelPreview.y = -75;
      }
      
      public function lobbyRemoveMapPreview() : *
      {
         try
         {
            this._SafeStr_1381.removeChild(this.lobbyTempLevelPreview);
         }
         catch(e:Error)
         {
         }
         try
         {
            this._SafeStr_2240.removeChild(this.lobbyMainLevelPreview);
         }
         catch(e:Error)
         {
         }
         this.lobbyTempLevelPreview = null;
         this.lobbyMainLevelPreview = null;
      }
      
      public function _SafeStr_927(param1:MouseEvent) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this.hosting)
         {
            this._SafeStr_340();
            switch(param1.target.name)
            {
               case "tank0aibutton":
                  _loc2_ = Number(this._SafeStr_2067[0]);
                  break;
               case "tank1aibutton":
                  _loc2_ = Number(this._SafeStr_2067[1]);
                  break;
               case "tank2aibutton":
                  _loc2_ = Number(this._SafeStr_2067[2]);
                  break;
               case "tank3aibutton":
                  _loc2_ = Number(this._SafeStr_2067[3]);
            }
            if(this._SafeStr_430[_loc2_])
            {
               _loc3_ = true;
            }
            else
            {
               _loc3_ = false;
            }
            this._SafeStr_629(_loc2_,_loc3_);
         }
      }
      
      public function _SafeStr_629(param1:Number, param2:Boolean) : void
      {
         var _loc3_:* = undefined;
         this._SafeStr_1761 = addChild(new _SafeCls_200());
         this._SafeStr_1761.x = 365;
         this._SafeStr_1761.y = 250;
         if(param1 == -1)
         {
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_2147.length)
            {
               if(this._SafeStr_2147[_loc3_] == false)
               {
                  param1 = _loc3_;
                  break;
               }
               _loc3_++;
            }
         }
         this._SafeStr_1761.tankID = param1;
         this._SafeStr_1761.alreadyExist = param2;
         this._SafeStr_1761.settingslider.addEventListener(SliderEvent.CHANGE,this._SafeStr_712);
         if(param2 == false)
         {
            this._SafeStr_1761.toptext.text = "Add CPU Player";
            this._SafeStr_1761.skillnametext.text = "Average";
            this._SafeStr_1761.settingslider.value = 2;
            this._SafeStr_1761.backbutton.visible = true;
            this._SafeStr_1761.removebutton.visible = false;
            this._SafeStr_1761.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1779);
            this._SafeStr_1761.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2659);
         }
         else
         {
            this._SafeStr_1761.toptext.text = "Change CPU Player";
            this._SafeStr_1761.skillnametext.text = this._SafeStr_711[this._SafeStr_1815[param1]];
            this._SafeStr_1761.settingslider.value = this._SafeStr_1815[param1];
            this._SafeStr_1761.backbutton.visible = false;
            this._SafeStr_1761.removebutton.visible = true;
            this._SafeStr_1761.removebutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2509);
            this._SafeStr_1761.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2659);
         }
      }
      
      public function _SafeStr_1779(param1:MouseEvent = null) : void
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         try
         {
            removeChild(this._SafeStr_1761);
            this._SafeStr_589();
         }
         catch(e:Error)
         {
         }
      }
      
      public function _SafeStr_2659(param1:MouseEvent = null) : *
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2147[this._SafeStr_1761.tankID] = true;
         this.tankNameArray[this._SafeStr_1761.tankID] = "guest_CPU-" + this._SafeStr_711[this._SafeStr_1761.settingslider.value];
         switch(this._SafeStr_1761.settingslider.value)
         {
            case 0:
               this._SafeStr_2011[this._SafeStr_1761.tankID] = [0,1,2,12,16];
               break;
            case 1:
               this._SafeStr_2011[this._SafeStr_1761.tankID] = [3,4,5,12,16];
               break;
            case 2:
               this._SafeStr_2011[this._SafeStr_1761.tankID] = [3,7,11,12,16];
               break;
            case 3:
               this._SafeStr_2011[this._SafeStr_1761.tankID] = [6,7,8,12,16];
               break;
            case 4:
               this._SafeStr_2011[this._SafeStr_1761.tankID] = [9,10,8,12,16];
         }
         this._SafeStr_430[this._SafeStr_1761.tankID] = true;
         this._SafeStr_1815[this._SafeStr_1761.tankID] = this._SafeStr_1761.settingslider.value;
         if(!this._SafeStr_1761.alreadyExist)
         {
            this._SafeStr_1233.push(this._SafeStr_1761.tankID);
            _loc2_ = "<font color=\'#3D4650\'>* " + this.fixUsernameString(this.tankNameArray[this._SafeStr_1761.tankID]) + " has been added</font> \n";
            this.allChatMessages += _loc2_;
            this._SafeStr_1546.htmlText += _loc2_;
            this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
            this.sendStream.send("recvChatMessage",this.localTankID,_loc2_,false);
         }
         this._SafeStr_1625();
         this.sendClientsAIJoined();
         this._SafeStr_1779();
         this._SafeStr_612();
      }
      
      public function _SafeStr_2509(param1:MouseEvent = null) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(param1)
         {
            this.buttonClickSound();
         }
         _loc2_ = "<font color=\'#4F3E3E\'>* " + this.fixUsernameString(this.tankNameArray[this._SafeStr_1761.tankID]) + " has been removed</font> \n";
         this.allChatMessages += _loc2_;
         this._SafeStr_1546.htmlText += _loc2_;
         this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
         this.sendStream.send("recvChatMessage",this.localTankID,_loc2_,false);
         this._SafeStr_2147[this._SafeStr_1761.tankID] = false;
         this._SafeStr_451[this._SafeStr_1761.tankID] = false;
         this.tankNameArray[this._SafeStr_1761.tankID] = "";
         this._SafeStr_430[this._SafeStr_1761.tankID] = false;
         this._SafeStr_1815[this._SafeStr_1761.tankID] = null;
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_1233.length)
         {
            if(this._SafeStr_1233[_loc3_] == this._SafeStr_1761.tankID)
            {
               this._SafeStr_1233.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         this._SafeStr_1625();
         this.sendClientsAIRemoved();
         this._SafeStr_1779();
         this._SafeStr_612();
      }
      
      public function _SafeStr_712(param1:SliderEvent) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = param1.value;
         this._SafeStr_1761.skillnametext.text = this._SafeStr_711[_loc2_];
      }
      
      public function _SafeStr_270() : *
      {
         if(this.newLocalStatsToShow)
         {
            this._SafeStr_1428 = addChild(new _SafeCls_231());
            this._SafeStr_1428.x = 365;
            this._SafeStr_1428.y = 250;
            this._SafeStr_1248 = 0;
            this._SafeStr_1068 = setInterval(this.continueAward,350);
            this._SafeStr_1428.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_974);
            this._SafeStr_1428.okbutton.visible = false;
            this._SafeStr_1428.maprate.upbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_825);
            this._SafeStr_1428.maprate.downbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1998);
            this._SafeStr_1428.maprate.visible = false;
            this._SafeStr_1428.description.text = "";
            this._SafeStr_1428.multiplier.text = "";
            this._SafeStr_1428.amount.text = "";
            this._SafeStr_1428.totallabel.text = "";
            this._SafeStr_1428.total.text = "";
            this._SafeStr_1428.totalcoinslabel.text = "";
            this._SafeStr_1428.totalcoinsicon.visible = false;
            this._SafeStr_1428.totalcoins.text = "";
            this._SafeStr_1428.xpmultiplierlabel.text = "";
            this._SafeStr_1428.xpmultiplier.text = "";
            this._SafeStr_1428.currentlevel.text = "";
            this._SafeStr_1428.nextlevel.text = "";
            this._SafeStr_1428.progressbar.visible = false;
            this._SafeStr_1428.intprogress.visible = false;
            this._SafeStr_1428.inttarget.visible = false;
            this._SafeStr_1428.intslash.visible = false;
            this._SafeStr_1428.guestnotification.visible = false;
            this._SafeStr_1428.title.text = this._SafeStr_831 + " won!";
            this.newLocalStatsToShow = false;
         }
      }
      
      public function continueAward() : *
      {
         switch(this._SafeStr_1248)
         {
            case 0:
               if(this.newLocalStatsArray[0] > 0)
               {
                  this._SafeStr_1428.description.text = "Player killed\n";
                  this._SafeStr_1428.multiplier.text = "x" + this.newLocalStatsArray[0] + "\n";
                  if(this.gameMode == 0)
                  {
                     this._SafeStr_1428.amount.text = String(this.newLocalStatsArray[0] * this.expKillReward) + "xp\n";
                     this._SafeStr_1211 += this.newLocalStatsArray[0] * this.expKillReward;
                  }
                  else if(this.gameMode == 1)
                  {
                     this._SafeStr_1428.amount.text = String(this.newLocalStatsArray[0] * this.expKillRewardDM) + "xp\n";
                     this._SafeStr_1211 += this.newLocalStatsArray[0] * this.expKillRewardDM;
                  }
                  else if(this.gameMode == 2)
                  {
                     this._SafeStr_1428.amount.text = String(this.newLocalStatsArray[0] * this.expKillRewardCTF) + "xp\n";
                     this._SafeStr_1211 += this.newLocalStatsArray[0] * this.expKillRewardCTF;
                  }
                  this.playCoinSound();
                  ++this._SafeStr_1248;
                  return;
               }
               ++this._SafeStr_1248;
            case 1:
               if(this.newLocalStatsArray[6] > 0)
               {
                  this._SafeStr_1428.description.appendText("Bot killed\n");
                  this._SafeStr_1428.multiplier.appendText("x" + this.newLocalStatsArray[6] + "\n");
                  this._SafeStr_1428.amount.appendText(String(this.newLocalStatsArray[6] * this.expBotKillReward) + "xp\n");
                  this._SafeStr_1211 += this.newLocalStatsArray[6] * this.expBotKillReward;
                  this.playCoinSound();
                  ++this._SafeStr_1248;
                  return;
               }
               ++this._SafeStr_1248;
            case 2:
               if(this.newLocalStatsArray[9] > 0)
               {
                  this._SafeStr_1428.description.appendText("Hits landed\n");
                  this._SafeStr_1428.multiplier.appendText("x" + this.newLocalStatsArray[9] + "\n");
                  this._SafeStr_1428.amount.appendText(String(this.expHitReward * this.newLocalStatsArray[9]) + "xp\n");
                  this._SafeStr_1211 += this.expHitReward * this.newLocalStatsArray[9];
                  this.playCoinSound();
                  ++this._SafeStr_1248;
                  return;
               }
               ++this._SafeStr_1248;
            case 3:
               if(this.newLocalStatsArray[2] > 0)
               {
                  this._SafeStr_1428.description.appendText("Round won\n");
                  this._SafeStr_1428.amount.appendText(this.expWinReward + "xp\n");
                  this._SafeStr_1211 += this.expWinReward;
                  this.playCoinSound();
                  ++this._SafeStr_1248;
                  return;
               }
               ++this._SafeStr_1248;
            case 4:
               if(this.newLocalStatsArray[7] > 0)
               {
                  this._SafeStr_1428.description.appendText("Bot round won\n");
                  this._SafeStr_1428.amount.appendText(this.expBotWinReward + "xp\n");
                  this._SafeStr_1211 += this.expBotWinReward;
                  this.playCoinSound();
                  ++this._SafeStr_1248;
                  return;
               }
               ++this._SafeStr_1248;
               break;
            case 5:
               break;
            case 6:
               if(!this.isUserAGuest(this.localTankName))
               {
                  this._SafeStr_1428.totalcoins.text = this.newLocalStatsArray[8];
               }
               else
               {
                  this._SafeStr_1428.totalcoins.text = "0";
               }
               this._SafeStr_1428.totalcoinslabel.text = "earned:";
               this._SafeStr_1428.totalcoinsicon.visible = true;
               if(this.newLocalStatsArray[8] != 0)
               {
                  this.playCoinSound();
               }
               ++this._SafeStr_1248;
               return;
            case 7:
               if(!this.isUserAGuest(this.localTankName) && this.inLobby)
               {
                  addEventListener(Event.ENTER_FRAME,this._SafeStr_1391);
                  if(this.localCoinDrop > 0)
                  {
                     this._SafeStr_1428.coindropnotification.gotoAndPlay(2);
                     this._SafeStr_1428.coindropnotification.innermc.cointext.text = "You found " + this.localCoinDrop + " coins!";
                     trace("showing notification for " + this.localCoinDrop + " coins");
                     this.localCoinDrop = 0;
                     if(!this.muteSfx)
                     {
                        this.recvCoinSound.play();
                     }
                  }
               }
               else
               {
                  this._SafeStr_1428.guestnotification.visible = true;
                  this._SafeStr_1428.okbutton.visible = true;
                  this._SafeStr_1428.maprate.visible = false;
               }
            default:
               clearInterval(this._SafeStr_1068);
               return;
         }
         if(!this.isUserAGuest(this.localTankName))
         {
            this._SafeStr_1428.total.text = String(Math.floor(this._SafeStr_1211 * this._SafeStr_1921)) + "xp";
            this._SafeStr_1428.xpmultiplier.text = String(this._SafeStr_1921) + "x";
         }
         else
         {
            this._SafeStr_1428.total.text = 0 + "xp";
         }
         this._SafeStr_1428.totallabel.text = "Total XP earned:";
         this._SafeStr_1428.xpmultiplierlabel.text = "XP Multiplier:";
         this.playCoinSound();
         ++this._SafeStr_1248;
      }
      
      public function _SafeStr_1391(param1:Event) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         ++this._SafeStr_1358;
         _loc2_ = this._SafeStr_1358 / 60;
         _loc3_ = Number(Math.floor(Math.sqrt(this.tankStatsArray[this.localTankID][5] - (1 - _loc2_) * this._SafeStr_1211) / 10));
         _loc4_ = (_loc3_ + 1) * 10 * ((_loc3_ + 1) * 10) - _loc3_ * 10 * (_loc3_ * 10);
         _loc5_ = this.tankStatsArray[this.localTankID][5] - _loc3_ * 10 * (_loc3_ * 10);
         _loc6_ = (_loc5_ - (1 - _loc2_) * this._SafeStr_1211) / _loc4_;
         this._SafeStr_1428.progressbar.bar.width = 150 * _loc6_;
         this._SafeStr_1428.currentlevel.text = "level " + String(_loc3_);
         this._SafeStr_1428.nextlevel.text = "level " + String(_loc3_ + 1);
         this._SafeStr_1428.intprogress.text = Math.round(_loc5_ - (1 - _loc2_) * this._SafeStr_1211);
         this._SafeStr_1428.inttarget.text = _loc4_;
         this._SafeStr_1428.progressbar.visible = true;
         this._SafeStr_1428.intprogress.visible = true;
         this._SafeStr_1428.inttarget.visible = true;
         this._SafeStr_1428.intslash.visible = true;
         if(this._SafeStr_1358 == 60)
         {
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1391);
            if(_loc3_ > Math.floor(Math.sqrt(this.tankStatsArray[this.localTankID][5] - this._SafeStr_1211) / 10))
            {
               _loc7_ = "<font color=\'#305C34\'>*" + this.fixUsernameString(this.localTankName) + " is now level " + _loc3_ + "!</font> \n";
               this.allChatMessages += _loc7_;
               this._SafeStr_1546.htmlText += _loc7_;
               this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
               this.sendStream.send("recvChatMessage",this.localTankID,_loc7_);
               this._SafeStr_2368 = this._SafeStr_1428.addChild(new _SafeCls_228());
               this._SafeStr_2368.x = 0;
               this._SafeStr_2368.y = 0;
               this._SafeStr_2368.main.leveltext.text = String(_loc3_);
               this._SafeStr_1428.totalcoins.text = String(this.newLocalStatsArray[8] + 100);
               this._SafeStr_2368.main.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1166);
               if(!this.muteSfx)
               {
                  this.levelUpSound.play();
               }
            }
            if(this.isUserAGuest(this.localTankName) || Boolean(isNaN(this.oldVaultMapID)) || !isNaN(this.oldVaultMapID) && this._SafeStr_1514(this.oldVaultMapID) == true)
            {
               this._SafeStr_1428.okbutton.visible = true;
               this._SafeStr_1428.maprate.visible = false;
            }
            else
            {
               this._SafeStr_1428.okbutton.visible = false;
               this._SafeStr_1428.maprate.visible = true;
            }
         }
      }
      
      public function _SafeStr_1166(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2368.main.okbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_1166);
         this._SafeStr_1428.removeChild(this._SafeStr_2368);
      }
      
      public function playCoinSound() : *
      {
         var _loc1_:Number = NaN;
         if(!this.muteSfx)
         {
            _loc1_ = Number(Math.ceil(Math.random() * 6));
            this["coinSound" + _loc1_].play();
         }
      }
      
      public function _SafeStr_974(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         try
         {
            this._SafeStr_1428.okbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_974);
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1391);
            removeChild(this._SafeStr_1428);
         }
         catch(e:Error)
         {
         }
      }
      
      public function _SafeStr_2656(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         --this._SafeStr_2543;
         if(this._SafeStr_2543 < 0)
         {
            this._SafeStr_2543 = 0;
         }
         this._SafeStr_1003.y = 80 + 105 / 4 * this._SafeStr_2543;
         this._SafeStr_1625();
         this._SafeStr_2190();
      }
      
      public function _SafeStr_1541(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         ++this._SafeStr_2543;
         if(this._SafeStr_2543 > 4)
         {
            this._SafeStr_2543 = 4;
         }
         this._SafeStr_1003.y = 80 + 105 / 4 * this._SafeStr_2543;
         this._SafeStr_1625();
         this._SafeStr_2190();
      }
      
      public function triggerDrag(param1:MouseEvent) : *
      {
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this._SafeStr_835);
         stage.addEventListener(MouseEvent.MOUSE_UP,this._SafeStr_1684);
      }
      
      public function _SafeStr_835(param1:MouseEvent) : *
      {
         if(stage.mouseY < this._SafeStr_1003.y - 105 / 4)
         {
            this._SafeStr_2656();
         }
         if(stage.mouseY > this._SafeStr_1003.y + 105 / 4)
         {
            this._SafeStr_1541();
         }
      }
      
      public function _SafeStr_1684(param1:MouseEvent) : *
      {
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this._SafeStr_835);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this._SafeStr_1684);
      }
      
      public function calculateMaxPlayers() : *
      {
         if(this.levelChosen == -1)
         {
            this.levelChosenMaxPlayers = this.customLevelSpawnArray.length;
         }
         else
         {
            this.levelChosenMaxPlayers = this._SafeStr_1212[this.levelChosen].length;
         }
         if(this.inLobby)
         {
            this._SafeStr_1663.text = String(this.levelChosenMaxPlayers);
         }
      }
      
      public function _SafeStr_1047(param1:MouseEvent) : *
      {
         if(this.hosting)
         {
            if(param1)
            {
               this.buttonClickSound();
            }
            if(this._SafeStr_2322)
            {
               this._SafeStr_2322 = false;
               this._SafeStr_915();
            }
            else
            {
               this._SafeStr_2322 = true;
               this._SafeStr_915();
            }
            this.updateColourLockGraphic();
         }
      }
      
      public function updateColourLockGraphic() : *
      {
         if(this._SafeStr_2322)
         {
            this._SafeStr_2249.gotoAndStop(2);
         }
         else
         {
            this._SafeStr_2249.gotoAndStop(1);
         }
      }
      
      public function _SafeStr_915() : *
      {
         this.sendStream.send("recvColourLockChange",this._SafeStr_2322);
         this._SafeStr_562();
      }
      
      public function recvColourLockChange(param1:Boolean) : *
      {
         if(this._SafeStr_1579)
         {
            this._SafeStr_2322 = param1;
            this.updateColourLockGraphic();
         }
      }
      
      public function _SafeStr_562() : *
      {
         var _loc1_:String = null;
         if(this._SafeStr_2322)
         {
            _loc1_ = "<font color=\'#444444\'>*tank colors locked</font> \n";
         }
         else
         {
            _loc1_ = "<font color=\'#444444\'>*tank colors unlocked</font> \n";
         }
         this.allChatMessages += _loc1_;
         this._SafeStr_1546.htmlText += _loc1_;
         this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
         this.sendStream.send("recvChatMessage",this.localTankID,_loc1_);
      }
      
      public function _SafeStr_1497(param1:MouseEvent = null) : *
      {
         var _loc2_:DataGridColumn = null;
         var _loc3_:DataGridColumn = null;
         var _loc4_:DataGridColumn = null;
         var _loc5_:DataGridColumn = null;
         if(param1)
         {
            this.buttonClickSound();
         }
         this.levelvaultwindow = stage.addChild(new _SafeCls_230());
         this.levelvaultwindow.x = 365;
         this.levelvaultwindow.y = 250;
         this.levelvaultwindow.loadsavegrid.setRendererStyle("textFormat",this._SafeStr_2204);
         this.levelvaultwindow.loadsavegrid.setStyle("headerTextFormat",this._SafeStr_2204);
         this.levelvaultwindow.loadsavegrid.setStyle("fontFamily",this._SafeStr_1974);
         this.levelvaultwindow.loadsavegrid.setStyle("embedFonts",true);
         this.levelvaultwindow.loadsavegrid.setRendererStyle("embedFonts",true);
         this.levelvaultwindow.loadsavegrid.addEventListener(Event.CHANGE,this._SafeStr_1671,false,0,true);
         this.vaultUpdateList("newest",0,false,this.gameMode);
         this.levelvaultwindow.loadsavegrid.rowHeight = 29;
         _loc2_ = new DataGridColumn("Mapname");
         _loc2_.cellRenderer = _SafeCls_263;
         _loc3_ = new DataGridColumn("Mapauthor");
         _loc3_.cellRenderer = _SafeCls_263;
         _loc4_ = new DataGridColumn("Mapplayers");
         _loc4_.cellRenderer = _SafeCls_263;
         _loc5_ = new DataGridColumn("thumbsdifference");
         _loc5_.cellRenderer = _SafeCls_263;
         this.levelvaultwindow.loadsavegrid.columns = [_loc2_,_loc3_,_loc4_,_loc5_];
         this.levelvaultwindow.loadsavegrid.columns[0].width = 150;
         this.levelvaultwindow.loadsavegrid.columns[1].width = 150;
         this.levelvaultwindow.loadsavegrid.columns[2].width = 60;
         this.levelvaultwindow.loadsavegrid.columns[3].width = 60;
         this.levelvaultwindow.loadsavegrid.showHeaders = false;
         this.levelvaultwindow.loadsavegrid.resizableColumns = false;
         this.levelvaultwindow.backbutton.addEventListener(MouseEvent.CLICK,this.hideLevelVaultWindow,false,0,true);
         this.levelvaultwindow.sortbyratingweekbutton.visible = false;
         this.levelvaultwindow.sortbyratingmonthbutton.visible = false;
         this.levelvaultwindow.sortbyratingalltimebutton.visible = false;
         this.levelvaultwindow.sortbynewestbutton.visible = true;
         this.levelvaultwindow.sortbyratingweekbutton.addEventListener(MouseEvent.CLICK,this.levelVaultSortRating,false,0,true);
         this.levelvaultwindow.sortbyratingmonthbutton.addEventListener(MouseEvent.CLICK,this.levelVaultSortRating,false,0,true);
         this.levelvaultwindow.sortbyratingalltimebutton.addEventListener(MouseEvent.CLICK,this.levelVaultSortRating,false,0,true);
         this.levelvaultwindow.sortbynewestbutton.addEventListener(MouseEvent.CLICK,this.levelVaultSortRating,false,0,true);
         this.levelvaultwindow.loadbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2641,false,0,true);
         this.levelvaultwindow.searchbutton.button.addEventListener(MouseEvent.CLICK,this._SafeStr_1175,false,0,true);
         this.levelvaultwindow.searchtext.addEventListener(Event.CHANGE,this._SafeStr_1115,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_UP,this._SafeStr_1831,false,0,true);
      }
      
      public function _SafeStr_1831(param1:KeyboardEvent) : *
      {
         if(param1.keyCode == 13)
         {
            this._SafeStr_1175();
         }
      }
      
      public function _SafeStr_1115(param1:Event) : *
      {
         this.levelvaultwindow.searchbutton.gotoAndStop(1);
      }
      
      public function _SafeStr_1175(param1:MouseEvent = null) : *
      {
         if(this.levelvaultwindow.searchbutton.currentFrame == 1)
         {
            this.levelvaultwindow.searchbutton.gotoAndStop(2);
         }
         else
         {
            this.levelvaultwindow.searchtext.text = "";
            this.levelvaultwindow.searchbutton.gotoAndStop(1);
         }
         if(this.levelvaultwindow.sortbyratingweekbutton.visible == true)
         {
            this.vaultUpdateList("ratingweek",0,false,this.gameMode);
         }
         else if(this.levelvaultwindow.sortbyratingmonthbutton.visible == true)
         {
            this.vaultUpdateList("ratingmonth",0,false,this.gameMode);
         }
         else if(this.levelvaultwindow.sortbyratingalltimebutton.visible == true)
         {
            this.vaultUpdateList("ratingalltime",0,false,this.gameMode);
         }
         else if(this.levelvaultwindow.sortbynewestbutton.visible == true)
         {
            this.vaultUpdateList("newest",0,false,this.gameMode);
         }
      }
      
      public function _SafeStr_2641(param1:MouseEvent = null) : *
      {
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         var me:MouseEvent = param1;
         onComplete = function(param1:Event):void
         {
            var _loc2_:Number = NaN;
            var _loc3_:Array = null;
            var _loc4_:Array = null;
            var _loc5_:* = undefined;
            var _loc6_:* = undefined;
            var _loc7_:* = undefined;
            var _loc8_:Array = null;
            var _loc9_:* = undefined;
            var _loc10_:* = undefined;
            var _loc11_:* = undefined;
            var _loc12_:* = undefined;
            var _loc13_:* = undefined;
            var _loc14_:* = undefined;
            var _loc15_:* = undefined;
            var _loc16_:Number = NaN;
            var _loc17_:Number = NaN;
            _loc2_ = Number(param1.target.data["result"]);
            if(_loc2_ == 0)
            {
               trace("got the map, good");
               hideLevelVaultWindow(null);
               _loc3_ = param1.target.data["mapdata"].split("#");
               _loc3_[0] = _loc3_[0].split("@");
               _loc3_[1] = _loc3_[1].split("@");
               if(_loc3_[2])
               {
                  _loc8_ = _loc3_[2].split("@");
                  _loc3_[2] = [[_loc8_[0],_loc8_[1]],[_loc8_[2],_loc8_[3]]];
               }
               else
               {
                  _loc3_[2] = [[-100,-100],[-100,-100]];
               }
               _loc4_ = param1.target.data["aidata"].split("@");
               _loc5_ = 0;
               while(_loc5_ < _loc3_[0].length)
               {
                  _loc3_[0][_loc5_] = _loc3_[0][_loc5_].split(",");
                  _loc9_ = 0;
                  while(_loc9_ < _loc3_[0][_loc5_].length)
                  {
                     _loc3_[0][_loc5_][_loc9_] = Number(_loc3_[0][_loc5_][_loc9_]);
                     _loc9_++;
                  }
                  _loc5_++;
               }
               _loc6_ = 0;
               while(_loc6_ < _loc3_[1].length)
               {
                  _loc3_[1][_loc6_] = _loc3_[1][_loc6_].split(",");
                  _loc10_ = 0;
                  while(_loc10_ < _loc3_[1][_loc6_].length)
                  {
                     _loc3_[1][_loc6_][_loc10_] = Number(_loc3_[1][_loc6_][_loc10_]);
                     _loc10_++;
                  }
                  _loc6_++;
               }
               _loc7_ = 0;
               while(_loc7_ < _loc4_.length)
               {
                  _loc4_[_loc7_] = _loc4_[_loc7_].replace(",","");
                  _loc4_[_loc7_] = _loc4_[_loc7_].split(",");
                  _loc4_[_loc7_].splice(2,7);
                  _loc4_[_loc7_][2] = [0,0,0,0,0,0,0,0];
                  _loc11_ = 0;
                  while(_loc11_ < _loc4_[_loc7_].length)
                  {
                     if(_loc11_ == 0)
                     {
                        _loc12_ = _loc4_[_loc7_][0].indexOf("=") + 1;
                        _loc13_ = _loc4_[_loc7_][0].indexOf("y");
                        _loc14_ = _loc4_[_loc7_][0].lastIndexOf("=") + 1;
                        _loc15_ = _loc4_[_loc7_][0].lastIndexOf(")");
                        _loc16_ = Number(Number(_loc4_[_loc7_][0].substring(_loc12_,_loc13_)));
                        _loc17_ = Number(Number(_loc4_[_loc7_][0].substring(_loc14_,_loc15_)));
                        _loc4_[_loc7_][0] = new Point(_loc16_,_loc17_);
                     }
                     else if(_loc11_ == 1 || _loc11_ > 2)
                     {
                        _loc4_[_loc7_][_loc11_] = Number(_loc4_[_loc7_][_loc11_]);
                     }
                     _loc11_++;
                  }
                  _loc7_++;
               }
               lobbyCustomMapName = param1.target.data["name"];
               lobbyCustomMapAuthor = param1.target.data["author"];
               lobbyMapIDForJoinList = param1.target.data["id"];
               if(param1.target.data["size"] == "0")
               {
                  lobbyCustomMapSize = "Small";
               }
               else if(param1.target.data["size"] == "1")
               {
                  lobbyCustomMapSize = "Large";
               }
               else
               {
                  lobbyCustomMapSize = "Giant";
               }
               customLevelArray = _loc3_[0].slice();
               customLevelCameraArray = lobbyCustomMapSize == "Small" ? smallCustomCameraArray.slice() : mediumCustomCameraArray.slice();
               if(lobbyCustomMapSize == "Small")
               {
                  customLevelCameraArray = smallCustomCameraArray.slice();
               }
               else if(lobbyCustomMapSize == "Large")
               {
                  customLevelCameraArray = mediumCustomCameraArray.slice();
               }
               else
               {
                  customLevelCameraArray = giantCameraArray.slice();
               }
               customLevelSpawnArray = _loc3_[1].slice();
               customLevelFlagPositions = _loc3_[2].slice();
               entireCustomLevelData = [lobbyCustomMapName,lobbyCustomMapAuthor,lobbyCustomMapSize,customLevelArray,customLevelCameraArray,customLevelSpawnArray,_loc4_,customLevelFlagPositions];
               newVaultMapID = param1.target.data["id"];
               custommapnametext.text = lobbyCustomMapName;
               custommapauthortext.text = fixUsernameString(lobbyCustomMapAuthor);
               custommapnamelabel.visible = true;
               custommapnametext.visible = true;
               custommapauthorlabel.visible = true;
               custommapauthortext.visible = true;
               lobbyRemoveMapPreview();
               lobbyMainDrawMapPreview(entireCustomLevelData);
               levelChosen = -1;
               sendStream.send("recvChangeMap",levelChosen,entireCustomLevelData,newVaultMapID);
               calculateMaxPlayers();
            }
            else
            {
               trace("didnt get the map, bad");
            }
         };
         if(me)
         {
            this.buttonClickSound();
         }
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "maps2.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.task = 3;
         variables.specificmap = this.mapListArray[this._SafeStr_748].Mapid;
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function checkIfScrolledToBottom(param1:Event) : *
      {
         if(this.levelvaultwindow.loadsavegrid.verticalScrollPosition == this.levelvaultwindow.loadsavegrid.verticalScrollBar.maxScrollPosition)
         {
            this.levelvaultwindow.loadsavegrid.verticalScrollBar.removeEventListener(Event.SCROLL,this.checkIfScrolledToBottom);
            this._SafeStr_2021();
         }
      }
      
      public function hideLevelVaultWindow(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeEventListener(KeyboardEvent.KEY_UP,this._SafeStr_1831);
         stage.removeChild(this.levelvaultwindow);
         stage.focus = this._SafeStr_701;
      }
      
      public function levelVaultSortRating(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         switch(param1.target.name)
         {
            case "sortbyratingweekbutton":
               this.vaultUpdateList("ratingmonth",0,false,this.gameMode);
               this.levelvaultwindow.sortbyratingweekbutton.visible = false;
               this.levelvaultwindow.sortbyratingmonthbutton.visible = true;
               this.levelvaultwindow.sortbyratingalltimebutton.visible = false;
               this.levelvaultwindow.sortbynewestbutton.visible = false;
               break;
            case "sortbyratingmonthbutton":
               this.vaultUpdateList("ratingalltime",0,false,this.gameMode);
               this.levelvaultwindow.sortbyratingweekbutton.visible = false;
               this.levelvaultwindow.sortbyratingmonthbutton.visible = false;
               this.levelvaultwindow.sortbyratingalltimebutton.visible = true;
               this.levelvaultwindow.sortbynewestbutton.visible = false;
               break;
            case "sortbyratingalltimebutton":
               this.vaultUpdateList("newest",0,false,this.gameMode);
               this.levelvaultwindow.sortbyratingweekbutton.visible = false;
               this.levelvaultwindow.sortbyratingmonthbutton.visible = false;
               this.levelvaultwindow.sortbyratingalltimebutton.visible = false;
               this.levelvaultwindow.sortbynewestbutton.visible = true;
               break;
            case "sortbynewestbutton":
               this.vaultUpdateList("ratingweek",0,false,this.gameMode);
               this.levelvaultwindow.sortbyratingweekbutton.visible = true;
               this.levelvaultwindow.sortbyratingmonthbutton.visible = false;
               this.levelvaultwindow.sortbyratingalltimebutton.visible = false;
               this.levelvaultwindow.sortbynewestbutton.visible = false;
         }
      }
      
      public function _SafeStr_2021(param1:MouseEvent = null) : *
      {
         this.vaultUpdateList(this._SafeStr_1912,this._SafeStr_349,true,this.gameMode);
      }
      
      public function vaultUpdateList(param1:String, param2:Number, param3:Boolean, param4:Number) : *
      {
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         var sortBy:String = param1;
         var startingFrom:Number = param2;
         var gettingMore:Boolean = param3;
         var gameType:Number = param4;
         onComplete = function(param1:Event):void
         {
            var _loc2_:Number = NaN;
            var _loc3_:Number = NaN;
            var _loc4_:int = 0;
            var _loc5_:DataProvider = null;
            var _loc6_:* = undefined;
            var _loc7_:String = null;
            _loc2_ = Number(param1.target.data["cant"]);
            if(_loc2_ == 0)
            {
               trace("no results, bad");
            }
            else
            {
               trace("received " + _loc2_ + " results.");
               if(!gettingMore)
               {
                  mapListArray = [];
               }
               _loc3_ = Number(mapListArray.length);
               _loc4_ = _loc3_;
               while(_loc4_ < _loc2_ + _loc3_)
               {
                  if(param1.target.data["special" + (_loc4_ - _loc3_)] == 1)
                  {
                     _loc7_ = "<font color=\'#2E485F\'>";
                  }
                  else
                  {
                     _loc7_ = "";
                  }
                  mapListArray[_loc4_] = {
                     "Mapname":_loc7_ + param1.target.data["name" + (_loc4_ - _loc3_)],
                     "Mapauthor":_loc7_ + fixUsernameString(param1.target.data["author" + (_loc4_ - _loc3_)]),
                     "Mapsize":(param1.target.data["size" + (_loc4_ - _loc3_)] == 0 ? _loc7_ + "Small" : (param1.target.data["size" + (_loc4_ - _loc3_)] == 1 ? _loc7_ + "Large" : _loc7_ + "Giant")),
                     "Mapsizenofont":(param1.target.data["size" + (_loc4_ - _loc3_)] == 0 ? "Small" : (param1.target.data["size" + (_loc4_ - _loc3_)] == 1 ? "Large" : "Giant")),
                     "Mapplayers":_loc7_ + param1.target.data["players" + (_loc4_ - _loc3_)],
                     "Mapdata":param1.target.data["mapdata" + (_loc4_ - _loc3_)],
                     "Mapid":param1.target.data["id" + (_loc4_ - _loc3_)],
                     "thumbsup":param1.target.data["thumbsup" + (_loc4_ - _loc3_)],
                     "thumbsdown":param1.target.data["thumbsdown" + (_loc4_ - _loc3_)],
                     "date":param1.target.data["date" + (_loc4_ - _loc3_)],
                     "thumbsdifference":(param1.target.data["thumbsup" + (_loc4_ - _loc3_)] == 0 && param1.target.data["thumbsdown" + (_loc4_ - _loc3_)] == 0 ? _loc7_ + "-" : _loc7_ + String(param1.target.data["thumbsup" + (_loc4_ - _loc3_)] - param1.target.data["thumbsdown" + (_loc4_ - _loc3_)]))
                  };
                  _loc4_++;
               }
               _loc5_ = new DataProvider();
               _loc6_ = 0;
               while(_loc6_ < mapListArray.length)
               {
                  _loc5_.addItem(mapListArray[_loc6_]);
                  _loc6_++;
               }
               levelvaultwindow.loadsavegrid.dataProvider = _loc5_;
               if(!gettingMore)
               {
                  levelvaultwindow.loadsavegrid.verticalScrollPosition = 0;
               }
            }
            levelvaultwindow.loadsavegrid.verticalScrollBar.addEventListener(Event.SCROLL,checkIfScrolledToBottom,false,0,true);
         };
         trace("vaultUpdateList, sortBy: " + sortBy + " startingFrom: " + startingFrom + " gettingMore: " + gettingMore);
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "maps2.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         if(gameType == 0 || gameType == 1)
         {
            variables.gametype = 0;
         }
         else
         {
            variables.gametype = 2;
         }
         if(sortBy == "newest")
         {
            variables.sorton = 0;
            this._SafeStr_1912 = "newest";
         }
         else if(sortBy == "ratingweek")
         {
            variables.sorton = 1;
            this._SafeStr_1912 = "ratingweek";
         }
         else if(sortBy == "ratingmonth")
         {
            variables.sorton = 2;
            this._SafeStr_1912 = "ratingmonth";
         }
         else
         {
            variables.sorton = 3;
            this._SafeStr_1912 = "ratingalltime";
         }
         variables.startingfrom = startingFrom;
         variables.noresults = 10;
         this._SafeStr_349 = startingFrom + 10;
         variables.task = 2;
         variables.searchstring = this.levelvaultwindow.searchtext.text;
         if(this.levelvaultwindow.searchtext.text != "")
         {
            if(sortBy == "ratingweek" || sortBy == "ratingmonth" || sortBy == "ratingalltime")
            {
               variables.sorton = 3;
            }
            else
            {
               variables.sorton = 0;
            }
         }
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
         if(startingFrom == 0)
         {
            this.levelvaultwindow.loadsavegrid.dataProvider.removeAll();
         }
      }
      
      public function comod(param1:Number) : String
      {
         return String.fromCharCode(this._SafeStr_1271 - param1 * 10);
      }
      
      public function _SafeStr_1671(param1:Event) : void
      {
         this._SafeStr_748 = param1.target.selectedIndex;
         this.levelvaultwindow.mapname.htmlText = this.mapListArray[this._SafeStr_748].Mapname;
         this.levelvaultwindow.authorname.htmlText = this.fixUsernameString(this.mapListArray[this._SafeStr_748].Mapauthor);
         this.levelvaultwindow.mapsize.htmlText = this.mapListArray[this._SafeStr_748].Mapsize;
         if(Number(this.mapListArray[this._SafeStr_748].thumbsup) + Number(this.mapListArray[this._SafeStr_748].thumbsdown) == 0)
         {
            this.levelvaultwindow.maprating.htmlText = "Not yet rated!";
         }
         else
         {
            this.levelvaultwindow.maprating.htmlText = this.mapListArray[this._SafeStr_748].thumbsdifference + String(" (" + Math.round(Number(this.mapListArray[this._SafeStr_748].thumbsup) / (Number(this.mapListArray[this._SafeStr_748].thumbsup) + Number(this.mapListArray[this._SafeStr_748].thumbsdown)) * 100) + "% liked)");
         }
         this.vaultDrawMapPreview();
      }
      
      public function vaultDrawMapPreview(param1:MouseEvent = null) : *
      {
         var _loc2_:Array = null;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:Array = null;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:Shape = null;
         _loc2_ = this.mapListArray[this._SafeStr_748].Mapdata.split("#");
         _loc2_[0] = _loc2_[0].split("@");
         _loc2_[1] = _loc2_[1].split("@");
         if(_loc2_[2])
         {
            _loc7_ = _loc2_[2].split("@");
            _loc2_[2] = [[_loc7_[0],_loc7_[1]],[_loc7_[2],_loc7_[3]]];
         }
         else
         {
            _loc2_[2] = [[-100,-100],[-100,-100]];
         }
         _loc3_ = 0;
         while(_loc3_ < _loc2_[0].length)
         {
            _loc2_[0][_loc3_] = _loc2_[0][_loc3_].split(",");
            _loc8_ = 0;
            while(_loc8_ < _loc2_[0][_loc3_].length)
            {
               _loc2_[0][_loc3_][_loc8_] = Number(_loc2_[0][_loc3_][_loc8_]);
               _loc8_++;
            }
            _loc3_++;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_[1].length)
         {
            _loc2_[1][_loc4_] = _loc2_[1][_loc4_].split(",");
            _loc9_ = 0;
            while(_loc9_ < _loc2_[1][_loc4_].length)
            {
               _loc2_[1][_loc4_][_loc9_] = Number(_loc2_[1][_loc4_][_loc9_]);
               _loc9_++;
            }
            _loc4_++;
         }
         this.vaultTempLevelPreview = new editorbackgroundmc();
         _loc5_ = 4;
         while(_loc5_ < _loc2_[0].length)
         {
            _loc10_ = this.vaultTempLevelPreview.addChild(this._SafeStr_1326(_loc2_[0][_loc5_][0]));
            _loc10_.x = _loc2_[0][_loc5_][1];
            _loc10_.y = _loc2_[0][_loc5_][2];
            _loc10_.rotation = _loc2_[0][_loc5_][5];
            _loc10_.button.mouseEnabled = false;
            _loc5_++;
         }
         _loc6_ = 0;
         while(_loc6_ < _loc2_[1].length)
         {
            _loc11_ = this.vaultTempLevelPreview.addChild(new _SafeCls_220());
            _loc11_.x = _loc2_[1][_loc6_][0];
            _loc11_.y = _loc2_[1][_loc6_][1];
            _loc11_.rotation = _loc2_[1][_loc6_][2];
            _loc11_.spinnybit.colour.gotoAndStop(_loc6_ % 4 + 1);
            _loc11_.barrel.colour.colour.gotoAndStop(_loc6_ % 4 + 1);
            _loc11_.tankmain.colour.gotoAndStop(_loc6_ % 4 + 1);
            _loc11_.skin.visible = false;
            _loc6_++;
         }
         if(_loc2_[2])
         {
            if(!(_loc2_[2][0][0] == -100 && _loc2_[2][0][1] == -100 && _loc2_[2][1][0] == -100 && _loc2_[2][1][1] == -100))
            {
               _loc12_ = this.vaultTempLevelPreview.addChild(new newflagmc());
               _loc12_.x = _loc2_[2][0][0];
               _loc12_.y = _loc2_[2][0][1];
               _loc12_ = this.vaultTempLevelPreview.addChild(new newflagmc());
               _loc12_.x = _loc2_[2][1][0];
               _loc12_.y = _loc2_[2][1][1];
            }
         }
         if(this.mapListArray[this._SafeStr_748].Mapsizenofont == "Large")
         {
            this.vaultTempLevelPreview.gotoAndStop(1);
            this.vaultTempLevelPreview.scaleX = 0.1667;
            this.vaultTempLevelPreview.scaleY = 0.1667;
            this.vaultTempLevelPreview.rotation = 2;
            this.vaultTempLevelPreview.scrollRect = new Rectangle(20,20,860,860);
         }
         else if(this.mapListArray[this._SafeStr_748].Mapsizenofont == "Small")
         {
            this.vaultTempLevelPreview.gotoAndStop(2);
            this.vaultTempLevelPreview.scaleX = 0.2031;
            this.vaultTempLevelPreview.scaleY = 0.2031;
            this.vaultTempLevelPreview.rotation = 2;
            this.vaultTempLevelPreview.scrollRect = new Rectangle(26,32,704,704);
         }
         else
         {
            this.vaultTempLevelPreview.gotoAndStop(3);
            this.vaultTempLevelPreview.scaleX = 0.121;
            this.vaultTempLevelPreview.scaleY = 0.121;
            this.vaultTempLevelPreview.rotation = 2;
            this.vaultTempLevelPreview.scrollRect = new Rectangle(-35,40,1180,1180);
            _loc13_ = new Shape();
            _loc13_.graphics.beginFill(14998541);
            _loc13_.graphics.drawRect(-100,0,100,1300);
            _loc13_.graphics.drawRect(1100,0,100,1300);
            _loc13_.graphics.endFill();
            this.vaultTempLevelPreview.addChild(_loc13_);
         }
         this.vaultTempLevelPreview.cacheAsBitmap = true;
         this.vaultTempLevelPreview.smoothing = true;
         this.levelvaultwindow.addChild(this.vaultTempLevelPreview);
         this.vaultTempLevelPreview.x = 51;
         this.vaultTempLevelPreview.y = -214;
      }
      
      public function _SafeStr_825(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2243(this.oldVaultMapID,true);
         this._SafeStr_974(null);
      }
      
      public function _SafeStr_1998(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2243(this.oldVaultMapID,false);
         this._SafeStr_974(null);
      }
      
      public function _SafeStr_2541(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1050 = this.localTankSetupArray.slice();
         if(this.userLoggedIn)
         {
            this._SafeStr_846 = addChild(new _SafeCls_247());
            this._SafeStr_846.x = 365;
            this._SafeStr_846.y = 250;
            this._SafeStr_846.buygemsbutton.visible = true;
            this._SafeStr_846.buygemsbutton.addEventListener(MouseEvent.CLICK,this.openPurchaseWindow);
            this._SafeStr_846.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1490);
            addEventListener(Event.ENTER_FRAME,this.rotateSetupWindowPreviewTank);
            this._SafeStr_846.coinstext.text = String(this.localCoins);
            this._SafeStr_846.localPremiumText.text = String(this.localPremium);
            if(this.isUserAGuest(this.localTankName))
            {
               this._SafeStr_846.coinstext.text = String("0");
            }
         }
         else
         {
            this._SafeStr_754 = this._SafeStr_846.addChild(new _SafeCls_246());
            this._SafeStr_754.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1490);
            this._SafeStr_846.coinstext.text = String("0");
         }
         this._SafeStr_846.nextbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1909);
         this._SafeStr_846.prevbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2253);
         this._SafeStr_1200 = 0;
         this._SafeStr_2503(0);
         this._SafeStr_846.bodybutton.addEventListener(MouseEvent.CLICK,this._SafeStr_687);
         this._SafeStr_846.turretbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_687);
         this._SafeStr_846.barrelbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_687);
         this._SafeStr_846.powerupbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_687);
         this._SafeStr_846.skinbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_687);
         this._SafeStr_846.loadoutgood.htmlText = "";
         if(this.tankItemDataArray[this._SafeStr_1050[0]][3] != "")
         {
            this._SafeStr_846.loadoutgood.htmlText += this.tankItemDataArray[this._SafeStr_1050[0]][3] + "\n";
         }
         if(this.tankItemDataArray[this._SafeStr_1050[1]][3] != "")
         {
            this._SafeStr_846.loadoutgood.htmlText += this.tankItemDataArray[this._SafeStr_1050[1]][3] + "\n";
         }
         if(this.tankItemDataArray[this._SafeStr_1050[2]][3] != "")
         {
            this._SafeStr_846.loadoutgood.htmlText += this.tankItemDataArray[this._SafeStr_1050[2]][3] + "\n";
         }
         this._SafeStr_846.loadoutbad.htmlText = "";
         if(this.tankItemDataArray[this._SafeStr_1050[0]][4] != "")
         {
            this._SafeStr_846.loadoutbad.htmlText += this.tankItemDataArray[this._SafeStr_1050[0]][4] + "\n";
         }
         if(this.tankItemDataArray[this._SafeStr_1050[1]][4] != "")
         {
            this._SafeStr_846.loadoutbad.htmlText += this.tankItemDataArray[this._SafeStr_1050[1]][4] + "\n";
         }
         if(this.tankItemDataArray[this._SafeStr_1050[2]][4] != "")
         {
            this._SafeStr_846.loadoutbad.htmlText += this.tankItemDataArray[this._SafeStr_1050[2]][4] + "\n";
         }
         if(this.inLobby || this.inGame)
         {
            if(this._SafeStr_781)
            {
               this._SafeStr_846.upgradesdisabledtext.visible = false;
               this._SafeStr_846.loadoutgood.visible = true;
               this._SafeStr_846.loadoutbad.visible = true;
            }
            else
            {
               this._SafeStr_846.upgradesdisabledtext.visible = true;
               this._SafeStr_846.loadoutgood.visible = false;
               this._SafeStr_846.loadoutbad.visible = false;
            }
            this.notifyInShop(true);
         }
         else
         {
            this._SafeStr_846.upgradesdisabledtext.visible = false;
            this._SafeStr_846.loadoutgood.visible = true;
            this._SafeStr_846.loadoutbad.visible = true;
         }
         this.setSetupTankPreviewGraphic();
      }
      
      public function setSetupTankPreviewGraphic() : *
      {
         if(this._SafeStr_1050[0] == 0)
         {
            this._SafeStr_846.previewtank.tankmain.gotoAndStop(1);
            this._SafeStr_846.previewtank.tankmainmask.gotoAndStop(1);
         }
         else if(this._SafeStr_1050[0] == 3)
         {
            this._SafeStr_846.previewtank.tankmain.gotoAndStop(2);
            this._SafeStr_846.previewtank.tankmainmask.gotoAndStop(2);
         }
         else if(this._SafeStr_1050[0] == 6)
         {
            this._SafeStr_846.previewtank.tankmain.gotoAndStop(3);
            this._SafeStr_846.previewtank.tankmainmask.gotoAndStop(3);
         }
         else if(this._SafeStr_1050[0] == 9)
         {
            this._SafeStr_846.previewtank.tankmain.gotoAndStop(4);
            this._SafeStr_846.previewtank.tankmainmask.gotoAndStop(4);
         }
         if(this._SafeStr_1050[1] == 1)
         {
            this._SafeStr_846.previewtank.spinnybit.gotoAndStop(1);
         }
         else if(this._SafeStr_1050[1] == 4)
         {
            this._SafeStr_846.previewtank.spinnybit.gotoAndStop(2);
         }
         else if(this._SafeStr_1050[1] == 7)
         {
            this._SafeStr_846.previewtank.spinnybit.gotoAndStop(3);
         }
         else if(this._SafeStr_1050[1] == 10)
         {
            this._SafeStr_846.previewtank.spinnybit.gotoAndStop(4);
         }
         if(this._SafeStr_1050[2] == 2)
         {
            this._SafeStr_846.previewtank.barrel.colour.gotoAndStop(1);
         }
         else if(this._SafeStr_1050[2] == 5)
         {
            this._SafeStr_846.previewtank.barrel.colour.gotoAndStop(2);
         }
         else if(this._SafeStr_1050[2] == 8)
         {
            this._SafeStr_846.previewtank.barrel.colour.gotoAndStop(3);
         }
         else if(this._SafeStr_1050[2] == 11)
         {
            this._SafeStr_846.previewtank.barrel.colour.gotoAndStop(4);
         }
         this._SafeStr_846.previewtank.tankmain.blendMode = "normal";
         this._SafeStr_846.previewtank.spinnybit.blendMode = "normal";
         this._SafeStr_846.previewtank.skin.visible = false;
         this._SafeStr_846.previewtank.tankmainmask.visible = false;
         if((this.inLobby || this.inGame) && this._SafeStr_1162[this.localTankID] != 4)
         {
            this._SafeStr_846.previewtank.tankmain.colour.gotoAndStop(this._SafeStr_1162[this.localTankID] + 1);
            this._SafeStr_846.previewtank.spinnybit.colour.gotoAndStop(this._SafeStr_1162[this.localTankID] + 1);
            this._SafeStr_846.previewtank.barrel.colour.colour.gotoAndStop(this._SafeStr_1162[this.localTankID] + 1);
         }
         else
         {
            this._SafeStr_846.previewtank.tankmain.colour.gotoAndStop(1);
            this._SafeStr_846.previewtank.spinnybit.colour.gotoAndStop(1);
            this._SafeStr_846.previewtank.barrel.colour.colour.gotoAndStop(1);
         }
         if(this._SafeStr_1050[4] != 16)
         {
            this._SafeStr_846.previewtank.tankmain.blendMode = "hardlight";
            this._SafeStr_846.previewtank.spinnybit.blendMode = "hardlight";
            this._SafeStr_846.previewtank.tankmain.colour.gotoAndStop(5);
            this._SafeStr_846.previewtank.spinnybit.colour.gotoAndStop(5);
            this._SafeStr_846.previewtank.barrel.colour.colour.gotoAndStop(this.tankItemDataArray[this._SafeStr_1050[4]][7]);
            this._SafeStr_846.previewtank.skin.visible = true;
            this._SafeStr_846.previewtank.skin.gotoAndStop(this.tankItemDataArray[this._SafeStr_1050[4]][5]);
            this._SafeStr_846.previewtank.skin.mask = this._SafeStr_846.previewtank.tankmainmask;
         }
      }
      
      public function _SafeStr_687(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         switch(param1.target.name)
         {
            case "bodybutton":
               this._SafeStr_2503(0);
               break;
            case "turretbutton":
               this._SafeStr_2503(1);
               break;
            case "barrelbutton":
               this._SafeStr_2503(2);
               break;
            case "powerupbutton":
               this._SafeStr_2503(3);
               break;
            case "skinbutton":
               this._SafeStr_2503(4);
         }
      }
      
      public function _SafeStr_1909(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2503(this.setupTankWindowSlotID,this._SafeStr_1200 + 6);
      }
      
      public function _SafeStr_2253(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2503(this.setupTankWindowSlotID,this._SafeStr_1200 - 6);
      }
      
      public function _SafeStr_2503(param1:Number, param2:Number = 0) : *
      {
         var _loc3_:Array = null;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         trace("showTankParts " + param1);
         while(this._SafeStr_846.scrollmc.numChildren > 0)
         {
            this._SafeStr_846.scrollmc.removeChildAt(0);
         }
         this._SafeStr_1200 = param2;
         this.setupTankWindowSlotID = param1;
         _loc3_ = new Array();
         _loc4_ = 0;
         while(_loc4_ < this.tankItemDataArray.length)
         {
            if(this.tankItemDataArray[_loc4_][0] == param1)
            {
               if(_loc4_ != 63 || this.localTankName == "Chaz" || this.localTankName == "Fantao")
               {
                  _loc3_.push({
                     "itemID":_loc4_,
                     "slotID":this.tankItemDataArray[_loc4_][0],
                     "price":this.tankItemDataArray[_loc4_][1]
                  });
               }
            }
            _loc4_++;
         }
         if(param1 == 4)
         {
         }
         if(param1 == 2)
         {
            _loc6_ = _loc3_[0];
            _loc3_[0] = _loc3_[3];
            _loc3_[3] = _loc6_;
         }
         if(_loc3_.length > param2 + 6)
         {
            this._SafeStr_846.nextbutton.visible = true;
         }
         else
         {
            this._SafeStr_846.nextbutton.visible = false;
         }
         if(param2 >= 6)
         {
            this._SafeStr_846.prevbutton.visible = true;
         }
         else
         {
            this._SafeStr_846.prevbutton.visible = false;
         }
         _loc5_ = param2;
         while(_loc5_ < _loc3_.length && _loc5_ < param2 + 6)
         {
            if(this.tankItemDataArray[_loc3_[_loc5_].itemID][0] == param1)
            {
               _loc7_ = new _SafeCls_254();
               _loc7_.tankicon.tankmain.blendMode = "normal";
               _loc7_.tankicon.spinnybit.blendMode = "normal";
               _loc7_.tankicon.skin.visible = false;
               _loc7_.tankicon.tankmainmask.visible = false;
               _loc7_.partname.text = this.tankItemDataArray[_loc3_[_loc5_].itemID][2];
               _loc7_.partcost.text = this.tankItemDataArray[_loc3_[_loc5_].itemID][1];
               _loc7_.partcostpremium.text = this.tankItemDataArray[_loc3_[_loc5_].itemID][8];
               _loc7_.partdescription.htmlText = this.tankItemDataArray[_loc3_[_loc5_].itemID][3] + "\n" + this.tankItemDataArray[_loc3_[_loc5_].itemID][4];
               if(param1 == 0 || param1 == 1 || param1 == 2)
               {
                  _loc7_.powerupicon.visible = false;
                  _loc7_.tankicon.spinnybit.alpha = 0.2;
                  _loc7_.tankicon.barrel.alpha = 0.2;
                  _loc7_.tankicon.tankmain.alpha = 0.2;
                  _loc7_.tankicon.lefttrack.alpha = 0.2;
                  _loc7_.tankicon.righttrack.alpha = 0.2;
                  _loc7_.tankicon.shadow.alpha = 0.2;
                  switch(_loc3_[_loc5_].itemID)
                  {
                     case 0:
                        _loc7_.tankicon.tankmain.alpha = 1;
                        break;
                     case 1:
                        _loc7_.tankicon.spinnybit.alpha = 1;
                        break;
                     case 2:
                        _loc7_.tankicon.barrel.alpha = 1;
                        break;
                     case 3:
                        _loc7_.tankicon.tankmain.alpha = 1;
                        _loc7_.tankicon.tankmain.gotoAndStop(2);
                        break;
                     case 4:
                        _loc7_.tankicon.spinnybit.alpha = 1;
                        _loc7_.tankicon.spinnybit.gotoAndStop(2);
                        break;
                     case 5:
                        _loc7_.tankicon.barrel.alpha = 1;
                        _loc7_.tankicon.barrel.colour.gotoAndStop(2);
                        break;
                     case 6:
                        _loc7_.tankicon.tankmain.alpha = 1;
                        _loc7_.tankicon.tankmain.gotoAndStop(3);
                        break;
                     case 7:
                        _loc7_.tankicon.spinnybit.alpha = 1;
                        _loc7_.tankicon.spinnybit.gotoAndStop(3);
                        break;
                     case 8:
                        _loc7_.tankicon.barrel.alpha = 1;
                        _loc7_.tankicon.barrel.colour.gotoAndStop(3);
                        break;
                     case 9:
                        _loc7_.tankicon.tankmain.alpha = 1;
                        _loc7_.tankicon.tankmain.gotoAndStop(4);
                        break;
                     case 10:
                        _loc7_.tankicon.spinnybit.alpha = 1;
                        _loc7_.tankicon.spinnybit.gotoAndStop(4);
                        break;
                     case 11:
                        _loc7_.tankicon.barrel.alpha = 1;
                        _loc7_.tankicon.barrel.colour.gotoAndStop(4);
                  }
               }
               else if(param1 == 3)
               {
                  _loc7_.tankicon.visible = false;
                  _loc7_.powerupicon.visible = true;
                  switch(_loc3_[_loc5_].itemID)
                  {
                     case 12:
                        _loc7_.powerupicon.gotoAndStop(1);
                        break;
                     case 13:
                        _loc7_.powerupicon.gotoAndStop(2);
                        break;
                     case 14:
                        _loc7_.powerupicon.gotoAndStop(3);
                        break;
                     case 15:
                        _loc7_.powerupicon.gotoAndStop(4);
                        break;
                     case 38:
                        _loc7_.powerupicon.gotoAndStop(5);
                  }
               }
               else if(param1 == 4)
               {
                  _loc7_.powerupicon.visible = false;
                  _loc7_.tankicon.x = 85;
                  _loc7_.tankicon.y = 86;
                  if(_loc3_[_loc5_].itemID != 16)
                  {
                     trace("skin for i: " + _loc5_);
                     _loc7_.tankicon.tankmain.blendMode = "hardlight";
                     _loc7_.tankicon.spinnybit.blendMode = "hardlight";
                     _loc7_.tankicon.tankmain.colour.gotoAndStop(5);
                     _loc7_.tankicon.spinnybit.colour.gotoAndStop(5);
                     _loc7_.tankicon.barrel.colour.colour.gotoAndStop(this.tankItemDataArray[_loc3_[_loc5_].itemID][7]);
                     _loc7_.tankicon.skin.visible = true;
                     _loc7_.tankicon.skin.gotoAndStop(this.tankItemDataArray[_loc3_[_loc5_].itemID][5]);
                     _loc7_.tankicon.skin.mask = _loc7_.tankicon.tankmainmask;
                  }
               }
               if(this.tankItemDataArray[_loc3_[_loc5_].itemID][6])
               {
                  _loc7_.costicon.visible = false;
                  _loc7_.partcost.visible = false;
                  _loc7_.partcostpremium.visible = false;
                  _loc7_.costpremiumicon.visible = false;
                  _loc7_.coinsbutton.mouseEnabled = false;
                  _loc7_.premiumbutton.mouseEnabled = false;
                  _loc7_.padlock.visible = false;
               }
               else
               {
                  _loc7_.costicon.visible = true;
                  _loc7_.partcost.visible = true;
                  _loc7_.partcostpremium.visible = true;
                  _loc7_.costpremiumicon.visible = true;
                  _loc7_.button.mouseEnabled = false;
                  _loc7_.padlock.visible = true;
               }
               this._SafeStr_846.scrollmc.addChild(_loc7_);
               _loc7_.x = _loc5_ % 3 * 158;
               _loc7_.y = Math.floor((_loc5_ - param2) / 3) * 158;
               _loc7_.itemID = _loc3_[_loc5_].itemID;
               _loc7_.button.addEventListener(MouseEvent.CLICK,this._SafeStr_2015);
               _loc7_.coinsbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2015);
               _loc7_.premiumbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2015);
               _loc7_.coinsbutton.addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_1599);
               _loc7_.premiumbutton.addEventListener(MouseEvent.MOUSE_OVER,this._SafeStr_1599);
               _loc7_.coinsbutton.addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_1685);
               _loc7_.premiumbutton.addEventListener(MouseEvent.MOUSE_OUT,this._SafeStr_1685);
               _loc8_ = 0;
               while(_loc8_ < this._SafeStr_1050.length)
               {
                  if(this._SafeStr_1050[_loc8_] == _loc3_[_loc5_].itemID)
                  {
                     _loc7_.postitpin.gotoAndStop(2);
                     break;
                  }
                  _loc7_.postitpin.gotoAndStop(1);
                  _loc8_++;
               }
            }
            _loc5_++;
         }
      }
      
      public function _SafeStr_1599(param1:MouseEvent) : *
      {
         if(param1.target.name == "coinsbutton")
         {
            param1.target.parent.costicon.gotoAndStop(2);
         }
         else
         {
            param1.target.parent.costpremiumicon.gotoAndStop(2);
         }
      }
      
      public function _SafeStr_1685(param1:MouseEvent) : *
      {
         if(param1.target.name == "coinsbutton")
         {
            param1.target.parent.costicon.gotoAndStop(1);
         }
         else
         {
            param1.target.parent.costpremiumicon.gotoAndStop(1);
         }
      }
      
      public function _SafeStr_2015(param1:MouseEvent) : *
      {
         var _loc2_:Number = NaN;
         _loc2_ = Number(param1.target.parent.itemID);
         if(param1.target.name == "button")
         {
            this._SafeStr_916(_loc2_);
         }
         if(param1.target.name == "premiumbutton")
         {
            this._SafeStr_513(_loc2_,"premium");
         }
         if(param1.target.name == "coinsbutton")
         {
            this._SafeStr_513(_loc2_,"coins");
         }
      }
      
      public function _SafeStr_1490(param1:MouseEvent = null, param2:Boolean = false) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         removeEventListener(Event.ENTER_FRAME,this.rotateSetupWindowPreviewTank);
         removeChild(this._SafeStr_846);
         if(!this.isUserAGuest(this.localTankName) && !param2)
         {
            if(this.inLobby || this.inGame)
            {
               this._SafeStr_2011[this.localTankID] = this._SafeStr_1050.slice();
               this._SafeStr_1625();
               this._SafeStr_1677();
               this.notifyInShop(false);
            }
            this.localTankSetupArray = this._SafeStr_1050.slice();
            this._SafeStr_2547();
         }
      }
      
      public function _SafeStr_1630(param1:MouseEvent) : *
      {
         var _loc2_:String = null;
         _loc2_ = param1.target.name.substr(7,1);
         switch(_loc2_)
         {
            case "1":
               this._SafeStr_916(12);
               trace("selected no powerup");
               break;
            case "2":
               this._SafeStr_916(13);
               trace("selected invis");
               break;
            case "3":
               this._SafeStr_916(14);
               trace("selected heal");
               break;
            case "4":
               this._SafeStr_916(15);
               trace("selected shield");
         }
      }
      
      public function _SafeStr_522(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_846.removeChild(this._SafeStr_2101);
      }
      
      public function rotateSetupWindowPreviewTank(param1:Event) : *
      {
         this._SafeStr_846.previewtank.rotation += 0.5;
      }
      
      public function _SafeStr_2155(param1:MouseEvent) : *
      {
         var _loc2_:Boolean = false;
         var _loc3_:Number = NaN;
         switch(param1.target.name)
         {
            case "bodyNextButton":
               _loc2_ = true;
               _loc3_ = 0;
               break;
            case "turretNextButton":
               _loc2_ = true;
               _loc3_ = 1;
               break;
            case "barrelNextButton":
               _loc2_ = true;
               _loc3_ = 2;
               break;
            case "bodyPrevButton":
               _loc2_ = false;
               _loc3_ = 0;
               break;
            case "turretPrevButton":
               _loc2_ = false;
               _loc3_ = 1;
               break;
            case "barrelPrevButton":
               _loc2_ = false;
               _loc3_ = 2;
         }
         if(_loc2_)
         {
            ++this._SafeStr_1050[_loc3_];
         }
         else
         {
            --this._SafeStr_1050[_loc3_];
         }
         if(this._SafeStr_1050[_loc3_] == -1)
         {
            this._SafeStr_1050[_loc3_] = 3;
         }
         else if(this._SafeStr_1050[_loc3_] == 4)
         {
            this._SafeStr_1050[_loc3_] = 0;
         }
         this._SafeStr_846.previewtank.tankmain.gotoAndStop(this._SafeStr_1050[0] + 1);
         this._SafeStr_846.previewtank.spinnybit.gotoAndStop(this._SafeStr_1050[1] + 1);
         this._SafeStr_846.previewtank.barrel.colour.gotoAndStop(this._SafeStr_1050[2] + 1);
         this._SafeStr_846.previewtank.tankmain.colour.gotoAndStop(this._SafeStr_1162[this.localTankID] + 1);
         this._SafeStr_846.previewtank.barrel.colour.colour.gotoAndStop(this._SafeStr_1162[this.localTankID] + 1);
         this._SafeStr_846.previewtank.spinnybit.colour.gotoAndStop(this._SafeStr_1162[this.localTankID] + 1);
         this._SafeStr_846.bodyText.text = String(this._SafeStr_1050[0] + 1);
         this._SafeStr_846.turretText.text = String(this._SafeStr_1050[1] + 1);
         this._SafeStr_846.barrelText.text = String(this._SafeStr_1050[2] + 1);
      }
      
      public function _SafeStr_2119(param1:MouseEvent = null, param2:Number = NaN) : *
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:TextFormat = null;
         if(param1)
         {
            _loc3_ = param1.target.name;
         }
         if(param1)
         {
            _loc4_ = Number(Number(_loc3_.substr(1,2)));
         }
         else
         {
            _loc4_ = param2;
         }
         if(_loc4_ < 12)
         {
            this._SafeStr_846.infolabel.visible = false;
            this._SafeStr_846.proconlabel.visible = true;
            _loc6_ = this._SafeStr_846.partbad.getTextFormat();
            _loc6_.color = 8471877;
            this._SafeStr_846.partbad.defaultTextFormat = _loc6_;
         }
         else
         {
            this._SafeStr_846.infolabel.visible = true;
            this._SafeStr_846.proconlabel.visible = false;
            _loc6_ = this._SafeStr_846.partbad.getTextFormat();
            _loc6_.color = 4157509;
            this._SafeStr_846.partbad.defaultTextFormat = _loc6_;
         }
         this._SafeStr_2404 = _loc4_;
         this._SafeStr_846.partname.text = this.tankItemDataArray[_loc4_][2];
         if(this.tankItemDataArray[_loc4_][0] == 0)
         {
            this._SafeStr_846.partslot.text = "Body";
         }
         else if(this.tankItemDataArray[_loc4_][0] == 1)
         {
            this._SafeStr_846.partslot.text = "Turret";
         }
         else if(this.tankItemDataArray[_loc4_][0] == 2)
         {
            this._SafeStr_846.partslot.text = "Barrel";
         }
         else if(this.tankItemDataArray[_loc4_][0] == 3)
         {
            this._SafeStr_846.partslot.text = "Power Up";
         }
         this._SafeStr_846.partgood.text = this.tankItemDataArray[_loc4_][3];
         this._SafeStr_846.partbad.text = this.tankItemDataArray[_loc4_][4];
         this._SafeStr_846.partcost.text = String(this.tankItemDataArray[_loc4_][1]);
         if(this.tankItemDataArray[_loc4_][6] == true)
         {
            _loc5_ = true;
         }
         else
         {
            _loc5_ = false;
         }
         if(_loc5_)
         {
            this._SafeStr_846.partcost.visible = false;
            this._SafeStr_846.partcostlabel.visible = false;
            this._SafeStr_846.clicktext.text = "click to equip";
            this._SafeStr_1934 = true;
         }
         else
         {
            this._SafeStr_846.partcost.visible = true;
            this._SafeStr_846.partcostlabel.visible = true;
            this._SafeStr_846.clicktext.text = "click to buy";
            this._SafeStr_1934 = false;
         }
         this._SafeStr_846.partpreview.gotoAndStop(_loc4_ + 1);
         if((this.inLobby || this.inGame) && this._SafeStr_1162[this.localTankID] != 4)
         {
            this._SafeStr_846.partpreview.colour.gotoAndStop(this._SafeStr_1162[this.localTankID] + 1);
         }
      }
      
      public function _SafeStr_1087(param1:MouseEvent = null) : *
      {
         this._SafeStr_846.clicktext.text = "";
      }
      
      public function _SafeStr_1711(param1:MouseEvent) : *
      {
         if(this._SafeStr_1934)
         {
            this._SafeStr_916(this._SafeStr_2404);
         }
         else
         {
            trace("buy");
            this._SafeStr_513(this._SafeStr_2404);
         }
      }
      
      public function _SafeStr_916(param1:Number, param2:Boolean = true) : *
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         var _loc7_:GlowFilter = null;
         var _loc8_:DropShadowFilter = null;
         if(!this.muteSfx && param2)
         {
            this.equipItemSound.play();
         }
         _loc3_ = Number(this.tankItemDataArray[param1][0]);
         this._SafeStr_1050[_loc3_] = param1;
         this.setSetupTankPreviewGraphic();
         _loc4_ = 0;
         _loc5_ = 0;
         while(_loc5_ < this.tankItemDataArray.length)
         {
            if(this.tankItemDataArray[_loc5_][0] == this.tankItemDataArray[param1][0])
            {
               if(_loc5_ == param1)
               {
                  break;
               }
               _loc4_++;
            }
            _loc5_++;
         }
         _loc6_ = Math.floor(_loc4_ / 6) * 6;
         this._SafeStr_2503(_loc3_,_loc6_);
         _loc7_ = new GlowFilter();
         if((this.inLobby || this.inGame) && this._SafeStr_1162[this.localTankID] != 4)
         {
            _loc7_.inner = false;
            if(this._SafeStr_1162[this.localTankID] == 0)
            {
               _loc7_.color = 3850834;
            }
            else if(this._SafeStr_1162[this.localTankID] == 1)
            {
               _loc7_.color = 3770052;
            }
            else if(this._SafeStr_1162[this.localTankID] == 2)
            {
               _loc7_.color = 12929592;
            }
            else
            {
               _loc7_.color = 13555256;
            }
         }
         else
         {
            _loc7_.color = 3850834;
         }
         _loc7_.inner = false;
         _loc7_.blurX = 5;
         _loc7_.blurY = 5;
         _loc8_ = new DropShadowFilter();
         _loc8_.distance = 3;
         _loc8_.color = 0;
         _loc8_.blurX = 5;
         _loc8_.blurY = 5;
         _loc8_.quality = 2;
         _loc8_.angle = 68;
         _loc8_.strength = 0.73;
         this._SafeStr_846.loadoutgood.htmlText = "";
         if(this.tankItemDataArray[this._SafeStr_1050[0]][3] != "")
         {
            this._SafeStr_846.loadoutgood.htmlText += this.tankItemDataArray[this._SafeStr_1050[0]][3] + "\n";
         }
         if(this.tankItemDataArray[this._SafeStr_1050[1]][3] != "")
         {
            this._SafeStr_846.loadoutgood.htmlText += this.tankItemDataArray[this._SafeStr_1050[1]][3] + "\n";
         }
         if(this.tankItemDataArray[this._SafeStr_1050[2]][3] != "")
         {
            this._SafeStr_846.loadoutgood.htmlText += this.tankItemDataArray[this._SafeStr_1050[2]][3] + "\n";
         }
         this._SafeStr_846.loadoutbad.htmlText = "";
         if(this.tankItemDataArray[this._SafeStr_1050[0]][4] != "")
         {
            this._SafeStr_846.loadoutbad.htmlText += this.tankItemDataArray[this._SafeStr_1050[0]][4] + "\n";
         }
         if(this.tankItemDataArray[this._SafeStr_1050[1]][4] != "")
         {
            this._SafeStr_846.loadoutbad.htmlText += this.tankItemDataArray[this._SafeStr_1050[1]][4] + "\n";
         }
         if(this.tankItemDataArray[this._SafeStr_1050[2]][4] != "")
         {
            this._SafeStr_846.loadoutbad.htmlText += this.tankItemDataArray[this._SafeStr_1050[2]][4] + "\n";
         }
      }
      
      public function _SafeStr_513(param1:Number, param2:String = "coins") : *
      {
         this.confirmBuyItemID = param1;
         this._SafeStr_2323 = param2;
         this._SafeStr_1097 = this._SafeStr_846.addChild(new _SafeCls_204());
         this._SafeStr_1097.partname.text = String(this.tankItemDataArray[param1][2]);
         if(param2 == "coins")
         {
            this._SafeStr_1097.partcost.text = String(this.tankItemDataArray[param1][1]);
            this._SafeStr_1097.balancetext.text = String(this.localCoins);
            this._SafeStr_1097.coiniconcost.visible = true;
            this._SafeStr_1097.coiniconbalance.visible = true;
            this._SafeStr_1097.premiumiconcost.visible = false;
            this._SafeStr_1097.premiumiconbalance.visible = false;
         }
         else
         {
            this._SafeStr_1097.partcost.text = String(this.tankItemDataArray[param1][8]);
            this._SafeStr_1097.balancetext.text = String(this.localPremium);
            this._SafeStr_1097.coiniconcost.visible = false;
            this._SafeStr_1097.coiniconbalance.visible = false;
            this._SafeStr_1097.premiumiconcost.visible = true;
            this._SafeStr_1097.premiumiconbalance.visible = true;
         }
         this._SafeStr_1097.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1782);
         this._SafeStr_1097.buybutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1777);
      }
      
      public function _SafeStr_1782(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_846.removeChild(this._SafeStr_1097);
      }
      
      public function _SafeStr_1777(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this.buyItemServer(this.confirmBuyItemID,this._SafeStr_2323);
         this._SafeStr_1097.backbutton.mouseEnabled = false;
         this._SafeStr_1097.buybutton.mouseEnabled = false;
         this._SafeStr_1097.backbutton.alpha = 0.5;
         this._SafeStr_1097.buybutton.alpha = 0.5;
      }
      
      public function _SafeStr_1677() : *
      {
         if(this.hosting)
         {
            this._SafeStr_1480();
         }
         else
         {
            this.sendStream.send("recvLocalTankSetup",this._SafeStr_2011[this.localTankID],this.localTankID);
         }
      }
      
      public function recvLocalTankSetup(param1:Array, param2:*) : *
      {
         this._SafeStr_2011[param2] = param1.slice();
         this._SafeStr_1480();
         if(this.inLobby)
         {
            this._SafeStr_1625();
         }
      }
      
      public function _SafeStr_1480() : *
      {
         this.sendStream.send("recvAllTankSetups",this._SafeStr_2011);
      }
      
      public function recvAllTankSetups(param1:Array) : *
      {
         if(this._SafeStr_1579)
         {
            this._SafeStr_2011 = param1.slice();
            if(this.inLobby)
            {
               this._SafeStr_1625();
            }
         }
      }
      
      public function notifyInShop(param1:Boolean) : *
      {
         this.sendStream.send("recvNotifyInShop",param1,this.localTankID);
      }
      
      public function recvNotifyInShop(param1:Boolean, param2:Number) : *
      {
         if(this._SafeStr_1579)
         {
            if(this.hosting)
            {
               this.sendStream.send("recvNotifyInShop",param1,param2);
            }
            this._SafeStr_1764[param2] = param1;
            if(this.inLobby)
            {
               this._SafeStr_1625();
            }
         }
      }
      
      public function _SafeStr_1049() : *
      {
         trace("sendDataCount: " + this._SafeStr_2042);
      }
      
      public function _SafeStr_1778() : *
      {
         var _loc1_:* = undefined;
         _loc1_ = 0;
         while(_loc1_ < this.tankNameArray.length)
         {
            if(this._SafeStr_451[_loc1_])
            {
               this._SafeStr_1053[this.tankNameArray[_loc1_]][0] += 0.5;
               this._SafeStr_1053[this.tankNameArray[_loc1_]][2] = this._SafeStr_1053[this.tankNameArray[_loc1_]][0] / this._SafeStr_1053[this.tankNameArray[_loc1_]][1];
            }
            _loc1_++;
         }
      }
      
      public function _SafeStr_1477() : *
      {
         this._SafeStr_1502 = setInterval(this._SafeStr_1778,this._SafeStr_834);
      }
      
      public function _SafeStr_410() : void
      {
         var _loc1_:b2Vec2 = null;
         var _loc2_:Boolean = false;
         if(this.wtfMode)
         {
            _loc1_ = new b2Vec2(0,9.8);
         }
         else
         {
            _loc1_ = new b2Vec2(0,0);
         }
         _loc2_ = false;
         this._SafeStr_1091 = new b2World(_loc1_,_loc2_);
         this._SafeStr_1091.SetWarmStarting(true);
         this._SafeStr_1551 = 1 / 60;
         this._SafeStr_863 = 10;
      }
      
      public function _SafeStr_2607() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:b2BodyDef = null;
         var _loc3_:b2Body = null;
         var _loc4_:Object = null;
         var _loc5_:* = undefined;
         _loc2_ = new b2BodyDef();
         _loc4_ = new Object();
         _loc4_.type = "wall";
         _loc5_ = 0;
         while(_loc5_ < this._SafeStr_2603.length)
         {
            _loc2_.position.Set(this._SafeStr_2603[_loc5_][1] / this._SafeStr_1016,this._SafeStr_2603[_loc5_][2] / this._SafeStr_1016);
            if(this._SafeStr_2603[_loc5_][0] == 0)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsBox(this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016 / 2,this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016 / 2);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 1)
            {
               _loc1_ = new b2CircleShape(this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 2)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-94 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-60 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,85 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,90 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,85 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-60 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 3)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-94 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-75 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,85 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,90 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,85 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-75 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 4)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-96 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-75 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,87 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,90 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,87 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-75 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 5)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-79 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-50 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,84 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,86 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,84 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-50 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 6)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(-2 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-94 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-60 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(8 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,84 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,87 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,84 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-60 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 7)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-172 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(10 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-140 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,162 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,165 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,162 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-140 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 8)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-172 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(10 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-140 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,162 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,165 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,162 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-140 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 9)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-172 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(10 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-140 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,162 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,165 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,162 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-140 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 10)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(1 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-174 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(10 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-139 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,162 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(0 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,165 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,162 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-9 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-139 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 11)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(-110 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-106 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(90 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-106 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(95 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,101 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-110 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,101 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 12)
            {
               _loc1_ = new b2CircleShape(this._SafeStr_2603[_loc5_][3] * 26 / this._SafeStr_1016);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 13)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(-21 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-40 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(26 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-40 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(24 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,40 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-23 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,40 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 14)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(-25 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-42 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(25 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-42 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(25 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,37 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-25 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,37 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 15)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(-42 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-7 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(39 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-10 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(46 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,0 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(40 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,8 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-37 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,9 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-45 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,0 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 16)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(-42 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-7 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(39 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-10 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(46 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,0 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(40 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,8 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-37 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,9 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-45 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,0 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 17)
            {
               _loc1_ = new b2PolygonShape();
               _loc1_.SetAsArray([new b2Vec2(-24 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-63 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(20 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-124 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(26 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,-118 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(25 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,53 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-18 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,110 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016),new b2Vec2(-23 * this._SafeStr_2603[_loc5_][3] / this._SafeStr_1016,105 * this._SafeStr_2603[_loc5_][4] / this._SafeStr_1016)]);
            }
            else if(this._SafeStr_2603[_loc5_][0] == 18)
            {
               _loc1_ = new b2CircleShape(this._SafeStr_2603[_loc5_][3] * 158 / this._SafeStr_1016);
            }
            _loc3_ = this._SafeStr_1091.CreateBody(_loc2_);
            _loc3_.CreateFixture2(_loc1_);
            _loc3_.SetUserData(_loc4_);
            if(this._SafeStr_2603[_loc5_][5])
            {
               _loc3_.SetAngle(this._SafeStr_2603[_loc5_][5] * (Math.PI / 180));
            }
            _loc5_++;
         }
      }
      
      public function _SafeStr_2124() : void
      {
         addChild(this._SafeStr_1272);
         this._SafeStr_1676._SafeStr_330(this._SafeStr_1272);
         this._SafeStr_1676._SafeStr_705(30);
         this._SafeStr_1676._SafeStr_2112(0.3);
         this._SafeStr_1676._SafeStr_1995(1);
         this._SafeStr_1676._SafeStr_970(b2DebugDraw._SafeStr_343 | b2DebugDraw._SafeStr_1856);
         this._SafeStr_1091._SafeStr_2265(this._SafeStr_1676);
      }
      
      public function update(param1:Event = null, param2:Boolean = false, param3:Number = -1) : void
      {
         this._SafeStr_1695 = this._SafeStr_2079;
         this._SafeStr_2079 = getTimer();
         if(param2 == false)
         {
            this._SafeStr_1551 = Math.min((this._SafeStr_2079 - this._SafeStr_1695) / 1000,1 / 3);
            this._SafeStr_1551 = Math.max(this._SafeStr_1551,1 / 240);
            this.newTS._SafeStr_1607 = this._SafeStr_1551;
         }
         else if(param3 == -1)
         {
            this._SafeStr_1551 = 1 / 60;
            this.newTS._SafeStr_1607 = this._SafeStr_1551;
         }
         else
         {
            this._SafeStr_1551 = param3;
            this.newTS._SafeStr_1607 = this._SafeStr_1551;
         }
         if(!this.wtfMode)
         {
            this._SafeStr_1702._SafeStr_276(this.newTS);
            this.m_controller2._SafeStr_276(this.newTS);
            this.m_controller3._SafeStr_276(this.newTS);
            this.m_controller4._SafeStr_276(this.newTS);
         }
         this._SafeStr_1091._SafeStr_276(this._SafeStr_1551,this._SafeStr_863,this._SafeStr_863);
         this._SafeStr_1091._SafeStr_817();
         this._SafeStr_1091._SafeStr_2471();
      }
      
      public function spawnTank(param1:Number, param2:Number = NaN) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:b2BodyDef = null;
         var _loc9_:b2PolygonShape = null;
         var _loc10_:* = undefined;
         var _loc11_:Object = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:b2WeldJointDef = null;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = false;
         var _loc18_:* = undefined;
         var _loc19_:* = undefined;
         var _loc20_:* = undefined;
         var _loc21_:* = undefined;
         var _loc22_:GlowFilter = null;
         var _loc23_:AdjustColor = null;
         var _loc24_:ColorMatrixFilter = null;
         var _loc25_:Array = null;
         var _loc26_:Array = null;
         var _loc27_:AdjustColor = null;
         var _loc28_:ColorMatrixFilter = null;
         var _loc29_:Array = null;
         var _loc30_:Array = null;
         var _loc31_:* = undefined;
         _loc3_ = Boolean(this._SafeStr_1387["team" + this._SafeStr_1162[param1] + "Juggernaut"]);
         _loc4_ = Boolean(this._SafeStr_1387["team" + this._SafeStr_1162[param1] + "Slidy"]);
         if(param1 == this.localTankID && !this._SafeStr_741)
         {
            if(!this._SafeStr_733 && !this._SafeStr_559)
            {
               try
               {
                  _SafeCls_188._SafeStr_2479.trackEvent("Retention","Retention: Tank Spawned");
               }
               catch(e:Error)
               {
               }
            }
            this._SafeStr_733 = true;
         }
         _loc5_ = 0;
         if(!this._SafeStr_741)
         {
            if(this.gameMode != 2 && Boolean(isNaN(param2)))
            {
               _loc18_ = 0;
               while(_loc18_ < this._SafeStr_1233.length)
               {
                  if(this._SafeStr_451[this._SafeStr_1233[_loc18_]])
                  {
                     if(this._SafeStr_1233[_loc18_] == param1)
                     {
                        break;
                     }
                     _loc5_++;
                  }
                  _loc18_++;
               }
            }
            else if(isNaN(param2))
            {
               _loc5_ = this._SafeStr_1070(param1);
            }
            else
            {
               _loc5_ = param2;
            }
         }
         else
         {
            _loc5_ = param1;
         }
         if(!this._SafeStr_689 || param1 == this.localTankID)
         {
            this["Tank" + param1 + "Health"] = this._SafeStr_1387.tankFullHealth;
            if(!this._SafeStr_741 && this._SafeStr_781)
            {
               _loc19_ = 0;
               while(_loc19_ < 3)
               {
                  if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[param1][_loc19_]][5][0]))
                  {
                     this["Tank" + param1 + "Health"] *= this.tankItemDataArray[this._SafeStr_2011[param1][_loc19_]][5][0];
                     this["Tank" + param1 + "Health"] = Math.round(this["Tank" + param1 + "Health"]);
                     this["Tank" + param1 + "Health"] = Math.max(this["Tank" + param1 + "Health"],1);
                  }
                  _loc19_++;
               }
            }
            if(this._SafeStr_1387["team" + this._SafeStr_1162[param1] + "Juggernaut"] == true)
            {
               this["Tank" + param1 + "Health"] *= this._SafeStr_894;
            }
            this["Tank" + param1 + "Alive"] = true;
         }
         else if(this["Tank" + param1 + "Health"] == 0)
         {
            this["Tank" + param1 + "Alive"] = false;
         }
         else
         {
            this["Tank" + param1 + "Alive"] = true;
         }
         _loc6_ = this["Tank" + _loc5_ + "SpawnX"];
         _loc7_ = this["Tank" + _loc5_ + "SpawnY"];
         _loc8_ = new b2BodyDef();
         if(this._SafeStr_689 && this["Tank" + param1 + "Alive"] == false && this.gameMode == 0)
         {
            _loc8_.type = b2Body.b2_staticBody;
         }
         else
         {
            _loc8_.type = b2Body.b2_dynamicBody;
         }
         _loc9_ = new b2PolygonShape();
         _loc10_ = new b2FixtureDef();
         _loc11_ = new Object();
         _loc11_.type = "tank";
         _loc11_.tankid = param1;
         _loc10_.shape = _loc9_;
         _loc10_.density = 1.0588;
         if(!this._SafeStr_741 && this._SafeStr_781)
         {
            _loc20_ = 0;
            while(_loc20_ < 3)
            {
               if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[param1][_loc20_]][5][1]))
               {
                  _loc10_.density *= this.tankItemDataArray[this._SafeStr_2011[param1][_loc20_]][5][1];
               }
               _loc20_++;
            }
         }
         _loc10_.friction = 0;
         _loc10_.restitution = 0.3;
         _loc10_.filter.categoryBits = Math.pow(2,param1 + 2);
         if(_loc4_)
         {
            _loc10_.filter.maskBits = 1 + 2;
         }
         _loc12_ = this._SafeStr_1387.tankSize / this._SafeStr_1016;
         if(_loc3_)
         {
            _loc12_ *= this._SafeStr_1699;
         }
         _loc13_ = 5 / this._SafeStr_1016;
         _loc9_.SetAsArray([new b2Vec2(_loc12_ - _loc13_,-_loc12_),new b2Vec2(_loc12_,-(_loc12_ - _loc13_)),new b2Vec2(_loc12_,_loc12_ - _loc13_),new b2Vec2(_loc12_ - _loc13_,_loc12_),new b2Vec2(-(_loc12_ - _loc13_),_loc12_),new b2Vec2(-_loc12_,_loc12_ - _loc13_),new b2Vec2(-_loc12_,-(_loc12_ - _loc13_)),new b2Vec2(-(_loc12_ - _loc13_),-_loc12_)]);
         _loc8_.position.Set(_loc6_ / this._SafeStr_1016,_loc7_ / this._SafeStr_1016);
         this["Tank" + param1] = this._SafeStr_1091.CreateBody(_loc8_);
         this["Tank" + param1].CreateFixture(_loc10_);
         _loc14_ = _loc4_ ? this._SafeStr_1405 : 1;
         this["Tank" + param1].SetAngularDamping(this._SafeStr_1387.tankAngularDamping * this._SafeStr_873);
         this["Tank" + param1].SetLinearDamping(this._SafeStr_1387.tankLinearDamping * this._SafeStr_873 * _loc14_);
         this["Tank" + param1].SetUserData(_loc11_);
         _loc11_ = new Object();
         _loc11_.type = "wheel";
         _loc11_.tankid = param1;
         _loc9_.SetAsBox(5 / this._SafeStr_1016 / 2,5 / this._SafeStr_1016 / 2);
         _loc8_.position.Set(_loc6_ / this._SafeStr_1016,(_loc7_ - this._SafeStr_1177) / this._SafeStr_1016);
         this["Tank" + param1 + "LeftWheel"] = this._SafeStr_1091.CreateBody(_loc8_);
         this["Tank" + param1 + "LeftWheel"].CreateFixture(_loc10_);
         this["Tank" + param1 + "LeftWheel"].SetUserData(_loc11_);
         _loc9_.SetAsBox(5 / this._SafeStr_1016 / 2,5 / this._SafeStr_1016 / 2);
         _loc8_.position.Set(_loc6_ / this._SafeStr_1016,(_loc7_ + this._SafeStr_1177) / this._SafeStr_1016);
         this["Tank" + param1 + "RightWheel"] = this._SafeStr_1091.CreateBody(_loc8_);
         this["Tank" + param1 + "RightWheel"].CreateFixture(_loc10_);
         this["Tank" + param1 + "RightWheel"].SetUserData(_loc11_);
         _loc15_ = new b2WeldJointDef();
         _loc15_._SafeStr_2347(this["Tank" + param1 + "LeftWheel"],this["Tank" + param1],this["Tank" + param1 + "LeftWheel"].GetWorldCenter());
         _loc15_._SafeStr_627 = false;
         this._SafeStr_1091._SafeStr_2528(_loc15_);
         _loc15_._SafeStr_2347(this["Tank" + param1 + "RightWheel"],this["Tank" + param1],this["Tank" + param1 + "RightWheel"].GetWorldCenter());
         _loc15_._SafeStr_627 = false;
         this._SafeStr_1091._SafeStr_2528(_loc15_);
         _loc16_ = false;
         _loc17_ = false;
         if(!this._SafeStr_741 && this._SafeStr_781)
         {
            _loc21_ = 0;
            while(_loc21_ < 3)
            {
               if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[param1][_loc21_]][5][9]))
               {
                  if(this.tankItemDataArray[this._SafeStr_2011[param1][_loc21_]][5][9] > 4)
                  {
                     _loc16_ = true;
                     break;
                  }
                  if(this.tankItemDataArray[this._SafeStr_2011[param1][_loc21_]][5][9] < 4)
                  {
                     _loc17_ = true;
                  }
                  break;
               }
               _loc21_++;
            }
         }
         if(_loc4_)
         {
            this.m_controller4.AddBody(this["Tank" + param1]);
         }
         else if(_loc16_)
         {
            this.m_controller2.AddBody(this["Tank" + param1]);
         }
         else if(_loc17_)
         {
            this.m_controller3.AddBody(this["Tank" + param1]);
         }
         else
         {
            this._SafeStr_1702.AddBody(this["Tank" + param1]);
         }
         this["Tank" + param1].SetAngle(this["Tank" + _loc5_ + "SpawnAngle"] * (Math.PI / 180));
         if(param1 == this.localTankID || this._SafeStr_1418)
         {
            this._SafeStr_1462();
         }
         this["tank" + param1 + "Label"] = addChild(new _SafeCls_253());
         this["tank" + param1 + "Label"].tankLabel.text = this.fixUsernameString(this.tankNameArray[param1]);
         this["tank" + param1 + "Label"].x = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016 - 60;
         this["tank" + param1 + "Label"].y = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016 + this._SafeStr_570;
         if(this._SafeStr_689 && this["Tank" + param1 + "Alive"] == false && this.gameMode == 0)
         {
            this["tank" + param1 + "Graphic"] = addChild(new _SafeCls_221());
            this["tank" + param1 + "Graphic"].gotoAndStop(this._SafeStr_1162[param1] + 1);
         }
         else
         {
            this["tank" + param1 + "Graphic"] = addChild(new _SafeCls_220());
            if(this._SafeStr_2011[param1][0] == 0)
            {
               this["tank" + param1 + "Graphic"].tankmain.gotoAndStop(1);
               this["tank" + param1 + "Graphic"].tankmainmask.gotoAndStop(1);
            }
            else if(this._SafeStr_2011[param1][0] == 3)
            {
               this["tank" + param1 + "Graphic"].tankmain.gotoAndStop(2);
               this["tank" + param1 + "Graphic"].tankmainmask.gotoAndStop(2);
            }
            else if(this._SafeStr_2011[param1][0] == 6)
            {
               this["tank" + param1 + "Graphic"].tankmain.gotoAndStop(3);
               this["tank" + param1 + "Graphic"].tankmainmask.gotoAndStop(3);
            }
            else if(this._SafeStr_2011[param1][0] == 9)
            {
               this["tank" + param1 + "Graphic"].tankmain.gotoAndStop(4);
               this["tank" + param1 + "Graphic"].tankmainmask.gotoAndStop(4);
            }
            if(this._SafeStr_2011[param1][1] == 1)
            {
               this["tank" + param1 + "Graphic"].spinnybit.gotoAndStop(1);
            }
            else if(this._SafeStr_2011[param1][1] == 4)
            {
               this["tank" + param1 + "Graphic"].spinnybit.gotoAndStop(2);
            }
            else if(this._SafeStr_2011[param1][1] == 7)
            {
               this["tank" + param1 + "Graphic"].spinnybit.gotoAndStop(3);
            }
            else if(this._SafeStr_2011[param1][1] == 10)
            {
               this["tank" + param1 + "Graphic"].spinnybit.gotoAndStop(4);
            }
            if(this._SafeStr_2011[param1][2] == 2)
            {
               this["tank" + param1 + "Graphic"].barrel.colour.gotoAndStop(1);
            }
            else if(this._SafeStr_2011[param1][2] == 5)
            {
               this["tank" + param1 + "Graphic"].barrel.colour.gotoAndStop(2);
            }
            else if(this._SafeStr_2011[param1][2] == 8)
            {
               this["tank" + param1 + "Graphic"].barrel.colour.gotoAndStop(3);
            }
            else if(this._SafeStr_2011[param1][2] == 11)
            {
               this["tank" + param1 + "Graphic"].barrel.colour.gotoAndStop(4);
            }
            this["tank" + param1 + "Graphic"].tankmain.colour.gotoAndStop(this._SafeStr_1162[param1] + 1);
            this["tank" + param1 + "Graphic"].barrel.colour.colour.gotoAndStop(this._SafeStr_1162[param1] + 1);
            this["tank" + param1 + "Graphic"].spinnybit.colour.gotoAndStop(this._SafeStr_1162[param1] + 1);
            if(this._SafeStr_1766[param1])
            {
               _loc22_ = new GlowFilter();
               _loc22_.inner = false;
               if(this._SafeStr_1162[param1] == 0)
               {
                  _loc22_.color = 3850834;
               }
               else if(this._SafeStr_1162[param1] == 1)
               {
                  _loc22_.color = 3770052;
               }
               else if(this._SafeStr_1162[param1] == 2)
               {
                  _loc22_.color = 12929592;
               }
               else
               {
                  _loc22_.color = 13555256;
               }
               _loc22_.quality = 2;
               _loc22_.blurX = 21;
               _loc22_.blurY = 21;
               this["tank" + param1 + "Graphic"].filters = [_loc22_];
            }
            if(this._SafeStr_2061[param1] == true)
            {
               this._SafeStr_877.push(new _SafeCls_190(this["tank" + param1 + "Graphic"]));
            }
            this["tank" + param1 + "Graphic"].tankmain.blendMode = "normal";
            this["tank" + param1 + "Graphic"].spinnybit.blendMode = "normal";
            this["tank" + param1 + "Graphic"].skin.visible = false;
            this["tank" + param1 + "Graphic"].tankmainmask.visible = false;
            if(this._SafeStr_2011[param1][4] != 16)
            {
               if(!this.teamPlay)
               {
                  this["tank" + param1 + "Graphic"].tankmain.blendMode = "hardlight";
                  this["tank" + param1 + "Graphic"].spinnybit.blendMode = "hardlight";
                  this["tank" + param1 + "Graphic"].tankmain.colour.gotoAndStop(5);
                  this["tank" + param1 + "Graphic"].spinnybit.colour.gotoAndStop(5);
               }
               else
               {
                  this["tank" + param1 + "Graphic"].tankmain.blendMode = "hardlight";
                  this["tank" + param1 + "Graphic"].spinnybit.blendMode = "hardlight";
                  _loc23_ = new AdjustColor();
                  _loc23_.brightness = -15;
                  _loc23_.contrast = 0;
                  _loc23_.hue = 0;
                  _loc23_.saturation = -100;
                  _loc25_ = _loc23_.CalculateFinalFlatArray();
                  _loc24_ = new ColorMatrixFilter(_loc25_);
                  _loc26_ = [_loc24_];
                  this["tank" + param1 + "Graphic"].skin.filters = _loc26_;
                  if(this._SafeStr_1162[param1] == 0 || this._SafeStr_1162[param1] == 2 || this._SafeStr_1162[param1] == 3)
                  {
                     trace("yes");
                     _loc27_ = new AdjustColor();
                     if(this._SafeStr_1162[param1] == 0)
                     {
                        _loc27_.brightness = -15;
                     }
                     else if(this._SafeStr_1162[param1] == 2)
                     {
                        _loc27_.brightness = -15;
                     }
                     else
                     {
                        _loc27_.brightness = -35;
                     }
                     _loc27_.contrast = 0;
                     _loc27_.hue = 0;
                     _loc27_.saturation = 0;
                     _loc29_ = _loc27_.CalculateFinalFlatArray();
                     _loc28_ = new ColorMatrixFilter(_loc29_);
                     _loc30_ = [_loc28_];
                     this["tank" + param1 + "Graphic"].tankmain.filters = _loc30_;
                     this["tank" + param1 + "Graphic"].spinnybit.filters = _loc30_;
                  }
               }
               this["tank" + param1 + "Graphic"].skin.visible = true;
               this["tank" + param1 + "Graphic"].skin.gotoAndStop(this.tankItemDataArray[this._SafeStr_2011[param1][4]][5]);
               this["tank" + param1 + "Graphic"].skin.mask = this["tank" + param1 + "Graphic"].tankmainmask;
            }
         }
         this["tank" + param1 + "Graphic"].scaleX = this["tank" + param1 + "Graphic"].scaleY = _loc12_ * this._SafeStr_1016 / this._SafeStr_1578;
         this["tank" + param1 + "Graphic"].x = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016;
         this["tank" + param1 + "Graphic"].y = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016;
         this["tank" + param1 + "Graphic"].rotation = this["Tank" + param1].GetTransform().GetAngle() * (180 / Math.PI);
         this["Tank" + param1 + "TurretAngle"] = 0;
         if(param1 == this.localTankID && this.mouseAiming == true)
         {
            this._SafeStr_875 = addChild(new _SafeCls_252());
            this._SafeStr_875.x = this["tank" + this.localTankID + "Graphic"].x + 30 * Math.cos(this["tank" + this.localTankID + "Graphic"].rotation * (Math.PI / 180));
            this._SafeStr_875.y = this["tank" + this.localTankID + "Graphic"].y + 30 * Math.sin(this["tank" + this.localTankID + "Graphic"].rotation * (Math.PI / 180));
            this._SafeStr_875.rotation = this["tank" + this.localTankID + "Graphic"].rotation;
            swapChildren(this["tank" + this.localTankID + "Label"],this._SafeStr_875);
         }
         if(param1 == this.localTankID)
         {
            this._SafeStr_2008 = this._SafeStr_1387.gunFireInterval;
            if(!this._SafeStr_741 && this._SafeStr_781)
            {
               _loc31_ = 0;
               while(_loc31_ < 3)
               {
                  if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[this.localTankID][_loc31_]][5][2]))
                  {
                     this._SafeStr_2008 *= this.tankItemDataArray[this._SafeStr_2011[this.localTankID][_loc31_]][5][2];
                  }
                  _loc31_++;
               }
            }
            this.hudthing.healthammo.healthtext.text = this["Tank" + param1 + "Health"];
         }
         if(!this._SafeStr_689)
         {
            this["Tank" + param1 + "X"] = _loc6_ / this._SafeStr_1016;
            this["Tank" + param1 + "Y"] = _loc7_ / this._SafeStr_1016;
            this["Tank" + param1 + "Angle"] = this["Tank" + param1].GetTransform().GetAngle();
         }
         if(this.toggleSnowTest)
         {
            this["tank" + param1 + "Graphic"].tankmain.colour.gotoAndStop(5);
            this["tank" + param1 + "Graphic"].barrel.colour.colour.gotoAndStop(5);
            this["tank" + param1 + "Graphic"].spinnybit.colour.gotoAndStop(5);
         }
         this.setChildIndex(this._SafeStr_2562,this.numChildren - 1);
         this.setChildIndex(this.flagHolder,this.numChildren - 1);
         this._SafeStr_979[param1] = 0;
      }
      
      public function _SafeStr_578(param1:Number = NaN) : void
      {
         var _loc2_:Boolean = false;
         ++this._SafeStr_2042;
         _loc2_ = false;
         if(isNaN(param1))
         {
            param1 = this.localTankID;
            _loc2_ = false;
         }
         else
         {
            _loc2_ = true;
         }
         if(_loc2_ || Boolean(this["Tank" + param1 + "Alive"]))
         {
            this.sendStream.send("recvTankData",param1,this["Tank" + param1].GetWorldCenter().x,this["Tank" + param1].GetWorldCenter().y,this["Tank" + param1].GetTransform().GetAngle(),this["Tank" + param1].GetAngularVelocity(),this["Tank" + param1].GetLinearVelocity().x,this["Tank" + param1].GetLinearVelocity().y,this["Tank" + param1 + "LeftPressed"],this["Tank" + param1 + "RightPressed"],this["Tank" + param1 + "UpPressed"],this["Tank" + param1 + "DownPressed"],this["Tank" + param1 + "TurretAngle"]);
         }
      }
      
      public function recvTankData(param1:*, param2:*, param3:*, param4:*, param5:*, param6:*, param7:*, param8:*, param9:*, param10:*, param11:*, param12:*) : *
      {
         if(this._SafeStr_2565)
         {
            if(!this.hosting || Boolean(this.hosting) && Boolean(this["Tank" + param1 + "Alive"]))
            {
               if(param1 != this.localTankID || param1 != this.localTankID && !this["Tank" + param1 + "Alive"])
               {
                  this["Tank" + param1 + "X"] = param2;
                  this["Tank" + param1 + "Y"] = param3;
                  this["Tank" + param1 + "Angle"] = param4;
                  this["Tank" + param1 + "AngleVelocity"] = param5;
                  this["Tank" + param1 + "LinearVelocityX"] = param6;
                  this["Tank" + param1 + "LinearVelocityY"] = param7;
                  this["Tank" + param1 + "LeftPressed"] = param8;
                  this["Tank" + param1 + "RightPressed"] = param9;
                  this["Tank" + param1 + "UpPressed"] = param10;
                  this["Tank" + param1 + "DownPressed"] = param11;
                  this["Tank" + param1 + "TurretAngle"] = param12;
                  this["Tank" + param1 + "DataIsNew"] = true;
               }
               if(this.hosting)
               {
                  this.sendStream.send("recvTankData",param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12);
               }
            }
         }
      }
      
      public function _SafeStr_2053() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Boolean = false;
         var _loc3_:* = undefined;
         if(!this._SafeStr_1969)
         {
            _loc1_ = new Array(this._SafeStr_486);
            _loc2_ = false;
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_430.length)
            {
               if(this._SafeStr_430[_loc3_] == true && this._SafeStr_451[_loc3_] == true && Boolean(this["Tank" + _loc3_ + "Alive"]))
               {
                  _loc1_[_loc3_] = new Object();
                  _loc1_[_loc3_].x = this["Tank" + _loc3_].GetWorldCenter().x;
                  _loc1_[_loc3_].y = this["Tank" + _loc3_].GetWorldCenter().y;
                  _loc1_[_loc3_].angle = this["Tank" + _loc3_].GetTransform().GetAngle();
                  _loc1_[_loc3_].anglevel = this["Tank" + _loc3_].GetAngularVelocity();
                  _loc1_[_loc3_].linvelx = this["Tank" + _loc3_].GetLinearVelocity().x;
                  _loc1_[_loc3_].linvely = this["Tank" + _loc3_].GetLinearVelocity().y;
                  _loc1_[_loc3_].lp = this["Tank" + _loc3_ + "LeftPressed"];
                  _loc1_[_loc3_].rp = this["Tank" + _loc3_ + "RightPressed"];
                  _loc1_[_loc3_].up = this["Tank" + _loc3_ + "UpPressed"];
                  _loc1_[_loc3_].dp = this["Tank" + _loc3_ + "DownPressed"];
                  _loc1_[_loc3_].ta = this["Tank" + _loc3_ + "TurretAngle"];
                  _loc2_ = true;
               }
               _loc3_++;
            }
            if(_loc2_)
            {
               this.sendStream.send("recvAITankData",_loc1_);
            }
         }
      }
      
      public function recvAITankData(param1:*) : *
      {
         var _loc2_:* = undefined;
         if(this._SafeStr_2565)
         {
            _loc2_ = 0;
            while(_loc2_ < this._SafeStr_486)
            {
               if(param1[_loc2_])
               {
                  this["Tank" + _loc2_ + "X"] = param1[_loc2_].x;
                  this["Tank" + _loc2_ + "Y"] = param1[_loc2_].y;
                  this["Tank" + _loc2_ + "Angle"] = param1[_loc2_].angle;
                  this["Tank" + _loc2_ + "AngleVelocity"] = param1[_loc2_].anglevel;
                  this["Tank" + _loc2_ + "LinearVelocityX"] = param1[_loc2_].linvelx;
                  this["Tank" + _loc2_ + "LinearVelocityY"] = param1[_loc2_].linvely;
                  this["Tank" + _loc2_ + "LeftPressed"] = param1[_loc2_].lp;
                  this["Tank" + _loc2_ + "RightPressed"] = param1[_loc2_].rp;
                  this["Tank" + _loc2_ + "UpPressed"] = param1[_loc2_].up;
                  this["Tank" + _loc2_ + "DownPressed"] = param1[_loc2_].dp;
                  this["Tank" + _loc2_ + "TurretAngle"] = param1[_loc2_].ta;
                  this["Tank" + _loc2_ + "DataIsNew"] = true;
                  trace("got AI data for tank id: " + _loc2_);
               }
               _loc2_++;
            }
         }
      }
      
      public function _SafeStr_1904(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:Number = NaN;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         _loc2_ = new Object();
         _loc2_.left = this["Tank" + this.localTankID + "LeftPressed"];
         _loc2_.right = this["Tank" + this.localTankID + "RightPressed"];
         _loc2_.up = this["Tank" + this.localTankID + "UpPressed"];
         _loc2_.down = this["Tank" + this.localTankID + "DownPressed"];
         _loc3_ = false;
         this["Tank" + this.localTankID + "UpPressed"] = false;
         this["Tank" + this.localTankID + "LeftPressed"] = false;
         this["Tank" + this.localTankID + "RightPressed"] = false;
         this["Tank" + this.localTankID + "DownPressed"] = false;
         if(stage.focus != this.hudthing.txtInGameChatSend)
         {
            if(Boolean(this.isKeyDown(38)) || Boolean(this.isKeyDown(87)))
            {
               this["Tank" + this.localTankID + "UpPressed"] = true;
            }
            if(Boolean(this.isKeyDown(37)) || Boolean(this.isKeyDown(65)))
            {
               this["Tank" + this.localTankID + "LeftPressed"] = true;
            }
            if(Boolean(this.isKeyDown(39)) || Boolean(this.isKeyDown(68)))
            {
               this["Tank" + this.localTankID + "RightPressed"] = true;
            }
            if(Boolean(this.isKeyDown(40)) || Boolean(this.isKeyDown(83)))
            {
               this["Tank" + this.localTankID + "DownPressed"] = true;
            }
         }
         if(this._SafeStr_451[this.localTankID] == true && Boolean(this["Tank" + this.localTankID + "Alive"]))
         {
            if(this.mouseAiming)
            {
               this["Tank" + this.localTankID + "TurretAngle"] = Math.atan2(stage.mouseY * this._SafeStr_2567.height / stage.stageHeight + this._SafeStr_2567.y - this._SafeStr_2567.height / 2 - this["Tank" + this.localTankID].GetWorldCenter().y * this._SafeStr_1016,stage.mouseX * this._SafeStr_2567.width / stage.stageWidth + this._SafeStr_2567.x - this._SafeStr_2567.width / 2 - this["Tank" + this.localTankID].GetWorldCenter().x * this._SafeStr_1016) - this["Tank" + this.localTankID].GetTransform().GetAngle();
               this["Tank" + this.localTankID + "BulletAngle"] = Math.atan2(stage.mouseY * this._SafeStr_2567.height / stage.stageHeight + this._SafeStr_2567.y - this._SafeStr_2567.height / 2 - this["Tank" + this.localTankID].GetWorldCenter().y * this._SafeStr_1016,stage.mouseX * this._SafeStr_2567.width / stage.stageWidth + this._SafeStr_2567.x - this._SafeStr_2567.width / 2 - this["Tank" + this.localTankID].GetWorldCenter().x * this._SafeStr_1016);
            }
            else
            {
               this["Tank" + this.localTankID + "TurretAngle"] = this["Tank" + this.localTankID].GetTransform().GetAngle();
               this["Tank" + this.localTankID + "BulletAngle"] = this["Tank" + this.localTankID].GetTransform().GetAngle();
            }
         }
         _loc4_ = 0;
         while(_loc4_ < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[_loc4_] == true)
            {
               if(this._SafeStr_451[_loc4_] == true)
               {
                  if(_loc4_ != this.localTankID)
                  {
                     if(this["Tank" + _loc4_ + "DataIsNew"] == true)
                     {
                        if(Boolean(this["Tank" + _loc4_ + "X"]) && Boolean(this["Tank" + _loc4_ + "Y"]))
                        {
                           this["Tank" + _loc4_].SetPosition(new b2Vec2(this["Tank" + _loc4_ + "X"],this["Tank" + _loc4_ + "Y"]));
                        }
                        if(this["Tank" + _loc4_ + "Angle"])
                        {
                           this["Tank" + _loc4_].SetAngle(this["Tank" + _loc4_ + "Angle"]);
                        }
                     }
                  }
                  if(this["Tank" + _loc4_ + "Alive"])
                  {
                     if(_loc4_ != this.localTankID)
                     {
                        if(this["Tank" + _loc4_ + "DataIsNew"] == true)
                        {
                           if(Boolean(this["Tank" + _loc4_ + "LinearVelocityX"]) && Boolean(this["Tank" + _loc4_ + "LinearVelocityY"]))
                           {
                              this["Tank" + _loc4_].SetLinearVelocity(new b2Vec2(this["Tank" + _loc4_ + "LinearVelocityX"],this["Tank" + _loc4_ + "LinearVelocityY"]));
                           }
                           if(this["Tank" + _loc4_ + "AngleVelocity"])
                           {
                              this["Tank" + _loc4_].SetAngularVelocity(this["Tank" + _loc4_ + "AngleVelocity"]);
                           }
                        }
                     }
                     _loc5_ = Number(this["Tank" + _loc4_].GetTransform().GetAngle());
                     _loc6_ = Boolean(this._SafeStr_1387["team" + this._SafeStr_1162[_loc4_] + "Juggernaut"]);
                     _loc7_ = _loc6_ ? this._SafeStr_1699 * 1.3 : 1;
                     _loc8_ = this._SafeStr_1387.engineSpeed * this._SafeStr_873 * Math.cos(_loc5_) * this._SafeStr_477[_loc4_] * _loc7_;
                     _loc9_ = this._SafeStr_1387.engineSpeed * this._SafeStr_873 * Math.sin(_loc5_) * this._SafeStr_477[_loc4_] * _loc7_;
                     if(this.wtfMode)
                     {
                        if(this["Tank" + _loc4_ + "UpPressed"])
                        {
                           this["Tank" + _loc4_].ApplyForce(new b2Vec2(0,-4 * this._SafeStr_1387.engineSpeed),this["Tank" + _loc4_].GetWorldCenter());
                        }
                        if(this["Tank" + _loc4_ + "LeftPressed"])
                        {
                           this["Tank" + _loc4_].ApplyForce(new b2Vec2(-this._SafeStr_1387.engineSpeed,0),this["Tank" + _loc4_].GetWorldCenter());
                        }
                        else if(this["Tank" + _loc4_ + "RightPressed"])
                        {
                           this["Tank" + _loc4_].ApplyForce(new b2Vec2(this._SafeStr_1387.engineSpeed,0),this["Tank" + _loc4_].GetWorldCenter());
                        }
                     }
                     else if(Boolean(this["Tank" + _loc4_ + "UpPressed"] && !this["Tank" + _loc4_ + "LeftPressed"]) && Boolean(!this["Tank" + _loc4_ + "RightPressed"]) && !this["Tank" + _loc4_ + "DownPressed"])
                     {
                        this["Tank" + _loc4_ + "LeftWheel"].ApplyForce(new b2Vec2(_loc8_,_loc9_),this["Tank" + _loc4_ + "LeftWheel"].GetWorldCenter());
                        this["Tank" + _loc4_ + "RightWheel"].ApplyForce(new b2Vec2(_loc8_,_loc9_),this["Tank" + _loc4_ + "RightWheel"].GetWorldCenter());
                     }
                     else if(Boolean(this["Tank" + _loc4_ + "UpPressed"] && this["Tank" + _loc4_ + "LeftPressed"]) && Boolean(!this["Tank" + _loc4_ + "RightPressed"]) && !this["Tank" + _loc4_ + "DownPressed"])
                     {
                        this["Tank" + _loc4_ + "LeftWheel"].ApplyForce(new b2Vec2(_loc8_ / 3,_loc9_ / 3),this["Tank" + _loc4_ + "LeftWheel"].GetWorldCenter());
                        this["Tank" + _loc4_ + "RightWheel"].ApplyForce(new b2Vec2(_loc8_,_loc9_),this["Tank" + _loc4_ + "RightWheel"].GetWorldCenter());
                     }
                     else if(Boolean(this["Tank" + _loc4_ + "UpPressed"]) && Boolean(!this["Tank" + _loc4_ + "LeftPressed"]) && Boolean(this["Tank" + _loc4_ + "RightPressed"]) && !this["Tank" + _loc4_ + "DownPressed"])
                     {
                        this["Tank" + _loc4_ + "LeftWheel"].ApplyForce(new b2Vec2(_loc8_,_loc9_),this["Tank" + _loc4_ + "LeftWheel"].GetWorldCenter());
                        this["Tank" + _loc4_ + "RightWheel"].ApplyForce(new b2Vec2(_loc8_ / 3,_loc9_ / 3),this["Tank" + _loc4_ + "RightWheel"].GetWorldCenter());
                     }
                     else if(Boolean(!this["Tank" + _loc4_ + "UpPressed"] && this["Tank" + _loc4_ + "LeftPressed"]) && Boolean(!this["Tank" + _loc4_ + "RightPressed"]) && !this["Tank" + _loc4_ + "DownPressed"])
                     {
                        this["Tank" + _loc4_ + "RightWheel"].ApplyForce(new b2Vec2(_loc8_,_loc9_),this["Tank" + _loc4_ + "RightWheel"].GetWorldCenter());
                        this["Tank" + _loc4_ + "LeftWheel"].ApplyForce(new b2Vec2(-_loc8_,-_loc9_),this["Tank" + _loc4_ + "LeftWheel"].GetWorldCenter());
                     }
                     else if(Boolean(!this["Tank" + _loc4_ + "UpPressed"] && !this["Tank" + _loc4_ + "LeftPressed"]) && Boolean(this["Tank" + _loc4_ + "RightPressed"]) && !this["Tank" + _loc4_ + "DownPressed"])
                     {
                        this["Tank" + _loc4_ + "LeftWheel"].ApplyForce(new b2Vec2(_loc8_,_loc9_),this["Tank" + _loc4_ + "LeftWheel"].GetWorldCenter());
                        this["Tank" + _loc4_ + "RightWheel"].ApplyForce(new b2Vec2(-_loc8_,-_loc9_),this["Tank" + _loc4_ + "RightWheel"].GetWorldCenter());
                     }
                     else if(!this["Tank" + _loc4_ + "UpPressed"] && !this["Tank" + _loc4_ + "LeftPressed"] && !this["Tank" + _loc4_ + "RightPressed"] && Boolean(this["Tank" + _loc4_ + "DownPressed"]))
                     {
                        this["Tank" + _loc4_ + "LeftWheel"].ApplyForce(new b2Vec2(-_loc8_,-_loc9_),this["Tank" + _loc4_ + "LeftWheel"].GetWorldCenter());
                        this["Tank" + _loc4_ + "RightWheel"].ApplyForce(new b2Vec2(-_loc8_,-_loc9_),this["Tank" + _loc4_ + "RightWheel"].GetWorldCenter());
                     }
                     else if(Boolean(!this["Tank" + _loc4_ + "UpPressed"] && this["Tank" + _loc4_ + "LeftPressed"]) && Boolean(!this["Tank" + _loc4_ + "RightPressed"]) && Boolean(this["Tank" + _loc4_ + "DownPressed"]))
                     {
                        this["Tank" + _loc4_ + "LeftWheel"].ApplyForce(new b2Vec2(-_loc8_,-_loc9_),this["Tank" + _loc4_ + "LeftWheel"].GetWorldCenter());
                        this["Tank" + _loc4_ + "RightWheel"].ApplyForce(new b2Vec2(-_loc8_ / 3,-_loc9_ / 3),this["Tank" + _loc4_ + "RightWheel"].GetWorldCenter());
                     }
                     else if(Boolean(!this["Tank" + _loc4_ + "UpPressed"] && !this["Tank" + _loc4_ + "LeftPressed"]) && Boolean(this["Tank" + _loc4_ + "RightPressed"]) && Boolean(this["Tank" + _loc4_ + "DownPressed"]))
                     {
                        this["Tank" + _loc4_ + "LeftWheel"].ApplyForce(new b2Vec2(-_loc8_ / 3,-_loc9_ / 3),this["Tank" + _loc4_ + "LeftWheel"].GetWorldCenter());
                        this["Tank" + _loc4_ + "RightWheel"].ApplyForce(new b2Vec2(-_loc8_,-_loc9_),this["Tank" + _loc4_ + "RightWheel"].GetWorldCenter());
                     }
                     if(this.hosting && this._SafeStr_430[_loc4_] == true)
                     {
                        this["Tank" + _loc4_ + "X"] = this["Tank" + _loc4_].GetWorldCenter().x;
                        this["Tank" + _loc4_ + "Y"] = this["Tank" + _loc4_].GetWorldCenter().y;
                        this["Tank" + _loc4_ + "Angle"] = this["Tank" + _loc4_].GetTransform().GetAngle();
                     }
                  }
                  this["Tank" + _loc4_ + "DataIsNew"] = false;
               }
            }
            _loc4_++;
         }
         if((Boolean(this.isKeyDown(17) && stage.focus != this.hudthing.txtInGameChatSend || this.isKeyDown(32) && stage.focus != this.hudthing.txtInGameChatSend || this.mouseAiming && this._SafeStr_1454)) && Boolean(this._SafeStr_451[this.localTankID] == true) && this._SafeStr_1387["team" + this._SafeStr_1162[this.localTankID] + "CantShoot"] == false)
         {
            if(getTimer() > this._SafeStr_2063 + this._SafeStr_2008 && this._SafeStr_775.s > 0 && Boolean(this["Tank" + this.localTankID + "Alive"]))
            {
               --this._SafeStr_775.s;
               this._SafeStr_2063 = getTimer();
               _loc10_ = Number(Math.round(Math.random() * 999999));
               this.spawnBullet(this.localTankID,this["Tank" + this.localTankID].GetWorldCenter().x,this["Tank" + this.localTankID].GetWorldCenter().y,this["Tank" + this.localTankID + "BulletAngle"],_loc10_,0);
               _loc11_ = this._SafeStr_2360 * Math.cos(this["Tank" + this.localTankID + "BulletAngle"]);
               _loc12_ = this._SafeStr_2360 * Math.sin(this["Tank" + this.localTankID + "BulletAngle"]);
               this["Tank" + this.localTankID].ApplyImpulse(new b2Vec2(_loc11_,_loc12_),this["Tank" + this.localTankID].GetWorldCenter());
               clearInterval(this._SafeStr_271);
               this._SafeStr_271 = setInterval(this._SafeStr_1462,this._SafeStr_1090);
               if(!this._SafeStr_741)
               {
                  this.sendStream.send("recvBulletData",this.localTankID,this["Tank" + this.localTankID].GetWorldCenter().x,this["Tank" + this.localTankID].GetWorldCenter().y,this["Tank" + this.localTankID + "BulletAngle"],_loc10_,0);
                  ++this._SafeStr_2042;
                  _loc3_ = true;
               }
               this.hudthing.healthammo.ammotext.text = this._SafeStr_775.s;
            }
         }
         if(this.hosting && Boolean(this._SafeStr_451[0]))
         {
            this.Tank0X = this.Tank0.GetWorldCenter().x;
            this.Tank0Y = this.Tank0.GetWorldCenter().y;
            this.Tank0Angle = this.Tank0.GetTransform().GetAngle();
         }
         if(!this._SafeStr_741 && this._SafeStr_451[this.localTankID] == true)
         {
            if(_loc2_.down != this["Tank" + this.localTankID + "DownPressed"] || _loc2_.up != this["Tank" + this.localTankID + "UpPressed"] || _loc2_.left != this["Tank" + this.localTankID + "LeftPressed"] || _loc2_.right != this["Tank" + this.localTankID + "RightPressed"] || _loc3_ == true)
            {
               this._SafeStr_578();
            }
         }
      }
      
      public function _SafeStr_2633(param1:Event) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[_loc2_] == true)
            {
               if(this._SafeStr_451[_loc2_] == true)
               {
                  if(this["Tank" + _loc2_ + "Alive"])
                  {
                     if(getTimer() > this._SafeStr_790[_loc2_] + this._SafeStr_1434)
                     {
                        this._SafeStr_790[_loc2_] = getTimer();
                        if(this["Tank" + _loc2_ + "UpPressed"])
                        {
                           this.leftTrackSpeed[_loc2_] += 7;
                           this.rightTrackSpeed[_loc2_] += 7;
                           this.leftTrackSpeed[_loc2_] = Math.min(this.leftTrackSpeed[_loc2_],30);
                           this.rightTrackSpeed[_loc2_] = Math.min(this.rightTrackSpeed[_loc2_],30);
                        }
                        else if(this["Tank" + _loc2_ + "DownPressed"])
                        {
                           this.leftTrackSpeed[_loc2_] -= 7;
                           this.rightTrackSpeed[_loc2_] -= 7;
                           this.leftTrackSpeed[_loc2_] = Math.max(this.leftTrackSpeed[_loc2_],-30);
                           this.rightTrackSpeed[_loc2_] = Math.max(this.rightTrackSpeed[_loc2_],-30);
                        }
                        else if(this["Tank" + _loc2_ + "LeftPressed"])
                        {
                           this.leftTrackSpeed[_loc2_] -= 7;
                           this.rightTrackSpeed[_loc2_] += 7;
                           this.leftTrackSpeed[_loc2_] = Math.max(this.leftTrackSpeed[_loc2_],-30);
                           this.rightTrackSpeed[_loc2_] = Math.min(this.rightTrackSpeed[_loc2_],30);
                        }
                        else if(this["Tank" + _loc2_ + "RightPressed"])
                        {
                           this.leftTrackSpeed[_loc2_] += 7;
                           this.rightTrackSpeed[_loc2_] -= 7;
                           this.leftTrackSpeed[_loc2_] = Math.min(this.leftTrackSpeed[_loc2_],30);
                           this.rightTrackSpeed[_loc2_] = Math.max(this.rightTrackSpeed[_loc2_],-30);
                        }
                        else
                        {
                           if(this.leftTrackSpeed[_loc2_] > 0)
                           {
                              this.leftTrackSpeed[_loc2_] -= 3;
                              this.leftTrackSpeed[_loc2_] = Math.max(this.leftTrackSpeed[_loc2_],0);
                           }
                           else if(this.leftTrackSpeed[_loc2_] < 0)
                           {
                              this.leftTrackSpeed[_loc2_] += 3;
                              this.leftTrackSpeed[_loc2_] = Math.min(this.leftTrackSpeed[_loc2_],0);
                           }
                           if(this.rightTrackSpeed[_loc2_] > 0)
                           {
                              this.rightTrackSpeed[_loc2_] -= 3;
                              this.rightTrackSpeed[_loc2_] = Math.max(this.rightTrackSpeed[_loc2_],0);
                           }
                           else if(this.rightTrackSpeed[_loc2_] < 0)
                           {
                              this.rightTrackSpeed[_loc2_] += 3;
                              this.rightTrackSpeed[_loc2_] = Math.min(this.rightTrackSpeed[_loc2_],0);
                           }
                        }
                     }
                     this._SafeStr_1838[_loc2_] = 1000 / Math.abs(this.leftTrackSpeed[_loc2_]);
                     this._SafeStr_723[_loc2_] = 1000 / Math.abs(this.rightTrackSpeed[_loc2_]);
                     if(getTimer() > this._SafeStr_759[_loc2_] + this._SafeStr_1838[_loc2_])
                     {
                        this._SafeStr_759[_loc2_] = getTimer();
                        if(this.leftTrackSpeed[_loc2_] > 0)
                        {
                           ++this._SafeStr_2164[_loc2_];
                           if(this._SafeStr_2164[_loc2_] == 5)
                           {
                              this._SafeStr_2164[_loc2_] = 1;
                           }
                        }
                        else if(this.leftTrackSpeed[_loc2_] < 0)
                        {
                           --this._SafeStr_2164[_loc2_];
                           if(this._SafeStr_2164[_loc2_] == 0)
                           {
                              this._SafeStr_2164[_loc2_] = 4;
                           }
                        }
                        this["tank" + _loc2_ + "Graphic"].lefttrack.gotoAndStop(this._SafeStr_2164[_loc2_]);
                     }
                     if(getTimer() > this._SafeStr_819[_loc2_] + this._SafeStr_723[_loc2_])
                     {
                        this._SafeStr_819[_loc2_] = getTimer();
                        if(this.rightTrackSpeed[_loc2_] > 0)
                        {
                           ++this._SafeStr_292[_loc2_];
                           if(this._SafeStr_292[_loc2_] == 5)
                           {
                              this._SafeStr_292[_loc2_] = 1;
                           }
                        }
                        else if(this.rightTrackSpeed[_loc2_] < 0)
                        {
                           --this._SafeStr_292[_loc2_];
                           if(this._SafeStr_292[_loc2_] == 0)
                           {
                              this._SafeStr_292[_loc2_] = 4;
                           }
                        }
                        this["tank" + _loc2_ + "Graphic"].righttrack.gotoAndStop(this._SafeStr_292[_loc2_]);
                     }
                     if(this.mouseAiming)
                     {
                        this["tank" + _loc2_ + "Graphic"].barrel.rotation = this["Tank" + _loc2_ + "TurretAngle"] * (180 / Math.PI);
                        this["tank" + _loc2_ + "Graphic"].spinnybit.rotation = this["Tank" + _loc2_ + "TurretAngle"] * (180 / Math.PI);
                        if(_loc2_ == this.localTankID)
                        {
                           this._SafeStr_875.x = this["tank" + this.localTankID + "Graphic"].x + 30 * Math.cos(this["tank" + this.localTankID + "Graphic"].rotation * (Math.PI / 180));
                           this._SafeStr_875.y = this["tank" + this.localTankID + "Graphic"].y + 30 * Math.sin(this["tank" + this.localTankID + "Graphic"].rotation * (Math.PI / 180));
                           this._SafeStr_875.rotation = this["tank" + this.localTankID + "Graphic"].rotation;
                        }
                     }
                  }
                  this["tank" + _loc2_ + "Label"].x = this["Tank" + _loc2_].GetWorldCenter().x * this._SafeStr_1016 - 60;
                  this["tank" + _loc2_ + "Label"].y = this["Tank" + _loc2_].GetWorldCenter().y * this._SafeStr_1016 + this._SafeStr_570;
                  if(this.toggleGraphicsSmoothing == false)
                  {
                     this["tank" + _loc2_ + "Graphic"].x = this["Tank" + _loc2_].GetWorldCenter().x * this._SafeStr_1016;
                     this["tank" + _loc2_ + "Graphic"].y = this["Tank" + _loc2_].GetWorldCenter().y * this._SafeStr_1016;
                     this["tank" + _loc2_ + "Graphic"].rotation = this["Tank" + _loc2_].GetTransform().GetAngle() * (180 / Math.PI);
                  }
                  else
                  {
                     this["tank" + _loc2_ + "Graphic"].x = (this["tank" + _loc2_ + "Graphic"].x + this["Tank" + _loc2_].GetWorldCenter().x * this._SafeStr_1016) / 2;
                     this["tank" + _loc2_ + "Graphic"].y = (this["tank" + _loc2_ + "Graphic"].y + this["Tank" + _loc2_].GetWorldCenter().y * this._SafeStr_1016) / 2;
                     if(Math.abs(this["tank" + _loc2_ + "Graphic"].rotation - this["Tank" + _loc2_].GetTransform().GetAngle() * (180 / Math.PI)) > 180)
                     {
                        this["tank" + _loc2_ + "Graphic"].rotation = (this["tank" + _loc2_ + "Graphic"].rotation + 360 + this["Tank" + _loc2_].GetTransform().GetAngle() * (180 / Math.PI)) / 2;
                     }
                     else
                     {
                        this["tank" + _loc2_ + "Graphic"].rotation = (this["tank" + _loc2_ + "Graphic"].rotation + this["Tank" + _loc2_].GetTransform().GetAngle() * (180 / Math.PI)) / 2;
                     }
                  }
               }
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_327(param1:MouseEvent) : *
      {
         if(param1.target.name != "quittolobbybutton" && param1.target.name != "quitbutton")
         {
            this._SafeStr_1454 = true;
         }
      }
      
      public function _SafeStr_1763(param1:MouseEvent) : *
      {
         this._SafeStr_1454 = false;
      }
      
      public function spawnTankFlames(param1:Event) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:Boolean = false;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[_loc2_] == true)
            {
               if(this._SafeStr_451[_loc2_] == true)
               {
                  if(this["tank" + _loc2_ + "Graphic"].alpha == 1 && this["tank" + _loc2_ + "Graphic"].visible == true)
                  {
                     _loc3_ = Boolean(this._SafeStr_1387["team" + this._SafeStr_1162[_loc2_] + "Juggernaut"]);
                     _loc4_ = _loc3_ ? this._SafeStr_894 : 1;
                     if(Math.random() > 0.8 + this["Tank" + _loc2_ + "Health"] / (this._SafeStr_1387.tankFullHealth * _loc4_) * 0.4)
                     {
                        _loc5_ = Number(Math.random());
                        if(_loc5_ < 0.33)
                        {
                           _loc6_ = this._SafeStr_2562.addChild(new explosmallgraphic1mc());
                        }
                        else if(_loc5_ < 0.66)
                        {
                           _loc6_ = this._SafeStr_2562.addChild(new explosmallgraphic2mc());
                        }
                        else
                        {
                           _loc6_ = this._SafeStr_2562.addChild(new explosmallgraphic3mc());
                        }
                        _loc6_.x = this["tank" + _loc2_ + "Graphic"].x + (Math.random() * 6 - 3);
                        _loc6_.y = this["tank" + _loc2_ + "Graphic"].y + (Math.random() * 6 - 3);
                        _loc6_.rotation = Math.random() * 360;
                     }
                  }
               }
            }
            _loc2_++;
         }
      }
      
      public function spawnTrackFlames(param1:Event) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[_loc2_] == true)
            {
               if(this._SafeStr_451[_loc2_] == true)
               {
                  _loc3_ = Number(Math.sqrt(this["Tank" + _loc2_].GetLinearVelocity().x * this["Tank" + _loc2_].GetLinearVelocity().x + this["Tank" + _loc2_].GetLinearVelocity().y * this["Tank" + _loc2_].GetLinearVelocity().y));
                  if(_loc3_ > 1.5)
                  {
                     if(this["tank" + _loc2_ + "Graphic"].visible == true)
                     {
                        _loc4_ = Number(Math.random());
                        if(_loc4_ < 0.33)
                        {
                           _loc5_ = this._SafeStr_2562.addChild(new explosmallgraphic1mc());
                        }
                        else if(_loc4_ < 0.66)
                        {
                           _loc5_ = this._SafeStr_2562.addChild(new explosmallgraphic2mc());
                        }
                        else
                        {
                           _loc5_ = this._SafeStr_2562.addChild(new explosmallgraphic3mc());
                        }
                        _loc5_.rotation = Math.random() * 360;
                        _loc5_.x = this["tank" + this.localTankID + "Graphic"].x - 27 * Math.sin((this["tank" + this.localTankID + "Graphic"].rotation + 10) * (Math.PI / 180));
                        _loc5_.y = this["tank" + this.localTankID + "Graphic"].y - 27 * Math.cos((this["tank" + this.localTankID + "Graphic"].rotation + 10) * (Math.PI / 180));
                     }
                  }
               }
            }
            _loc2_++;
         }
      }
      
      public function spawnSnowtrail(param1:Event) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_736.length)
         {
            if(this._SafeStr_736[_loc2_].currentFrame == 5)
            {
               if(Math.random() > 0.9)
               {
                  this._SafeStr_2372.push(addChild(new _SafeCls_251()));
                  this._SafeStr_2372[this._SafeStr_2372.length - 1].x = this._SafeStr_736[_loc2_].x + (Math.random() * 6 - 3);
                  this._SafeStr_2372[this._SafeStr_2372.length - 1].y = this._SafeStr_736[_loc2_].y + (Math.random() * 6 - 3);
                  this._SafeStr_2372[this._SafeStr_2372.length - 1].rotation = Math.atan2(this._SafeStr_1855[_loc2_].GetLinearVelocity().y,this._SafeStr_1855[_loc2_].GetLinearVelocity().x) * (180 / Math.PI);
               }
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_519(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(this.tankCameraFollowID != -1)
         {
            _loc2_ = (Math.sqrt(this["Tank" + this.tankCameraFollowID].GetLinearVelocity().x * this["Tank" + this.tankCameraFollowID].GetLinearVelocity().x + this["Tank" + this.tankCameraFollowID].GetLinearVelocity().y * this["Tank" + this.tankCameraFollowID].GetLinearVelocity().y) + 10) * 5;
            this._SafeStr_2402.x = this["Tank" + this.tankCameraFollowID].GetWorldCenter().x * this._SafeStr_1016 + _loc2_ * Math.cos(this["Tank" + this.tankCameraFollowID].GetTransform().GetAngle());
            this._SafeStr_2402.y = this["Tank" + this.tankCameraFollowID].GetWorldCenter().y * this._SafeStr_1016 + _loc2_ * Math.sin(this["Tank" + this.tankCameraFollowID].GetTransform().GetAngle());
            _loc3_ = 60;
            _loc4_ = 5;
            _loc5_ = this._SafeStr_2402.x - this._SafeStr_1338.x;
            _loc6_ = this._SafeStr_2402.y - this._SafeStr_1338.y;
            _loc7_ = Math.min(_loc5_ / _loc3_,1) * _loc4_;
            _loc8_ = Math.min(_loc6_ / _loc3_,1) * _loc4_;
            this._SafeStr_1338.x += _loc7_;
            this._SafeStr_1338.y += _loc8_;
            _loc9_ = this._SafeStr_1666 - 365 + this._SafeStr_2567.width / 2;
            _loc10_ = this._SafeStr_2359 + 365 - this._SafeStr_2567.width / 2;
            _loc11_ = this._SafeStr_858 - 250 + this._SafeStr_2567.height / 2;
            _loc12_ = this._SafeStr_1151 + 250 - this._SafeStr_2567.height / 2;
            if(this._SafeStr_1338.x > _loc9_ && this._SafeStr_1338.x < _loc10_)
            {
               this._SafeStr_2567.x = this._SafeStr_1338.x;
            }
            else if(this._SafeStr_1338.x > _loc9_)
            {
               this._SafeStr_2567.x = _loc10_;
            }
            else
            {
               this._SafeStr_2567.x = _loc9_;
            }
            if(this._SafeStr_1338.y > _loc11_ && this._SafeStr_1338.y < _loc12_)
            {
               this._SafeStr_2567.y = this._SafeStr_1338.y;
            }
            else if(this._SafeStr_1338.y > _loc11_)
            {
               this._SafeStr_2567.y = _loc12_;
            }
            else
            {
               this._SafeStr_2567.y = _loc11_;
            }
         }
      }
      
      public function recvBulletData(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : *
      {
         if(this._SafeStr_2565)
         {
            if(this.inGame)
            {
               if(!this.hosting)
               {
                  if(param1 != this.localTankID)
                  {
                     this.spawnBullet(param1,param2,param3,param4,param5,param6 + this._SafeStr_2180[this.localTankID]);
                  }
               }
               if(this.hosting)
               {
                  if(this["Tank" + param1 + "Health"] > 0)
                  {
                     this.sendStream.send("recvBulletData",param1,param2,param3,param4,param5,this._SafeStr_2180[param1]);
                     this.spawnBullet(param1,param2,param3,param4,param5,this._SafeStr_2180[param1]);
                  }
               }
            }
         }
      }
      
      public function spawnBullet(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number = 0) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:b2Body = null;
         var _loc10_:b2FixtureDef = null;
         var _loc11_:b2BodyDef = null;
         var _loc12_:b2CircleShape = null;
         var _loc13_:Array = null;
         var _loc14_:Object = null;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc18_:* = undefined;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         _loc7_ = Number(this._SafeStr_1387.bulletMoveSpeed);
         _loc8_ = this._SafeStr_1387.bulletStayTime / (this._SafeStr_1387.bulletMoveSpeed / this.bulletMoveSpeedStock);
         if(!this._SafeStr_741 && this._SafeStr_781)
         {
            _loc16_ = 0;
            while(_loc16_ < 3)
            {
               if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[param1][_loc16_]][5][3]))
               {
                  _loc7_ *= this.tankItemDataArray[this._SafeStr_2011[param1][_loc16_]][5][3];
                  _loc8_ *= 1 / this.tankItemDataArray[this._SafeStr_2011[param1][_loc16_]][5][3];
               }
               _loc16_++;
            }
         }
         if(!this._SafeStr_741 && this._SafeStr_781)
         {
            _loc17_ = 0;
            while(_loc17_ < 3)
            {
               if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[param1][_loc17_]][5][4]))
               {
                  _loc8_ *= this.tankItemDataArray[this._SafeStr_2011[param1][_loc17_]][5][4];
               }
               _loc17_++;
            }
         }
         _loc11_ = new b2BodyDef();
         _loc11_.type = b2Body.b2_dynamicBody;
         _loc12_ = new b2CircleShape(this._SafeStr_1387.bulletRadius / this._SafeStr_1016);
         _loc10_ = new b2FixtureDef();
         _loc10_.shape = _loc12_;
         _loc10_.density = this._SafeStr_1387.bulletDensity;
         _loc10_.friction = 0;
         _loc10_.restitution = 1;
         if(param1 == 0)
         {
            _loc10_.filter.maskBits = 1 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 - 4;
         }
         if(param1 == 1)
         {
            _loc10_.filter.maskBits = 1 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 - 8;
         }
         if(param1 == 2)
         {
            _loc10_.filter.maskBits = 1 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 - 16;
         }
         if(param1 == 3)
         {
            _loc10_.filter.maskBits = 1 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 - 32;
         }
         if(param1 == 4)
         {
            _loc10_.filter.maskBits = 1 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 - 64;
         }
         if(param1 == 5)
         {
            _loc10_.filter.maskBits = 1 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 - 128;
         }
         if(param1 == 6)
         {
            _loc10_.filter.maskBits = 1 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 - 256;
         }
         if(param1 == 7)
         {
            _loc10_.filter.maskBits = 1 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 - 512;
         }
         if(this.teamPlay)
         {
            _loc18_ = 0;
            while(_loc18_ < this._SafeStr_1162.length)
            {
               if(Boolean(this._SafeStr_451[_loc18_]) && _loc18_ != param1)
               {
                  if(this._SafeStr_1162[_loc18_] == this._SafeStr_1162[param1])
                  {
                     _loc10_.filter.maskBits -= Math.pow(2,_loc18_ + 2);
                  }
               }
               _loc18_++;
            }
         }
         param2 += Math.cos(param4) / 1.5;
         param3 += Math.sin(param4) / 1.5;
         if(param6 > 16)
         {
            _loc13_ = this._SafeStr_1289(param2 - Math.cos(param4) / 5,param3 - Math.sin(param4) / 5,param4,param1,param6);
         }
         else
         {
            _loc13_ = [new b2Vec2(param2,param3),param4,false];
         }
         if(_loc13_[2] == true)
         {
            _loc10_.filter.maskBits += Math.pow(2,param1 + 2);
         }
         _loc10_.filter.categoryBits = 2;
         _loc14_ = new Object();
         _loc14_.type = "bullet";
         _loc14_.bulletspawntime = getTimer() - param6;
         _loc14_.bulletStayTime = _loc8_;
         _loc14_.bulletcollidedwithwall = false;
         _loc14_.bulletID = param5;
         _loc14_.tankID = param1;
         _loc14_.bouncecount = 0;
         _loc11_.position.Set(_loc13_[0].x,_loc13_[0].y);
         _loc9_ = this._SafeStr_1091.CreateBody(_loc11_);
         _loc9_.CreateFixture(_loc10_);
         _loc9_._SafeStr_1589(true);
         _loc9_.SetLinearVelocity(new b2Vec2(Math.cos(_loc13_[1]) * _loc7_,Math.sin(_loc13_[1]) * _loc7_));
         _loc9_._SafeStr_1910(true);
         _loc9_.SetUserData(_loc14_);
         _loc15_ = this._SafeStr_736.length;
         this._SafeStr_1855[_loc15_] = _loc9_;
         this._SafeStr_736[_loc15_] = addChild(new _SafeCls_219());
         this._SafeStr_2570[_loc15_] = param1;
         if(!this.toggleSnowTest)
         {
            this._SafeStr_736[_loc15_].gotoAndStop(this._SafeStr_1162[param1] + 1);
         }
         else
         {
            this._SafeStr_736[_loc15_].gotoAndStop(5);
         }
         this._SafeStr_736[_loc15_].width = this._SafeStr_1387.bulletRadius * 2 + 1;
         this._SafeStr_736[_loc15_].height = this._SafeStr_1387.bulletRadius * 2 + 1;
         this._SafeStr_736[_loc15_].x = _loc9_.GetWorldCenter().x * this._SafeStr_1016;
         this._SafeStr_736[_loc15_].y = _loc9_.GetWorldCenter().y * this._SafeStr_1016;
         if(!this.muteSfx)
         {
            _loc19_ = param2 * this._SafeStr_1016 - this._SafeStr_1338.x;
            _loc20_ = param3 * this._SafeStr_1016 - this._SafeStr_1338.y;
            _loc21_ = Number(Math.sqrt(_loc19_ * _loc19_ + _loc20_ * _loc20_));
            if(this._SafeStr_2011[param1][2] == 2)
            {
               this.playStereoSound(this.newGunFire1Sound,"fireSoundChannel",_loc19_,_loc20_,_loc21_);
            }
            else if(this._SafeStr_2011[param1][2] == 11)
            {
               this.playStereoSound(this.newGunFire2Sound,"fireSoundChannel",_loc19_,_loc20_,_loc21_);
            }
            else if(this._SafeStr_2011[param1][2] == 5)
            {
               this.playStereoSound(this.newGunFire3Sound,"fireSoundChannel",_loc19_,_loc20_,_loc21_);
            }
            else
            {
               this.playStereoSound(this.newGunFire4Sound,"fireSoundChannel",_loc19_,_loc20_,_loc21_);
            }
         }
         this["tank" + param1 + "Graphic"].barrel.gotoAndPlay(2);
      }
      
      public function _SafeStr_1289(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number = 15) : Array
      {
         var _loc7_:Number = NaN;
         var _loc8_:Array = null;
         var _loc9_:Number = NaN;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:Boolean = false;
         var _loc13_:* = undefined;
         var _loc14_:b2Vec2 = null;
         var _loc15_:b2Vec2 = null;
         var _loc16_:b2Vec2 = null;
         var _loc17_:b2Vec2 = null;
         var _loc18_:b2Vec2 = null;
         var _loc19_:* = undefined;
         var _loc20_:Boolean = false;
         var _loc21_:* = undefined;
         _loc7_ = Number(this._SafeStr_1387.bulletMoveSpeed);
         if(!this._SafeStr_741 && this._SafeStr_781)
         {
            _loc13_ = 0;
            while(_loc13_ < 3)
            {
               if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[param4][_loc13_]][5][3]))
               {
                  _loc7_ *= this.tankItemDataArray[this._SafeStr_2011[param4][_loc13_]][5][3];
               }
               _loc13_++;
            }
         }
         _loc8_ = new Array(3);
         this._SafeStr_2488 = new b2Vec2();
         this.rayEnd = new b2Vec2();
         this._SafeStr_2488.x = param1;
         this._SafeStr_2488.y = param2;
         this.rayEnd.x = this._SafeStr_2488.x;
         this.rayEnd.y = this._SafeStr_2488.y;
         this.rayEnd.x += Math.cos(param3) * _loc7_ * (param5 / 1000);
         this.rayEnd.y += Math.sin(param3) * _loc7_ * (param5 / 1000);
         _loc11_ = new String();
         _loc12_ = false;
         this._SafeStr_2036 = 0;
         _loc10_ = this._SafeStr_1091._SafeStr_1167(this._SafeStr_2488,this.rayEnd);
         while(_loc10_[1] < 1 && this._SafeStr_2036 < param6)
         {
            ++this._SafeStr_2036;
            if(_loc10_[0])
            {
               if(_loc10_[0].GetBody().GetUserData())
               {
                  _loc19_ = _loc10_[0].GetBody().GetUserData();
                  if(_loc19_.type == "tank" || _loc19_.type == "wheel")
                  {
                     _loc11_ = "tank";
                  }
                  if(_loc19_.type == "bullet")
                  {
                     _loc11_ = "bullet";
                  }
                  if(_loc19_.type == "wall")
                  {
                     _loc12_ = true;
                     _loc11_ = "wall";
                  }
               }
            }
            _loc14_ = _loc10_[2];
            _loc15_ = _loc10_[3];
            _loc16_ = new b2Vec2(this.rayEnd.x - _loc14_.x,this.rayEnd.y - _loc14_.y);
            _loc17_ = _loc15_;
            _loc17_.Multiply(b2Math._SafeCls_184(_loc16_,_loc15_));
            _loc18_ = _loc17_;
            _loc18_.Multiply(2);
            if(_loc11_ == "tank")
            {
               if(_loc19_.tankid == param4)
               {
                  _loc20_ = true;
                  if(!this._SafeStr_741 && this._SafeStr_781)
                  {
                     _loc21_ = 0;
                     while(_loc21_ < 3)
                     {
                        if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[param4][_loc21_]][5][7]))
                        {
                           _loc20_ = false;
                           trace("compensation not hit tank");
                           break;
                        }
                        _loc21_++;
                     }
                  }
                  if(_loc12_ && _loc20_)
                  {
                     _loc9_ = Number(Math.atan2(_loc14_.y - this._SafeStr_2488.y,_loc14_.x - this._SafeStr_2488.x));
                     return [_loc14_,_loc9_,_loc12_];
                  }
                  this._SafeStr_2488 = _loc14_;
               }
               else
               {
                  if(!(this.teamPlay && this._SafeStr_1162[param4] == this._SafeStr_1162[_loc19_.tankid]))
                  {
                     _loc9_ = Number(Math.atan2(_loc14_.y - this._SafeStr_2488.y,_loc14_.x - this._SafeStr_2488.x));
                     return [_loc14_,_loc9_,_loc12_];
                  }
                  this._SafeStr_2488 = _loc14_;
               }
            }
            if(_loc11_ == "wall")
            {
               this.rayEnd._SafeStr_2354(_loc18_);
               this._SafeStr_2488 = _loc14_;
               _loc12_ = true;
            }
            _loc10_ = this._SafeStr_1091._SafeStr_1167(this._SafeStr_2488,this.rayEnd);
         }
         if(this._SafeStr_2036 == param6)
         {
            trace("warning, searchbouncecounter reached maxbounces for bullet compansation, shouldnt have bounced that many times.");
         }
         _loc9_ = Number(Math.atan2(this.rayEnd.y - this._SafeStr_2488.y,this.rayEnd.x - this._SafeStr_2488.x));
         return [this.rayEnd,_loc9_,_loc12_];
      }
      
      public function _SafeStr_1809(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:b2Body = null;
         var _loc4_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_1855.length)
         {
            _loc3_ = this._SafeStr_1855[_loc2_];
            if(_loc3_.GetUserData())
            {
               if(_loc3_.GetUserData().type == "bullet")
               {
                  if(getTimer() > _loc3_.GetUserData().bulletspawntime + _loc3_.GetUserData().bulletStayTime || _loc3_.GetUserData().removeme == true || _loc3_.GetUserData().bouncecount >= this._SafeStr_1387.bulletMaxBounces)
                  {
                     if(_loc3_.GetUserData().removeme == true)
                     {
                        if(Math.random() < 0.5)
                        {
                           _loc4_ = this._SafeStr_2562.addChild(new explographic3mc());
                        }
                        else
                        {
                           _loc4_ = this._SafeStr_2562.addChild(new explographic4mc());
                        }
                        _loc4_.x = _loc3_.GetWorldCenter().x * this._SafeStr_1016;
                        _loc4_.y = _loc3_.GetWorldCenter().y * this._SafeStr_1016;
                        _loc4_.scaleX = 0.5;
                        _loc4_.scaleY = 0.5;
                        _loc4_.rotation = Math.random() * 360;
                     }
                     this._SafeStr_1091.DestroyBody(_loc3_);
                     removeChild(this._SafeStr_736[_loc2_]);
                     this._SafeStr_1855.splice(_loc2_,1);
                     this._SafeStr_736.splice(_loc2_,1);
                     this._SafeStr_2570.splice(_loc2_,1);
                  }
               }
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_1805(param1:Event) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_1855.length)
         {
            this._SafeStr_736[_loc2_].x = this._SafeStr_1855[_loc2_].GetWorldCenter().x * this._SafeStr_1016;
            this._SafeStr_736[_loc2_].y = this._SafeStr_1855[_loc2_].GetWorldCenter().y * this._SafeStr_1016;
            this._SafeStr_736[_loc2_].rotation = this._SafeStr_1855[_loc2_].GetTransform().GetAngle() * (180 / Math.PI);
            _loc2_++;
         }
      }
      
      public function _SafeStr_690(param1:Event) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:b2Body = null;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:b2FilterData = null;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_1855.length)
         {
            _loc3_ = this._SafeStr_1855[_loc2_];
            if(_loc3_.GetUserData())
            {
               if(_loc3_.GetUserData().type == "bullet")
               {
                  if(_loc3_.GetUserData().bulletcollidedwithwall == true)
                  {
                     _loc4_ = _loc3_.GetUserData();
                     _loc4_.bulletcollidedwithwall = false;
                     _loc3_.SetUserData(_loc4_);
                     _loc5_ = Number(_loc4_.tankID);
                     _loc6_ = _loc3_.GetFixtureList()._SafeStr_1423();
                     _loc6_.maskBits = 1021;
                     if(!this._SafeStr_741 && this._SafeStr_781)
                     {
                        _loc7_ = 0;
                        while(_loc7_ < 3)
                        {
                           if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[_loc5_][_loc7_]][5][7]))
                           {
                              _loc6_.maskBits -= Math.pow(2,_loc5_ + 2);
                              break;
                           }
                           _loc7_++;
                        }
                     }
                     if(this.teamPlay)
                     {
                        _loc8_ = 0;
                        while(_loc8_ < this._SafeStr_1162.length)
                        {
                           if(Boolean(this._SafeStr_451[_loc8_]) && _loc8_ != _loc4_.tankID)
                           {
                              if(this._SafeStr_1162[_loc8_] == this._SafeStr_1162[_loc4_.tankID])
                              {
                                 _loc6_.maskBits -= Math.pow(2,_loc8_ + 2);
                              }
                           }
                           _loc8_++;
                        }
                     }
                     _loc3_.GetFixtureList()._SafeStr_2403(_loc6_);
                  }
               }
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_1462() : void
      {
         this._SafeStr_775.s = this._SafeStr_2052;
         this.hudthing.healthammo.ammotext.text = this._SafeStr_2052;
         clearInterval(this._SafeStr_271);
      }
      
      public function _SafeStr_1203() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc1_ = Number(getTimer());
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_2591.length)
         {
            if(this._SafeStr_2591[_loc2_] + this._SafeStr_1387.magReloadTime <= _loc1_)
            {
               this._SafeStr_725[_loc2_] = this._SafeStr_1387.bulletsPerMag;
               clearInterval(this._SafeStr_1940[_loc2_]);
               _loc3_ = 0;
               while(_loc3_ < 3)
               {
                  if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[_loc2_][_loc3_]][5][6]))
                  {
                     this._SafeStr_725[_loc2_] *= this.tankItemDataArray[this._SafeStr_2011[_loc2_][_loc3_]][5][6];
                     this._SafeStr_725[_loc2_] = Math.round(this._SafeStr_725[_loc2_]);
                     this._SafeStr_725[_loc2_] = Math.max(this._SafeStr_725[_loc2_],1);
                  }
                  _loc3_++;
               }
               if(this._SafeStr_1387["team" + this._SafeStr_1162[_loc2_] + "Juggernaut"] == true)
               {
                  this._SafeStr_725[_loc2_] *= 2;
               }
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_1592(param1:Event) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:Object = null;
         _loc2_ = this._SafeStr_1091.GetBodyList();
         while(_loc2_)
         {
            _loc3_ = _loc2_;
            _loc2_ = _loc2_._SafeStr_1023();
            if(_loc3_.GetUserData())
            {
               if(_loc3_.GetUserData().tankhit == true)
               {
                  if(this["Tank" + _loc3_.GetUserData().tankid + "Health"] > 0)
                  {
                     if(this._SafeStr_1749[_loc3_.GetUserData().tankid] == false)
                     {
                        if(this._SafeStr_979[_loc3_.GetUserData().tankid] < getTimer() - this.spawnProtectionTime)
                        {
                           this.dropTankHealth(_loc3_.GetUserData().tankid,_loc3_.GetUserData().tankhitbulletid,_loc3_.GetUserData().attackingtankid);
                           if(!this._SafeStr_741)
                           {
                              this.sendStream.send("dropTankHealth",_loc3_.GetUserData().tankid,_loc3_.GetUserData().tankhitbulletid,_loc3_.GetUserData().attackingtankid,this["Tank" + _loc3_.GetUserData().tankid + "Health"]);
                           }
                        }
                        else
                        {
                           trace("spawn protected!!!");
                           this.playSpawnProtectionSound(_loc3_.GetUserData().tankid);
                           this.sendStream.send("playSpawnProtectionSound",_loc3_.GetUserData().tankid);
                        }
                     }
                     else
                     {
                        this.shieldGraphicsTankHit(_loc3_.GetUserData().tankid);
                        this.sendStream.send("shieldGraphicsTankHit",_loc3_.GetUserData().tankid);
                     }
                  }
                  _loc4_ = new Object();
                  _loc4_ = _loc3_.GetUserData();
                  _loc4_.tankhit = false;
                  _loc4_.tankhitbulletid = 0;
                  _loc3_.SetUserData(_loc4_);
               }
            }
         }
      }
      
      public function dropTankHealth(param1:Number, param2:Number, param3:Number, param4:Number = NaN) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Body = null;
         var _loc13_:Object = null;
         if(this.inGame && this._SafeStr_2565)
         {
            --this["Tank" + param1 + "Health"];
            if(!isNaN(param4))
            {
               if(param4 != this["Tank" + param1 + "Health"])
               {
                  this._SafeStr_360("I am ID: " + this.localTankID + " the tank hit is: " + param1 + " I\'ve dropped the health to: " + this["Tank" + param1 + "Health"] + " but weve received it as: " + param4);
                  trace("DISPARTIY!!!");
               }
            }
            if(param1 == this.localTankID)
            {
               this.hudthing.healthammo.healthtext.text = this["Tank" + param1 + "Health"];
               this.hudthing.hudpain.gotoAndPlay(2);
               if(!this.muteSfx)
               {
                  _loc6_ = Number(Math.random());
                  if(_loc6_ < 0.33)
                  {
                     this.recvDamage7Sound.play();
                  }
                  else if(_loc6_ < 0.66)
                  {
                     this.recvDamage710Sound.play();
                  }
                  else
                  {
                     this.recvDamage720Sound.play();
                  }
               }
            }
            if(this["Tank" + param1 + "Health"] == 0)
            {
               if(this.gameMode == 0)
               {
                  this.killTank(param1,true);
                  this["Tank" + param1 + "Alive"] = false;
                  if(this.localTankID == param1)
                  {
                     this._SafeStr_2179 = setInterval(this._SafeStr_365,4000);
                     if(this._SafeStr_741)
                     {
                        this.hudthing.quitsingleplayerbtn.gotoAndPlay(2);
                     }
                     else
                     {
                        clearInterval(this._SafeStr_284);
                     }
                  }
                  if(this.hosting && !this._SafeStr_741)
                  {
                     this._SafeStr_578(param1);
                  }
                  if(this.hosting && !this._SafeStr_430[param1] && !this._SafeStr_430[param3] && !this._SafeStr_741)
                  {
                     ++this._SafeStr_1525[param1][1];
                     if(param3 != param1)
                     {
                        ++this._SafeStr_1525[param3][0];
                        _loc7_ = this._SafeStr_503();
                        this._SafeStr_1525[param3][8] += _loc7_;
                        this.sendStream.send("recvCoinNotification",param3,_loc7_);
                        this.recvCoinNotification(param3,_loc7_);
                     }
                  }
                  if(Boolean(this.hosting && this._SafeStr_430[param1]) && Boolean(!this._SafeStr_430[param3]) && !this._SafeStr_741)
                  {
                     ++this._SafeStr_1525[param3][6];
                  }
                  if(this._SafeStr_741 && this._SafeStr_2109 && param1 != 0)
                  {
                     this.destroyTank(param1);
                     this.singlePlayerSpawnRandomTank(param1);
                     ++this._SafeStr_1830;
                     this.hudthing.timermc.scoretext.text = this._SafeStr_1830;
                     if(this._SafeStr_2275 == true)
                     {
                        this._SafeStr_2275 = false;
                        this._SafeStr_2558 = this._SafeStr_1890 + this.TTstartLength;
                        addEventListener(Event.ENTER_FRAME,this._SafeStr_1775);
                     }
                     else
                     {
                        this._SafeStr_2558 += this.TTkillTimeBoost;
                     }
                  }
                  else if(this._SafeStr_741 && this._SafeStr_2109 && param1 == 0)
                  {
                     this._SafeStr_2298 = setTimeout(this._SafeStr_594,3000,0);
                  }
               }
               else if(this.gameMode == 1)
               {
                  if(param3 != param1)
                  {
                     if(!this.teamPlay)
                     {
                        ++this._SafeStr_2343[param3];
                     }
                     else
                     {
                        ++this._SafeStr_2343[param3];
                        ++this.simpleStatsKillsTeam[this._SafeStr_1162[param3]];
                     }
                     if(this.hosting && !this._SafeStr_430[param1] && !this._SafeStr_430[param3] && !this._SafeStr_741)
                     {
                        ++this._SafeStr_1525[param3][0];
                        ++this._SafeStr_1525[param1][1];
                        _loc7_ = 1;
                        this._SafeStr_1525[param3][8] += _loc7_;
                        this.sendStream.send("recvCoinNotification",param3,_loc7_);
                        this.recvCoinNotification(param3,_loc7_);
                     }
                     if(Boolean(this.hosting && this._SafeStr_430[param1]) && Boolean(!this._SafeStr_430[param3]) && !this._SafeStr_741)
                     {
                        ++this._SafeStr_1525[param3][6];
                     }
                  }
                  else if(!this.teamPlay)
                  {
                     --this._SafeStr_2343[param3];
                  }
                  else
                  {
                     --this._SafeStr_2343[param3];
                     --this.simpleStatsKillsTeam[this._SafeStr_1162[param3]];
                  }
                  this.killTank(param1,false);
                  if(this.hosting)
                  {
                     setTimeout(this.respawnTank,2000,param1);
                  }
                  this._SafeStr_947();
               }
               else if(this.gameMode == 2)
               {
                  this.killTank(param1,false);
                  if(this.hosting)
                  {
                     setTimeout(this.respawnTank,3000,param1);
                  }
                  if(this._SafeStr_1867[param1] != -1)
                  {
                     this.flagDropped(this._SafeStr_1867[param1],param1);
                  }
                  if(this.hosting && param3 != param1)
                  {
                     if(this.hosting && !this._SafeStr_430[param1] && !this._SafeStr_430[param3] && !this._SafeStr_741)
                     {
                        ++this._SafeStr_1525[param3][0];
                        ++this._SafeStr_1525[param1][1];
                     }
                  }
               }
            }
            if(!this.muteSfx)
            {
               _loc8_ = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016 - this._SafeStr_1338.x;
               _loc9_ = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016 - this._SafeStr_1338.y;
               _loc10_ = Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_));
               _loc11_ = Number(Math.random());
               if(_loc11_ < 0.5)
               {
                  this.playStereoSound(this.tankExplosionQLoSound,"tankExplosionQChannel",_loc8_,_loc9_,_loc10_);
               }
               else
               {
                  this.playStereoSound(this.tankExplosionQSound,"tankExplosionQChannel",_loc8_,_loc9_,_loc10_);
               }
            }
            _loc5_ = 0;
            while(_loc5_ < this._SafeStr_1855.length)
            {
               _loc12_ = this._SafeStr_1855[_loc5_];
               if(_loc12_.GetUserData())
               {
                  if(_loc12_.GetUserData().bulletID == param2)
                  {
                     _loc13_ = _loc12_.GetUserData();
                     _loc13_.removeme = true;
                     _loc12_.SetUserData(_loc13_);
                     break;
                  }
               }
               _loc5_++;
            }
         }
      }
      
      public function playSpawnProtectionSound(param1:Number) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!this.muteSfx && Boolean(this["Tank" + param1]))
         {
            _loc2_ = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016 - this._SafeStr_1338.x;
            _loc3_ = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016 - this._SafeStr_1338.y;
            _loc4_ = Number(Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_));
            this.playStereoSound(this.spawnProtectionSound,"spawnProtectionSoundChannel",_loc2_,_loc3_,_loc4_);
         }
      }
      
      public function playQuakeSound() : *
      {
         var _loc1_:Array = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         if(Boolean(this._SafeStr_451[this.localTankID]) && !this.muteSfx)
         {
            if(this.gameMode == 1)
            {
               _loc1_ = this._SafeStr_2343.slice();
               _loc1_.sort(Array.DESCENDING);
               if(this._SafeStr_1360 == "yes" && _loc1_[1] == this._SafeStr_2343[this.localTankID])
               {
                  this.tiedLeadSound.play();
                  this._SafeStr_1360 = "tied";
               }
               else if(this._SafeStr_1360 == "tied" && _loc1_[0] == this._SafeStr_2343[this.localTankID] && _loc1_[1] < this._SafeStr_2343[this.localTankID])
               {
                  this.takenLeadSound.play();
                  this._SafeStr_1360 = "yes";
               }
               else if(this._SafeStr_1360 == "tied" && _loc1_[0] > this._SafeStr_2343[this.localTankID])
               {
                  this.lostLeadSound.play();
                  this._SafeStr_1360 = "no";
               }
               else if(this._SafeStr_1360 == "no" && this._SafeStr_2343[this.localTankID] == _loc1_[0])
               {
                  this.tiedLeadSound.play();
                  this._SafeStr_1360 = "tied";
               }
            }
            else if(this.gameMode == 2)
            {
               _loc2_ = Number(this._SafeStr_1162[this.localTankID]);
               _loc4_ = 0;
               while(_loc4_ < this._SafeStr_451.length)
               {
                  if(this._SafeStr_451[_loc4_] == true)
                  {
                     if(this._SafeStr_1162[_loc4_] != _loc2_)
                     {
                        _loc3_ = Number(this._SafeStr_1162[_loc4_]);
                        break;
                     }
                  }
                  _loc4_++;
               }
               if(this._SafeStr_1360 == "tied")
               {
                  if(this.simpleStatsCapturesTeam[_loc2_] < this.simpleStatsCapturesTeam[_loc3_])
                  {
                     this.lostLeadSound.play();
                     this._SafeStr_1360 = "no";
                  }
                  else if(this.simpleStatsCapturesTeam[_loc2_] > this.simpleStatsCapturesTeam[_loc3_])
                  {
                     this.takenLeadSound.play();
                     this._SafeStr_1360 = "yes";
                  }
               }
               else if(this._SafeStr_1360 == "yes")
               {
                  if(this.simpleStatsCapturesTeam[_loc2_] <= this.simpleStatsCapturesTeam[_loc3_])
                  {
                     if(this.simpleStatsCapturesTeam[_loc2_] == this.simpleStatsCapturesTeam[_loc3_])
                     {
                        this.tiedLeadSound.play();
                        this._SafeStr_1360 = "tied";
                     }
                  }
               }
               else if(this._SafeStr_1360 == "no")
               {
                  if(this.simpleStatsCapturesTeam[_loc2_] == this.simpleStatsCapturesTeam[_loc3_])
                  {
                     this.tiedLeadSound.play();
                     this._SafeStr_1360 = "tied";
                  }
               }
            }
         }
      }
      
      public function killTank(param1:Number, param2:Boolean) : *
      {
         var _loc3_:_SafeCls_189 = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Boolean = false;
         this["Tank" + param1 + "Alive"] = false;
         this["Tank" + param1].SetLinearVelocity(new b2Vec2(0,0));
         this["Tank" + param1].SetAngularVelocity(0);
         if(!this.muteSfx)
         {
            _loc4_ = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016 - this._SafeStr_1338.x;
            _loc5_ = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016 - this._SafeStr_1338.y;
            _loc6_ = Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_));
            this.playStereoSound(this.tankExplodeSound,"tankExplodeChannel",_loc4_,_loc5_,_loc6_);
            if(this._SafeStr_1759 && this.gameMode == 1)
            {
               this.playQuakeSound();
            }
         }
         if(param2)
         {
            removeChild(this["tank" + param1 + "Graphic"]);
            this["tank" + param1 + "Graphic"] = addChild(new _SafeCls_221());
            this["tank" + param1 + "Graphic"].gotoAndStop(this._SafeStr_1162[param1] + 1);
            _loc7_ = this._SafeStr_1387.tankSize / this._SafeStr_1016;
            _loc8_ = Boolean(this._SafeStr_1387["team" + this._SafeStr_1162[param1] + "Juggernaut"]);
            if(_loc8_)
            {
               _loc7_ *= this._SafeStr_1699;
            }
            this["tank" + param1 + "Graphic"].scaleX = this["tank" + param1 + "Graphic"].scaleY = _loc7_ * this._SafeStr_1016 / this._SafeStr_1578;
            this["tank" + param1 + "Graphic"].x = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016;
            this["tank" + param1 + "Graphic"].y = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016;
            this["tank" + param1 + "Graphic"].rotation = this["Tank" + param1].GetTransform().GetAngle() * (180 / Math.PI);
            this["Tank" + param1].SetType(b2Body.b2_staticBody);
            this["tank" + param1 + "Graphic"].alpha = 1;
            this["tank" + param1 + "Label"].alpha = 1;
         }
         else
         {
            this["Tank" + param1].SetActive(false);
            this["Tank" + param1 + "LeftWheel"].SetActive(false);
            this["Tank" + param1 + "RightWheel"].SetActive(false);
            this["tank" + param1 + "Graphic"].visible = false;
            this["tank" + param1 + "Label"].visible = false;
         }
         _loc3_ = new _SafeCls_189(new NewExplosion4m40());
         this._SafeStr_2562.addChild(_loc3_);
         _loc3_.x = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016;
         _loc3_.y = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016;
         this.setChildIndex(this._SafeStr_2562,this.numChildren - 1);
         if(param1 == this.localTankID)
         {
            this._SafeStr_2037 = true;
            this._SafeStr_947(true);
            if(this.mouseAiming)
            {
               this._SafeStr_875.visible = false;
            }
         }
      }
      
      public function respawnTank(param1:Number, param2:Number = NaN, param3:Number = NaN, param4:Number = NaN) : *
      {
         var _loc5_:Boolean = false;
         var _loc6_:* = undefined;
         var _loc7_:Number = NaN;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         if(this.inGame && this._SafeStr_2565 && !this._SafeStr_1189)
         {
            if(Boolean(isNaN(param2)) && Boolean(isNaN(param3)) && Boolean(isNaN(param4)))
            {
               if(this.gameMode == 1 || this.gameMode == 2)
               {
                  _loc7_ = this._SafeStr_1070(param1);
                  param2 = Number(this["Tank" + _loc7_ + "SpawnX"]);
                  param3 = Number(this["Tank" + _loc7_ + "SpawnY"]);
                  param4 = Number(this["Tank" + _loc7_ + "SpawnAngle"]);
               }
            }
            if(this.hosting)
            {
               this.sendStream.send("respawnTank",param1,param2,param3,param4);
            }
            this["Tank" + param1].SetPosition(new b2Vec2(param2 / this._SafeStr_1016,param3 / this._SafeStr_1016));
            this["Tank" + param1].SetAngle(param4 * (Math.PI / 180));
            this["Tank" + param1 + "LeftWheel"].SetPosition(new b2Vec2(param2 / this._SafeStr_1016,(param3 - this._SafeStr_1177) / this._SafeStr_1016));
            this["Tank" + param1 + "RightWheel"].SetPosition(new b2Vec2(param2 / this._SafeStr_1016,(param3 + this._SafeStr_1177) / this._SafeStr_1016));
            this["tank" + param1 + "Graphic"].x = param2;
            this["tank" + param1 + "Graphic"].y = param3;
            this["tank" + param1 + "Graphic"].rotation = param4;
            this["tank" + param1 + "Label"].x = param2 - 60;
            this["tank" + param1 + "Label"].y = param3 + this._SafeStr_570;
            this["Tank" + param1].SetActive(true);
            this["Tank" + param1 + "LeftWheel"].SetActive(true);
            this["Tank" + param1 + "RightWheel"].SetActive(true);
            this["tank" + param1 + "Graphic"].visible = true;
            this["tank" + param1 + "Label"].visible = true;
            this["Tank" + param1 + "X"] = param2 / this._SafeStr_1016;
            this["Tank" + param1 + "Y"] = param3 / this._SafeStr_1016;
            this["Tank" + param1 + "Angle"] = param4 / this._SafeStr_1016;
            this["tank" + param1 + "Graphic"].alpha = 1;
            this["tank" + param1 + "Label"].alpha = 1;
            _loc5_ = Boolean(this._SafeStr_1387["team" + this._SafeStr_1162[param1] + "Juggernaut"]);
            _loc6_ = _loc5_ ? this._SafeStr_894 : 1;
            this["Tank" + param1 + "Health"] = this._SafeStr_1387.tankFullHealth;
            if(!this._SafeStr_741 && this._SafeStr_781)
            {
               _loc8_ = 0;
               while(_loc8_ < 3)
               {
                  if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[param1][_loc8_]][5][0]))
                  {
                     this["Tank" + param1 + "Health"] *= this.tankItemDataArray[this._SafeStr_2011[param1][_loc8_]][5][0];
                     this["Tank" + param1 + "Health"] = Math.round(this["Tank" + param1 + "Health"]);
                     this["Tank" + param1 + "Health"] = Math.max(this["Tank" + param1 + "Health"],1);
                  }
                  _loc8_++;
               }
            }
            this["Tank" + param1 + "Health"] *= _loc6_;
            this["Tank" + param1 + "Alive"] = true;
            if(this.localTankID == param1)
            {
               this.hudthing.healthammo.healthtext.text = this["Tank" + param1 + "Health"];
               this._SafeStr_1462();
               if(!this.isKeyDown(88))
               {
                  this._SafeStr_2037 = false;
                  this._SafeStr_947(false);
               }
               if(this.mouseAiming)
               {
                  this._SafeStr_875.visible = true;
               }
            }
            if(param1 == this.tankCameraFollowID)
            {
               _loc9_ = (Math.sqrt(this["Tank" + this.tankCameraFollowID].GetLinearVelocity().x * this["Tank" + this.tankCameraFollowID].GetLinearVelocity().x + this["Tank" + this.tankCameraFollowID].GetLinearVelocity().y * this["Tank" + this.tankCameraFollowID].GetLinearVelocity().y) + 10) * 5;
               this._SafeStr_1338.x = this["Tank" + this.tankCameraFollowID].GetWorldCenter().x * this._SafeStr_1016 + _loc9_ * Math.cos(this["Tank" + this.tankCameraFollowID].GetTransform().GetAngle());
               this._SafeStr_1338.y = this["Tank" + this.tankCameraFollowID].GetWorldCenter().y * this._SafeStr_1016 + _loc9_ * Math.sin(this["Tank" + this.tankCameraFollowID].GetTransform().GetAngle());
            }
            this._SafeStr_979[param1] = getTimer();
            trace("respawnTank");
         }
      }
      
      public function _SafeStr_1070(param1:Number) : Number
      {
         var _loc2_:Array = null;
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc7_:Array = null;
         var _loc8_:* = undefined;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Array = null;
         var _loc12_:Array = null;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:Number = NaN;
         trace("assignSpawnPosition for tank ID " + param1);
         _loc2_ = new Array(this.levelChosenMaxPlayers);
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc2_[_loc3_] = 0;
            _loc3_++;
         }
         _loc4_ = 50;
         if(this.gameMode == 2)
         {
            _loc10_ = Number(this._SafeStr_1162[param1]);
            if(this.flag0Team == _loc10_)
            {
               _loc9_ = 0;
            }
            else if(this.flag1Team == _loc10_)
            {
               _loc9_ = 1;
            }
            _loc11_ = new Array(2);
            _loc12_ = new Array(2);
            _loc11_[0] = 0;
            _loc11_[1] = 0;
            _loc12_[0] = 0;
            _loc12_[1] = 0;
            _loc13_ = 0;
            while(_loc13_ < 2)
            {
               _loc14_ = 0;
               while(_loc14_ < this.levelChosenMaxPlayers)
               {
                  _loc11_[_loc13_] += Math.sqrt(Math.pow(this.flagSpawnArray[_loc9_].x - this["Tank" + _loc14_ + "SpawnX"],2) + Math.pow(this.flagSpawnArray[_loc9_].y - this["Tank" + _loc14_ + "SpawnY"],2));
                  _loc14_++;
               }
               _loc12_[_loc13_] = _loc11_[_loc13_] / this.levelChosenMaxPlayers;
               if(_loc13_ == 0)
               {
                  trace("average distance for team 0\'s flag is: " + _loc12_[_loc13_]);
               }
               _loc13_++;
            }
         }
         _loc6_ = 0;
         while(_loc6_ < this.levelChosenMaxPlayers)
         {
            _loc15_ = 0;
            while(_loc15_ < this._SafeStr_451.length)
            {
               if(this._SafeStr_451[_loc15_] == true && this["Tank" + _loc15_ + "Alive"] == true)
               {
                  _loc5_ = Number(Math.sqrt(Math.pow(this["Tank" + _loc15_].GetWorldCenter().x * this._SafeStr_1016 - this["Tank" + _loc6_ + "SpawnX"],2) + Math.pow(this["Tank" + _loc15_].GetWorldCenter().y * this._SafeStr_1016 - this["Tank" + _loc6_ + "SpawnY"],2)));
                  _loc2_[_loc6_] += _loc5_;
                  trace("spawnpoint " + _loc6_ + " is " + _loc5_ + " away from tank " + _loc15_);
                  if(_loc5_ < _loc4_)
                  {
                     _loc2_[_loc6_] += -1000;
                     trace("giving -1000 penalty to spawnpoint " + _loc6_ + " for being very close to tank " + _loc15_);
                  }
               }
               _loc15_++;
            }
            if(this.gameMode == 2)
            {
               _loc16_ = Number(Math.sqrt(Math.pow(this.flagSpawnArray[_loc9_].x - this["Tank" + _loc6_ + "SpawnX"],2) + Math.pow(this.flagSpawnArray[_loc9_].y - this["Tank" + _loc6_ + "SpawnY"],2)));
               if(_loc16_ > _loc12_[_loc9_])
               {
                  _loc2_[_loc6_] += -8000;
                  trace("giving -8000 penalty to spawnpoint " + _loc6_ + " for being " + _loc16_ + " from own flag, average is " + _loc12_[_loc9_]);
               }
            }
            _loc2_[_loc6_] /= this.levelChosenMaxPlayers;
            _loc6_++;
         }
         _loc7_ = new Array(2);
         _loc7_ = [0,_loc2_[0]];
         _loc8_ = 0;
         while(_loc8_ < _loc2_.length)
         {
            if(_loc2_[_loc8_] > _loc7_[1])
            {
               _loc7_ = [_loc8_,_loc2_[_loc8_]];
            }
            _loc8_++;
         }
         trace("spawn point with the largest average is spawnpoint " + _loc7_[0] + " with a distance of " + _loc7_[1]);
         return _loc7_[0];
      }
      
      public function _SafeStr_1305(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Array = null;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         var _loc17_:String = null;
         var _loc18_:* = undefined;
         var _loc19_:String = null;
         _loc2_ = 0;
         _loc3_ = 0;
         _loc6_ = -1;
         _loc7_ = 0;
         _loc8_ = 0;
         _loc9_ = -1;
         _loc10_ = new Array(4);
         _loc11_ = 0;
         while(_loc11_ < _loc10_.length)
         {
            _loc10_[_loc11_] = 0;
            _loc11_++;
         }
         _loc12_ = 0;
         while(_loc12_ < this._SafeStr_451.length)
         {
            if(this._SafeStr_451[_loc12_] == true)
            {
               ++_loc10_[this._SafeStr_1162[_loc12_]];
            }
            _loc12_++;
         }
         _loc13_ = 0;
         while(_loc13_ < _loc10_.length)
         {
            if(_loc10_[_loc13_] > 0)
            {
               _loc8_++;
            }
            _loc13_++;
         }
         _loc14_ = 0;
         while(_loc14_ < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[_loc14_] == true && this._SafeStr_451[_loc14_] == true)
            {
               _loc3_++;
               if(this._SafeStr_1162[_loc14_] != _loc9_)
               {
                  _loc9_ = Number(this._SafeStr_1162[_loc14_]);
               }
               if(this["Tank" + _loc14_ + "Alive"] == true)
               {
                  _loc2_++;
                  _loc4_ = this.tankNameArray[_loc14_];
                  _loc5_ = _loc14_;
                  if(this._SafeStr_1162[_loc14_] != _loc6_)
                  {
                     _loc6_ = Number(this._SafeStr_1162[_loc14_]);
                     _loc7_++;
                  }
               }
            }
            _loc14_++;
         }
         if(this.gameMode == 0)
         {
            if(!this.teamPlay)
            {
               if(_loc2_ == 1 && _loc3_ > 1)
               {
                  removeEventListener(Event.ENTER_FRAME,this._SafeStr_1305);
                  if(!this._SafeStr_741)
                  {
                     this._SafeStr_2298 = setInterval(this._SafeStr_1011,3000,_loc4_);
                     this.sendStream.send("clientRecvWinner",_loc4_,_loc5_);
                     this._SafeStr_2416();
                  }
                  else
                  {
                     this._SafeStr_2298 = setInterval(this._SafeStr_594,3000,this.Tank0Health);
                  }
               }
               else if(_loc2_ == 0 && _loc3_ == 1)
               {
                  removeEventListener(Event.ENTER_FRAME,this._SafeStr_1305);
                  this._SafeStr_2298 = setInterval(this._SafeStr_1011,3000,"Nobody");
               }
            }
            else if(this.teamPlay)
            {
               if(_loc7_ == 1 && _loc3_ > 1 && _loc8_ > 1)
               {
                  removeEventListener(Event.ENTER_FRAME,this._SafeStr_1305);
                  switch(_loc6_)
                  {
                     case 0:
                        _loc4_ = "Green team";
                        break;
                     case 1:
                        _loc4_ = "Blue team";
                        break;
                     case 2:
                        _loc4_ = "Red team";
                        break;
                     case 3:
                        _loc4_ = "Yellow team";
                  }
                  if(!this._SafeStr_741)
                  {
                     this._SafeStr_2298 = setInterval(this._SafeStr_1011,3000,_loc4_);
                     this.sendStream.send("clientRecvWinner",_loc4_,_loc5_);
                     this._SafeStr_2416();
                  }
                  else
                  {
                     this._SafeStr_2298 = setInterval(this._SafeStr_594,3000,this.Tank0Health);
                  }
               }
            }
         }
         else if(this.gameMode == 1)
         {
            if(!this.teamPlay)
            {
               _loc15_ = 0;
               while(_loc15_ < this._SafeStr_451.length)
               {
                  if(this._SafeStr_2343[_loc15_] >= this.deathmatchKillLimit)
                  {
                     removeEventListener(Event.ENTER_FRAME,this._SafeStr_1305);
                     removeEventListener(Event.ENTER_FRAME,this._SafeStr_1592);
                     this._SafeStr_2298 = setInterval(this._SafeStr_1011,6000,this.tankNameArray[_loc15_]);
                     this.sendStream.send("clientRecvWinner",this.tankNameArray[_loc15_],this._SafeStr_1162[_loc15_]);
                     this._SafeStr_2416();
                     this._SafeStr_1189 = true;
                     this._SafeStr_947(true,this.tankNameArray[_loc15_],this._SafeStr_1162[_loc15_]);
                  }
                  _loc15_++;
               }
            }
            else if(this.teamPlay)
            {
               _loc16_ = 0;
               while(_loc16_ < this.simpleStatsKillsTeam.length)
               {
                  if(this.simpleStatsKillsTeam[_loc16_] >= this.deathmatchKillLimit)
                  {
                     removeEventListener(Event.ENTER_FRAME,this._SafeStr_1305);
                     removeEventListener(Event.ENTER_FRAME,this._SafeStr_1592);
                     switch(_loc16_)
                     {
                        case 0:
                           _loc17_ = "Green team";
                           break;
                        case 1:
                           _loc17_ = "Blue team";
                           break;
                        case 2:
                           _loc17_ = "Red team";
                           break;
                        case 3:
                           _loc17_ = "Yellow team";
                     }
                     this._SafeStr_2298 = setInterval(this._SafeStr_1011,6000,_loc17_);
                     this.sendStream.send("clientRecvWinner",_loc17_,_loc16_);
                     this._SafeStr_2416();
                     this._SafeStr_1189 = true;
                     this._SafeStr_947(true,_loc17_,_loc16_);
                  }
                  _loc16_++;
               }
            }
         }
         else if(this.gameMode == 2)
         {
            _loc18_ = 0;
            while(_loc18_ < this.simpleStatsCapturesTeam.length)
            {
               if(this.simpleStatsCapturesTeam[_loc18_] >= this.ctfCaptureLimit)
               {
                  removeEventListener(Event.ENTER_FRAME,this._SafeStr_1305);
                  removeEventListener(Event.ENTER_FRAME,this._SafeStr_1592);
                  removeEventListener(Event.ENTER_FRAME,this._SafeStr_1183);
                  switch(_loc18_)
                  {
                     case 0:
                        _loc19_ = "Green team";
                        break;
                     case 1:
                        _loc19_ = "Blue team";
                        break;
                     case 2:
                        _loc19_ = "Red team";
                        break;
                     case 3:
                        _loc19_ = "Yellow team";
                  }
                  this._SafeStr_2298 = setInterval(this._SafeStr_1011,6000,_loc19_);
                  this.sendStream.send("clientRecvWinner",_loc19_,_loc18_);
                  this._SafeStr_2416();
                  this._SafeStr_1189 = true;
                  this._SafeStr_947(true,_loc19_,_loc18_);
               }
               _loc18_++;
            }
         }
      }
      
      public function _SafeStr_2416() : *
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:* = undefined;
         _loc1_ = 0;
         _loc2_ = 0;
         _loc3_ = 0;
         _loc4_ = -1;
         _loc5_ = 0;
         while(_loc5_ < this._SafeStr_451.length)
         {
            if(Boolean(this._SafeStr_451[_loc5_]) && !this._SafeStr_430[_loc5_])
            {
               _loc1_++;
               if(this._SafeStr_1162[_loc5_] != _loc4_)
               {
                  _loc4_ = Number(this._SafeStr_1162[_loc5_]);
                  _loc3_++;
               }
            }
            if(Boolean(this._SafeStr_451[_loc5_]) && Boolean(this._SafeStr_430[_loc5_]))
            {
               _loc2_++;
            }
            _loc5_++;
         }
         clearInterval(this._SafeStr_1502);
         _loc6_ = 0;
         while(_loc6_ < this.tankNameArray.length)
         {
            if(this._SafeStr_451[_loc6_])
            {
               trace("boost ratio for " + _loc6_ + this._SafeStr_1053[this.tankNameArray[_loc6_]][2]);
            }
            _loc6_++;
         }
         if(this.gameMode == 0)
         {
            _loc9_ = 0;
            while(_loc9_ < this._SafeStr_2147.length)
            {
               if(this._SafeStr_2147[_loc9_] == true && this._SafeStr_451[_loc9_] == true)
               {
                  if(this["Tank" + _loc9_ + "Alive"] == true)
                  {
                     if(_loc1_ > 1 && (!this.teamPlay || this.teamPlay && _loc3_ > 1))
                     {
                        ++this._SafeStr_1525[_loc9_][2];
                     }
                     else
                     {
                        ++this._SafeStr_1525[_loc9_][7];
                     }
                  }
                  else
                  {
                     ++this._SafeStr_1525[_loc9_][3];
                  }
               }
               _loc9_++;
            }
         }
         else if(this.gameMode == 1)
         {
            if(!this.teamPlay)
            {
               _loc10_ = 0;
               while(_loc10_ < this._SafeStr_451.length)
               {
                  if(this._SafeStr_2343[_loc10_] >= this.deathmatchKillLimit)
                  {
                     if(_loc1_ > 1)
                     {
                        ++this._SafeStr_1525[_loc10_][2];
                     }
                     else
                     {
                        ++this._SafeStr_1525[_loc10_][7];
                     }
                  }
                  else
                  {
                     ++this._SafeStr_1525[_loc10_][3];
                  }
                  _loc10_++;
               }
            }
            else if(this.teamPlay)
            {
               _loc11_ = 0;
               while(_loc11_ < this.simpleStatsKillsTeam.length)
               {
                  if(this.simpleStatsKillsTeam[_loc11_] >= this.deathmatchKillLimit)
                  {
                     _loc12_ = 0;
                     while(_loc12_ < this._SafeStr_451.length)
                     {
                        if(this._SafeStr_451[_loc12_] == true)
                        {
                           if(this._SafeStr_1162[_loc12_] == _loc11_)
                           {
                              if(_loc1_ > 1)
                              {
                                 ++this._SafeStr_1525[_loc12_][2];
                              }
                              else
                              {
                                 ++this._SafeStr_1525[_loc12_][7];
                              }
                           }
                           else
                           {
                              ++this._SafeStr_1525[_loc12_][3];
                           }
                        }
                        _loc12_++;
                     }
                  }
                  _loc11_++;
               }
            }
         }
         else if(this.gameMode == 2)
         {
            _loc13_ = 0;
            while(_loc13_ < this.simpleStatsCapturesTeam.length)
            {
               if(this.simpleStatsCapturesTeam[_loc13_] >= this.ctfCaptureLimit)
               {
                  _loc14_ = 0;
                  while(_loc14_ < this._SafeStr_451.length)
                  {
                     if(this._SafeStr_451[_loc14_] == true)
                     {
                        if(this._SafeStr_1162[_loc14_] == _loc13_)
                        {
                           if(_loc1_ > 1)
                           {
                              ++this._SafeStr_1525[_loc14_][2];
                           }
                           else
                           {
                              ++this._SafeStr_1525[_loc14_][7];
                           }
                        }
                        else
                        {
                           ++this._SafeStr_1525[_loc14_][3];
                        }
                     }
                     _loc14_++;
                  }
               }
               _loc13_++;
            }
         }
         if(_loc1_ > 1)
         {
            ++this._SafeStr_1525[0][4];
         }
         _loc7_ = 0;
         while(_loc7_ < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[_loc7_] == true && this._SafeStr_451[_loc7_] == true)
            {
               this._SafeStr_1525[_loc7_][5] += this._SafeStr_1525[_loc7_][0] * this.expKillReward;
               this._SafeStr_1525[_loc7_][5] += this._SafeStr_1525[_loc7_][6] * this.expBotKillReward;
               this._SafeStr_1525[_loc7_][5] += this._SafeStr_1525[_loc7_][2] * this.expWinReward;
               this._SafeStr_1525[_loc7_][5] += this._SafeStr_1525[_loc7_][7] * this.expBotWinReward;
               this._SafeStr_1525[_loc7_][5] += this._SafeStr_1525[_loc7_][9] * this.expHitReward;
            }
            _loc7_++;
         }
         _loc8_ = 0;
         while(_loc8_ < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[_loc8_] == true && this._SafeStr_451[_loc8_] == true)
            {
               if(this._SafeStr_1963(_loc8_) == true)
               {
                  trace("cheater: " + _loc8_);
                  this._SafeStr_1525[_loc8_][0] = 0;
                  this._SafeStr_1525[_loc8_][1] = 0;
                  this._SafeStr_1525[_loc8_][2] = 0;
                  this._SafeStr_1525[_loc8_][3] = 0;
                  this._SafeStr_1525[_loc8_][4] = 0;
                  this._SafeStr_1525[_loc8_][5] = 0;
                  this._SafeStr_1525[_loc8_][6] = 0;
                  this._SafeStr_1525[_loc8_][7] = 0;
                  this._SafeStr_1525[_loc8_][8] = 0;
                  this._SafeStr_1525[_loc8_][9] = 0;
               }
            }
            _loc8_++;
         }
         this.recvEndGameStats(this._SafeStr_1525);
         this._SafeStr_1384(this._SafeStr_1525);
         if(_loc1_ == 1 && _loc2_ == 1 && this._SafeStr_1387.tankFullHealth == 15)
         {
            _loc18_ = 0;
            while(_loc18_ < 4)
            {
               if(Boolean(this._SafeStr_451[_loc18_]) && Boolean(this._SafeStr_430[_loc18_]))
               {
                  _loc15_ = _loc18_;
               }
               _loc18_++;
            }
            _loc17_ = Number(this._SafeStr_1815[_loc15_]);
            _loc16_ = this.Tank0Health - this["Tank" + _loc15_ + "Health"];
            this.logAIDeltaHealth(_loc16_,_loc17_);
         }
      }
      
      public function clientRecvWinner(param1:*, param2:*) : void
      {
         if(this._SafeStr_2565)
         {
            this._SafeStr_947(true,param1,param2);
            this._SafeStr_1189 = true;
         }
      }
      
      public function _SafeStr_1011(param1:*) : void
      {
         clearInterval(this._SafeStr_2298);
         this.gameToLobby(param1);
         this.sendStream.send("gameToLobby",param1);
         this._SafeStr_1139();
      }
      
      public function gameToLobby(param1:String) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = undefined;
         if(this._SafeStr_2565)
         {
            this.xtr("winner!");
            this.destroyWorld();
            this._SafeStr_831 = this.fixUsernameString(param1);
            this.inLobby = true;
            this.inGame = false;
            _loc2_ = this.hudthing.txtInGameChatSend.text;
            trace("laaaa");
            gotoAndStop(6);
            trace("wwwww");
            gotoAndStop(3);
            this._SafeStr_701.text = _loc2_;
            this._SafeStr_701.setSelection(this._SafeStr_701.text.length,this._SafeStr_701.text.length);
            if(this._SafeStr_2527 == false && this._SafeStr_1767 == false && this.domain2.indexOf("armorgames.com") < 0)
            {
               this._SafeStr_2527 = true;
               _loc3_ = "<font color=\'#3366FF\'>*Play on one of the official sites to get 1.5x XP! Is Multiplayer.GG blocked for you? Try mpggunblocked.com, or mpggmirror.com!</font> \n";
               this._SafeStr_1546.htmlText += _loc3_;
               this._SafeStr_1546.scrollV = this._SafeStr_1546.numLines;
            }
            if(!this.hosting)
            {
               _loc4_ = Number(Math.round(this._SafeStr_2180[this.localTankID]));
               _loc5_ = 0;
               _loc6_ = 0;
               _loc7_ = 0;
               while(_loc7_ < this._SafeStr_2147.length)
               {
                  if(this._SafeStr_2147[_loc7_] == true)
                  {
                     _loc5_++;
                  }
                  if(this._SafeStr_430[_loc7_] == true)
                  {
                     _loc6_++;
                  }
                  _loc7_++;
               }
               if(_loc6_ == 0)
               {
                  trace("GA new, ping: " + _loc4_ + " pc: " + _loc5_);
                  try
                  {
                     _SafeCls_188._SafeStr_2479.trackEvent("Ping","New Ping PC" + _loc5_,"testlabel",_loc4_);
                  }
                  catch(e:Error)
                  {
                  }
               }
            }
         }
      }
      
      public function _SafeStr_2336(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         clearInterval(this._SafeStr_2298);
         this.gameToLobby("Nobody");
         this.sendStream.send("gameToLobby","Nobody");
      }
      
      public function _SafeStr_594(param1:*) : *
      {
         clearInterval(this._SafeStr_2298);
         this.destroyWorld();
         this.xtr("single player mission completed, player had " + param1 + " remaining.");
         this.inGame = false;
         gotoAndStop(6);
         gotoAndStop(2);
         this._SafeStr_850();
         this._SafeStr_1872();
         if(!this._SafeStr_2109)
         {
            this._SafeStr_1238(param1,this.Tank1Health,this.Tank2Health,this.Tank3Health);
         }
         else
         {
            this._SafeStr_1238(this._SafeStr_1830);
         }
      }
      
      public function _SafeStr_1171(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_594(0);
      }
      
      public function destroyWorld() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         this.xtr("destroyWorld");
         removeEventListener(Event.ENTER_FRAME,this.update);
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_1904);
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_2633);
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_1809);
         if(this.hosting)
         {
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1592);
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1305);
         }
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_519);
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_1805);
         try
         {
            stage.removeChild(this._SafeStr_1421);
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1228);
         }
         catch(error:Error)
         {
         }
         try
         {
            this._SafeStr_806();
         }
         catch(e:Error)
         {
         }
         stage.removeEventListener(KeyboardEvent.KEY_UP,this._SafeStr_2087);
         removeEventListener(Event.ENTER_FRAME,this.spawnTankFlames);
         removeEventListener(Event.ENTER_FRAME,this.spawnSnowtrail);
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_690);
         this.xtr("destroyWorld1");
         clearInterval(this._SafeStr_284);
         if(this.hosting)
         {
            clearInterval(this._SafeStr_763);
         }
         this.xtr("destroyWorld2");
         this._SafeStr_1272.graphics.clear();
         this.xtr("destroyWorld3");
         if(this._SafeStr_1091)
         {
            _loc7_ = this._SafeStr_1091.GetBodyList();
            while(_loc7_)
            {
               _loc8_ = _loc7_;
               _loc7_ = _loc7_._SafeStr_1023();
               this._SafeStr_1091.DestroyBody(_loc8_);
            }
         }
         this.xtr("destroyWorld4");
         this._SafeStr_1091 = null;
         this._SafeStr_1676 = null;
         this._SafeStr_1272 = null;
         this.xtr("removing debug squares");
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_1857.length)
         {
            removeChild(this._SafeStr_1857[_loc1_]);
            _loc1_++;
         }
         this._SafeStr_1857 = [];
         this.xtr("removing tank graphics");
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_451.length)
         {
            if(this._SafeStr_451[_loc2_] == true)
            {
               removeChild(this["tank" + _loc2_ + "Graphic"]);
            }
            _loc2_++;
         }
         if(Boolean(this._SafeStr_875) && Boolean(this._SafeStr_875.stage))
         {
            removeChild(this._SafeStr_875);
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_451.length)
         {
            if(this._SafeStr_451[_loc3_] == true)
            {
               removeChild(this["tank" + _loc3_ + "Label"]);
            }
            _loc3_++;
         }
         this.xtr("removing bullet graphics");
         _loc4_ = 0;
         while(_loc4_ < this._SafeStr_736.length)
         {
            removeChild(this._SafeStr_736[_loc4_]);
            _loc4_++;
         }
         this._SafeStr_736 = [];
         this.xtr("removing hud");
         stage.removeChild(this.hudthing);
         clearInterval(this._SafeStr_2179);
         this.stopInGameMusic();
         if(this.levelChosen == -1 || this.levelChosen == 8 || this.levelChosen == 9 || this.levelChosen == 10)
         {
            this.xtr("removing custom level items");
            this._SafeStr_1924();
         }
         _loc5_ = 0;
         while(_loc5_ < this._SafeStr_2299.length)
         {
            try
            {
               removeChild(this._SafeStr_2299[_loc5_]);
            }
            catch(e:Error)
            {
            }
            try
            {
               this._SafeStr_2299[_loc5_].stop();
            }
            catch(e:Error)
            {
            }
            try
            {
               this._SafeStr_2299[_loc5_] = null;
            }
            catch(e:Error)
            {
            }
            _loc5_++;
         }
         this._SafeStr_2299 = [];
         removeChild(this._SafeStr_2562);
         _loc6_ = 0;
         while(_loc6_ < this._SafeStr_2372.length)
         {
            try
            {
               removeChild(this._SafeStr_2372[_loc6_]);
            }
            catch(e:Error)
            {
            }
            try
            {
               this._SafeStr_2372[_loc6_].stop();
            }
            catch(e:Error)
            {
            }
            try
            {
               this._SafeStr_2372[_loc6_] = null;
            }
            catch(e:Error)
            {
            }
            _loc6_++;
         }
         this._SafeStr_2372 = [];
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_1834);
         if(this.hosting)
         {
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_2553);
         }
         if(this._SafeStr_741)
         {
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1122);
            if(this._SafeStr_2109)
            {
               removeEventListener(Event.ENTER_FRAME,this._SafeStr_1775);
               removeEventListener(Event.ENTER_FRAME,this._SafeStr_2228);
               removeEventListener(Event.ENTER_FRAME,this._SafeStr_386);
            }
         }
         if(this.gameMode == 2)
         {
            removeChild(this.flagHolder);
            if(this.hosting)
            {
               removeEventListener(Event.ENTER_FRAME,this._SafeStr_1183);
            }
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1348);
         }
         this.powerUpShieldHumSoundChannel.stop();
         this._SafeStr_877 = [];
      }
      
      public function destroyTank(param1:Number) : void
      {
         this._SafeStr_1091.DestroyBody(this["Tank" + param1]);
         this._SafeStr_1091.DestroyBody(this["Tank" + param1 + "LeftWheel"]);
         this._SafeStr_1091.DestroyBody(this["Tank" + param1 + "RightWheel"]);
         removeChild(this["tank" + param1 + "Label"]);
         removeChild(this["tank" + param1 + "Graphic"]);
      }
      
      public function setUpTanks() : void
      {
         var _loc1_:* = undefined;
         this.xtr("setUpTanks");
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_2147.length)
         {
            if(this._SafeStr_2147[_loc1_] == true && this._SafeStr_451[_loc1_] == true)
            {
               this.xtr("tankIDArray[" + _loc1_ + "] is true, spawning tank...");
               this.spawnTank(_loc1_);
            }
            _loc1_++;
         }
      }
      
      public function setUpSpectating() : void
      {
         if(this._SafeStr_451[this.localTankID] == false)
         {
            this.hudthing.spectatingmc.visible = true;
            this.hudthing.spectatingbg.visible = true;
            this.hudthing.spectatingmc.downbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_836);
            this.hudthing.spectatingmc.upbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_836);
            this.hudthing.healthammo.visible = false;
            this.tankCameraFollowID = 0;
            while(this.tankCameraFollowID < this._SafeStr_451.length)
            {
               if(this._SafeStr_451[this.tankCameraFollowID])
               {
                  this.hudthing.spectatingmc.spectext.text = this.fixUsernameString(String(this.tankNameArray[this.tankCameraFollowID]));
                  break;
               }
               ++this.tankCameraFollowID;
            }
            if(this.tankCameraFollowID == this._SafeStr_451.length)
            {
               this.tankCameraFollowID = -1;
            }
            this.hudthing.txtInGameChatSend.width = 490;
            this.hudthing.txtInGameChatSend.x = 5;
         }
         else
         {
            this.hudthing.spectatingmc.visible = false;
            this.hudthing.spectatingbg.visible = false;
            this.tankCameraFollowID = this.localTankID;
            this._SafeStr_1338.x = this["Tank" + this.localTankID].GetWorldCenter().x * this._SafeStr_1016;
            this._SafeStr_1338.y = this["Tank" + this.localTankID].GetWorldCenter().y * this._SafeStr_1016;
            this.hudthing.txtInGameChatSend.width = 490;
            this.hudthing.txtInGameChatSend.x = 232;
         }
      }
      
      public function _SafeStr_836(param1:MouseEvent = null) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(param1)
         {
            this.buttonClickSound();
         }
         this.xtr(param1.target.name);
         if(param1.target.name == "upbutton")
         {
            _loc2_ = 0;
            while(_loc2_ < this._SafeStr_2147.length)
            {
               ++this.tankCameraFollowID;
               if(this.tankCameraFollowID == this._SafeStr_486)
               {
                  this.tankCameraFollowID = 0;
               }
               if(Boolean(this._SafeStr_451[this.tankCameraFollowID]) && Boolean(this["Tank" + this.tankCameraFollowID + "Alive"]))
               {
                  break;
               }
               _loc2_++;
            }
            if(!this._SafeStr_451[this.tankCameraFollowID])
            {
               this.tankCameraFollowID = -1;
               this.hudthing.spectatingmc.spectext.text = "--";
            }
            else
            {
               this.hudthing.spectatingmc.spectext.text = this.fixUsernameString(String(this.tankNameArray[this.tankCameraFollowID]));
            }
         }
         else if(param1.target.name == "downbutton")
         {
            _loc3_ = 0;
            while(_loc3_ < this._SafeStr_2147.length)
            {
               --this.tankCameraFollowID;
               if(this.tankCameraFollowID <= -1)
               {
                  this.tankCameraFollowID = this._SafeStr_486 - 1;
               }
               if(Boolean(this._SafeStr_451[this.tankCameraFollowID]) && Boolean(this["Tank" + this.tankCameraFollowID + "Alive"]))
               {
                  break;
               }
               _loc3_++;
            }
            if(!this._SafeStr_451[this.tankCameraFollowID])
            {
               this.tankCameraFollowID = -1;
               this.hudthing.spectatingmc.spectext.text = "--";
            }
            else
            {
               this.hudthing.spectatingmc.spectext.text = this.fixUsernameString(String(this.tankNameArray[this.tankCameraFollowID]));
            }
         }
      }
      
      public function _SafeStr_365() : *
      {
         clearInterval(this._SafeStr_2179);
         this.hudthing.spectatingmc.visible = true;
         this.hudthing.spectatingbg.visible = true;
         this.hudthing.spectatingmc.downbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_836);
         this.hudthing.spectatingmc.upbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_836);
         this.hudthing.healthammo.visible = false;
         this.hudthing.txtInGameChatSend.width = 490;
         this.hudthing.txtInGameChatSend.x = 5;
         this._SafeStr_904();
      }
      
      public function _SafeStr_904() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_451.length)
         {
            if(this._SafeStr_451[_loc1_] == true)
            {
               if(this["Tank" + _loc1_ + "Health"] > 0)
               {
                  this.tankCameraFollowID = _loc1_;
                  this.hudthing.spectatingmc.spectext.text = this.fixUsernameString(String(this.tankNameArray[this.tankCameraFollowID]));
                  return;
               }
            }
            _loc1_++;
         }
         this.tankCameraFollowID = -1;
         this.hudthing.spectatingmc.spectext.text = "--";
      }
      
      public function _SafeStr_2064(param1:*, param2:*, param3:*, param4:*) : *
      {
         var _loc5_:Sprite = null;
         var _loc6_:Number = NaN;
         _loc5_ = new Sprite();
         _loc5_.graphics.lineStyle(2,0);
         _loc5_.graphics.beginFill(15658581,0.3);
         _loc5_.graphics.drawRect(param1 - param3 / 2,param2 - param4 / 2,param3,param4);
         _loc5_.graphics.endFill();
         _loc6_ = Number(this._SafeStr_1857.length);
         this._SafeStr_1857[_loc6_] = _loc5_;
         addChild(this._SafeStr_1857[_loc6_]);
      }
      
      public function _SafeStr_593() : void
      {
         this._SafeStr_1421 = stage.addChild(new _SafeCls_212());
         this._SafeStr_1421.x = 365;
         this._SafeStr_1421.y = 250;
         addEventListener(Event.ENTER_FRAME,this._SafeStr_1228);
      }
      
      public function _SafeStr_1228(param1:Event) : *
      {
         if(Math.ceil((this._SafeStr_2381 - getTimer()) / 1000) != this.countdownSecondsRemaining)
         {
            this.countdownSecondsRemaining = Math.ceil((this._SafeStr_2381 - getTimer()) / 1000);
            this._SafeStr_1421.countdownText.text = String(this.countdownSecondsRemaining);
            if(this.countdownSecondsRemaining != 0)
            {
               if(!this.muteSfx && !this._SafeStr_689)
               {
                  this.beepLowSound.play();
               }
            }
         }
         if(this.countdownSecondsRemaining <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1228);
            addEventListener(Event.ENTER_FRAME,this._SafeStr_1904,false,1);
            stage.removeChild(this._SafeStr_1421);
            if(stage.focus != this.hudthing.txtInGameChatSend)
            {
               stage.focus = this._SafeStr_2608;
            }
            if(!this.muteSfx && !this._SafeStr_689)
            {
               this.beepHighSound.play();
            }
            if(this.hosting)
            {
               addEventListener(Event.ENTER_FRAME,this._SafeStr_1834);
               this._SafeStr_1477();
            }
         }
      }
      
      public function _SafeStr_2513() : *
      {
         if(!this.muteMusic && false)
         {
            this.musicPlaying = true;
            this._SafeStr_1823.volume = 0;
            this._SafeStr_1562.soundTransform = this._SafeStr_1823;
            this._SafeStr_1562 = this.harpSlammerSound.play(0,999);
            this._SafeStr_1823.volume = 0;
            this._SafeStr_1562.soundTransform = this._SafeStr_1823;
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1987);
            addEventListener(Event.ENTER_FRAME,this._SafeStr_577);
         }
      }
      
      public function stopInGameMusic() : *
      {
         if(!this.muteMusic)
         {
            this.musicPlaying = false;
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_577);
            addEventListener(Event.ENTER_FRAME,this._SafeStr_1987);
         }
      }
      
      public function _SafeStr_577(param1:Event) : *
      {
         this._SafeStr_1823.volume += 0.01;
         this._SafeStr_1562.soundTransform = this._SafeStr_1823;
         if(this._SafeStr_1823.volume >= 1)
         {
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_577);
         }
      }
      
      public function _SafeStr_1987(param1:Event) : *
      {
         this._SafeStr_1823.volume -= 0.01;
         this._SafeStr_1562.soundTransform = this._SafeStr_1823;
         if(this._SafeStr_1823.volume <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1987);
            this._SafeStr_1562.stop();
         }
      }
      
      public function _SafeStr_1924() : *
      {
         var _loc1_:* = undefined;
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_2364.length)
         {
            this._SafeStr_823.removeChild(this._SafeStr_2364[_loc1_]);
            this._SafeStr_2364.splice(_loc1_,1);
         }
      }
      
      public function _SafeStr_1127(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number) : Number
      {
         var _loc5_:Shape = null;
         trace("callback");
         _loc5_ = new Shape();
         addChild(_loc5_);
         _loc5_.graphics.lineStyle(1,16711680,1);
         _loc5_.graphics.moveTo(this._SafeStr_2488.x * this._SafeStr_1016,this._SafeStr_2488.y * this._SafeStr_1016);
         _loc5_.graphics.lineTo(param2.x * this._SafeStr_1016,param2.y * this._SafeStr_1016);
         return 0;
      }
      
      public function doRayCast(param1:Number, param2:Number, param3:Number, param4:Number, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:Boolean, param12:Boolean, param13:Number = 15, param14:Number = 1) : Number
      {
         var _loc15_:Array = null;
         var _loc16_:Boolean = false;
         var _loc17_:* = undefined;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2Vec2 = null;
         var _loc23_:* = undefined;
         if(this._SafeStr_1387.bulletMaxBounces == 1)
         {
            param13 = 0;
         }
         this._SafeStr_2488 = new b2Vec2();
         this.rayEnd = new b2Vec2();
         this._SafeStr_2488.x = param1;
         this._SafeStr_2488.y = param2;
         this.rayEnd.x = this._SafeStr_2488.x;
         this.rayEnd.y = this._SafeStr_2488.y;
         this.rayEnd.x += Math.cos(param3) * this._SafeStr_1387.bulletMoveSpeed * (this._SafeStr_1387.bulletStayTime / 1000) * param14;
         this.rayEnd.y += Math.sin(param3) * this._SafeStr_1387.bulletMoveSpeed * (this._SafeStr_1387.bulletStayTime / 1000) * param14;
         _loc16_ = false;
         this._SafeStr_2036 = 0;
         _loc15_ = this._SafeStr_1091._SafeStr_1167(this._SafeStr_2488,this.rayEnd);
         if(_loc15_[0])
         {
            if(_loc15_[0].GetBody().GetUserData())
            {
               _loc17_ = _loc15_[0].GetBody().GetUserData();
               if(_loc17_.tankid == 0)
               {
                  if(param5 && this.Tank0Alive)
                  {
                     return 0;
                  }
                  return NaN;
               }
               if(_loc17_.tankid == 1)
               {
                  if(param6 && this.Tank1Alive)
                  {
                     return 1;
                  }
                  return NaN;
               }
               if(_loc17_.tankid == 2)
               {
                  if(param7 && this.Tank2Alive)
                  {
                     return 2;
                  }
                  return NaN;
               }
               if(_loc17_.tankid == 3)
               {
                  if(param8 && this.Tank3Alive)
                  {
                     return 3;
                  }
                  return NaN;
               }
               if(_loc17_.tankid == 4)
               {
                  if(param9 && this.Tank4Alive)
                  {
                     return 4;
                  }
                  return NaN;
               }
               if(_loc17_.tankid == 5)
               {
                  if(param10 && this.Tank5Alive)
                  {
                     return 5;
                  }
                  return NaN;
               }
               if(_loc17_.tankid == 6)
               {
                  if(param11 && this.Tank6Alive)
                  {
                     return 6;
                  }
                  return NaN;
               }
               if(_loc17_.tankid == 7)
               {
                  if(param12 && this.Tank7Alive)
                  {
                     return 7;
                  }
                  return NaN;
               }
               if(_loc17_.type == "bullet")
               {
                  _loc16_ = true;
               }
            }
         }
         while(_loc15_[1] < 1 && this._SafeStr_2036 < param13)
         {
            ++this._SafeStr_2036;
            _loc18_ = _loc15_[2];
            _loc19_ = _loc15_[3];
            _loc20_ = new b2Vec2(this.rayEnd.x - _loc18_.x,this.rayEnd.y - _loc18_.y);
            _loc21_ = _loc19_;
            _loc21_.Multiply(b2Math._SafeCls_184(_loc20_,_loc19_));
            _loc22_ = _loc21_;
            _loc22_.Multiply(2);
            if(!_loc16_)
            {
               this.rayEnd._SafeStr_2354(_loc22_);
               this._SafeStr_2488 = _loc18_;
            }
            else
            {
               this._SafeStr_2488 = _loc18_;
               _loc16_ = false;
            }
            _loc15_ = this._SafeStr_1091._SafeStr_1167(this._SafeStr_2488,this.rayEnd);
            if(_loc15_[0])
            {
               if(_loc15_[0].GetBody().GetUserData())
               {
                  _loc23_ = _loc15_[0].GetBody().GetUserData();
                  if(_loc23_.tankid == 0)
                  {
                     if(param5 && this.Tank0Alive)
                     {
                        return 0;
                     }
                     return NaN;
                  }
                  if(_loc23_.tankid == 1)
                  {
                     if(param6 && this.Tank1Alive)
                     {
                        return 1;
                     }
                     return NaN;
                  }
                  if(_loc23_.tankid == 2)
                  {
                     if(param7 && this.Tank2Alive)
                     {
                        return 2;
                     }
                     return NaN;
                  }
                  if(_loc23_.tankid == 3)
                  {
                     if(param8 && this.Tank3Alive)
                     {
                        return 3;
                     }
                     return NaN;
                  }
                  if(_loc23_.tankid == 4)
                  {
                     if(param9 && this.Tank4Alive)
                     {
                        return 4;
                     }
                     return NaN;
                  }
                  if(_loc23_.tankid == 5)
                  {
                     if(param10 && this.Tank5Alive)
                     {
                        return 5;
                     }
                     return NaN;
                  }
                  if(_loc23_.tankid == 6)
                  {
                     if(param11 && this.Tank6Alive)
                     {
                        return 6;
                     }
                     return NaN;
                  }
                  if(_loc23_.tankid == 7)
                  {
                     if(param12 && this.Tank7Alive)
                     {
                        return 7;
                     }
                     return NaN;
                  }
                  if(_loc23_.type == "bullet")
                  {
                     _loc16_ = true;
                  }
               }
            }
         }
         return NaN;
      }
      
      public function _SafeStr_750(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:Boolean, param10:Number = 15, param11:Number = 1, param12:Number = 32) : Number
      {
         var _loc13_:* = undefined;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         this._SafeStr_1507 = Infinity;
         _loc13_ = 0;
         while(_loc13_ < param12)
         {
            _loc14_ = 2 * Math.PI / param12 * _loc13_;
            _loc15_ = this["Tank" + param1].GetWorldCenter().x + Math.cos(_loc14_);
            _loc16_ = this["Tank" + param1].GetWorldCenter().y + Math.sin(_loc14_);
            if(this.doRayCast(_loc15_,_loc16_,_loc14_,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11) >= 0)
            {
               if(this._SafeStr_2036 < this._SafeStr_1507)
               {
                  this.searchBestAngle = _loc14_;
                  this._SafeStr_1507 = this._SafeStr_2036;
               }
            }
            _loc13_++;
         }
         if(this._SafeStr_1507 < Infinity)
         {
            return this.searchBestAngle;
         }
         return NaN;
      }
      
      public function _SafeStr_1834(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Boolean = false;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc2_ = 1;
         while(_loc2_ < this._SafeStr_430.length)
         {
            if(Boolean(this._SafeStr_430[_loc2_]) && Boolean(this["Tank" + _loc2_ + "Alive"]) && Boolean(this._SafeStr_451[_loc2_]))
            {
               ++this._SafeStr_2241[_loc2_];
               this["Tank" + _loc2_ + "LeftPressed"] = false;
               this["Tank" + _loc2_ + "RightPressed"] = false;
               this["Tank" + _loc2_ + "UpPressed"] = false;
               this["Tank" + _loc2_ + "DownPressed"] = false;
               _loc3_ = Boolean(this._SafeStr_451[0]) && this.Tank0Alive && _loc2_ != 0;
               _loc4_ = Boolean(this._SafeStr_451[1]) && this.Tank1Alive && _loc2_ != 1;
               _loc5_ = Boolean(this._SafeStr_451[2]) && this.Tank2Alive && _loc2_ != 2;
               _loc6_ = Boolean(this._SafeStr_451[3]) && this.Tank3Alive && _loc2_ != 3;
               _loc7_ = Boolean(this._SafeStr_451[4]) && this.Tank4Alive && _loc2_ != 4;
               _loc8_ = Boolean(this._SafeStr_451[5]) && this.Tank5Alive && _loc2_ != 5;
               _loc9_ = Boolean(this._SafeStr_451[6]) && this.Tank6Alive && _loc2_ != 6;
               _loc10_ = Boolean(this._SafeStr_451[7]) && this.Tank7Alive && _loc2_ != 7;
               if(this.teamPlay)
               {
                  if(_loc3_ && this._SafeStr_1162[0] == this._SafeStr_1162[_loc2_])
                  {
                     _loc3_ = false;
                  }
                  if(_loc4_ && this._SafeStr_1162[1] == this._SafeStr_1162[_loc2_])
                  {
                     _loc4_ = false;
                  }
                  if(_loc5_ && this._SafeStr_1162[2] == this._SafeStr_1162[_loc2_])
                  {
                     _loc5_ = false;
                  }
                  if(_loc6_ && this._SafeStr_1162[3] == this._SafeStr_1162[_loc2_])
                  {
                     _loc6_ = false;
                  }
                  if(_loc7_ && this._SafeStr_1162[4] == this._SafeStr_1162[_loc2_])
                  {
                     _loc7_ = false;
                  }
                  if(_loc8_ && this._SafeStr_1162[5] == this._SafeStr_1162[_loc2_])
                  {
                     _loc8_ = false;
                  }
                  if(_loc9_ && this._SafeStr_1162[6] == this._SafeStr_1162[_loc2_])
                  {
                     _loc9_ = false;
                  }
                  if(_loc10_ && this._SafeStr_1162[7] == this._SafeStr_1162[_loc2_])
                  {
                     _loc10_ = false;
                  }
               }
               _loc11_ = false;
               _loc12_ = this._SafeStr_1116(_loc2_);
               if(_loc12_ != this._SafeStr_1874[_loc2_][1])
               {
                  this._SafeStr_1874[_loc2_][1] = _loc12_;
                  this._SafeStr_1874[_loc2_][2] = 0;
               }
               if(this["Tank" + _loc2_ + "Health"] < this._SafeStr_1874[_loc2_][0])
               {
                  this._SafeStr_1874[_loc2_][0] = this["Tank" + _loc2_ + "Health"];
                  ++this._SafeStr_1874[_loc2_][2];
               }
               if(this._SafeStr_1874[_loc2_][2] >= this._SafeStr_546)
               {
                  _loc11_ = true;
                  this._SafeStr_1993[_loc2_] = getTimer();
                  this._SafeStr_1874[_loc2_][3] = this._SafeStr_1863[_loc12_][2][0] + this._SafeStr_1863[_loc12_][2][1] + this._SafeStr_1863[_loc12_][2][2] + this._SafeStr_1863[_loc12_][2][3] - this._SafeStr_1863[_loc12_][2][_loc2_];
               }
               if(this._SafeStr_1815[_loc2_] >= this._SafeStr_1114 && this._SafeStr_725[_loc2_] == 0)
               {
                  _loc11_ = true;
                  this._SafeStr_1874[_loc2_][3] = this._SafeStr_1863[_loc12_][2][0] + this._SafeStr_1863[_loc12_][2][1] + this._SafeStr_1863[_loc12_][2][2] + this._SafeStr_1863[_loc12_][2][3] - this._SafeStr_1863[_loc12_][2][_loc2_];
               }
               if(this._SafeStr_1993[_loc2_] + this._SafeStr_1359[this._SafeStr_1815[_loc2_]][2] > getTimer())
               {
                  _loc11_ = true;
               }
               if(this._SafeStr_1387["team" + this._SafeStr_1162[_loc2_] + "CantShoot"] == true)
               {
                  _loc11_ = true;
               }
               if(Boolean(this._SafeStr_787[_loc2_]) && !_loc11_)
               {
                  _loc13_ = Number(this._SafeStr_787[_loc2_]);
                  _loc14_ = this["Tank" + _loc2_].GetWorldCenter().x + Math.cos(_loc13_);
                  _loc15_ = this["Tank" + _loc2_].GetWorldCenter().y + Math.sin(_loc13_);
                  _loc16_ = this.doRayCast(_loc14_,_loc15_,_loc13_,_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,this._SafeStr_1359[this._SafeStr_1815[_loc2_]][3],this._SafeStr_1359[this._SafeStr_1815[_loc2_]][0]) >= 0;
                  if(_loc16_)
                  {
                     _loc17_ = _loc13_ - this["Tank" + _loc2_].GetTransform().GetAngle();
                     if(_loc17_ < -Math.PI)
                     {
                        _loc17_ += 2 * Math.PI;
                     }
                     else if(_loc17_ > Math.PI)
                     {
                        _loc17_ -= 2 * Math.PI;
                     }
                     if(Math.abs(_loc17_) < this._SafeStr_1356 || this.mouseAiming)
                     {
                        if(this.mouseAiming)
                        {
                           this._SafeStr_2559(_loc2_,_loc13_);
                        }
                        else
                        {
                           this._SafeStr_2559(_loc2_,this["Tank" + _loc2_].GetTransform().GetAngle());
                        }
                     }
                     else if(_loc17_ > 0)
                     {
                        if(this["Tank" + _loc2_].GetAngularVelocity() >= 0)
                        {
                           this["Tank" + _loc2_ + "LeftPressed"] = false;
                           this["Tank" + _loc2_ + "RightPressed"] = true;
                        }
                        else
                        {
                           this["Tank" + _loc2_ + "LeftPressed"] = false;
                           this["Tank" + _loc2_ + "RightPressed"] = true;
                        }
                     }
                     else if(this["Tank" + _loc2_].GetAngularVelocity() <= 0)
                     {
                        this["Tank" + _loc2_ + "LeftPressed"] = true;
                        this["Tank" + _loc2_ + "RightPressed"] = false;
                     }
                     else
                     {
                        this["Tank" + _loc2_ + "LeftPressed"] = true;
                        this["Tank" + _loc2_ + "RightPressed"] = false;
                     }
                  }
                  else
                  {
                     if(this._SafeStr_2241[_loc2_] >= this._SafeStr_2121)
                     {
                        _loc18_ = this._SafeStr_750(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,this._SafeStr_1359[this._SafeStr_1815[_loc2_]][3],this._SafeStr_1359[this._SafeStr_1815[_loc2_]][0],this._SafeStr_1359[this._SafeStr_1815[_loc2_]][1]);
                        this._SafeStr_2241[_loc2_] = 0;
                     }
                     else
                     {
                        _loc18_ = Number(NaN);
                     }
                     if(_loc18_)
                     {
                        this._SafeStr_787[_loc2_] = _loc18_;
                     }
                     else
                     {
                        this._SafeStr_2450(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_);
                     }
                  }
               }
               else if(!_loc11_)
               {
                  if(this._SafeStr_2241[_loc2_] >= this._SafeStr_2121)
                  {
                     _loc19_ = this._SafeStr_750(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,this._SafeStr_1359[this._SafeStr_1815[_loc2_]][3],this._SafeStr_1359[this._SafeStr_1815[_loc2_]][0],this._SafeStr_1359[this._SafeStr_1815[_loc2_]][1]);
                     this._SafeStr_2241[_loc2_] = 0;
                  }
                  else
                  {
                     _loc18_ = Number(NaN);
                  }
                  if(_loc19_)
                  {
                     this._SafeStr_787[_loc2_] = _loc19_;
                  }
                  else
                  {
                     this._SafeStr_2450(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_);
                  }
               }
               else
               {
                  this._SafeStr_2450(_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,true);
               }
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_2559(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         if(this.mouseAiming)
         {
            this["Tank" + param1 + "TurretAngle"] = param2 - this["Tank" + param1].GetTransform().GetAngle();
         }
         if(getTimer() > this._SafeStr_2591[param1] + this._SafeStr_1387.gunFireInterval && this._SafeStr_725[param1] > 0)
         {
            --this._SafeStr_725[param1];
            clearInterval(this._SafeStr_1940[param1]);
            this._SafeStr_1940[param1] = setInterval(this._SafeStr_1203,this._SafeStr_1387.magReloadTime);
            this._SafeStr_2591[param1] = getTimer();
            _loc3_ = Number(Math.round(Math.random() * 999999));
            this.spawnBullet(param1,this["Tank" + param1].GetWorldCenter().x,this["Tank" + param1].GetWorldCenter().y,param2,_loc3_,0);
            _loc4_ = this._SafeStr_1387.recoilAmount * Math.cos(param2);
            _loc5_ = this._SafeStr_1387.recoilAmount * Math.sin(param2);
            this["Tank" + param1].ApplyImpulse(new b2Vec2(_loc4_,_loc5_),this["Tank" + param1].GetWorldCenter());
            if(!this._SafeStr_741)
            {
               this.sendStream.send("recvBulletData",param1,this["Tank" + param1].GetWorldCenter().x,this["Tank" + param1].GetWorldCenter().y,param2,_loc3_,0);
            }
         }
      }
      
      public function _SafeStr_1612() : String
      {
         var _loc1_:String = null;
         var _loc2_:* = undefined;
         _loc1_ = "";
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_964[0].length)
         {
            _loc1_ += this.comod(this._SafeStr_964[0][_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function _SafeStr_1118() : String
      {
         var _loc1_:String = null;
         var _loc2_:* = undefined;
         _loc1_ = "";
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_964[1].length)
         {
            _loc1_ += this.comod(this._SafeStr_964[1][_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function _SafeStr_2553(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Number = NaN;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         _loc2_ = Boolean(this._SafeStr_451[0]) && this.Tank0Alive;
         _loc3_ = Boolean(this._SafeStr_451[1]) && this.Tank1Alive;
         _loc4_ = Boolean(this._SafeStr_451[2]) && this.Tank2Alive;
         _loc5_ = Boolean(this._SafeStr_451[3]) && this.Tank3Alive;
         _loc6_ = Boolean(this._SafeStr_451[4]) && this.Tank4Alive;
         _loc7_ = Boolean(this._SafeStr_451[5]) && this.Tank5Alive;
         _loc8_ = Boolean(this._SafeStr_451[6]) && this.Tank6Alive;
         _loc9_ = Boolean(this._SafeStr_451[7]) && this.Tank7Alive;
         _loc10_ = Number(Math.min(Math.max(Math.round(this._SafeStr_1863.length / 60),1),2));
         _loc11_ = 0;
         while(_loc11_ < _loc10_)
         {
            if(++this._SafeStr_2160 == this._SafeStr_1863.length)
            {
               this._SafeStr_2160 = 0;
            }
            this._SafeStr_1863[this._SafeStr_2160][2] = [0,0,0,0,0,0,0,0];
            _loc12_ = 0;
            while(_loc12_ < this._SafeStr_1650)
            {
               _loc13_ = 2 * Math.PI / this._SafeStr_1650 * _loc12_;
               _loc14_ = this.doRayCast(this._SafeStr_1863[this._SafeStr_2160][0].x,this._SafeStr_1863[this._SafeStr_2160][0].y,_loc13_,NaN,_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,15,1);
               if(_loc14_ >= 0)
               {
                  ++this._SafeStr_1863[this._SafeStr_2160][2][_loc14_];
               }
               _loc12_++;
            }
            _loc11_++;
         }
      }
      
      public function _SafeStr_2450(param1:Number, param2:Boolean, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Array = null;
         var _loc14_:Array = null;
         var _loc15_:Array = null;
         var _loc16_:Number = NaN;
         var _loc17_:* = undefined;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         _loc11_ = this._SafeStr_1116(param1);
         _loc12_ = this._SafeStr_1863[_loc11_][2][0] + this._SafeStr_1863[_loc11_][2][1] + this._SafeStr_1863[_loc11_][2][2] + this._SafeStr_1863[_loc11_][2][3] + this._SafeStr_1863[_loc11_][2][4] + this._SafeStr_1863[_loc11_][2][5] + this._SafeStr_1863[_loc11_][2][6] + this._SafeStr_1863[_loc11_][2][7] - this._SafeStr_1863[_loc11_][2][param1];
         _loc13_ = new Array();
         _loc14_ = new Array();
         _loc15_ = new Array();
         if(this._SafeStr_1723[param1][0] == _loc11_ || this._SafeStr_1723[param1][1] + this._SafeStr_1314 < getTimer())
         {
            _loc13_.push([_loc11_,_loc11_]);
            _loc16_ = 0;
            loop0:
            while(_loc13_.length > 0)
            {
               _loc16_++;
               _loc15_ = _loc13_[0];
               _loc14_.push(_loc15_[0]);
               _loc13_.splice(0,1);
               _loc17_ = 3;
               while(_loc17_ < this._SafeStr_1863[_loc15_[0]].length)
               {
                  _loc18_ = Number(this._SafeStr_1863[_loc15_[0]][_loc17_]);
                  if(_loc14_.indexOf(_loc18_) == -1)
                  {
                     _loc19_ = 0;
                     if(param2)
                     {
                        _loc19_ += this._SafeStr_1863[_loc18_][2][0];
                     }
                     if(param3)
                     {
                        _loc19_ += this._SafeStr_1863[_loc18_][2][1];
                     }
                     if(param4)
                     {
                        _loc19_ += this._SafeStr_1863[_loc18_][2][2];
                     }
                     if(param5)
                     {
                        _loc19_ += this._SafeStr_1863[_loc18_][2][3];
                     }
                     if(param6)
                     {
                        _loc19_ += this._SafeStr_1863[_loc18_][2][4];
                     }
                     if(param7)
                     {
                        _loc19_ += this._SafeStr_1863[_loc18_][2][5];
                     }
                     if(param8)
                     {
                        _loc19_ += this._SafeStr_1863[_loc18_][2][6];
                     }
                     if(param9)
                     {
                        _loc19_ += this._SafeStr_1863[_loc18_][2][7];
                     }
                     if(_loc19_ > _loc12_ && !param10 || _loc19_ == 0 && param10)
                     {
                        if(_loc16_ == 1)
                        {
                           this._SafeStr_1723[param1][0] = _loc18_;
                           this._SafeStr_1723[param1][1] = getTimer();
                           this._SafeStr_1611(param1,_loc18_);
                           break loop0;
                        }
                        this._SafeStr_1723[param1][0] = _loc15_[1];
                        this._SafeStr_1723[param1][1] = getTimer();
                        this._SafeStr_1611(param1,_loc15_[1]);
                        break loop0;
                     }
                     if(_loc16_ == 1)
                     {
                        _loc13_.push([_loc18_,_loc18_]);
                     }
                     else
                     {
                        _loc13_.push([_loc18_,_loc15_[1]]);
                     }
                  }
                  _loc17_++;
               }
            }
         }
         else
         {
            this._SafeStr_1611(param1,this._SafeStr_1723[param1][0]);
         }
      }
      
      public function _SafeStr_1611(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         _loc3_ = Number(this["Tank" + param1].GetWorldCenter().x);
         _loc4_ = Number(this["Tank" + param1].GetWorldCenter().y);
         _loc7_ = this._SafeStr_1116(param1);
         _loc8_ = Number(this._SafeStr_1863[_loc7_][1]);
         if(_loc7_ == param2)
         {
            _loc5_ = Number(this._SafeStr_1863[param2][0].x);
            _loc6_ = Number(this._SafeStr_1863[param2][0].y);
            this._SafeStr_1455(param1,_loc3_,_loc4_,_loc5_,_loc6_);
            return 1;
         }
         _loc11_ = _loc3_ - this._SafeStr_1863[_loc7_][0].x;
         _loc12_ = _loc4_ - this._SafeStr_1863[_loc7_][0].y;
         _loc9_ = Number(Math.atan2(_loc12_,_loc11_));
         _loc10_ = Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_) / _loc8_;
         _loc5_ = this._SafeStr_1863[param2][0].x + Math.cos(_loc9_) * _loc10_ * this._SafeStr_1863[param2][1];
         _loc6_ = this._SafeStr_1863[param2][0].y + Math.sin(_loc9_) * _loc10_ * this._SafeStr_1863[param2][1];
         if(this._SafeStr_704(_loc3_,_loc4_,_loc5_,_loc6_))
         {
            this._SafeStr_1455(param1,_loc3_,_loc4_,_loc5_,_loc6_);
            return 1;
         }
         _loc9_ += Math.PI;
         _loc5_ = this._SafeStr_1863[param2][0].x + Math.cos(_loc9_) * _loc10_ * this._SafeStr_1863[param2][1];
         _loc6_ = this._SafeStr_1863[param2][0].y + Math.sin(_loc9_) * _loc10_ * this._SafeStr_1863[param2][1];
         if(this._SafeStr_704(_loc3_,_loc4_,_loc5_,_loc6_))
         {
            this._SafeStr_1455(param1,_loc3_,_loc4_,_loc5_,_loc6_);
            return 1;
         }
         _loc5_ = Number(this._SafeStr_1863[param2][0].x);
         _loc6_ = Number(this._SafeStr_1863[param2][0].y);
         if(this._SafeStr_704(_loc3_,_loc4_,_loc5_,_loc6_))
         {
            this._SafeStr_1455(param1,_loc3_,_loc4_,_loc5_,_loc6_);
            return 1;
         }
         this._SafeStr_1611(param1,_loc7_);
         return 0;
      }
      
      public function _SafeStr_704(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:Array = null;
         _loc5_ = param3 - param1;
         _loc6_ = param4 - param2;
         _loc7_ = Number(Math.atan2(_loc6_,_loc5_));
         _loc7_ = _loc7_ + Math.PI / 2;
         _loc8_ = new b2Vec2();
         _loc9_ = new b2Vec2();
         _loc8_.x = param1 + Math.cos(_loc7_) * 15 / this._SafeStr_1016;
         _loc8_.y = param2 + Math.sin(_loc7_) * 15 / this._SafeStr_1016;
         _loc9_.x = param3 + Math.cos(_loc7_) * 15 / this._SafeStr_1016;
         _loc9_.y = param4 + Math.sin(_loc7_) * 15 / this._SafeStr_1016;
         _loc10_ = this._SafeStr_1091._SafeStr_1167(_loc8_,_loc9_);
         if(_loc10_[0])
         {
            return false;
         }
         _loc8_.x = param1 - Math.cos(_loc7_) * 15 / this._SafeStr_1016;
         _loc8_.y = param2 - Math.sin(_loc7_) * 15 / this._SafeStr_1016;
         _loc9_.x = param3 - Math.cos(_loc7_) * 15 / this._SafeStr_1016;
         _loc9_.y = param4 - Math.sin(_loc7_) * 15 / this._SafeStr_1016;
         _loc10_ = this._SafeStr_1091._SafeStr_1167(_loc8_,_loc9_);
         if(_loc10_[0])
         {
            return false;
         }
         return true;
      }
      
      public function _SafeStr_1116(param1:Number) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:* = undefined;
         _loc2_ = Number(this["Tank" + param1].GetWorldCenter().x);
         _loc3_ = Number(this["Tank" + param1].GetWorldCenter().y);
         _loc7_ = Number(Infinity);
         _loc9_ = 0;
         while(_loc9_ < this._SafeStr_1863.length)
         {
            _loc4_ = this._SafeStr_1863[_loc9_][0].x - _loc2_;
            _loc5_ = this._SafeStr_1863[_loc9_][0].y - _loc3_;
            _loc6_ = Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_));
            if(_loc6_ < this._SafeStr_1863[_loc9_][1])
            {
               return _loc9_;
            }
            if(_loc6_ < _loc7_)
            {
               _loc7_ = _loc6_;
               _loc8_ = _loc9_;
            }
            _loc9_++;
         }
         return _loc8_;
      }
      
      public function _SafeStr_1455(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Boolean = false;
         _loc8_ = false;
         if(this._SafeStr_1815[param1] >= this._SafeStr_1114 && this._SafeStr_725[param1] == 0)
         {
            _loc8_ = true;
         }
         _loc7_ = Number(Math.atan2(param5 - param3,param4 - param2));
         _loc6_ = _loc7_ - this["Tank" + param1].GetTransform().GetAngle();
         if(_loc6_ < -Math.PI)
         {
            _loc6_ += 2 * Math.PI;
         }
         else if(_loc6_ > Math.PI)
         {
            _loc6_ -= 2 * Math.PI;
         }
         if(Math.abs(_loc6_) < this.moveThresholdForward)
         {
            this["Tank" + param1 + "UpPressed"] = true;
         }
         else if(Math.abs(_loc6_) > Math.PI - this.moveThresholdForward)
         {
            this["Tank" + param1 + "DownPressed"] = true;
         }
         else if(Math.abs(_loc6_) > Math.PI - this._SafeStr_1453)
         {
            this["Tank" + param1 + "DownPressed"] = true;
            if(_loc6_ > 0)
            {
               this["Tank" + param1 + "RightPressed"] = true;
            }
            else
            {
               this["Tank" + param1 + "LeftPressed"] = true;
            }
         }
         else if(Math.abs(_loc6_) < this._SafeStr_1453)
         {
            this["Tank" + param1 + "UpPressed"] = true;
            if(_loc6_ > 0)
            {
               this["Tank" + param1 + "RightPressed"] = true;
            }
            else
            {
               this["Tank" + param1 + "LeftPressed"] = true;
            }
         }
         else if(!_loc8_)
         {
            if(_loc6_ > 0)
            {
               this["Tank" + param1 + "RightPressed"] = true;
            }
            else
            {
               this["Tank" + param1 + "LeftPressed"] = true;
            }
         }
         else if(_loc6_ < 0)
         {
            this["Tank" + param1 + "RightPressed"] = true;
         }
         else
         {
            this["Tank" + param1 + "LeftPressed"] = true;
         }
      }
      
      public function startWaypointMode(param1:Event = null) : *
      {
         addEventListener(MouseEvent.MOUSE_DOWN,this.startCreateWaypoint);
      }
      
      public function endWaypointMode(param1:Event = null) : *
      {
         removeEventListener(MouseEvent.MOUSE_DOWN,this.startCreateWaypoint);
      }
      
      public function startCreateWaypoint(param1:MouseEvent) : *
      {
         ++this.waypointID;
         addEventListener(MouseEvent.MOUSE_UP,this._SafeStr_382);
         addEventListener(Event.ENTER_FRAME,this._SafeStr_1792);
         this.waypointx = param1.stageX + this._SafeStr_2567.x - this._SafeStr_2567.width / 2;
         this.waypointy = param1.stageY + this._SafeStr_2567.y - this._SafeStr_2567.height / 2;
         this._SafeStr_2582.graphics.drawCircle(this.waypointx,this.waypointy,1);
         addChild(this._SafeStr_2582);
      }
      
      public function _SafeStr_382(param1:MouseEvent) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:TextField = null;
         var _loc6_:TextFormat = null;
         var _loc7_:* = undefined;
         removeEventListener(MouseEvent.MOUSE_UP,this._SafeStr_382);
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_1792);
         _loc2_ = stage.mouseX + this._SafeStr_2567.x - this._SafeStr_2567.width / 2 - this.waypointx;
         _loc3_ = stage.mouseY + this._SafeStr_2567.y - this._SafeStr_2567.height / 2 - this.waypointy;
         _loc4_ = Number(Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_));
         _loc5_ = new TextField();
         _loc5_.x = this.waypointx;
         _loc5_.y = this.waypointy;
         _loc5_.text = this.waypointID + "\n" + "x: " + (this.waypointx / this._SafeStr_1016).toFixed(2) + "\ny: " + (this.waypointy / this._SafeStr_1016).toFixed(2) + "\nrad: " + (_loc4_ / this._SafeStr_1016).toFixed(2);
         _loc5_.selectable = false;
         _loc6_ = new TextFormat();
         _loc6_.color = 39168;
         _loc5_.setTextFormat(_loc6_);
         addChild(_loc5_);
         _loc7_ = new Shape();
         _loc7_.graphics.lineStyle(1,16711680,1);
         _loc7_.graphics.drawCircle(this.waypointx,this.waypointy,_loc4_);
         addChild(_loc7_);
      }
      
      public function _SafeStr_1792(param1:Event) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         removeChild(this._SafeStr_2582);
         _loc2_ = stage.mouseX + this._SafeStr_2567.x - this._SafeStr_2567.width / 2 - this.waypointx;
         _loc3_ = stage.mouseY + this._SafeStr_2567.y - this._SafeStr_2567.height / 2 - this.waypointy;
         _loc4_ = Number(Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_));
         this._SafeStr_2582 = new Shape();
         this._SafeStr_2582.graphics.lineStyle(1,16711680,1);
         this._SafeStr_2582.graphics.drawCircle(this.waypointx,this.waypointy,_loc4_);
         addChild(this._SafeStr_2582);
      }
      
      public function _SafeStr_1950(param1:Number) : Array
      {
         var waypointArray:Array = null;
         var scanDist:Number = NaN;
         var scanArea:Number = NaN;
         var mapWidth:Number = NaN;
         var mapHeight:Number = NaN;
         var mapStartX:Number = NaN;
         var mapStartY:Number = NaN;
         var size:* = undefined;
         var scanStartTime:Number = NaN;
         var scanEndTime:Number = NaN;
         var wpidCounter:Number = NaN;
         var numHorizontal:Number = NaN;
         var numVertical:Number = NaN;
         var scanResult:Boolean = false;
         var testCircle:b2CircleShape = null;
         var testCircleTransform:b2Transform = null;
         var queryCount:Number = NaN;
         var skipShape:Boolean = false;
         var scanIterations:* = undefined;
         var wc:* = undefined;
         var x2:* = undefined;
         var bc:* = undefined;
         var i:* = undefined;
         var j:* = undefined;
         var qpcTarget:b2Vec2 = null;
         var qpc:Number = NaN;
         var xPos:Number = NaN;
         var yPos:Number = NaN;
         var wcLink:* = undefined;
         var linkResult:Boolean = false;
         var cellI:* = undefined;
         var numtxt:TextField = null;
         var mapSize:Number = param1;
         waypointArray = new Array();
         this.waypointBodyArray = new Array();
         scanDist = 0.4;
         scanArea = 7;
         if(mapSize == 1)
         {
            mapWidth = 27;
            mapHeight = 27;
            mapStartX = 1;
            mapStartY = 1;
         }
         else if(mapSize == 0)
         {
            mapWidth = 20;
            mapHeight = 24;
            mapStartX = 2;
            mapStartY = 1;
         }
         else if(mapSize == 999)
         {
            mapWidth = 50;
            mapHeight = 50;
            mapStartX = 1;
            mapStartY = 1;
         }
         else if(mapSize == 2)
         {
            mapWidth = 36;
            mapHeight = 43;
            mapStartX = 1;
            mapStartY = 1;
         }
         size = scanArea;
         wpidCounter = 0;
         scanStartTime = Number(getTimer());
         numHorizontal = Number(Math.round(mapWidth / scanDist));
         numVertical = Number(Math.round(mapHeight / scanDist));
         testCircleTransform = new b2Transform();
         queryCount = 0;
         scanIterations = 0;
         while(scanIterations < 13)
         {
            i = 0;
            while(i < numVertical)
            {
               j = 0;
               while(j < numHorizontal)
               {
                  scanResult = false;
                  testCircle = new b2CircleShape(size / 2);
                  testCircleTransform.position = new b2Vec2(j * scanDist + mapStartX,i * scanDist + mapStartY);
                  queryCount++;
                  skipShape = false;
                  qpcTarget = new b2Vec2();
                  qpc = 0;
                  while(qpc < 9)
                  {
                     if(qpc == 0)
                     {
                        qpcTarget.Set(j * scanDist + mapStartX,i * scanDist + mapStartY);
                     }
                     else if(qpc == 1)
                     {
                        qpcTarget.Set(j * scanDist + mapStartX - size / 2,i * scanDist + mapStartY);
                     }
                     else if(qpc == 2)
                     {
                        qpcTarget.Set(j * scanDist + mapStartX + size / 2,i * scanDist + mapStartY);
                     }
                     else if(qpc == 3)
                     {
                        qpcTarget.Set(j * scanDist + mapStartX,i * scanDist - size / 2 + mapStartY);
                     }
                     else if(qpc == 4)
                     {
                        qpcTarget.Set(j * scanDist + mapStartX,i * scanDist + size / 2 + mapStartY);
                     }
                     else if(qpc == 5)
                     {
                        qpcTarget.Set(j * scanDist + mapStartX + size / 3,i * scanDist + mapStartY - size / 3);
                     }
                     else if(qpc == 6)
                     {
                        qpcTarget.Set(j * scanDist + mapStartX + size / 3,i * scanDist + mapStartY + size / 3);
                     }
                     else if(qpc == 7)
                     {
                        qpcTarget.Set(j * scanDist + mapStartX - size / 3,i * scanDist + mapStartY + size / 3);
                     }
                     else if(qpc == 8)
                     {
                        qpcTarget.Set(j * scanDist + mapStartX - size / 3,i * scanDist + mapStartY - size / 3);
                     }
                     this._SafeStr_1091._SafeStr_942(function pointCallback(param1:b2Fixture):Boolean
                     {
                        var _loc2_:Number = NaN;
                        var _loc3_:Number = NaN;
                        if(param1.GetBody().GetUserData().type == "waypoint")
                        {
                           _loc2_ = param1.GetBody().GetWorldCenter().x - j * scanDist;
                           _loc3_ = 0;
                           while(_loc3_ < _loc2_)
                           {
                              ++j;
                              _loc3_ = j * scanDist + mapStartX - param1.GetBody().GetWorldCenter().x;
                           }
                        }
                        skipShape = true;
                        return false;
                     },qpcTarget);
                     if(skipShape)
                     {
                        break;
                     }
                     qpc++;
                  }
                  if(!skipShape)
                  {
                     this._SafeStr_1091._SafeStr_1628(function scanCallback(param1:b2Fixture):Boolean
                     {
                        var _loc2_:Number = NaN;
                        var _loc3_:Number = NaN;
                        trace("callback");
                        if(param1)
                        {
                           scanResult = true;
                           trace("true");
                           if(param1.GetBody().GetUserData().type == "waypoint")
                           {
                              _loc2_ = param1.GetBody().GetWorldCenter().x - j * scanDist;
                              _loc3_ = 0;
                              while(_loc3_ < _loc2_)
                              {
                                 ++j;
                                 _loc3_ = j * scanDist + mapStartX - param1.GetBody().GetWorldCenter().x;
                              }
                           }
                        }
                        return false;
                     },testCircle,testCircleTransform);
                     if(!scanResult)
                     {
                        trace("clear");
                        xPos = j * scanDist + Number(mapStartX.toFixed(2));
                        yPos = i * scanDist + Number(mapStartY.toFixed(2));
                        this._SafeStr_1154(xPos,yPos,size,wpidCounter);
                        waypointArray[wpidCounter] = [new Point(xPos,yPos),size / 2,[0,0,0,0,0,0,0,0]];
                        wpidCounter++;
                     }
                  }
                  j++;
               }
               i++;
            }
            size -= 0.5;
            scanIterations++;
         }
         trace("querycount: " + queryCount);
         scanEndTime = Number(getTimer());
         trace("scan took " + (scanEndTime - scanStartTime) + "ms.");
         trace("calculating links...");
         wc = 0;
         while(wc < wpidCounter)
         {
            wcLink = 0;
            while(wcLink < wpidCounter)
            {
               if(wc != wcLink)
               {
                  linkResult = this._SafeStr_1657(waypointArray[wc][0].x,waypointArray[wc][0].y,waypointArray[wcLink][0].x,waypointArray[wcLink][0].y,wcLink,wc);
                  if(linkResult == true)
                  {
                     waypointArray[wc].push(wcLink);
                     if(this._SafeStr_1380 || mapSize == 3)
                     {
                        this._SafeStr_920.graphics.lineStyle(1,16711680,1);
                        this._SafeStr_920.graphics.moveTo(waypointArray[wc][0].x * this._SafeStr_1016,waypointArray[wc][0].y * this._SafeStr_1016);
                        this._SafeStr_920.graphics.lineTo(waypointArray[wcLink][0].x * this._SafeStr_1016,waypointArray[wcLink][0].y * this._SafeStr_1016);
                        addChild(this._SafeStr_920);
                        this._SafeStr_2113.push(this._SafeStr_920);
                     }
                  }
               }
               wcLink++;
            }
            wc++;
         }
         trace("links calculated.");
         trace("WAYPOINTS==========================================");
         x2 = 0;
         while(x2 < waypointArray.length)
         {
            trace("levelThirteenWaypointArray[" + x2 + "] = [new Point(" + waypointArray[x2][0].x + "," + waypointArray[x2][0].y + "), " + waypointArray[x2][1] + ", [0,0,0,0], " + waypointArray[x2][3] + ", " + waypointArray[x2][4] + ", " + waypointArray[x2][5] + ", " + waypointArray[x2][6] + ", " + waypointArray[x2][7] + ", " + waypointArray[x2][8] + ", " + waypointArray[x2][9] + ", " + waypointArray[x2][10] + ", " + waypointArray[x2][11] + ", " + waypointArray[x2][12] + ", " + waypointArray[x2][13] + ", " + waypointArray[x2][14] + "];");
            x2++;
         }
         trace("==========================================");
         if(this._SafeStr_1380 || mapSize == 3)
         {
            this._SafeStr_2022 = new Shape();
            this._SafeStr_2022.graphics.lineStyle(1,16711680,1);
            cellI = 0;
            while(cellI < waypointArray.length)
            {
               this._SafeStr_2022.graphics.drawCircle(waypointArray[cellI][0].x * this._SafeStr_1016,waypointArray[cellI][0].y * this._SafeStr_1016,waypointArray[cellI][1] * this._SafeStr_1016);
               numtxt = new TextField();
               numtxt.text = cellI;
               numtxt.x = waypointArray[cellI][0].x * this._SafeStr_1016;
               numtxt.y = waypointArray[cellI][0].y * this._SafeStr_1016;
               addChild(numtxt);
               this._SafeStr_2524.push(numtxt);
               cellI++;
            }
            addChild(this._SafeStr_2022);
         }
         bc = 0;
         while(bc < this.waypointBodyArray.length)
         {
            this._SafeStr_1091.DestroyBody(this.waypointBodyArray[bc]);
            bc++;
         }
         this.waypointBodyArray = [];
         return waypointArray;
      }
      
      public function _SafeStr_1154(param1:Number, param2:Number, param3:Number, param4:Number) : *
      {
         var _loc5_:b2Body = null;
         var _loc6_:b2FixtureDef = null;
         var _loc7_:b2BodyDef = null;
         var _loc8_:b2CircleShape = null;
         var _loc9_:Object = null;
         trace("makePoint!");
         param1 = Number(Number(param1.toFixed(2)));
         param2 = Number(Number(param2.toFixed(2)));
         _loc7_ = new b2BodyDef();
         _loc8_ = new b2CircleShape(param3 / 2);
         _loc6_ = new b2FixtureDef();
         _loc6_.shape = _loc8_;
         _loc9_ = new Object();
         _loc9_.type = "waypoint";
         _loc9_.wpid = param4;
         _loc7_.position.Set(param1,param2);
         _loc5_ = this._SafeStr_1091.CreateBody(_loc7_);
         _loc5_.CreateFixture(_loc6_);
         _loc5_.SetUserData(_loc9_);
         this.waypointBodyArray.push(_loc5_);
      }
      
      public function _SafeStr_1657(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Boolean
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:Array = null;
         if(param5 == 79 && param6 == 78)
         {
            trace("lol");
         }
         _loc9_ = param3 - param1;
         _loc10_ = param4 - param2;
         _loc11_ = Number(Math.atan2(_loc10_,_loc9_));
         _loc11_ = _loc11_ + Math.PI / 2;
         _loc12_ = new b2Vec2();
         _loc13_ = new b2Vec2();
         _loc12_.x = param1 + Math.cos(_loc11_) * 14 / this._SafeStr_1016;
         _loc12_.y = param2 + Math.sin(_loc11_) * 14 / this._SafeStr_1016;
         _loc13_.x = param3 + Math.cos(_loc11_) * 14 / this._SafeStr_1016;
         _loc13_.y = param4 + Math.sin(_loc11_) * 14 / this._SafeStr_1016;
         _loc14_ = this._SafeStr_1091._SafeStr_1167(_loc12_,_loc13_);
         if(_loc14_[0])
         {
            if(_loc14_[0].GetBody().GetUserData().type == "waypoint")
            {
               _loc7_ = Number(_loc14_[0].GetBody().GetUserData().wpid);
               if(_loc7_ != param5)
               {
                  return false;
               }
               _loc12_.x = param1 - Math.cos(_loc11_) * 14 / this._SafeStr_1016;
               _loc12_.y = param2 - Math.sin(_loc11_) * 14 / this._SafeStr_1016;
               _loc13_.x = param3 - Math.cos(_loc11_) * 14 / this._SafeStr_1016;
               _loc13_.y = param4 - Math.sin(_loc11_) * 14 / this._SafeStr_1016;
               _loc14_ = this._SafeStr_1091._SafeStr_1167(_loc12_,_loc13_);
               if(_loc14_[0])
               {
                  if(_loc14_[0].GetBody().GetUserData().type == "waypoint")
                  {
                     _loc8_ = Number(_loc14_[0].GetBody().GetUserData().wpid);
                     if(_loc7_ == param5 && _loc8_ == param5)
                     {
                        return true;
                     }
                     return false;
                  }
                  return false;
               }
               return false;
            }
            return false;
         }
         return false;
      }
      
      public function singlePlayerSpawnRandomTank(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         _loc2_ = 74 + Math.random() * 746;
         _loc3_ = 66 + Math.random() * 744;
         if(_loc2_ < 180 && _loc3_ < 170 || _loc2_ < 180 && _loc3_ > 715 || _loc2_ > 695 && _loc3_ < 170 || _loc2_ > 715 && _loc3_ > 715)
         {
            this.singlePlayerSpawnRandomTank(param1);
            return;
         }
         _loc4_ = 360 * Math.random();
         this["Tank" + param1 + "SpawnX"] = _loc2_;
         this["Tank" + param1 + "SpawnY"] = _loc3_;
         this["Tank" + param1 + "SpawnRotation"] = _loc4_;
         this.tankNameArray[param1] = "";
         this._SafeStr_2147[param1] = true;
         this._SafeStr_1162[param1] = Math.floor(Math.random() * 3) + 1;
         this._SafeStr_451[param1] = true;
         this["Tank" + param1 + "Alive"] = true;
         this.spawnTank(param1);
         this["Tank" + param1 + "Health"] = 1;
      }
      
      public function _SafeStr_2271(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         addEventListener(Event.ENTER_FRAME,this._SafeStr_2228);
         this.singlePlayerSpawnRandomTank(1);
         this.singlePlayerSpawnRandomTank(2);
         this.hudthing.spectatingbg.visible = true;
         this.hudthing.timermc.visible = true;
         this._SafeStr_2275 = true;
         this.hudthing.timetrialbutton.visible = false;
         this.hudthing.timetrialbutton.removeEventListener(MouseEvent.CLICK,this._SafeStr_2271);
      }
      
      public function _SafeStr_2228(param1:Event) : *
      {
         this._SafeStr_823.tutorialtext.alpha -= 0.04;
         if(this._SafeStr_823.tutorialtext.alpha <= 0)
         {
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_2228);
            this._SafeStr_823.tutorialtext.text1.text = "";
            this._SafeStr_823.tutorialtext.text2.text = "shoot as many tanks\nas possible";
            this._SafeStr_823.tutorialtext.text3.text = "before the timer\nruns out";
            this._SafeStr_823.tutorialtext.text4.text = "destroying a tank\ngives you extra time";
            this._SafeStr_823.tutorialtext.text5.text = "shoot the first tank\nto begin!";
            this._SafeStr_823.tutorialtext.text6.text = "";
            addEventListener(Event.ENTER_FRAME,this._SafeStr_386);
         }
      }
      
      public function _SafeStr_386(param1:Event) : *
      {
         this._SafeStr_823.tutorialtext.alpha += 0.04;
         if(this._SafeStr_823.tutorialtext.alpha >= 1)
         {
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_386);
         }
      }
      
      public function _SafeStr_1775(param1:Event) : *
      {
         this._SafeStr_936 = getTimer();
         this._SafeStr_1205 = this._SafeStr_2558 - this._SafeStr_936;
         this._SafeStr_2167 = Math.floor(this._SafeStr_1205 / 60000);
         this._SafeStr_963 = this._SafeStr_1205 % 60000;
         this._SafeStr_2409 = this._SafeStr_963 % 1000;
         this._SafeStr_963 = Math.floor(this._SafeStr_963 / 1000);
         this._SafeStr_2409 = Math.floor(this._SafeStr_2409);
         this.TTminutesUnitsString = String(this._SafeStr_2167);
         if(this._SafeStr_963 >= 10)
         {
            this.TTsecondsUnitsString = String(this._SafeStr_963);
         }
         else
         {
            this.TTsecondsUnitsString = "0" + String(this._SafeStr_963);
         }
         this.TTmsUnitsString = String(this._SafeStr_2409);
         this.TTmsUnitsString = this.TTmsUnitsString.charAt(0);
         this.hudthing.timermc.timertext.text = this.TTminutesUnitsString + ":" + this.TTsecondsUnitsString;
         if(this._SafeStr_1205 < 0)
         {
            this.Tank0Health = 1;
            this.dropTankHealth(0,NaN,NaN);
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1775);
            this.hudthing.timermc.timertext.text = "0:00";
            trace("TANKS KILLED: " + this._SafeStr_1830);
         }
      }
      
      public function _SafeStr_2229() : *
      {
         var _loc1_:* = undefined;
         this.flag0Team = -1;
         this.flag1Team = -1;
         _loc1_ = 0;
         while(_loc1_ < this._SafeStr_451.length)
         {
            if(this._SafeStr_451[_loc1_] == true)
            {
               if(this.flag0Team == -1)
               {
                  this.flag0Team = this._SafeStr_1162[_loc1_];
               }
               else if(this.flag1Team == -1 && this.flag0Team != this._SafeStr_1162[_loc1_])
               {
                  this.flag1Team = this._SafeStr_1162[_loc1_];
               }
            }
            _loc1_++;
         }
      }
      
      public function resetFlag(param1:Number) : *
      {
         var _loc2_:* = undefined;
         this.xtr("resetFlag" + getTimer());
         this["flag" + param1].x = this.flagSpawnArray[param1].x;
         this["flag" + param1].y = this.flagSpawnArray[param1].y;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_1867.length)
         {
            if(this._SafeStr_1867[_loc2_] == param1)
            {
               this._SafeStr_1867[_loc2_] = -1;
               break;
            }
            _loc2_++;
         }
         this.flagStateArray[param1] = "spawn";
         this["flagbase" + param1].x = this.flagSpawnArray[param1].x;
         this["flagbase" + param1].y = this.flagSpawnArray[param1].y;
      }
      
      public function flagAcquired(param1:Number, param2:Number) : *
      {
         if(this._SafeStr_2565)
         {
            this.xtr("flagAcquired" + getTimer());
            this._SafeStr_1867[param2] = param1;
            this.flagStateArray[param1] = "acquired";
            this.flagNotification(0,param1);
         }
      }
      
      public function flagDropped(param1:Number, param2:Number) : *
      {
         if(this._SafeStr_2565)
         {
            this.xtr("flagDropped" + getTimer());
            this._SafeStr_1867[param2] = -1;
            this.flagStateArray[param1] = "dropped";
            this.flagNotification(2,param1);
         }
      }
      
      public function flagReturned(param1:Number) : *
      {
         if(this._SafeStr_2565)
         {
            this.xtr("flagReturned" + getTimer());
            this.resetFlag(param1);
            this.flagNotification(3,param1);
         }
      }
      
      public function flagCaptured(param1:Number, param2:Number) : *
      {
         if(this._SafeStr_2565)
         {
            this.xtr("flagCaptured" + getTimer());
            ++this._SafeStr_879[param2];
            ++this.simpleStatsCapturesTeam[this._SafeStr_1162[param2]];
            this._SafeStr_947();
            this.resetFlag(param1);
            if(!this.muteSfx)
            {
               this.readySound.play();
            }
            this.flagNotification(1,param1);
            if(this._SafeStr_1759)
            {
               this.playQuakeSound();
            }
         }
      }
      
      public function flagNotification(param1:Number, param2:Number) : *
      {
         var _loc4_:Boolean = false;
         var _loc5_:Number = NaN;
         if(this.flag0Team == this._SafeStr_1162[this.localTankID])
         {
            _loc5_ = 0;
         }
         else
         {
            _loc5_ = 1;
         }
         if(param2 == _loc5_)
         {
            _loc4_ = false;
         }
         else
         {
            _loc4_ = true;
         }
         switch(param1)
         {
            case 0:
               if(_loc4_)
               {
                  this.hudthing.ctfscores.ctfnotifications.ctfnotifications_text.thetext.text = "Your team has the enemy flag";
                  this.hudthing.ctfscores.ctfnotifications.gotoAndPlay(2);
                  break;
               }
               this.hudthing.ctfscores.ctfnotifications.ctfnotifications_text.thetext.text = "The enemy team has your flag";
               this.hudthing.ctfscores.ctfnotifications.gotoAndPlay(2);
               break;
            case 1:
               if(_loc4_)
               {
                  this.hudthing.ctfscores.ctfnotifications.ctfnotifications_text.thetext.text = "Your team scores!";
                  this.hudthing.ctfscores.ctfnotifications.gotoAndPlay(2);
                  break;
               }
               this.hudthing.ctfscores.ctfnotifications.ctfnotifications_text.thetext.text = "The enemy team scores!";
               this.hudthing.ctfscores.ctfnotifications.gotoAndPlay(2);
               break;
            case 2:
               if(_loc4_)
               {
                  this.hudthing.ctfscores.ctfnotifications.ctfnotifications_text.thetext.text = "Enemy flag dropped";
                  this.hudthing.ctfscores.ctfnotifications.gotoAndPlay(2);
                  break;
               }
               this.hudthing.ctfscores.ctfnotifications.ctfnotifications_text.thetext.text = "Your flag has been dropped";
               this.hudthing.ctfscores.ctfnotifications.gotoAndPlay(2);
               break;
            case 3:
               if(_loc4_)
               {
                  this.hudthing.ctfscores.ctfnotifications.ctfnotifications_text.thetext.text = "Enemy flag returned";
                  this.hudthing.ctfscores.ctfnotifications.gotoAndPlay(2);
                  break;
               }
               this.hudthing.ctfscores.ctfnotifications.ctfnotifications_text.thetext.text = "Your flag has been returned";
               this.hudthing.ctfscores.ctfnotifications.gotoAndPlay(2);
         }
      }
      
      public function _SafeStr_1348(param1:Event) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_1867.length)
         {
            if(this._SafeStr_1867[_loc2_] != -1)
            {
               this["flag" + this._SafeStr_1867[_loc2_]].x = this["tank" + _loc2_ + "Graphic"].x - 11 * Math.cos(this["tank" + _loc2_ + "Graphic"].rotation * (Math.PI / 180));
               this["flag" + this._SafeStr_1867[_loc2_]].y = this["tank" + _loc2_ + "Graphic"].y - 11 * Math.sin(this["tank" + _loc2_ + "Graphic"].rotation * (Math.PI / 180));
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_1183(param1:Event) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_451.length)
         {
            if(this._SafeStr_451[_loc2_] == true && this["Tank" + _loc2_ + "Alive"] == true)
            {
               _loc4_ = 0;
               while(_loc4_ < 2)
               {
                  if(Math.abs(this["tank" + _loc2_ + "Graphic"].x - this["flag" + _loc4_].x) < 30 && Math.abs(this["tank" + _loc2_ + "Graphic"].y - this["flag" + _loc4_].y) < 30)
                  {
                     if(this.flagStateArray[_loc4_] != "acquired" && this._SafeStr_1162[_loc2_] != this["flag" + _loc4_ + "Team"])
                     {
                        this.flagAcquired(_loc4_,_loc2_);
                        this.sendStream.send("flagAcquired",_loc4_,_loc2_);
                     }
                     else if(this._SafeStr_1162[_loc2_] == this["flag" + _loc4_ + "Team"] && this.flagStateArray[_loc4_] == "dropped")
                     {
                        this.flagReturned(_loc4_);
                        this.sendStream.send("flagReturned",_loc4_);
                     }
                  }
                  _loc4_++;
               }
            }
            _loc2_++;
         }
         _loc3_ = 0;
         while(_loc3_ < 2)
         {
            if(Math.abs(this["captureZone" + _loc3_].x - this["flag" + _loc3_].x) < 40 && Math.abs(this["captureZone" + _loc3_].y - this["flag" + _loc3_].y) < 40)
            {
               if(_loc3_ == 0)
               {
                  _loc5_ = 1;
               }
               else
               {
                  _loc5_ = 0;
               }
               if(this.flagStateArray[_loc5_] == "spawn")
               {
                  _loc7_ = 0;
                  while(_loc7_ < this._SafeStr_1867.length)
                  {
                     if(this._SafeStr_1867[_loc7_] == _loc3_)
                     {
                        _loc6_ = _loc7_;
                     }
                     _loc7_++;
                  }
                  this.flagCaptured(_loc3_,_loc6_);
                  this.sendStream.send("flagCaptured",_loc3_,_loc6_);
               }
            }
            _loc3_++;
         }
      }
      
      public function _SafeStr_947(param1:Boolean = false, param2:String = "", param3:Number = 0) : *
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Array = null;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         if(param2)
         {
            param2 = this.fixUsernameString(param2);
         }
         if(this.gameMode == 0)
         {
            this.hudthing.ctfscores.visible = false;
            this.hudthing.dmscores.visible = false;
         }
         else if(this.gameMode == 1)
         {
            this.hudthing.ctfscores.visible = false;
            this.hudthing.dmscores.visible = true;
            if(!this.teamPlay)
            {
               this.hudthing.dmscores.dmscore.text = this._SafeStr_2343[this.localTankID];
            }
            else
            {
               this.hudthing.dmscores.dmscore.text = this.simpleStatsKillsTeam[this._SafeStr_1162[this.localTankID]];
            }
            this.hudthing.dmscores.scorelimit.text = this.deathmatchKillLimit;
            if(!this.teamPlay)
            {
               _loc4_ = Number(this._SafeStr_2343[this.localTankID]);
            }
            else
            {
               _loc4_ = Number(this.simpleStatsKillsTeam[this._SafeStr_1162[this.localTankID]]);
            }
            _loc5_ = 0;
            if(!this.teamPlay)
            {
               _loc10_ = 0;
               while(_loc10_ < this._SafeStr_451.length)
               {
                  if(this._SafeStr_451[_loc10_] == true)
                  {
                     if(this._SafeStr_2343[_loc10_] > _loc4_)
                     {
                        _loc5_++;
                     }
                  }
                  _loc10_++;
               }
            }
            else
            {
               _loc11_ = 0;
               while(_loc11_ < this.simpleStatsKillsTeam.length)
               {
                  if(this.simpleStatsKillsTeam[_loc11_] > _loc4_)
                  {
                     _loc5_++;
                  }
                  _loc11_++;
               }
            }
            _loc5_++;
            this.hudthing.dmscores.dmposition.text = _loc5_;
            switch(_loc5_)
            {
               case 1:
                  this.hudthing.dmscores.dmposition.appendText("st");
                  break;
               case 2:
                  this.hudthing.dmscores.dmposition.appendText("nd");
                  break;
               case 3:
                  this.hudthing.dmscores.dmposition.appendText("rd");
                  break;
               case 4:
               case 5:
               case 6:
               case 7:
               case 8:
                  this.hudthing.dmscores.dmposition.appendText("th");
            }
            _loc6_ = new Array();
            _loc7_ = 0;
            while(_loc7_ < this._SafeStr_451.length)
            {
               if(this._SafeStr_451[_loc7_] == true)
               {
                  if(!this.teamPlay)
                  {
                     _loc6_.push({
                        "id":_loc7_,
                        "score":this._SafeStr_2343[_loc7_],
                        "scorefix":(this._SafeStr_2343[_loc7_] < 10 ? "0" + this._SafeStr_2343[_loc7_] : this._SafeStr_2343[_loc7_])
                     });
                  }
                  else
                  {
                     _loc6_.push({
                        "id":_loc7_,
                        "score":this._SafeStr_2343[_loc7_],
                        "teamscore":this.simpleStatsKillsTeam[this._SafeStr_1162[_loc7_]],
                        "scorefix":(this._SafeStr_2343[_loc7_] < 10 ? "0" + this._SafeStr_2343[_loc7_] : this._SafeStr_2343[_loc7_]),
                        "teamscorefix":(this.simpleStatsKillsTeam[this._SafeStr_1162[_loc7_]] < 10 ? "0" + this.simpleStatsKillsTeam[this._SafeStr_1162[_loc7_]] : this.simpleStatsKillsTeam[this._SafeStr_1162[_loc7_]])
                     });
                  }
               }
               _loc7_++;
            }
            if(!this.teamPlay)
            {
               _loc6_.sortOn("scorefix",Array.DESCENDING);
            }
            else
            {
               _loc6_.sortOn(["teamscorefix","scorefix"],Array.DESCENDING,Array.DESCENDING);
            }
            _loc8_ = 0;
            while(_loc8_ < 8)
            {
               this.hudthing.dmscores["slot" + _loc8_].visible = false;
               _loc8_++;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc6_.length)
            {
               if(param1 || this._SafeStr_2037)
               {
                  this.hudthing.dmscores["slot" + _loc9_].visible = true;
               }
               this.hudthing.dmscores["slot" + _loc9_].nameslot.htmlText = "<font color=\'" + this._SafeStr_2447[this._SafeStr_1162[_loc6_[_loc9_].id]] + "\'>" + this.fixUsernameString(this.tankNameArray[_loc6_[_loc9_].id]) + "</font>";
               this.hudthing.dmscores["slot" + _loc9_].scoreslot.htmlText = "<font color=\'" + this._SafeStr_2447[this._SafeStr_1162[_loc6_[_loc9_].id]] + "\'>" + _loc6_[_loc9_].score + "</font>";
               this.hudthing.dmscores["slot" + _loc9_].placeslot.htmlText = "<font color=\'" + this._SafeStr_2447[this._SafeStr_1162[_loc6_[_loc9_].id]] + "\'>" + Number(_loc9_ + 1) + "</font>";
               switch(_loc9_ + 1)
               {
                  case 1:
                     this.hudthing.dmscores["slot" + _loc9_].placeslot.htmlText += "<font color=\'" + this._SafeStr_2447[this._SafeStr_1162[_loc6_[_loc9_].id]] + "\'>st</font>";
                     break;
                  case 2:
                     this.hudthing.dmscores["slot" + _loc9_].placeslot.htmlText += "<font color=\'" + this._SafeStr_2447[this._SafeStr_1162[_loc6_[_loc9_].id]] + "\'>nd</font>";
                     break;
                  case 3:
                     this.hudthing.dmscores["slot" + _loc9_].placeslot.htmlText += "<font color=\'" + this._SafeStr_2447[this._SafeStr_1162[_loc6_[_loc9_].id]] + "\'>rd</font>";
                     break;
                  case 4:
                  case 5:
                  case 6:
                  case 7:
                  case 8:
                     this.hudthing.dmscores["slot" + _loc9_].placeslot.htmlText += "<font color=\'" + this._SafeStr_2447[this._SafeStr_1162[_loc6_[_loc9_].id]] + "\'>th</font>";
               }
               _loc9_++;
            }
         }
         else if(this.gameMode == 2)
         {
            this.hudthing.dmscores.visible = false;
            this.hudthing.ctfscores.visible = true;
            _loc12_ = -1;
            _loc13_ = -1;
            _loc14_ = 0;
            while(_loc14_ < this._SafeStr_451.length)
            {
               if(this._SafeStr_451[_loc14_] == true)
               {
                  if(_loc12_ == -1)
                  {
                     _loc12_ = Number(this._SafeStr_1162[_loc14_]);
                  }
                  else if(_loc13_ == -1 && _loc12_ != this._SafeStr_1162[_loc14_])
                  {
                     _loc13_ = Number(this._SafeStr_1162[_loc14_]);
                  }
               }
               _loc14_++;
            }
            switch(_loc12_)
            {
               case 0:
                  this.hudthing.ctfscores.score0name.htmlText = "<font color=\'#02440C\'>Green team</font>";
                  this.hudthing.ctfscores.score0.htmlText = "<font color=\'#02440C\'>" + this.simpleStatsCapturesTeam[_loc12_] + "</font>";
                  break;
               case 1:
                  this.hudthing.ctfscores.score0name.htmlText = "<font color=\'#07075F\'>Blue team</font>";
                  this.hudthing.ctfscores.score0.htmlText = "<font color=\'#07075F\'>" + this.simpleStatsCapturesTeam[_loc12_] + "</font>";
                  break;
               case 2:
                  this.hudthing.ctfscores.score0name.htmlText = "<font color=\'#5F0707\'>Red team</font>";
                  this.hudthing.ctfscores.score0.htmlText = "<font color=\'#5F0707\'>" + this.simpleStatsCapturesTeam[_loc12_] + "</font>";
                  break;
               case 3:
                  this.hudthing.ctfscores.score0name.htmlText = "<font color=\'#6D7005\'>Yellow team</font>";
                  this.hudthing.ctfscores.score0.htmlText = "<font color=\'#6D7005\'>" + this.simpleStatsCapturesTeam[_loc12_] + "</font>";
            }
            switch(_loc13_)
            {
               case 0:
                  this.hudthing.ctfscores.score1name.htmlText = "<font color=\'#02440C\'>Green team</font>";
                  this.hudthing.ctfscores.score1.htmlText = "<font color=\'#02440C\'>" + this.simpleStatsCapturesTeam[_loc13_] + "</font>";
                  break;
               case 1:
                  this.hudthing.ctfscores.score1name.htmlText = "<font color=\'#07075F\'>Blue team</font>";
                  this.hudthing.ctfscores.score1.htmlText = "<font color=\'#07075F\'>" + this.simpleStatsCapturesTeam[_loc13_] + "</font>";
                  break;
               case 2:
                  this.hudthing.ctfscores.score1name.htmlText = "<font color=\'#5F0707\'>Red team</font>";
                  this.hudthing.ctfscores.score1.htmlText = "<font color=\'#5F0707\'>" + this.simpleStatsCapturesTeam[_loc13_] + "</font>";
                  break;
               case 3:
                  this.hudthing.ctfscores.score1name.htmlText = "<font color=\'#6D7005\'>Yellow team</font>";
                  this.hudthing.ctfscores.score1.htmlText = "<font color=\'#6D7005\'>" + this.simpleStatsCapturesTeam[_loc13_] + "</font>";
            }
            this.hudthing.ctfscores.scorelimit.text = this.ctfCaptureLimit;
         }
         if(param2)
         {
            _loc15_ = this.hudthing.addChild(new _SafeCls_258());
            _loc15_.x = 365;
            _loc15_.y = 210;
            _loc15_.winnername.htmlText = "<font color=\'" + this._SafeStr_2447[param3] + "\'>" + param2 + "</font>";
         }
      }
      
      public function _SafeStr_611(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 88)
         {
         }
      }
      
      public function _SafeStr_2054(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 88)
         {
         }
      }
      
      public function _SafeStr_2087(param1:KeyboardEvent) : *
      {
         var event:KeyboardEvent = param1;
         if((event.keyCode == 69 || event.keyCode == 90 || event.keyCode == 88) && stage.focus != this.hudthing.txtInGameChatSend)
         {
            trace("powerup key " + stage.focus);
            this.powerUpPressed();
         }
         if(event.keyCode == 72 && this._SafeStr_1093)
         {
            if(this.hudthing.visible == true)
            {
               this.hudthing.visible = false;
            }
            else
            {
               this.hudthing.visible = true;
            }
         }
         if(event.keyCode == 77 && stage.focus != this.hudthing.txtInGameChatSend)
         {
            if(this.muteMusic)
            {
               this.muteMusic = false;
               this._SafeStr_1077.data.muteMusic = false;
               try
               {
                  this._SafeStr_1077.flush();
               }
               catch(e:Error)
               {
                  trace("SO FLUSH ERROR!");
               }
               this._SafeStr_1811.volume = this._SafeStr_946;
               this._SafeStr_1878.soundTransform = this._SafeStr_1811;
            }
            else
            {
               this.muteMusic = true;
               this._SafeStr_1077.data.muteMusic = true;
               try
               {
                  this._SafeStr_1077.flush();
               }
               catch(e:Error)
               {
                  trace("SO FLUSH ERROR!");
               }
               this._SafeStr_1811.volume = 0;
               this._SafeStr_1878.soundTransform = this._SafeStr_1811;
            }
         }
      }
      
      public function _SafeStr_1122(param1:Event) : *
      {
         this._SafeStr_1890 = getTimer();
      }
      
      public function _SafeStr_1144(param1:Number) : *
      {
         var _loc2_:GlowFilter = null;
         _loc2_ = new GlowFilter();
         _loc2_.inner = false;
         if(this._SafeStr_1162[param1] == 0)
         {
            _loc2_.color = 3850834;
         }
         else if(this._SafeStr_1162[param1] == 1)
         {
            _loc2_.color = 3770052;
         }
         else if(this._SafeStr_1162[param1] == 2)
         {
            _loc2_.color = 12929592;
         }
         else
         {
            _loc2_.color = 13555256;
         }
         _loc2_.blurX = 21;
         _loc2_.blurY = 21;
         this["tank" + param1 + "Graphic"].filters = [_loc2_];
      }
      
      public function _SafeStr_1534() : *
      {
         this._SafeStr_1808 = stage.addChild(new _SafeCls_225());
         this._SafeStr_1808.x = 365;
         this._SafeStr_1808.y = 250;
         this._SafeStr_1808.tank.skin.visible = false;
         this._SafeStr_1808.tankbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_784);
         this._SafeStr_1808.spawnbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2540);
         this._SafeStr_1808.spectate.addEventListener(MouseEvent.CLICK,this._SafeStr_2231);
         this._SafeStr_784();
         if(this.teamPlay)
         {
            this._SafeStr_1808.selectteamlabel.visible = true;
         }
         else
         {
            this._SafeStr_1808.selectteamlabel.visible = false;
         }
      }
      
      public function _SafeStr_806(param1:MouseEvent = null) : *
      {
         stage.removeChild(this._SafeStr_1808);
      }
      
      public function _SafeStr_784(param1:MouseEvent = null) : *
      {
         this._SafeStr_838 = this._SafeStr_2038();
         if(this._SafeStr_2011[this.localTankID][0] == 0)
         {
            this._SafeStr_1808.tank.tankmain.gotoAndStop(1);
         }
         else if(this._SafeStr_2011[this.localTankID][0] == 3)
         {
            this._SafeStr_1808.tank.tankmain.gotoAndStop(2);
         }
         else if(this._SafeStr_2011[this.localTankID][0] == 6)
         {
            this._SafeStr_1808.tank.tankmain.gotoAndStop(3);
         }
         else if(this._SafeStr_2011[this.localTankID][0] == 9)
         {
            this._SafeStr_1808.tank.tankmain.gotoAndStop(4);
         }
         if(this._SafeStr_2011[this.localTankID][1] == 1)
         {
            this._SafeStr_1808.tank.spinnybit.gotoAndStop(1);
         }
         else if(this._SafeStr_2011[this.localTankID][1] == 4)
         {
            this._SafeStr_1808.tank.spinnybit.gotoAndStop(2);
         }
         else if(this._SafeStr_2011[this.localTankID][1] == 7)
         {
            this._SafeStr_1808.tank.spinnybit.gotoAndStop(3);
         }
         else if(this._SafeStr_2011[this.localTankID][1] == 10)
         {
            this._SafeStr_1808.tank.spinnybit.gotoAndStop(4);
         }
         if(this._SafeStr_2011[this.localTankID][2] == 2)
         {
            this._SafeStr_1808.tank.barrel.colour.gotoAndStop(1);
         }
         else if(this._SafeStr_2011[this.localTankID][2] == 5)
         {
            this._SafeStr_1808.tank.barrel.colour.gotoAndStop(2);
         }
         else if(this._SafeStr_2011[this.localTankID][2] == 8)
         {
            this._SafeStr_1808.tank.barrel.colour.gotoAndStop(3);
         }
         else if(this._SafeStr_2011[this.localTankID][2] == 11)
         {
            this._SafeStr_1808.tank.barrel.colour.gotoAndStop(4);
         }
         this._SafeStr_1808.tank.tankmain.colour.gotoAndStop(this._SafeStr_838 + 1);
         this._SafeStr_1808.tank.barrel.colour.colour.gotoAndStop(this._SafeStr_838 + 1);
         this._SafeStr_1808.tank.spinnybit.colour.gotoAndStop(this._SafeStr_838 + 1);
      }
      
      public function _SafeStr_2038() : Number
      {
         var _loc1_:Number = NaN;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this._SafeStr_838 == -1)
         {
            _loc1_ = -1;
         }
         else
         {
            _loc1_ = this._SafeStr_838;
         }
         _loc2_ = 0;
         while(_loc2_ < 4)
         {
            _loc1_++;
            if(_loc1_ == 4)
            {
               _loc1_ = 0;
            }
            if(this.gameMode == 1)
            {
               if(!this.teamPlay)
               {
                  return _loc1_;
               }
               _loc3_ = 0;
               while(_loc3_ < this._SafeStr_451.length)
               {
                  if(this._SafeStr_451[_loc3_] == true && this._SafeStr_1162[_loc3_] == _loc1_)
                  {
                     return _loc1_;
                  }
                  _loc3_++;
               }
            }
            if(this.gameMode == 2)
            {
               if(this.flag0Team == _loc1_ || this.flag1Team == _loc1_)
               {
                  _loc4_ = 0;
                  _loc5_ = 0;
                  _loc3_ = 0;
                  while(_loc3_ < this._SafeStr_451.length)
                  {
                     if(this._SafeStr_451[_loc3_] == true)
                     {
                        if(this._SafeStr_1162[_loc3_] == this.flag0Team)
                        {
                           _loc4_++;
                        }
                        else if(this._SafeStr_1162[_loc3_] == this.flag1Team)
                        {
                           _loc5_++;
                        }
                     }
                     _loc3_++;
                  }
                  if(this.flag0Team == _loc1_ && _loc4_ <= _loc5_ || this.flag1Team == _loc1_ && _loc5_ <= _loc4_)
                  {
                     return _loc1_;
                  }
               }
            }
            _loc2_++;
         }
         this.xtr("assignInGameColour FAILED, reached end of loop without a return being hit");
         return 0;
      }
      
      public function _SafeStr_2540(param1:MouseEvent = null) : *
      {
         this.sendStream.send("recvInGameJoinRequest",this.localTankID,this._SafeStr_838);
         this._SafeStr_806();
      }
      
      public function _SafeStr_2231(param1:MouseEvent) : *
      {
         this._SafeStr_806();
         this.setUpSpectating();
      }
      
      public function recvInGameJoinRequest(param1:*, param2:*) : *
      {
         var _loc3_:Number = NaN;
         if(!this._SafeStr_1053[this.tankNameArray[param1]])
         {
            this._SafeStr_1053[this.tankNameArray[param1]] = [0,0,0];
         }
         this._SafeStr_451[param1] = true;
         this._SafeStr_1162[param1] = param2;
         _loc3_ = this._SafeStr_1070(param1);
         this.spawnTank(param1,_loc3_);
         this.sendStream.send("clientRecvInGameJoinRequest",param1,param2,_loc3_);
      }
      
      public function clientRecvInGameJoinRequest(param1:Number, param2:Number, param3:Number) : *
      {
         if(this._SafeStr_1579)
         {
            this._SafeStr_451[param1] = true;
            this._SafeStr_1162[param1] = param2;
            if(this._SafeStr_2565)
            {
               this.spawnTank(param1,param3);
            }
            this.xtr("Client: spawning tank mid game");
            if(this.localTankID == param1)
            {
               this.setUpSpectating();
            }
         }
      }
      
      public function powerUpPressed() : *
      {
         if(this._SafeStr_1296)
         {
            if(this._SafeStr_2011[this.localTankID][3] != 12 && this["Tank" + this.localTankID + "Health"] > 0 && this._SafeStr_451[this.localTankID] == true)
            {
               if(this._SafeStr_1621 < getTimer() - this.tankItemDataArray[this._SafeStr_2011[this.localTankID][3]][5][0] * 1000 && (getTimer() > this._SafeStr_2381 || this._SafeStr_689))
               {
                  this.triggerPowerUp(this.localTankID,this._SafeStr_2011[this.localTankID][3]);
                  this._SafeStr_1621 = getTimer();
                  this.hudthing.healthammo.poweruprecharge.darkbar.height = 33;
                  _SafeCls_2._SafeStr_923(this.hudthing.healthammo.poweruprecharge.darkbar,{
                     "height":0,
                     "time":this.tankItemDataArray[this._SafeStr_2011[this.localTankID][3]][5][0],
                     "transition":"linear"
                  });
                  if(this.hosting)
                  {
                     this.sendStream.send("recvTriggerPowerUp",this.localTankID,this._SafeStr_2011[this.localTankID][3]);
                  }
                  else
                  {
                     this.sendStream.send("requestTriggerPowerUp",this.localTankID,this._SafeStr_2011[this.localTankID][3]);
                  }
               }
            }
         }
      }
      
      public function triggerPowerUp(param1:Number, param2:Number) : *
      {
         switch(param2)
         {
            case 13:
               this.powerUpStartInvisibility(param1);
               break;
            case 14:
               this.powerUpHealStep1(param1);
               if(this.hosting || this.localTankID != param1)
               {
                  this.powerUpHealStep2(param1);
               }
               break;
            case 15:
               this.powerUpShield(param1);
               break;
            case 38:
               this.powerUpSpeed(param1);
         }
      }
      
      public function recvTriggerPowerUp(param1:Number, param2:Number) : *
      {
         if(this._SafeStr_2565)
         {
            if(param1 != this.localTankID)
            {
               this.triggerPowerUp(param1,param2);
            }
            if(this.hosting)
            {
               this.sendStream.send("recvTriggerPowerUp",param1,param2);
            }
         }
      }
      
      public function requestTriggerPowerUp(param1:Number, param2:Number) : *
      {
         if(this["Tank" + param1 + "Health"] > 0)
         {
            this.sendStream.send("powerUpResponse",param1,true);
            this.recvTriggerPowerUp(param1,param2);
         }
         else
         {
            this.sendStream.send("powerUpResponse",param1,false);
         }
      }
      
      public function powerUpResponse(param1:Number, param2:Boolean) : *
      {
         if(this._SafeStr_2565)
         {
            if(param1 == this.localTankID)
            {
               if(param2 == true)
               {
                  trace("powerup allowed");
                  if(this._SafeStr_2011[this.localTankID][3] == 14)
                  {
                     this.powerUpHealStep2(this.localTankID);
                  }
               }
               else
               {
                  trace("powerup FAILED");
                  if(this._SafeStr_2011[this.localTankID][3] == 15)
                  {
                     this.powerUpEndShield(param1);
                  }
                  this._SafeStr_1621 = -50000;
                  _SafeCls_2._SafeStr_464(this.hudthing.healthammo.poweruprecharge.darkbar);
                  this.hudthing.healthammo.poweruprecharge.darkbar.height = 0;
               }
            }
         }
      }
      
      public function powerUpSpeed(param1:Number) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this._SafeStr_477[param1] = 2;
         setTimeout(this.powerUpEndSpeed,this.tankItemDataArray[38][5][1] * 1000,param1);
         this._SafeStr_1706(param1);
         if(!this.muteSfx)
         {
            _loc2_ = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016 - this._SafeStr_1338.x;
            _loc3_ = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016 - this._SafeStr_1338.y;
            _loc4_ = Number(Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_));
            this.playStereoSound(this.powerUpSpeedSound,"powerUpSoundChannel",_loc2_,_loc3_,_loc4_);
         }
      }
      
      public function powerUpEndSpeed(param1:Number) : *
      {
         this._SafeStr_477[param1] = 1;
      }
      
      public function powerUpStartInvisibility(param1:Number) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1 == this.localTankID)
         {
            _loc2_ = 0.2;
         }
         else
         {
            _loc2_ = 0;
         }
         this["tank" + param1 + "Graphic"].alpha = _loc2_;
         this["tank" + param1 + "Label"].alpha = _loc2_;
         this._SafeStr_2330(param1);
         setTimeout(this.powerUpEndInvisibility,this.tankItemDataArray[13][5][1] * 1000,param1);
         if(!this.muteSfx)
         {
            _loc3_ = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016 - this._SafeStr_1338.x;
            _loc4_ = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016 - this._SafeStr_1338.y;
            _loc5_ = Number(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_));
            this.playStereoSound(this.powerUpVanishSound,"powerUpSoundChannel",_loc3_,_loc4_,_loc5_);
         }
      }
      
      public function powerUpEndInvisibility(param1:Number) : *
      {
         if(this["Tank" + param1 + "Health"] > 0 && this.inGame)
         {
            this["tank" + param1 + "Graphic"].alpha = 1;
            this["tank" + param1 + "Label"].alpha = 1;
            this._SafeStr_1884(param1);
            if(!this.muteSfx)
            {
               this.powerUpAppearSound.play();
            }
         }
      }
      
      public function powerUpHealStep1(param1:*) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this._SafeStr_2217(param1);
         if(!this.muteSfx)
         {
            _loc2_ = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016 - this._SafeStr_1338.x;
            _loc3_ = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016 - this._SafeStr_1338.y;
            _loc4_ = Number(Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_));
            this.playStereoSound(this.powerUpHealSound,"powerUpSoundChannel",_loc2_,_loc3_,_loc4_);
         }
      }
      
      public function powerUpHealStep2(param1:*) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = undefined;
         _loc2_ = Number(this._SafeStr_1387.tankFullHealth);
         _loc3_ = 0;
         while(_loc3_ < 3)
         {
            if(!isNaN(this.tankItemDataArray[this._SafeStr_2011[param1][_loc3_]][5][0]))
            {
               _loc2_ *= this.tankItemDataArray[this._SafeStr_2011[param1][_loc3_]][5][0];
               _loc2_ = Number(Math.round(_loc2_));
               _loc2_ = Number(Math.max(_loc2_,1));
            }
            _loc3_++;
         }
         this["Tank" + param1 + "Health"] += Math.ceil(_loc2_ / this.tankItemDataArray[14][5][2]);
         if(this["Tank" + param1 + "Health"] > _loc2_)
         {
            this["Tank" + param1 + "Health"] = _loc2_;
         }
         if(param1 == this.localTankID)
         {
            this.hudthing.healthammo.healthtext.text = this["Tank" + param1 + "Health"];
         }
      }
      
      public function powerUpShield(param1:*) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this._SafeStr_1749[param1] = true;
         setTimeout(this.powerUpEndShield,this.tankItemDataArray[15][5][1] * 1000,param1);
         this._SafeStr_779(param1);
         if(!this.muteSfx)
         {
            _loc2_ = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016 - this._SafeStr_1338.x;
            _loc3_ = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016 - this._SafeStr_1338.y;
            _loc4_ = Number(Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_));
            this.playStereoSound(this.powerUpShieldHumSound,"powerUpShieldHumSoundChannel",_loc2_,_loc3_,_loc4_,true);
         }
      }
      
      public function powerUpEndShield(param1:*) : *
      {
         if(this.inGame)
         {
            this._SafeStr_1749[param1] = false;
            this.shieldGraphicsCleanUp(param1);
            this.powerUpShieldHumSoundChannel.stop();
         }
      }
      
      public function _SafeStr_2217(param1:Number) : *
      {
         var _loc2_:Emitter2D = null;
         _loc2_ = new Emitter2D();
         _loc2_.counter = new Blast(8);
         _loc2_._SafeStr_959(new _SafeCls_185(part14Graphic));
         _loc2_._SafeStr_959(new _SafeCls_175(new _SafeCls_114(new Point(this["tank" + param1 + "Graphic"].x,this["tank" + param1 + "Graphic"].y + 5),20)));
         _loc2_._SafeStr_959(new _SafeCls_179(new _SafeCls_115(new Point(0,0),25,20,-5 * Math.PI / 8,-3 * Math.PI / 8)));
         _loc2_._SafeStr_959(new _SafeCls_177(0.6,1));
         _loc2_._SafeStr_786(new _SafeCls_170());
         _loc2_._SafeStr_786(new _SafeCls_174());
         _loc2_._SafeStr_786(new _SafeCls_170());
         _loc2_._SafeStr_786(new _SafeCls_173(0.8,0));
         this["Tank" + param1 + "FlintRenderer"] = new _SafeCls_262();
         this["Tank" + param1 + "FlintRenderer"].addEmitter(_loc2_);
         addChild(this["Tank" + param1 + "FlintRenderer"]);
         _loc2_.start();
         setTimeout(this._SafeStr_1503,1000,_loc2_,param1);
      }
      
      public function _SafeStr_1706(param1:Number) : *
      {
         var _loc2_:Emitter2D = null;
         _loc2_ = new Emitter2D();
         _loc2_.counter = new Blast(150);
         _loc2_._SafeStr_959(new _SafeCls_175(new _SafeCls_114(new Point(200,200),20,20)));
         _loc2_._SafeStr_959(new _SafeCls_178(new _SafeCls_182(8)));
         _loc2_._SafeStr_959(new _SafeCls_180(4294967295,4294958387));
         _loc2_._SafeStr_959(new _SafeCls_179(new _SafeCls_116(new Point(Math.cos(this["tank" + param1 + "Graphic"].rotation * (Math.PI / 180)) * -500,Math.sin(this["tank" + param1 + "Graphic"].rotation * (Math.PI / 180)) * -500))));
         _loc2_._SafeStr_959(new _SafeCls_177(0.05,0.2));
         _loc2_._SafeStr_786(new _SafeCls_173(1,0.3));
         _loc2_._SafeStr_786(new _SafeCls_174());
         _loc2_._SafeStr_786(new _SafeCls_170());
         _loc2_._SafeStr_786(new _SafeCls_172());
         this["Tank" + param1 + "FlintRenderer"] = new _SafeCls_260(new Rectangle(0,0,400,400));
         this["Tank" + param1 + "FlintRenderer"].addFilter(new BlurFilter(2,2,1));
         this["Tank" + param1 + "FlintRenderer"].addFilter(new ColorMatrixFilter([1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.99,0]));
         addChild(this["Tank" + param1 + "FlintRenderer"]);
         this["Tank" + param1 + "FlintRenderer"].x = this["tank" + param1 + "Graphic"].x - 200;
         this["Tank" + param1 + "FlintRenderer"].y = this["tank" + param1 + "Graphic"].y - 200;
         this["Tank" + param1 + "FlintRenderer"].addEmitter(_loc2_);
         _loc2_.start();
         setTimeout(this._SafeStr_1503,1000,_loc2_,param1);
      }
      
      public function _SafeStr_2330(param1:Number) : *
      {
         var _loc2_:Emitter2D = null;
         _loc2_ = new Emitter2D();
         _loc2_.counter = new Blast(150);
         _loc2_._SafeStr_959(new _SafeCls_175(new _SafeCls_116(new Point(200,200))));
         _loc2_._SafeStr_959(new _SafeCls_178(new _SafeCls_182(8)));
         _loc2_._SafeStr_959(new _SafeCls_180(4294958387,4294958387));
         _loc2_._SafeStr_959(new _SafeCls_179(new _SafeCls_114(new Point(0,0),350,200)));
         _loc2_._SafeStr_959(new _SafeCls_177(0.05,0.1));
         _loc2_._SafeStr_786(new _SafeCls_173(1,0.3));
         _loc2_._SafeStr_786(new _SafeCls_174());
         _loc2_._SafeStr_786(new _SafeCls_170());
         _loc2_._SafeStr_786(new _SafeCls_172());
         this["Tank" + param1 + "FlintRenderer"] = new _SafeCls_260(new Rectangle(0,0,400,400));
         this["Tank" + param1 + "FlintRenderer"].addFilter(new BlurFilter(2,2,1));
         this["Tank" + param1 + "FlintRenderer"].addFilter(new ColorMatrixFilter([1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.99,0]));
         addChild(this["Tank" + param1 + "FlintRenderer"]);
         this["Tank" + param1 + "FlintRenderer"].x = this["tank" + param1 + "Graphic"].x - 200;
         this["Tank" + param1 + "FlintRenderer"].y = this["tank" + param1 + "Graphic"].y - 200;
         this["Tank" + param1 + "FlintRenderer"].addEmitter(_loc2_);
         _loc2_.start();
         setTimeout(this._SafeStr_1503,1000,_loc2_,param1);
      }
      
      public function _SafeStr_1884(param1:Number) : *
      {
         var _loc2_:Emitter2D = null;
         _loc2_ = new Emitter2D();
         _loc2_.counter = new Blast(150);
         _loc2_._SafeStr_959(new _SafeCls_175(new _SafeCls_116(new Point(200,200))));
         _loc2_._SafeStr_959(new _SafeCls_178(new _SafeCls_182(8)));
         _loc2_._SafeStr_959(new _SafeCls_180(4294572972,4294572972));
         _loc2_._SafeStr_959(new _SafeCls_179(new _SafeCls_114(new Point(0,0),350,200)));
         _loc2_._SafeStr_959(new _SafeCls_177(0.05,0.1));
         _loc2_._SafeStr_786(new _SafeCls_173(0.5,0.1));
         _loc2_._SafeStr_786(new _SafeCls_174());
         _loc2_._SafeStr_786(new _SafeCls_170());
         _loc2_._SafeStr_786(new _SafeCls_172());
         this["Tank" + param1 + "FlintRenderer"] = new _SafeCls_260(new Rectangle(0,0,400,400));
         this["Tank" + param1 + "FlintRenderer"].addFilter(new BlurFilter(2,2,1));
         this["Tank" + param1 + "FlintRenderer"].addFilter(new ColorMatrixFilter([1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.99,0]));
         addChild(this["Tank" + param1 + "FlintRenderer"]);
         this["Tank" + param1 + "FlintRenderer"].x = this["tank" + param1 + "Graphic"].x - 200;
         this["Tank" + param1 + "FlintRenderer"].y = this["tank" + param1 + "Graphic"].y - 200;
         this["Tank" + param1 + "FlintRenderer"].addEmitter(_loc2_);
         _loc2_.start();
         setTimeout(this._SafeStr_1503,1000,_loc2_,param1);
      }
      
      public function _SafeStr_779(param1:*) : *
      {
         var _loc2_:Emitter2D = null;
         _loc2_ = new Emitter2D();
         _loc2_.counter = new _SafeCls_112(100);
         _loc2_._SafeStr_959(new _SafeCls_175(new _SafeCls_114(new Point(200,200),26,0)));
         _loc2_._SafeStr_959(new _SafeCls_178(new _SafeCls_184(1,4294967294)));
         _loc2_._SafeStr_959(new _SafeCls_177(0.05,0.2));
         _loc2_._SafeStr_786(new _SafeCls_173(1,0.1));
         _loc2_._SafeStr_786(new _SafeCls_174());
         _loc2_._SafeStr_786(new _SafeCls_170());
         _loc2_._SafeStr_786(new _SafeCls_172());
         this["Tank" + param1 + "FlintRenderer"] = new _SafeCls_260(new Rectangle(0,0,400,400));
         this["Tank" + param1 + "FlintRenderer"].addFilter(new BlurFilter(2,2,1));
         this["Tank" + param1 + "FlintRenderer"].addFilter(new ColorMatrixFilter([1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,0.95,0]));
         this["tank" + param1 + "Graphic"].addChild(this["Tank" + param1 + "FlintRenderer"]);
         this["Tank" + param1 + "FlintRenderer"].x = -200;
         this["Tank" + param1 + "FlintRenderer"].y = -200;
         this["Tank" + param1 + "FlintRenderer"].addEmitter(_loc2_);
         _loc2_.start();
         setTimeout(this.shieldGraphicsEnd,this.tankItemDataArray[15][5][1] * 1000 - 400,_loc2_,param1);
      }
      
      public function shieldGraphicsEnd(param1:*, param2:*) : *
      {
         param1.stop();
      }
      
      public function shieldGraphicsCleanUp(param1:*) : *
      {
         var tankID:* = param1;
         trace("shieldGraphicsCleanUp");
         try
         {
            this["tank" + tankID + "Graphic"].removeChild(this["Tank" + tankID + "FlintRenderer"]);
            trace("worked");
         }
         catch(e:Error)
         {
            trace("shieldGraphicsCleanUp error: " + e.message);
         }
      }
      
      public function shieldGraphicsTankHit(param1:*) : *
      {
         var _loc2_:Emitter2D = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this._SafeStr_2565)
         {
            _loc2_ = new Emitter2D();
            _loc2_.counter = new Blast(150);
            _loc2_._SafeStr_959(new _SafeCls_175(new _SafeCls_114(new Point(200,200),26,0)));
            _loc2_._SafeStr_959(new _SafeCls_178(new _SafeCls_182(2)));
            _loc2_._SafeStr_959(new _SafeCls_180(4294967294,4294967294));
            _loc2_._SafeStr_959(new _SafeCls_177(0.1,0.2));
            _loc2_._SafeStr_786(new _SafeCls_173(1,0.3));
            _loc2_._SafeStr_786(new _SafeCls_174());
            _loc2_._SafeStr_786(new _SafeCls_170());
            _loc2_._SafeStr_786(new _SafeCls_172());
            this["Tank" + param1 + "FlintRenderer"].addEmitter(_loc2_);
            _loc2_.start();
            setTimeout(this._SafeStr_746,500,_loc2_,param1);
            if(!this.muteSfx)
            {
               _loc3_ = this["Tank" + param1].GetWorldCenter().x * this._SafeStr_1016 - this._SafeStr_1338.x;
               _loc4_ = this["Tank" + param1].GetWorldCenter().y * this._SafeStr_1016 - this._SafeStr_1338.y;
               _loc5_ = Number(Math.sqrt(_loc3_ * _loc3_ + _loc4_ * _loc4_));
               this.playStereoSound(this.powerUpShieldHitSound,"powerUpSoundChannel",_loc3_,_loc4_,_loc5_);
            }
         }
      }
      
      public function _SafeStr_746(param1:*, param2:*) : *
      {
         param1.stop();
         try
         {
            this["Tank" + param2 + "FlintRenderer"].removeEmitter(param1);
         }
         catch(e:Error)
         {
         }
      }
      
      public function _SafeStr_1503(param1:*, param2:*) : *
      {
         param1.stop();
         try
         {
            this["Tank" + param2 + "FlintRenderer"].removeEmitter(param1);
            removeChild(this["Tank" + param2 + "FlintRenderer"]);
         }
         catch(e:Error)
         {
         }
      }
      
      public function playStereoSound(param1:*, param2:*, param3:*, param4:*, param5:*, param6:Boolean = false) : *
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:SoundTransform = null;
         _loc7_ = Number(Math.min(param3,this._SafeStr_625));
         _loc7_ = _loc7_ / this._SafeStr_625;
         _loc7_ = _loc7_ * this._SafeStr_540;
         _loc8_ = Number(Math.min(param5,this._SafeStr_2357));
         _loc8_ = 1 - _loc8_ / this._SafeStr_2357;
         _loc8_ = _loc8_ * (1 - this._SafeStr_2638) + this._SafeStr_2638;
         if(!param6)
         {
            this[param2] = param1.play();
         }
         else
         {
            this[param2] = param1.play(0,2);
         }
         _loc9_ = new SoundTransform();
         _loc9_.pan = _loc7_;
         _loc9_.volume = _loc8_;
         if(this[param2])
         {
            this[param2].soundTransform = _loc9_;
         }
      }
      
      public function _SafeStr_862(param1:Event) : *
      {
         this._SafeStr_424 = 0;
         this._SafeStr_2181 = 0;
         if(this.isKeyDown(87))
         {
            this._SafeStr_2181 = -1;
         }
         if(this.isKeyDown(83))
         {
            this._SafeStr_2181 = 1;
         }
         if(this.isKeyDown(65))
         {
            this._SafeStr_424 = -1;
         }
         if(this.isKeyDown(68))
         {
            this._SafeStr_424 = 1;
         }
         this.editorcamerapoint.x += this._SafeStr_424 * this._SafeStr_1883;
         this.editorcamerapoint.y += this._SafeStr_2181 * this._SafeStr_1883;
         if(this.editorcamerapoint.x > this.customLevelCameraArray[0] && this.editorcamerapoint.x < this.customLevelCameraArray[1] + this._SafeStr_585)
         {
            this.editorvcam.x = this.editorcamerapoint.x;
         }
         else if(this.editorcamerapoint.x > this.customLevelCameraArray[0])
         {
            this.editorvcam.x = this.customLevelCameraArray[1] + this._SafeStr_585;
            this.editorcamerapoint.x = this.customLevelCameraArray[1] + this._SafeStr_585;
         }
         else
         {
            this.editorvcam.x = this.customLevelCameraArray[0];
            this.editorcamerapoint.x = this.customLevelCameraArray[0];
         }
         if(this.editorcamerapoint.y > this.customLevelCameraArray[2] && this.editorcamerapoint.y < this.customLevelCameraArray[3])
         {
            this.editorvcam.y = this.editorcamerapoint.y;
         }
         else if(this.editorcamerapoint.y > this.customLevelCameraArray[2])
         {
            this.editorvcam.y = this.customLevelCameraArray[3];
            this.editorcamerapoint.y = this.customLevelCameraArray[3];
         }
         else
         {
            this.editorvcam.y = this.customLevelCameraArray[2];
            this.editorcamerapoint.y = this.customLevelCameraArray[2];
         }
         if(this.isKeyDown(72))
         {
            this._SafeStr_1642 = true;
         }
         else
         {
            if(this._SafeStr_1642 == true)
            {
               if(this.editorhudthing.visible == true)
               {
                  this.editorhudthing.visible = false;
                  this._SafeStr_585 = 0;
               }
               else
               {
                  this.editorhudthing.visible = true;
                  this._SafeStr_585 = 195;
               }
            }
            this._SafeStr_1642 = false;
         }
      }
      
      public function _SafeStr_732(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this.editorhelpwindow = stage.addChild(new editorhelpwindowmc());
         this.editorhelpwindow.x = 365;
         this.editorhelpwindow.y = 250;
         this.editorhelpwindow.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1051,false,0,true);
      }
      
      public function _SafeStr_1051(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this.editorhelpwindow);
         stage.focus = null;
      }
      
      public function _SafeStr_2166(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2545 = stage.addChild(new _SafeCls_208());
         this._SafeStr_2545.x = 365;
         this._SafeStr_2545.y = 250;
         this._SafeStr_2545.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1275,false,0,true);
         this._SafeStr_2545.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_605,false,0,true);
      }
      
      public function _SafeStr_1275(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_2545);
         this._SafeStr_832();
         this._SafeStr_1284();
      }
      
      public function _SafeStr_605(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_2545);
      }
      
      public function _SafeStr_536(param1:MouseEvent) : *
      {
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:* = undefined;
         var _loc6_:Boolean = false;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = undefined;
         if(param1)
         {
            this.buttonClickSound();
         }
         _loc2_ = 0;
         _loc3_ = true;
         _loc4_ = false;
         _loc5_ = 0;
         while(_loc5_ < this.customLevelSpawnArray.length)
         {
            if(Boolean(this.customLevelSpawnArray[_loc5_]) && this.customLevelSpawnArray[_loc5_][2] != -1)
            {
               _loc2_++;
            }
            _loc5_++;
         }
         _loc6_ = false;
         if(this._SafeStr_921 == 2)
         {
            _loc7_ = this.customLevelFlagPositions[0][0] - this.customLevelFlagPositions[1][0];
            _loc8_ = this.customLevelFlagPositions[0][1] - this.customLevelFlagPositions[1][1];
            _loc9_ = Number(Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_));
            if(_loc9_ < 150)
            {
               _loc6_ = true;
            }
         }
         if(_loc6_)
         {
            this._SafeStr_1073 = stage.addChild(new editorflagstooclosewarningwindowmc());
            this._SafeStr_1073.x = 365;
            this._SafeStr_1073.y = 250;
            this._SafeStr_1073.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1762,false,0,true);
         }
         else if(_loc2_ >= 2)
         {
            _loc10_ = 0;
            while(_loc10_ < this.customLevelSpawnArray.length)
            {
               if(this.customLevelSpawnArray[_loc10_][2] == -1)
               {
                  _loc4_ = true;
               }
               else if(_loc4_ == true)
               {
                  _loc3_ = false;
               }
               _loc10_++;
            }
            if(_loc3_)
            {
               this._SafeStr_507("save");
               this.customLevelSpawnArray.splice(_loc2_,8 - _loc2_);
            }
            else
            {
               this._SafeStr_342();
            }
         }
         else
         {
            this._SafeStr_1073 = stage.addChild(new editorspawnpointswarningwindowmc());
            this._SafeStr_1073.x = 365;
            this._SafeStr_1073.y = 250;
            this._SafeStr_1073.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1762,false,0,true);
         }
      }
      
      public function _SafeStr_342() : *
      {
         this.spawnsNotInOrderWindow = stage.addChild(new editorspawnsnotinorderwindowmc());
         this.spawnsNotInOrderWindow.x = 365;
         this.spawnsNotInOrderWindow.y = 250;
         this.spawnsNotInOrderWindow.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1858,false,0,true);
      }
      
      public function _SafeStr_1858(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this.spawnsNotInOrderWindow);
      }
      
      public function _SafeStr_1930(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         try
         {
            stage.removeChild(this._SafeStr_2092);
         }
         catch(e:Error)
         {
         }
         if(this.customLevelArray[4])
         {
            this._SafeStr_1730 = stage.addChild(new _SafeCls_207());
            this._SafeStr_1730.x = 365;
            this._SafeStr_1730.y = 250;
            this._SafeStr_1730.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1692,false,0,true);
            this._SafeStr_1730.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2625,false,0,true);
            this.editorhudthing.loadbutton.mouseEnabled = false;
         }
         else
         {
            this._SafeStr_507("load");
         }
      }
      
      public function _SafeStr_2625(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1692(null);
         this._SafeStr_507("load");
      }
      
      public function _SafeStr_1692(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this.editorhudthing.loadbutton.mouseEnabled = true;
         stage.removeChild(this._SafeStr_1730);
      }
      
      public function _SafeStr_507(param1:String) : *
      {
         this.editorloadsavewindow = stage.addChild(new editorloadsavewindowmc());
         this.editorloadsavewindow.x = 365;
         this.editorloadsavewindow.y = 250;
         this.editorloadsavewindow.loadsavegrid.setRendererStyle("textFormat",this._SafeStr_1796);
         this.editorloadsavewindow.loadsavegrid.setStyle("headerTextFormat",this._SafeStr_1796);
         this.editorloadsavewindow.loadsavegrid.setStyle("fontFamily",this._SafeStr_1974);
         this.editorloadsavewindow.loadsavegrid.setStyle("embedFonts",true);
         this.editorloadsavewindow.loadsavegrid.setRendererStyle("embedFonts",true);
         if(param1 == "save")
         {
            this.editorloadsavewindow.savebutton.addEventListener(MouseEvent.CLICK,this.editorloadsavesave1,false,0,true);
            this.editorloadsavewindow.savebutton.visible = true;
            this.editorloadsavewindow.loadbutton.visible = false;
            this.editorloadsavewindow.loadsavegrid.addEventListener(Event.CHANGE,this._SafeStr_592,false,0,true);
            this.updateLoadSaveList(true);
            this.editorloadsavewindow.loadsavegrid.selectedIndex = 0;
            this._SafeStr_592(null,0);
         }
         else
         {
            this.editorloadsavewindow.loadbutton.addEventListener(MouseEvent.CLICK,this.editorloadsaveload,false,0,true);
            this.editorloadsavewindow.savebutton.visible = false;
            this.editorloadsavewindow.loadbutton.visible = true;
            this.editorloadsavewindow.loadsavegrid.addEventListener(Event.CHANGE,this._SafeStr_2046,false,0,true);
            this.updateLoadSaveList(false);
            this._SafeStr_748 = -1;
            this.editorloadsavewindow.mapname.selectable = false;
            this.editorloadsavewindow.greenhighlight.visible = false;
         }
         this.editorloadsavewindow.loadsavegrid.rowHeight = 35;
         this.editorloadsavewindow.loadsavegrid.columns = ["Mapname","Mapauthor","Mapsize"];
         this.editorloadsavewindow.loadsavegrid.columns[0].width = 200;
         this.editorloadsavewindow.loadsavegrid.columns[1].width = 130;
         this.editorloadsavewindow.loadsavegrid.columns[2].width = 90;
         this.editorloadsavewindow.loadsavegrid.showHeaders = false;
         this.editorloadsavewindow.loadsavegrid.resizableColumns = false;
         this.editorloadsavewindow.backbutton.addEventListener(MouseEvent.CLICK,this.editorloadsaveback,false,0,true);
         this.editorloadsavewindow.deletebutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1785,false,0,true);
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_862);
      }
      
      public function updateLoadSaveList(param1:Boolean = false, param2:String = "editor") : *
      {
         var _loc3_:DataProvider = null;
         var _loc4_:* = undefined;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         this._SafeStr_2491 = SharedObject.getLocal("tinytanks/maps","/");
         if(this._SafeStr_2491.data.maparray)
         {
            this._SafeStr_1164 = this._SafeStr_2491.data.maparray.slice();
         }
         else
         {
            this._SafeStr_1164 = [];
         }
         this.mapListArray = [];
         if(param1)
         {
            this.mapListArray[0] = {
               "Mapname":"Create new save",
               "Mapauthor":"  ",
               "Mapsize":"  ",
               "Mapdata":null,
               "Mapid":0
            };
            _loc5_ = 1;
            while(_loc5_ <= this._SafeStr_1164.length)
            {
               if(param2 == "editor" || (this.gameMode == 0 || this.gameMode == 1) && (!this._SafeStr_1164[_loc5_ - 1][7] || !this._SafeStr_1163(this._SafeStr_1164[_loc5_ - 1][7])) || Boolean(this.gameMode == 2) && (Boolean(this._SafeStr_1164[_loc5_ - 1][7] && this._SafeStr_1163(this._SafeStr_1164[_loc5_ - 1][7]))))
               {
                  this.mapListArray.push({
                     "Mapname":this._SafeStr_1164[_loc5_ - 1][0],
                     "Mapauthor":this.fixUsernameString(this._SafeStr_1164[_loc5_ - 1][1]),
                     "Mapsize":this._SafeStr_1164[_loc5_ - 1][2],
                     "Mapdata":this._SafeStr_1164[_loc5_ - 1][3],
                     "Mapid":_loc5_
                  });
               }
               _loc5_++;
            }
         }
         else
         {
            _loc6_ = 0;
            while(_loc6_ < this._SafeStr_1164.length)
            {
               if(param2 == "editor" || (this.gameMode == 0 || this.gameMode == 1) && (!this._SafeStr_1164[_loc6_][7] || !this._SafeStr_1163(this._SafeStr_1164[_loc6_][7])) || Boolean(this.gameMode == 2) && (Boolean(this._SafeStr_1164[_loc6_][7] && this._SafeStr_1163(this._SafeStr_1164[_loc6_][7]))))
               {
                  this.mapListArray.push({
                     "Mapname":this._SafeStr_1164[_loc6_][0],
                     "Mapauthor":this.fixUsernameString(this._SafeStr_1164[_loc6_][1]),
                     "Mapsize":this._SafeStr_1164[_loc6_][2],
                     "Mapdata":this._SafeStr_1164[_loc6_][3],
                     "Mapid":_loc6_
                  });
               }
               _loc6_++;
            }
         }
         _loc3_ = new DataProvider();
         _loc4_ = 0;
         while(_loc4_ < this.mapListArray.length)
         {
            _loc3_.addItem(this.mapListArray[_loc4_]);
            _loc4_++;
         }
         if(param2 == "editor")
         {
            this.editorloadsavewindow.loadsavegrid.dataProvider = _loc3_;
         }
         else
         {
            this._SafeStr_1381.loadsavegrid.dataProvider = _loc3_;
         }
      }
      
      public function _SafeStr_1163(param1:Array) : Boolean
      {
         if(param1[0][0] == -100 && param1[0][1] == -100)
         {
            return false;
         }
         if(param1[1][0] == -100 && param1[1][1] == -100)
         {
            return false;
         }
         return true;
      }
      
      public function editorloadsavesave1(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this._SafeStr_748 >= 0 && Boolean(this.editorloadsavewindow.mapname.text))
         {
            this.waypointnotificationwindow = stage.addChild(new editorwaypointnotificationmc());
            this.waypointnotificationwindow.x = 365;
            this.waypointnotificationwindow.y = 250;
            this.editorsavedelayinterval = setInterval(this.editorloadsavesave,50);
         }
      }
      
      public function editorloadsavesave2(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this.waypointnotificationwindow);
         this.waypointnotificationwindow = stage.addChild(new editorwaypointnotificationmc());
         this.waypointnotificationwindow.x = 365;
         this.waypointnotificationwindow.y = 250;
         this.editorsavedelayinterval = setInterval(this.editorloadsaveoverwrite,50);
      }
      
      public function editorloadsavesave() : *
      {
         clearInterval(this.editorsavedelayinterval);
         this.editorMapName = this.editorloadsavewindow.mapname.text;
         if(this._SafeStr_748 == 0 && Boolean(this.editorMapName))
         {
            this._SafeStr_482 = this._SafeStr_2522();
            stage.removeChild(this.waypointnotificationwindow);
            this._SafeStr_1164.unshift([this.editorMapName,this.localTankName,this.editorMapSize,this.customLevelArray.slice(),this.customLevelCameraArray.slice(),this.customLevelSpawnArray.slice(),this._SafeStr_482,this.customLevelFlagPositions.slice()]);
            this._SafeStr_2491.data.maparray = this._SafeStr_1164.slice();
            try
            {
               this._SafeStr_2491.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
            this.updateLoadSaveList(true);
            this._SafeStr_748 = -1;
            this._SafeStr_1866();
            this.editorloadsaveback(null);
         }
         else if(this._SafeStr_748 > 0 && Boolean(this.editorMapName))
         {
            this._SafeStr_1333 = stage.addChild(new _SafeCls_209());
            this._SafeStr_1333.x = 365;
            this._SafeStr_1333.y = 250;
            this._SafeStr_1333.okbutton.addEventListener(MouseEvent.CLICK,this.editorloadsavesave2,false,0,true);
            this._SafeStr_1333.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_377,false,0,true);
            this.editorloadsavewindow.backbutton.mouseEnabled = false;
            this.editorloadsavewindow.savebutton.mouseEnabled = false;
            this.editorloadsavewindow.loadbutton.mouseEnabled = false;
            this.editorloadsavewindow.deletebutton.mouseEnabled = false;
            this.editorloadsavewindow.loadsavegrid.enabled = false;
         }
      }
      
      public function editorloadsaveload(param1:MouseEvent) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this._SafeStr_748 != -1)
         {
            this.editorloadsaveback(null);
            this._SafeStr_832();
            this.editorMapName = this._SafeStr_1164[this._SafeStr_748 - 1][0];
            this.editorMapSize = this._SafeStr_1164[this._SafeStr_748 - 1][2];
            this.customLevelArray = this._SafeStr_1164[this._SafeStr_748 - 1][3].slice();
            this.customLevelCameraArray = this._SafeStr_1164[this._SafeStr_748 - 1][4].slice();
            this.customLevelSpawnArray = this._SafeStr_1164[this._SafeStr_748 - 1][5].slice();
            this.customLevelFlagPositions = this._SafeStr_1164[this._SafeStr_748 - 1][7].slice();
            if(this.editorMapSize == "Large")
            {
               this.editorbackground.gotoAndStop(1);
            }
            else if(this.editorMapSize == "Small")
            {
               this.editorbackground.gotoAndStop(2);
            }
            else
            {
               this.editorbackground.gotoAndStop(3);
            }
            _loc2_ = 4;
            while(_loc2_ < this.customLevelArray.length)
            {
               this._SafeStr_1187.push(this.editorbackground.addChild(this._SafeStr_1326(this.customLevelArray[_loc2_][0])));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = this.customLevelArray[_loc2_][1];
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = this.customLevelArray[_loc2_][2];
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = this.customLevelArray[_loc2_][5];
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = this._SafeStr_683(this.customLevelArray[_loc2_][0]);
               _loc2_++;
            }
            _loc3_ = 0;
            while(_loc3_ < this.customLevelSpawnArray.length)
            {
               this["editortank" + _loc3_].x = this.customLevelSpawnArray[_loc3_][0];
               this["editortank" + _loc3_].y = this.customLevelSpawnArray[_loc3_][1];
               this["editortank" + _loc3_].rotation = this.customLevelSpawnArray[_loc3_][2];
               this["editortank" + _loc3_].numbermcx.rotation = -this.customLevelSpawnArray[_loc3_][2];
               _loc3_++;
            }
            this.editorflag0.x = this.customLevelFlagPositions[0][0];
            this.editorflag0.y = this.customLevelFlagPositions[0][1];
            this.editorflag1.x = this.customLevelFlagPositions[1][0];
            this.editorflag1.y = this.customLevelFlagPositions[1][1];
            if(this.customLevelFlagPositions[0][0] != -100 && this.customLevelFlagPositions[0][1] != -100 && this.customLevelFlagPositions[1][0] != -100 && this.customLevelFlagPositions[1][1] != -100)
            {
               this.editorhudthing.gamemodetext.htmlText = "game mode: <font color=\'#990000\'>capture the flag</font";
               this.editorhudthing.ctfhint.visible = true;
               this._SafeStr_921 = 2;
            }
            else
            {
               this.editorhudthing.gamemodetext.htmlText = "game mode: <font color=\'#990000\'>deathmatch</font";
               this.editorhudthing.ctfhint.visible = false;
               this._SafeStr_921 = 0;
            }
         }
      }
      
      public function _SafeStr_377(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this.editorloadsavewindow.backbutton.mouseEnabled = true;
         this.editorloadsavewindow.savebutton.mouseEnabled = true;
         this.editorloadsavewindow.loadbutton.mouseEnabled = true;
         this.editorloadsavewindow.deletebutton.mouseEnabled = true;
         this.editorloadsavewindow.loadsavegrid.enabled = true;
         try
         {
            stage.removeChild(this.waypointnotificationwindow);
         }
         catch(e:Error)
         {
         }
         stage.removeChild(this._SafeStr_1333);
      }
      
      public function editorloadsaveoverwrite() : *
      {
         clearInterval(this.editorsavedelayinterval);
         this._SafeStr_482 = this._SafeStr_2522();
         try
         {
            stage.removeChild(this.waypointnotificationwindow);
         }
         catch(e:Error)
         {
         }
         this._SafeStr_1164[this._SafeStr_748 - 1] = [this.editorMapName,this.localTankName,this.editorMapSize,this.customLevelArray.slice(),this.customLevelCameraArray.slice(),this.customLevelSpawnArray.slice(),this._SafeStr_482,this.customLevelFlagPositions.slice()];
         this._SafeStr_2491.data.maparray = this._SafeStr_1164.slice();
         try
         {
            this._SafeStr_2491.flush();
         }
         catch(e:Error)
         {
            trace("SO FLUSH ERROR!");
         }
         this.updateLoadSaveList(true);
         this._SafeStr_748 = -1;
         this._SafeStr_377(null);
         this._SafeStr_1866();
         this.editorloadsaveback(null);
      }
      
      public function editorloadsaveback(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this.editorloadsavewindow);
         addEventListener(Event.ENTER_FRAME,this._SafeStr_862,false,0,true);
         stage.focus = null;
      }
      
      public function editorloadsavedelete(param1:MouseEvent) : *
      {
         var me:MouseEvent = param1;
         if(me)
         {
            this.buttonClickSound();
         }
         if(this._SafeStr_748 > 0)
         {
            this._SafeStr_1164.splice(this._SafeStr_748 - 1,1);
            this._SafeStr_2491.data.maparray = this._SafeStr_1164.slice();
            try
            {
               this._SafeStr_2491.flush();
            }
            catch(e:Error)
            {
               trace("SO FLUSH ERROR!");
            }
            if(this.mapListArray[0].Mapname == "Create new save")
            {
               this.updateLoadSaveList(true);
            }
            else
            {
               this.updateLoadSaveList(false);
            }
            this._SafeStr_748 = -1;
            this.editorloadsavewindow.mapname.text = "";
            this.editorloadsavewindow.authorname.text = "";
            this.editorloadsavewindow.mapsize.text = "";
            this.removeMapPreview();
            this._SafeStr_2006(null);
         }
      }
      
      public function _SafeStr_1785(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this._SafeStr_748 > 0)
         {
            this._SafeStr_579 = stage.addChild(new _SafeCls_205());
            this._SafeStr_579.x = 365;
            this._SafeStr_579.y = 250;
            this._SafeStr_579.okbutton.addEventListener(MouseEvent.CLICK,this.editorloadsavedelete,false,0,true);
            this._SafeStr_579.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2006,false,0,true);
            this.editorloadsavewindow.backbutton.mouseEnabled = false;
            this.editorloadsavewindow.savebutton.mouseEnabled = false;
            this.editorloadsavewindow.loadbutton.mouseEnabled = false;
            this.editorloadsavewindow.deletebutton.mouseEnabled = false;
            this.editorloadsavewindow.loadsavegrid.enabled = false;
         }
      }
      
      public function _SafeStr_2006(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this.editorloadsavewindow.backbutton.mouseEnabled = true;
         this.editorloadsavewindow.savebutton.mouseEnabled = true;
         this.editorloadsavewindow.loadbutton.mouseEnabled = true;
         this.editorloadsavewindow.deletebutton.mouseEnabled = true;
         this.editorloadsavewindow.loadsavegrid.enabled = true;
         stage.removeChild(this._SafeStr_579);
      }
      
      public function _SafeStr_1866() : *
      {
         this._SafeStr_2622 = stage.addChild(new _SafeCls_236());
         this._SafeStr_2622.x = 365;
         this._SafeStr_2622.y = 250;
         this._SafeStr_2622.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1148,false,0,true);
      }
      
      public function _SafeStr_1148(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_2622);
         if(Math.sqrt(this.localStatsArray[5]) / 10 > this._SafeStr_2279)
         {
            this._SafeStr_971();
         }
         else
         {
            this._SafeStr_1145();
         }
      }
      
      public function _SafeStr_1230(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_314 = stage.addChild(new _SafeCls_257());
         this._SafeStr_314.x = 365;
         this._SafeStr_314.y = 250;
         this._SafeStr_314.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1797);
      }
      
      public function _SafeStr_1797(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_314);
      }
      
      public function _SafeStr_971() : *
      {
         this._SafeStr_2498 = stage.addChild(new editoruploadlevelwindowmc());
         this._SafeStr_2498.x = 365;
         this._SafeStr_2498.y = 250;
         this._SafeStr_2498.yesbutton.addEventListener(MouseEvent.CLICK,this.yesUploadToLevelVault);
         this._SafeStr_2498.nobutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2465);
      }
      
      public function yesUploadToLevelVault(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         if(this.isUserAGuest(this.localTankName))
         {
            this._SafeStr_2465();
            this._SafeStr_1230();
         }
         else
         {
            this._SafeStr_2465();
            this._SafeStr_1550();
            this._SafeStr_1431();
         }
      }
      
      public function _SafeStr_2465(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_2498);
      }
      
      public function _SafeStr_1145() : *
      {
         this.nothighenoughforlevelvaultwindow = new nothighenoughforlevelvaultwindowmc();
         stage.addChild(this.nothighenoughforlevelvaultwindow);
         this.nothighenoughforlevelvaultwindow.x = 365;
         this.nothighenoughforlevelvaultwindow.y = 250;
         this.nothighenoughforlevelvaultwindow.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1470);
      }
      
      public function _SafeStr_1470(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this.nothighenoughforlevelvaultwindow);
         this.nothighenoughforlevelvaultwindow = null;
      }
      
      public function _SafeStr_1431(param1:MouseEvent = null, param2:Boolean = false) : *
      {
         var spawnCount:Number = NaN;
         var i:* = undefined;
         var levelString:String = null;
         var spawnString:String = null;
         var flagPosString:String = null;
         var entireString:String = null;
         var waypointString:String = null;
         var randomShit1:Number = NaN;
         var randomShit2:Number = NaN;
         var randomShit3:Number = NaN;
         var request:URLRequest = null;
         var variables:URLVariables = null;
         var loader:URLLoader = null;
         var onComplete:Function = null;
         var me:MouseEvent = param1;
         var forceOverwrite:Boolean = param2;
         onComplete = function(param1:Event):void
         {
            var _loc2_:Number = NaN;
            _loc2_ = Number(param1.target.data["result"]);
            if(_loc2_ == 0 || _loc2_ == 3)
            {
               trace("success");
               hideUploadInProgressWindow();
               showUploadCompleteWindow();
            }
            else if(_loc2_ == 1)
            {
               trace("failure");
               hideUploadInProgressWindow();
               showUploadFailedWindow();
            }
            else if(_loc2_ == 2)
            {
               trace("map already exists with that name and author");
               hideUploadInProgressWindow();
               showUploadOverwriteWindow();
            }
            else if(_loc2_ == 4)
            {
               trace("security failure");
               hideUploadInProgressWindow();
               showUploadFailedWindow();
            }
         };
         if(me)
         {
            this.buttonClickSound();
         }
         spawnCount = 0;
         i = 0;
         while(i < this.customLevelSpawnArray.length)
         {
            if(this.customLevelSpawnArray[i][2] != -1)
            {
               spawnCount++;
            }
            i++;
         }
         levelString = this.customLevelArray.join("@");
         spawnString = this.customLevelSpawnArray.join("@");
         flagPosString = this.customLevelFlagPositions[0].join("@") + "@" + this.customLevelFlagPositions[1].join("@");
         entireString = levelString + "#" + spawnString + "#" + flagPosString;
         waypointString = this._SafeStr_482.join("@");
         randomShit1 = Number(getTimer());
         randomShit2 = Math.floor(Math.random() * 1000) + 1;
         randomShit3 = randomShit1 * randomShit2;
         request = new URLRequest(this._SafeStr_372 + "maps2.php");
         request.method = URLRequestMethod.POST;
         variables = new URLVariables();
         variables.ignore = randomShit3;
         variables.basePasswordString = this.basePasswordString;
         variables.mapname = this.editorMapName.replace("&","and");
         variables.username = this.localTankName;
         variables.mapplayers = spawnCount;
         if(this.editorMapSize == "Large")
         {
            variables.mapsize = 1;
         }
         else if(this.editorMapSize == "Small")
         {
            variables.mapsize = 0;
         }
         else
         {
            variables.mapsize = 2;
         }
         variables.mapdata = entireString;
         variables.aidata = waypointString;
         variables.forceoverwrite = forceOverwrite;
         variables.gametype = this._SafeStr_921;
         variables.task = 1;
         variables.special = this.localSpecial;
         variables.hash = MD5.hash(variables.mapname + variables.username + this.secretEncryptionString);
         request.data = variables;
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,onComplete);
         loader.dataFormat = URLLoaderDataFormat.VARIABLES;
         loader.load(request);
      }
      
      public function _SafeStr_1550() : *
      {
         this._SafeStr_943 = stage.addChild(new _SafeCls_239());
         this._SafeStr_943.x = 365;
         this._SafeStr_943.y = 250;
         this._SafeStr_943.backbutton.addEventListener(MouseEvent.CLICK,this.hideUploadInProgressWindow);
      }
      
      public function hideUploadInProgressWindow(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_943);
      }
      
      public function showUploadCompleteWindow() : *
      {
         this._SafeStr_2554 = stage.addChild(new _SafeCls_237());
         this._SafeStr_2554.x = 365;
         this._SafeStr_2554.y = 250;
         this._SafeStr_2554.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1708);
      }
      
      public function _SafeStr_1708(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_2554);
      }
      
      public function showUploadOverwriteWindow() : *
      {
         this._SafeStr_1922 = stage.addChild(new _SafeCls_240());
         this._SafeStr_1922.x = 365;
         this._SafeStr_1922.y = 250;
         this._SafeStr_1922.yesbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1057);
         this._SafeStr_1922.nobutton.addEventListener(MouseEvent.CLICK,this._SafeStr_515);
      }
      
      public function _SafeStr_515(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_1922);
      }
      
      public function _SafeStr_1057(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_515();
         this._SafeStr_1550();
         this._SafeStr_1431(null,true);
      }
      
      public function showUploadFailedWindow() : *
      {
         this._SafeStr_896 = stage.addChild(new _SafeCls_238());
         this._SafeStr_896.x = 365;
         this._SafeStr_896.y = 250;
         this._SafeStr_896.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2398);
      }
      
      public function _SafeStr_2398(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_896);
      }
      
      public function _SafeStr_592(param1:Event, param2:int = -1) : void
      {
         if(param2 != -1)
         {
            this._SafeStr_748 = param2;
         }
         else
         {
            this._SafeStr_748 = param1.target.selectedItem.Mapid;
         }
         if(this._SafeStr_748 == 0)
         {
            this.editorloadsavewindow.mapname.text = "";
            this.editorloadsavewindow.authorname.text = this.fixUsernameString(this.localTankName);
            this.editorloadsavewindow.mapsize.text = this.editorMapSize;
            this.removeMapPreview();
         }
         else
         {
            this.editorloadsavewindow.mapname.text = this._SafeStr_1164[this._SafeStr_748 - 1][0];
            this.editorloadsavewindow.authorname.text = this.fixUsernameString(this._SafeStr_1164[this._SafeStr_748 - 1][1]);
            this.editorloadsavewindow.mapsize.text = this._SafeStr_1164[this._SafeStr_748 - 1][2];
            this.removeMapPreview();
            this.drawMapPreview();
         }
      }
      
      public function _SafeStr_2046(param1:Event, param2:int = -1) : void
      {
         if(param2 != -1)
         {
            this._SafeStr_748 = param2;
         }
         else
         {
            this._SafeStr_748 = param1.target.selectedItem.Mapid + 1;
         }
         this.editorloadsavewindow.mapname.text = this._SafeStr_1164[this._SafeStr_748 - 1][0];
         this.editorloadsavewindow.authorname.text = this.fixUsernameString(this._SafeStr_1164[this._SafeStr_748 - 1][1]);
         this.editorloadsavewindow.mapsize.text = this._SafeStr_1164[this._SafeStr_748 - 1][2];
         this.removeMapPreview();
         this.drawMapPreview();
      }
      
      public function _SafeStr_1762(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_1073);
      }
      
      public function drawMapPreview(param1:MouseEvent = null) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:Shape = null;
         if(param1)
         {
            this.buttonClickSound();
         }
         this.tempLevelPreview = new editorbackgroundmc();
         _loc2_ = 4;
         while(_loc2_ < this._SafeStr_1164[this._SafeStr_748 - 1][3].length)
         {
            _loc4_ = this.tempLevelPreview.addChild(this._SafeStr_1326(this._SafeStr_1164[this._SafeStr_748 - 1][3][_loc2_][0]));
            _loc4_.x = this._SafeStr_1164[this._SafeStr_748 - 1][3][_loc2_][1];
            _loc4_.y = this._SafeStr_1164[this._SafeStr_748 - 1][3][_loc2_][2];
            _loc4_.rotation = this._SafeStr_1164[this._SafeStr_748 - 1][3][_loc2_][5];
            _loc4_.button.mouseEnabled = false;
            _loc2_++;
         }
         _loc3_ = 0;
         while(_loc3_ < this._SafeStr_1164[this._SafeStr_748 - 1][5].length)
         {
            _loc5_ = this.tempLevelPreview.addChild(new _SafeCls_220());
            _loc5_.x = this._SafeStr_1164[this._SafeStr_748 - 1][5][_loc3_][0];
            _loc5_.y = this._SafeStr_1164[this._SafeStr_748 - 1][5][_loc3_][1];
            _loc5_.rotation = this._SafeStr_1164[this._SafeStr_748 - 1][5][_loc3_][2];
            _loc5_.spinnybit.colour.gotoAndStop(_loc3_ % 4 + 1);
            _loc5_.barrel.colour.colour.gotoAndStop(_loc3_ % 4 + 1);
            _loc5_.tankmain.colour.gotoAndStop(_loc3_ % 4 + 1);
            _loc5_.skin.visible = false;
            _loc3_++;
         }
         if(this._SafeStr_1164[this._SafeStr_748 - 1][7])
         {
            if(!(this._SafeStr_1164[this._SafeStr_748 - 1][7][0][0] == -100 && this._SafeStr_1164[this._SafeStr_748 - 1][7][0][1] == -100 && this._SafeStr_1164[this._SafeStr_748 - 1][7][1][0] == -100 && this._SafeStr_1164[this._SafeStr_748 - 1][7][1][1] == -100))
            {
               _loc6_ = this.tempLevelPreview.addChild(new newflagmc());
               _loc6_.x = this._SafeStr_1164[this._SafeStr_748 - 1][7][0][0];
               _loc6_.y = this._SafeStr_1164[this._SafeStr_748 - 1][7][0][1];
               _loc6_ = this.tempLevelPreview.addChild(new newflagmc());
               _loc6_.x = this._SafeStr_1164[this._SafeStr_748 - 1][7][1][0];
               _loc6_.y = this._SafeStr_1164[this._SafeStr_748 - 1][7][1][1];
            }
         }
         if(this._SafeStr_1164[this._SafeStr_748 - 1][2] == "Large")
         {
            this.tempLevelPreview.gotoAndStop(1);
            this.tempLevelPreview.scaleX = 0.1667;
            this.tempLevelPreview.scaleY = 0.1667;
            this.tempLevelPreview.rotation = 2;
            this.tempLevelPreview.scrollRect = new Rectangle(20,20,860,860);
         }
         else if(this._SafeStr_1164[this._SafeStr_748 - 1][2] == "Small")
         {
            this.tempLevelPreview.gotoAndStop(2);
            this.tempLevelPreview.scaleX = 0.2031;
            this.tempLevelPreview.scaleY = 0.2031;
            this.tempLevelPreview.rotation = 2;
            this.tempLevelPreview.scrollRect = new Rectangle(26,32,704,704);
         }
         else if(this._SafeStr_1164[this._SafeStr_748 - 1][2] == "Giant")
         {
            this.tempLevelPreview.gotoAndStop(3);
            this.tempLevelPreview.scaleX = 0.121;
            this.tempLevelPreview.scaleY = 0.121;
            this.tempLevelPreview.rotation = 2;
            this.tempLevelPreview.scrollRect = new Rectangle(-35,40,1180,1180);
            _loc7_ = new Shape();
            _loc7_.graphics.beginFill(14998541);
            _loc7_.graphics.drawRect(-100,0,100,1300);
            _loc7_.graphics.drawRect(1100,0,100,1300);
            _loc7_.graphics.endFill();
            this.tempLevelPreview.addChild(_loc7_);
         }
         this.tempLevelPreview.x = 37;
         this.tempLevelPreview.y = -184;
         this.tempLevelPreview.cacheAsBitmap = true;
         this.tempLevelPreview.smoothing = true;
         this.editorloadsavewindow.addChild(this.tempLevelPreview);
      }
      
      public function _SafeStr_1326(param1:int) : DisplayObject
      {
         switch(param1)
         {
            case 5:
               return new editoryellowpencilstubmc();
            case 6:
               return new editorredpencilstubmc();
            case 7:
               return new editorblackbiromc();
            case 8:
               return new editorbluebiromc();
            case 9:
               return new editorredbiromc();
            case 10:
               return new editoryellowpencilmc();
            case 11:
               return new editorpostitmc();
            case 12:
               return new editor1pmc();
            case 13:
               return new editorsharpenergreenmc();
            case 14:
               return new editorsharpenerbluemc();
            case 15:
               return new editorbluepaperclipmc();
            case 16:
               return new editorredpaperclipmc();
            case 17:
               return new editorrubberonsidemc();
            case 18:
               return new editortapemc();
            default:
               return new editorerrormc();
         }
      }
      
      public function _SafeStr_683(param1:int) : String
      {
         switch(param1)
         {
            case 5:
               return "editoryellowpencilstub";
            case 6:
               return "editorredpencilstub";
            case 7:
               return "editorblackbiro";
            case 8:
               return "editorbluebiro";
            case 9:
               return "editorredbiro";
            case 10:
               return "editoryellowpencil";
            case 11:
               return "editorpostit";
            case 12:
               return "editor1p";
            case 13:
               return "editorsharpenergreen";
            case 14:
               return "editorsharpenerblue";
            case 15:
               return "editorbluepaperclip";
            case 16:
               return "editorredpaperclip";
            case 17:
               return "editorrubberonside";
            case 18:
               return "editortape";
            default:
               return "editorerror";
         }
      }
      
      public function removeMapPreview() : *
      {
         try
         {
            this.editorloadsavewindow.removeChild(this.tempLevelPreview);
         }
         catch(e:Error)
         {
         }
         this.tempLevelPreview = null;
      }
      
      public function _SafeStr_437(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_1971 = stage.addChild(new _SafeCls_210());
         this._SafeStr_1971.x = 365;
         this._SafeStr_1971.y = 250;
         this._SafeStr_1971.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1083,false,0,true);
         this._SafeStr_1971.backbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2316,false,0,true);
      }
      
      public function _SafeStr_1083(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_862);
         stage.removeChild(this._SafeStr_1971);
         stage.removeChild(this.editorhudthing);
         this._SafeStr_832();
         try
         {
            stage.removeChild(this._SafeStr_2092);
         }
         catch(e:Error)
         {
         }
         this._SafeStr_1237();
         gotoAndStop(2);
         this._SafeStr_850();
         this._SafeStr_1872();
      }
      
      public function _SafeStr_2316(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_1971);
      }
      
      public function _SafeStr_832() : *
      {
         var _loc1_:* = undefined;
         _loc1_ = 4;
         while(_loc1_ < this._SafeStr_1187.length)
         {
            this.editorbackground.removeChild(this._SafeStr_1187[_loc1_]);
            this._SafeStr_1187.splice(_loc1_,1);
            this.customLevelArray.splice(_loc1_,1);
         }
         this.customLevelSpawnArray[0] = [-1,-1,-1];
         this.customLevelSpawnArray[1] = [-1,-1,-1];
         this.customLevelSpawnArray[2] = [-1,-1,-1];
         this.customLevelSpawnArray[3] = [-1,-1,-1];
         this.customLevelSpawnArray[4] = [-1,-1,-1];
         this.customLevelSpawnArray[5] = [-1,-1,-1];
         this.customLevelSpawnArray[6] = [-1,-1,-1];
         this.customLevelSpawnArray[7] = [-1,-1,-1];
         this.editortank0.x = 5000;
         this.editortank1.x = 5000;
         this.editortank2.x = 5000;
         this.editortank3.x = 5000;
         this.editortank4.x = 5000;
         this.editortank5.x = 5000;
         this.editortank6.x = 5000;
         this.editortank7.x = 5000;
         this.customLevelFlagPositions[0] = [-100,-100];
         this.customLevelFlagPositions[1] = [-100,-100];
         this._SafeStr_921 = 0;
         this.editorflag0.x = -100;
         this.editorflag0.y = -100;
         this.editorflag1.x = -100;
         this.editorflag1.y = -100;
         this.editorhudthing.gamemodetext.htmlText = "game mode: <font color=\'#990000\'>deathmatch</font";
         this.editorhudthing.ctfhint.visible = false;
      }
      
      public function _SafeStr_2653(param1:MouseEvent) : *
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            this.buttonClickSound();
         }
         this.xtr("begin place item: " + this._SafeStr_2510);
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_764,false,0,true);
         addEventListener(Event.ENTER_FRAME,this._SafeStr_1868,false,0,true);
         this._SafeStr_2019(param1.target.parent.typename);
         addEventListener(Event.ENTER_FRAME,this._SafeStr_2223,false,0,true);
         this._SafeStr_2510 = param1.target.parent.typename;
         this._SafeStr_1263 = param1.target.parent.rotation;
         if(param1.target.parent.parent.name == "editorhudthing")
         {
            this.xtr("hud item");
            this.editorPlaceOffsetX = 0;
            this.editorPlaceOffsetY = 0;
         }
         else
         {
            this.xtr("not hud item");
            this.editorPlaceOffsetX = stage.mouseX + this.editorvcam.x - this.editorvcam.width / 2 - param1.target.parent.x;
            this.editorPlaceOffsetY = stage.mouseY + this.editorvcam.y - this.editorvcam.height / 2 - param1.target.parent.y;
            this._SafeStr_1181(param1.target.parent);
         }
         _loc2_ = 4;
         while(_loc2_ < this._SafeStr_1187.length)
         {
            this._SafeStr_1187[_loc2_].button.mouseEnabled = false;
            _loc2_++;
         }
      }
      
      public function _SafeStr_764(param1:MouseEvent) : *
      {
         if(stage.mouseX > 495 && this.editorhudthing.visible == true)
         {
            this.cancelPlaceItem(param1);
         }
         else
         {
            this.endPlaceItem(param1);
         }
      }
      
      public function _SafeStr_2019(param1:String) : *
      {
         switch(param1)
         {
            case "editorredpencilstub":
               this._SafeStr_913 = stage.addChild(new editorredpencilstubmc());
               this._SafeStr_913.name = "editorredpencilstub";
               break;
            case "editoryellowpencilstub":
               this._SafeStr_913 = stage.addChild(new editoryellowpencilstubmc());
               this._SafeStr_913.name = "editoryellowpencilstub";
               break;
            case "editorblackbiro":
               this._SafeStr_913 = stage.addChild(new editorblackbiromc());
               this._SafeStr_913.name = "editorblackbiro";
               break;
            case "editorbluebiro":
               this._SafeStr_913 = stage.addChild(new editorbluebiromc());
               this._SafeStr_913.name = "editorbluebiro";
               break;
            case "editorredbiro":
               this._SafeStr_913 = stage.addChild(new editorredbiromc());
               this._SafeStr_913.name = "editorredbiro";
               break;
            case "editoryellowpencil":
               this._SafeStr_913 = stage.addChild(new editoryellowpencilmc());
               this._SafeStr_913.name = "editoryellowpencil";
               break;
            case "editorpostit":
               this._SafeStr_913 = stage.addChild(new editorpostitmc());
               this._SafeStr_913.name = "editorpostit";
               break;
            case "editor1p":
               this._SafeStr_913 = stage.addChild(new editor1pmc());
               this._SafeStr_913.name = "editor1p";
               break;
            case "editorsharpenergreen":
               this._SafeStr_913 = stage.addChild(new editorsharpenergreenmc());
               this._SafeStr_913.name = "editorsharpenergreen";
               break;
            case "editorsharpenerblue":
               this._SafeStr_913 = stage.addChild(new editorsharpenerbluemc());
               this._SafeStr_913.name = "editorsharpenerblue";
               break;
            case "editorbluepaperclip":
               this._SafeStr_913 = stage.addChild(new editorbluepaperclipmc());
               this._SafeStr_913.name = "editorbluepaperclip";
               break;
            case "editorredpaperclip":
               this._SafeStr_913 = stage.addChild(new editorredpaperclipmc());
               this._SafeStr_913.name = "editorredpaperclip";
               break;
            case "editorrubberonside":
               this._SafeStr_913 = stage.addChild(new editorrubberonsidemc());
               this._SafeStr_913.name = "editorrubberonside";
               break;
            case "editortape":
               this._SafeStr_913 = stage.addChild(new editortapemc());
               this._SafeStr_913.name = "editortape";
               break;
            case "editortank0":
               this._SafeStr_913 = stage.addChild(new editortankmc());
               this._SafeStr_913.name = "editortank0";
               this._SafeStr_913.tank.barrel.colour.colour.gotoAndStop(1);
               this._SafeStr_913.tank.spinnybit.colour.gotoAndStop(1);
               this._SafeStr_913.tank.tankmain.colour.gotoAndStop(1);
               this._SafeStr_913.tank.skin.visible = false;
               this._SafeStr_913.numbermcx.numbertext.text = "1";
               break;
            case "editortank1":
               this._SafeStr_913 = stage.addChild(new editortankmc());
               this._SafeStr_913.name = "editortank1";
               this._SafeStr_913.tank.barrel.colour.colour.gotoAndStop(2);
               this._SafeStr_913.tank.spinnybit.colour.gotoAndStop(2);
               this._SafeStr_913.tank.tankmain.colour.gotoAndStop(2);
               this._SafeStr_913.tank.skin.visible = false;
               this._SafeStr_913.numbermcx.numbertext.text = "2";
               break;
            case "editortank2":
               this._SafeStr_913 = stage.addChild(new editortankmc());
               this._SafeStr_913.name = "editortank2";
               this._SafeStr_913.tank.barrel.colour.colour.gotoAndStop(3);
               this._SafeStr_913.tank.spinnybit.colour.gotoAndStop(3);
               this._SafeStr_913.tank.tankmain.colour.gotoAndStop(3);
               this._SafeStr_913.tank.skin.visible = false;
               this._SafeStr_913.numbermcx.numbertext.text = "3";
               break;
            case "editortank3":
               this._SafeStr_913 = stage.addChild(new editortankmc());
               this._SafeStr_913.name = "editortank3";
               this._SafeStr_913.tank.barrel.colour.colour.gotoAndStop(4);
               this._SafeStr_913.tank.spinnybit.colour.gotoAndStop(4);
               this._SafeStr_913.tank.tankmain.colour.gotoAndStop(4);
               this._SafeStr_913.tank.skin.visible = false;
               this._SafeStr_913.numbermcx.numbertext.text = "4";
               break;
            case "editortank4":
               this._SafeStr_913 = stage.addChild(new editortankmc());
               this._SafeStr_913.name = "editortank4";
               this._SafeStr_913.tank.barrel.colour.colour.gotoAndStop(1);
               this._SafeStr_913.tank.spinnybit.colour.gotoAndStop(1);
               this._SafeStr_913.tank.tankmain.colour.gotoAndStop(1);
               this._SafeStr_913.tank.skin.visible = false;
               this._SafeStr_913.numbermcx.numbertext.text = "5";
               break;
            case "editortank5":
               this._SafeStr_913 = stage.addChild(new editortankmc());
               this._SafeStr_913.name = "editortank5";
               this._SafeStr_913.tank.barrel.colour.colour.gotoAndStop(2);
               this._SafeStr_913.tank.spinnybit.colour.gotoAndStop(2);
               this._SafeStr_913.tank.tankmain.colour.gotoAndStop(2);
               this._SafeStr_913.tank.skin.visible = false;
               this._SafeStr_913.numbermcx.numbertext.text = "6";
               break;
            case "editortank6":
               this._SafeStr_913 = stage.addChild(new editortankmc());
               this._SafeStr_913.name = "editortank6";
               this._SafeStr_913.tank.barrel.colour.colour.gotoAndStop(3);
               this._SafeStr_913.tank.spinnybit.colour.gotoAndStop(3);
               this._SafeStr_913.tank.tankmain.colour.gotoAndStop(3);
               this._SafeStr_913.tank.skin.visible = false;
               this._SafeStr_913.numbermcx.numbertext.text = "7";
               break;
            case "editortank7":
               this._SafeStr_913 = stage.addChild(new editortankmc());
               this._SafeStr_913.name = "editortank7";
               this._SafeStr_913.tank.barrel.colour.colour.gotoAndStop(4);
               this._SafeStr_913.tank.spinnybit.colour.gotoAndStop(4);
               this._SafeStr_913.tank.tankmain.colour.gotoAndStop(4);
               this._SafeStr_913.tank.skin.visible = false;
               this._SafeStr_913.numbermcx.numbertext.text = "8";
               break;
            case "editorflag0":
               this._SafeStr_913 = stage.addChild(new editorflagmc());
               this._SafeStr_913.name = "editorflag0";
               break;
            case "editorflag1":
               this._SafeStr_913 = stage.addChild(new editorflagmc());
               this._SafeStr_913.name = "editorflag1";
               this._SafeStr_913.flagmc.gotoAndStop(2);
         }
      }
      
      public function _SafeStr_1868(param1:Event) : *
      {
         this._SafeStr_913.x = stage.mouseX - this.editorPlaceOffsetX;
         this._SafeStr_913.y = stage.mouseY - this.editorPlaceOffsetY;
         this._SafeStr_913.rotation = this._SafeStr_1263;
         if(this._SafeStr_913.name == "editorflag0" || this._SafeStr_913.name == "editorflag1")
         {
            this._SafeStr_913.rotation = 0;
         }
         if(this._SafeStr_913.name == "editortank0" || this._SafeStr_913.name == "editortank1" || this._SafeStr_913.name == "editortank2" || this._SafeStr_913.name == "editortank3" || this._SafeStr_913.name == "editortank4" || this._SafeStr_913.name == "editortank5" || this._SafeStr_913.name == "editortank6" || this._SafeStr_913.name == "editortank7")
         {
            this._SafeStr_913.numbermcx.rotation = -this._SafeStr_1263;
         }
         this._SafeStr_913.button.mouseEnabled = false;
      }
      
      public function _SafeStr_2223(param1:Event) : *
      {
         this._SafeStr_574 = 0;
         if(this.isKeyDown(37))
         {
            this._SafeStr_574 = -1;
         }
         if(this.isKeyDown(39))
         {
            this._SafeStr_574 = 1;
         }
         if(!this.isKeyDown(38))
         {
         }
         if(!this.isKeyDown(40))
         {
         }
         if(this.isKeyDown(16))
         {
            this._SafeStr_574 *= 0.1;
         }
         this._SafeStr_1263 += this._SafeStr_574 * this.rotationSpeed;
      }
      
      public function endPlaceItem(param1:MouseEvent) : *
      {
         var _loc2_:* = undefined;
         this.xtr("endPlaceItem");
         if(this.checkSpawnOk())
         {
            this._SafeStr_1748(this._SafeStr_2510,stage.mouseX + this.editorvcam.x - this.editorvcam.width / 2 - this.editorPlaceOffsetX,stage.mouseY + this.editorvcam.y - this.editorvcam.height / 2 - this.editorPlaceOffsetY,this._SafeStr_1263,this._SafeStr_2585,this._SafeStr_1489);
            stage.removeEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_764);
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_1868);
            removeEventListener(Event.ENTER_FRAME,this._SafeStr_2223);
            _loc2_ = 4;
            while(_loc2_ < this._SafeStr_1187.length)
            {
               this._SafeStr_1187[_loc2_].button.mouseEnabled = true;
               _loc2_++;
            }
            this.editorhudthing.removeEventListener(MouseEvent.MOUSE_DOWN,this.cancelPlaceItem);
            stage.removeChild(this._SafeStr_913);
            stage.focus = null;
         }
      }
      
      public function checkSpawnOk() : Boolean
      {
         var _loc1_:Array = null;
         var _loc2_:* = undefined;
         var _loc3_:CollisionList = null;
         var _loc4_:Array = null;
         var _loc5_:* = undefined;
         var _loc6_:MovieClip = null;
         var _loc7_:Shape = null;
         var _loc8_:MovieClip = null;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         trace("checkSpawnOk");
         _loc1_ = new Array(8);
         _loc2_ = 0;
         while(_loc2_ < 8)
         {
            _loc6_ = new MovieClip();
            _loc7_ = new Shape();
            _loc7_.graphics.beginFill(16711680);
            _loc7_.graphics.drawRect(-2.5,-2.5,5,5);
            _loc7_.graphics.endFill();
            _loc6_.addChild(_loc7_);
            _loc1_[_loc2_] = _loc6_;
            this["editortank" + _loc2_].addChild(_loc1_[_loc2_]);
            _loc2_++;
         }
         if(this._SafeStr_2510.substr(0,10) == "editortank")
         {
            _loc8_ = new MovieClip();
            _loc7_ = new Shape();
            _loc7_.graphics.beginFill(16711680);
            _loc7_.graphics.drawRect(-2.5,-2.5,5,5);
            _loc7_.graphics.endFill();
            _loc8_.addChild(_loc7_);
            this._SafeStr_913.addChild(_loc8_);
            _loc3_ = new CollisionList(_loc8_);
            _loc9_ = 4;
            while(_loc9_ < this._SafeStr_1187.length)
            {
               _loc3_.addItem(this._SafeStr_1187[_loc9_]);
               _loc9_++;
            }
            _loc9_ = 0;
            while(_loc9_ < 8)
            {
               if(Number(this._SafeStr_2510.substr(10,1)) != _loc9_)
               {
                  _loc3_.addItem(this["editortank" + _loc9_]);
               }
               _loc9_++;
            }
         }
         else
         {
            _loc3_ = new CollisionList(this._SafeStr_913);
            _loc9_ = 0;
            while(_loc9_ < 8)
            {
               _loc3_.addItem(_loc1_[_loc9_]);
               _loc9_++;
            }
         }
         _loc4_ = _loc3_._SafeStr_900();
         if(this._SafeStr_2510.substr(0,10) == "editortank")
         {
            this._SafeStr_913.removeChild(_loc8_);
         }
         if(_loc4_.length > 0)
         {
            if(this._SafeStr_2510.substr(0,10) == "editortank")
            {
               this._SafeStr_913.warning.gotoAndPlay(2);
            }
            else
            {
               _loc10_ = 0;
               while(_loc10_ < _loc4_.length)
               {
                  _loc4_[_loc10_].object1.parent.warning.gotoAndPlay(2);
                  _loc10_++;
               }
            }
         }
         _loc5_ = 0;
         while(_loc5_ < 8)
         {
            this["editortank" + _loc5_].removeChild(_loc1_[_loc5_]);
            _loc5_++;
         }
         if(_loc4_.length > 0)
         {
            return false;
         }
         return true;
      }
      
      public function _SafeStr_1748(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : *
      {
         this.xtr("positionItem itemName: " + param1);
         switch(param1)
         {
            case "editortank0":
               this.customLevelSpawnArray[0] = [param2,param3,param4];
               this.editortank0.x = param2;
               this.editortank0.y = param3;
               this.editortank0.rotation = param4;
               this.editortank0.numbermcx.rotation = -param4;
               break;
            case "editortank1":
               this.customLevelSpawnArray[1] = [param2,param3,param4];
               this.editortank1.x = param2;
               this.editortank1.y = param3;
               this.editortank1.rotation = param4;
               this.editortank1.numbermcx.rotation = -param4;
               break;
            case "editortank2":
               this.customLevelSpawnArray[2] = [param2,param3,param4];
               this.editortank2.x = param2;
               this.editortank2.y = param3;
               this.editortank2.rotation = param4;
               this.editortank2.numbermcx.rotation = -param4;
               break;
            case "editortank3":
               this.customLevelSpawnArray[3] = [param2,param3,param4];
               this.editortank3.x = param2;
               this.editortank3.y = param3;
               this.editortank3.rotation = param4;
               this.editortank3.numbermcx.rotation = -param4;
               break;
            case "editortank4":
               this.customLevelSpawnArray[4] = [param2,param3,param4];
               this.editortank4.x = param2;
               this.editortank4.y = param3;
               this.editortank4.rotation = param4;
               this.editortank4.numbermcx.rotation = -param4;
               break;
            case "editortank5":
               this.customLevelSpawnArray[5] = [param2,param3,param4];
               this.editortank5.x = param2;
               this.editortank5.y = param3;
               this.editortank5.rotation = param4;
               this.editortank5.numbermcx.rotation = -param4;
               break;
            case "editortank6":
               this.customLevelSpawnArray[6] = [param2,param3,param4];
               this.editortank6.x = param2;
               this.editortank6.y = param3;
               this.editortank6.rotation = param4;
               this.editortank6.numbermcx.rotation = -param4;
               break;
            case "editortank7":
               this.customLevelSpawnArray[7] = [param2,param3,param4];
               this.editortank7.x = param2;
               this.editortank7.y = param3;
               this.editortank7.rotation = param4;
               this.editortank7.numbermcx.rotation = -param4;
               break;
            case "editoryellowpencilstub":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editoryellowpencilstubmc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editoryellowpencilstub";
               this.customLevelArray.push([5,param2,param3,1,1,param4]);
               break;
            case "editorredpencilstub":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editorredpencilstubmc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editorredpencilstub";
               this.customLevelArray.push([6,param2,param3,1,1,param4]);
               break;
            case "editorblackbiro":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editorblackbiromc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editorblackbiro";
               this.customLevelArray.push([7,param2,param3,1,1,param4]);
               break;
            case "editorbluebiro":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editorbluebiromc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editorbluebiro";
               this.customLevelArray.push([8,param2,param3,1,1,param4]);
               break;
            case "editorredbiro":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editorredbiromc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editorredbiro";
               this.customLevelArray.push([9,param2,param3,1,1,param4]);
               break;
            case "editoryellowpencil":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editoryellowpencilmc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editoryellowpencil";
               this.customLevelArray.push([10,param2,param3,1,1,param4]);
               break;
            case "editorpostit":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editorpostitmc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editorpostit";
               this.customLevelArray.push([11,param2,param3,1,1,param4]);
               break;
            case "editor1p":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editor1pmc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editor1p";
               this.customLevelArray.push([12,param2,param3,1,1,param4]);
               break;
            case "editorsharpenergreen":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editorsharpenergreenmc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editorsharpenergreen";
               this.customLevelArray.push([13,param2,param3,1,1,param4]);
               break;
            case "editorsharpenerblue":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editorsharpenerbluemc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editorsharpenerblue";
               this.customLevelArray.push([14,param2,param3,1,1,param4]);
               break;
            case "editorbluepaperclip":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editorbluepaperclipmc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editorbluepaperclip";
               this.customLevelArray.push([15,param2,param3,1,1,param4]);
               break;
            case "editorredpaperclip":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editorredpaperclipmc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editorredpaperclip";
               this.customLevelArray.push([16,param2,param3,1,1,param4]);
               break;
            case "editorrubberonside":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editorrubberonsidemc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editorrubberonside";
               this.customLevelArray.push([17,param2,param3,1,1,param4]);
               break;
            case "editortape":
               this._SafeStr_1187.push(this.editorbackground.addChild(new editortapemc()));
               this._SafeStr_1187[this._SafeStr_1187.length - 1].x = param2;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].y = param3;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].rotation = param4;
               this._SafeStr_1187[this._SafeStr_1187.length - 1].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
               this._SafeStr_1187[this._SafeStr_1187.length - 1].typename = "editortape";
               this.customLevelArray.push([18,param2,param3,1,1,param4]);
               break;
            case "editorflag0":
               this.customLevelFlagPositions[0] = [param2,param3];
               this.editorflag0.x = param2;
               this.editorflag0.y = param3;
               if(!(this.customLevelFlagPositions[1][0] == -100 && this.customLevelFlagPositions[1][1] == -100))
               {
                  this._SafeStr_921 = 2;
                  this.editorhudthing.gamemodetext.htmlText = "game mode: <font color=\'#990000\'>capture the flag</font";
                  this.editorhudthing.ctfhint.visible = true;
                  trace("swap to CTF");
               }
               break;
            case "editorflag1":
               this.customLevelFlagPositions[1] = [param2,param3];
               this.editorflag1.x = param2;
               this.editorflag1.y = param3;
               if(!(this.customLevelFlagPositions[0][0] == -100 && this.customLevelFlagPositions[0][1] == -100))
               {
                  this._SafeStr_921 = 2;
                  this.editorhudthing.gamemodetext.htmlText = "game mode: <font color=\'#990000\'>capture the flag</font";
                  this.editorhudthing.ctfhint.visible = true;
                  trace("swap to CTF");
               }
         }
      }
      
      public function _SafeStr_1181(param1:*) : *
      {
         var _loc2_:int = 0;
         _loc2_ = this._SafeStr_2262(param1);
         if(_loc2_ != -1)
         {
            this.editorbackground.removeChild(this._SafeStr_1187[_loc2_]);
            this._SafeStr_1187.splice(_loc2_,1);
            this.customLevelArray.splice(_loc2_,1);
         }
         stage.focus = null;
         if(param1.name == "editortank0" || param1.name == "editortank1" || param1.name == "editortank2" || param1.name == "editortank3" || param1.name == "editortank4" || param1.name == "editortank5" || param1.name == "editortank6" || param1.name == "editortank7")
         {
            switch(param1.name)
            {
               case "editortank0":
                  this.customLevelSpawnArray[0] = [-1,-1,-1];
                  this.editortank0.x = 5000;
                  break;
               case "editortank1":
                  this.customLevelSpawnArray[1] = [-1,-1,-1];
                  this.editortank1.x = 5000;
                  break;
               case "editortank2":
                  this.customLevelSpawnArray[2] = [-1,-1,-1];
                  this.editortank2.x = 5000;
                  break;
               case "editortank3":
                  this.customLevelSpawnArray[3] = [-1,-1,-1];
                  this.editortank3.x = 5000;
                  break;
               case "editortank4":
                  this.customLevelSpawnArray[4] = [-1,-1,-1];
                  this.editortank4.x = 5000;
                  break;
               case "editortank5":
                  this.customLevelSpawnArray[5] = [-1,-1,-1];
                  this.editortank5.x = 5000;
                  break;
               case "editortank6":
                  this.customLevelSpawnArray[6] = [-1,-1,-1];
                  this.editortank6.x = 5000;
                  break;
               case "editortank7":
                  this.customLevelSpawnArray[7] = [-1,-1,-1];
                  this.editortank7.x = 5000;
            }
         }
         if(param1.name == "editorflag0")
         {
            this.customLevelFlagPositions[0] = [-100,-100];
            this.editorflag0.x = 1600;
            this.editorflag0.y = 1200;
         }
         if(param1.name == "editorflag1")
         {
            this.customLevelFlagPositions[1] = [-100,-100];
            this.editorflag1.x = 1600;
            this.editorflag1.y = 1600;
         }
         this.xtr("deleted");
      }
      
      public function cancelPlaceItem(param1:MouseEvent) : *
      {
         var _loc2_:* = undefined;
         this.xtr("cancelPlaceItem");
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,this._SafeStr_764);
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_1868);
         removeEventListener(Event.ENTER_FRAME,this._SafeStr_2223);
         if(this._SafeStr_2510 == "editortank0" || this._SafeStr_2510 == "editortank1" || this._SafeStr_2510 == "editortank2" || this._SafeStr_2510 == "editortank3" || this._SafeStr_2510 == "editortank4" || this._SafeStr_2510 == "editortank5" || this._SafeStr_2510 == "editortank6" || this._SafeStr_2510 == "editortank7" || this._SafeStr_2510 == "editorflag0" || this._SafeStr_2510 == "editorflag1")
         {
            this[this._SafeStr_2510].button.addEventListener(MouseEvent.CLICK,this._SafeStr_2653,false,0,true);
            this[this._SafeStr_2510].button.mouseEnabled = true;
         }
         if(this._SafeStr_2510 == "editorflag0")
         {
            trace("cancel flag 0");
            this.customLevelFlagPositions[0] = [-100,-100];
            this._SafeStr_921 = 0;
            this.editorhudthing.gamemodetext.htmlText = "game mode: <font color=\'#990000\'>deathmatch</font";
            this.editorhudthing.ctfhint.visible = false;
            trace("and the other one is cancelled too so back to DM");
         }
         if(this._SafeStr_2510 == "editorflag1")
         {
            trace("cancel flag 1");
            this.customLevelFlagPositions[1] = [-100,-100];
            this._SafeStr_921 = 0;
            this.editorhudthing.gamemodetext.htmlText = "game mode: <font color=\'#990000\'>deathmatch</font";
            this.editorhudthing.ctfhint.visible = false;
            trace("and the other one is cancelled too so back to DM");
         }
         _loc2_ = 4;
         while(_loc2_ < this._SafeStr_1187.length)
         {
            this._SafeStr_1187[_loc2_].button.mouseEnabled = true;
            _loc2_++;
         }
         stage.removeChild(this._SafeStr_913);
         stage.focus = null;
      }
      
      public function _SafeStr_2262(param1:MovieClip) : int
      {
         var _loc2_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_1187.length)
         {
            if(this._SafeStr_1187[_loc2_] == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function _SafeStr_1186(param1:MouseEvent) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = 0;
         while(_loc2_ < this._SafeStr_1187.length)
         {
            if(this._SafeStr_1187[_loc2_] == param1.target.parent)
            {
               this.xtr("its in array position: " + _loc2_);
            }
            _loc2_++;
         }
      }
      
      public function _SafeStr_1284(param1:MouseEvent = null) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         this._SafeStr_2092 = stage.addChild(new _SafeCls_213());
         this._SafeStr_2092.x = 365;
         this._SafeStr_2092.y = 250;
         this._SafeStr_2092.increasemapsizebutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2140,false,0,true);
         this._SafeStr_2092.decreasemapsizebutton.addEventListener(MouseEvent.CLICK,this._SafeStr_2140,false,0,true);
         this._SafeStr_2092.okbutton.addEventListener(MouseEvent.CLICK,this._SafeStr_1967,false,0,true);
         this._SafeStr_2092.createlevelmapsizetext.text = "large";
         this.customLevelArray = this.largeLevelBorderArray;
         this.customLevelCameraArray = this.largeLevelCameraArray;
         this.editorbackground.gotoAndStop(1);
         this.editorMapSize = "Large";
         this.editorMapName = "";
      }
      
      public function _SafeStr_2140(param1:MouseEvent) : *
      {
         var _loc2_:String = null;
         if(param1)
         {
            this.buttonClickSound();
         }
         if(param1.target.name == "increasemapsizebutton")
         {
            if(this.editorMapSize == "Small")
            {
               _loc2_ = "Large";
            }
            else if(this.editorMapSize == "Large")
            {
               _loc2_ = "Giant";
            }
            else if(this.editorMapSize == "Giant")
            {
               _loc2_ = "Giant";
            }
         }
         else if(this.editorMapSize == "Small")
         {
            _loc2_ = "Small";
         }
         else if(this.editorMapSize == "Large")
         {
            _loc2_ = "Small";
         }
         else if(this.editorMapSize == "Giant")
         {
            _loc2_ = "Large";
         }
         if(_loc2_ == "Small")
         {
            this._SafeStr_2092.createlevelmapsizetext.text = "small";
            this.customLevelArray = this.smallLevelBorderArray;
            this.customLevelCameraArray = this.smallLevelCameraArray;
            this.editorbackground.gotoAndStop(2);
            this.editorMapSize = "Small";
         }
         else if(_loc2_ == "Large")
         {
            this._SafeStr_2092.createlevelmapsizetext.text = "large";
            this.customLevelArray = this.largeLevelBorderArray;
            this.customLevelCameraArray = this.largeLevelCameraArray;
            this.editorbackground.gotoAndStop(1);
            this.editorMapSize = "Large";
         }
         else if(_loc2_ == "Giant")
         {
            this._SafeStr_2092.createlevelmapsizetext.text = "giant";
            this.customLevelArray = this.giantLevelBorderArray;
            this.customLevelCameraArray = this.giantLevelCameraArray;
            this.editorbackground.gotoAndStop(3);
            this.editorMapSize = "Giant";
         }
      }
      
      public function _SafeStr_1967(param1:MouseEvent) : *
      {
         if(param1)
         {
            this.buttonClickSound();
         }
         stage.removeChild(this._SafeStr_2092);
      }
      
      public function _SafeStr_2522() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         this._SafeStr_1016 = 30;
         this._SafeStr_410();
         this._SafeStr_2603 = this.customLevelArray;
         this._SafeStr_2607();
         if(this.editorMapSize == "Large")
         {
            _loc1_ = this._SafeStr_1950(1);
         }
         else if(this.editorMapSize == "Small")
         {
            _loc1_ = this._SafeStr_1950(0);
         }
         else
         {
            _loc1_ = this._SafeStr_1950(2);
         }
         if(this._SafeStr_1091)
         {
            _loc2_ = this._SafeStr_1091.GetBodyList();
            while(_loc2_)
            {
               _loc3_ = _loc2_;
               _loc2_ = _loc2_._SafeStr_1023();
               this._SafeStr_1091.DestroyBody(_loc3_);
            }
         }
         this._SafeStr_1091 = null;
         return _loc1_;
      }
      
      public function _SafeStr_2125() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         trace("level data:");
         _loc1_ = 0;
         while(_loc1_ < this.customLevelArray.length)
         {
            trace("levelXArray[" + _loc1_ + "] = [" + this.customLevelArray[_loc1_][0] + "," + this.customLevelArray[_loc1_][1] + "," + this.customLevelArray[_loc1_][2] + "," + this.customLevelArray[_loc1_][3] + "," + this.customLevelArray[_loc1_][4] + "," + this.customLevelArray[_loc1_][5] + "];");
            _loc1_++;
         }
         trace("spawn data: ");
         _loc2_ = 0;
         while(_loc2_ < this.customLevelSpawnArray.length)
         {
            trace("customLevelSpawnArray[" + _loc2_ + "] = [" + this.customLevelSpawnArray[_loc2_][0] + "," + this.customLevelSpawnArray[_loc2_][1] + "," + this.customLevelSpawnArray[_loc2_][2] + "];");
            _loc2_++;
         }
         trace("waypoint data: ");
      }
      
      public function __registerTLFFonts() : void
      {
         Font.registerFont(arialbold_3);
      }
   }
}


/** 
 * WARNING: The original code has obfuscated identifiers.
 * List of replacements follows:
 * @identifier _SafeCls_2 = "_-Tk"
 * @identifier _SafeCls_4 = "_-ep"
 * @identifier _SafeCls_84 = "_-iJ"
 * @identifier _SafeCls_107 = "_-Qr"
 * @identifier _SafeCls_108 = "_-D7"
 * @identifier _SafeCls_112 = "_-8R"
 * @identifier _SafeCls_114 = "_-84"
 * @identifier _SafeCls_115 = "_-LZ"
 * @identifier _SafeCls_116 = "_-Ph"
 * @identifier _SafeCls_149 = "_-iD"
 * @identifier _SafeCls_152 = "_-eW"
 * @identifier _SafeCls_155 = "_-LT"
 * @identifier _SafeCls_156 = "_-CU"
 * @identifier _SafeCls_157 = "_-cg"
 * @identifier _SafeCls_158 = "_-SD"
 * @identifier _SafeCls_159 = "_-9x"
 * @identifier _SafeCls_160 = "_-O8"
 * @identifier _SafeCls_163 = "_-1b"
 * @identifier _SafeCls_164 = "_-Mk"
 * @identifier _SafeCls_165 = "_-4P"
 * @identifier _SafeCls_166 = "_-2g"
 * @identifier _SafeCls_170 = "_-bJ"
 * @identifier _SafeCls_172 = "_-UI"
 * @identifier _SafeCls_173 = "_-3i"
 * @identifier _SafeCls_174 = "_-XC"
 * @identifier _SafeCls_175 = "_-De"
 * @identifier _SafeCls_177 = "_-dJ"
 * @identifier _SafeCls_178 = "_-g3"
 * @identifier _SafeCls_179 = "_-7b"
 * @identifier _SafeCls_180 = "_-Hg"
 * @identifier _SafeCls_182 = "_-VG"
 * @identifier _SafeCls_184 = "_-Aj"
 * @identifier _SafeCls_185 = "_-Pp"
 * @identifier _SafeCls_186 = "_-e4"
 * @identifier _SafeCls_187 = "_-To"
 * @identifier _SafeCls_188 = "_-dV"
 * @identifier _SafeCls_189 = "_-dx"
 * @identifier _SafeCls_190 = "_-Ok"
 * @identifier _SafeCls_198 = "_-iG"
 * @identifier _SafeCls_199 = "_-iB"
 * @identifier _SafeCls_200 = "_-dl"
 * @identifier _SafeCls_201 = "_-Dr"
 * @identifier _SafeCls_202 = "_-IB"
 * @identifier _SafeCls_203 = "_-jz"
 * @identifier _SafeCls_204 = "_-ZN"
 * @identifier _SafeCls_205 = "_-eh"
 * @identifier _SafeCls_206 = "_-Hx"
 * @identifier _SafeCls_207 = "_-dH"
 * @identifier _SafeCls_208 = "_-IK"
 * @identifier _SafeCls_209 = "_-DZ"
 * @identifier _SafeCls_210 = "_-Z2"
 * @identifier _SafeCls_211 = "_-4W"
 * @identifier _SafeCls_212 = "_-1e"
 * @identifier _SafeCls_213 = "_-k5"
 * @identifier _SafeCls_214 = "_-Qz"
 * @identifier _SafeCls_215 = "_-DP"
 * @identifier _SafeCls_216 = "_-30"
 * @identifier _SafeCls_217 = "_-hi"
 * @identifier _SafeCls_218 = "_-Jd"
 * @identifier _SafeCls_219 = "_-Rs"
 * @identifier _SafeCls_220 = "_-Hy"
 * @identifier _SafeCls_221 = "_-I5"
 * @identifier _SafeCls_222 = "_-MP"
 * @identifier _SafeCls_223 = "_-Sz"
 * @identifier _SafeCls_225 = "_-GO"
 * @identifier _SafeCls_226 = "_-cb"
 * @identifier _SafeCls_227 = "_-n"
 * @identifier _SafeCls_228 = "_-44"
 * @identifier _SafeCls_229 = "_-4y"
 * @identifier _SafeCls_230 = "_-ES"
 * @identifier _SafeCls_231 = "_-GB"
 * @identifier _SafeCls_232 = "_-V0"
 * @identifier _SafeCls_233 = "_-Gt"
 * @identifier _SafeCls_234 = "_-TL"
 * @identifier _SafeCls_235 = "_-RH"
 * @identifier _SafeCls_236 = "_-R4"
 * @identifier _SafeCls_237 = "_-Zv"
 * @identifier _SafeCls_238 = "_-P3"
 * @identifier _SafeCls_239 = "_-Y1"
 * @identifier _SafeCls_240 = "_-I6"
 * @identifier _SafeCls_241 = "_-cx"
 * @identifier _SafeCls_242 = "_-Ig"
 * @identifier _SafeCls_243 = "_-Rr"
 * @identifier _SafeCls_244 = "_-Qg"
 * @identifier _SafeCls_245 = "_-fV"
 * @identifier _SafeCls_246 = "_-CG"
 * @identifier _SafeCls_247 = "_-Fj"
 * @identifier _SafeCls_248 = "_-6c"
 * @identifier _SafeCls_249 = "_-JR"
 * @identifier _SafeCls_250 = "_-HV"
 * @identifier _SafeCls_251 = "_-U1"
 * @identifier _SafeCls_252 = "_-k8"
 * @identifier _SafeCls_253 = "_-VF"
 * @identifier _SafeCls_254 = "_-jV"
 * @identifier _SafeCls_255 = "_-hX"
 * @identifier _SafeCls_256 = "_-5u"
 * @identifier _SafeCls_257 = "_-6C"
 * @identifier _SafeCls_258 = "_-H6"
 * @identifier _SafeCls_259 = "_-AN"
 * @identifier _SafeCls_260 = "_-2D"
 * @identifier _SafeCls_262 = "_-R7"
 * @identifier _SafeCls_263 = "_-D1"
 * @identifier _SafePkg_1 = "_-8Z"
 * @identifier _SafePkg_3 = "_-7L"
 * @identifier _SafePkg_5 = "_-Er"
 * @identifier _SafePkg_7 = "_-6y"
 * @identifier _SafePkg_8 = "_-bY"
 * @identifier _SafePkg_9 = "_-P8"
 * @identifier _SafePkg_13 = "_-DG"
 * @identifier _SafePkg_14 = "_-hj"
 * @identifier _SafePkg_19 = "_-hW"
 * @identifier _SafePkg_20 = "_-9k"
 * @identifier _SafePkg_28 = "_-RM"
 * @identifier _SafePkg_31 = "_-6z"
 * @identifier _SafePkg_42 = "_-fg"
 * @identifier _SafePkg_53 = "_-59"
 * @identifier _SafePkg_67 = "_-Gn"
 * @identifier _SafePkg_85 = "_-c4"
 * @identifier _SafePkg_87 = "_-6f"
 * @identifier _SafePkg_118 = "_-S1"
 * @identifier _SafePkg_120 = "_-Dq"
 * @identifier _SafePkg_129 = "_-L6"
 * @identifier _SafePkg_168 = "_-SB"
 * @identifier _SafePkg_171 = "_-YL"
 * @identifier _SafePkg_176 = "_-AB"
 * @identifier _SafePkg_183 = "_-CN"
 * @identifier _SafePkg_261 = "_-Wd"
 * @identifier _SafePkg_0 = "_-4U"
 * @identifier _SafeStr_267 = "_-55"
 * @identifier _SafeStr_270 = "_-f2"
 * @identifier _SafeStr_271 = "_-Jo"
 * @identifier _SafeStr_272 = "_-Sc"
 * @identifier _SafeStr_273 = "_-CV"
 * @identifier _SafeStr_276 = "_-Vq"
 * @identifier _SafeStr_281 = "_-8f"
 * @identifier _SafeStr_284 = "_-Xl"
 * @identifier _SafeStr_288 = "_-Is"
 * @identifier _SafeStr_289 = "_-7K"
 * @identifier _SafeStr_290 = "_-j1"
 * @identifier _SafeStr_292 = "_-2f"
 * @identifier _SafeStr_294 = "_-Vh"
 * @identifier _SafeStr_301 = "_-VT"
 * @identifier _SafeStr_310 = "_-Pk"
 * @identifier _SafeStr_312 = "_-16"
 * @identifier _SafeStr_314 = "_-NA"
 * @identifier _SafeStr_316 = "_-Eu"
 * @identifier _SafeStr_325 = "_-gu"
 * @identifier _SafeStr_327 = "_-c3"
 * @identifier _SafeStr_330 = "_-dh"
 * @identifier _SafeStr_334 = "_-Te"
 * @identifier _SafeStr_336 = "_-Ui"
 * @identifier _SafeStr_339 = "_-49"
 * @identifier _SafeStr_340 = "_-k"
 * @identifier _SafeStr_342 = "_-Uj"
 * @identifier _SafeStr_343 = "_-Qu"
 * @identifier _SafeStr_344 = "_-5S"
 * @identifier _SafeStr_347 = "_-TB"
 * @identifier _SafeStr_349 = "_-O9"
 * @identifier _SafeStr_355 = "_-XF"
 * @identifier _SafeStr_358 = "_-2h"
 * @identifier _SafeStr_360 = "_-BS"
 * @identifier _SafeStr_361 = "_-fi"
 * @identifier _SafeStr_362 = "_-5"
 * @identifier _SafeStr_363 = "_-XR"
 * @identifier _SafeStr_365 = "_-QO"
 * @identifier _SafeStr_372 = "_-fp"
 * @identifier _SafeStr_373 = "_-XD"
 * @identifier _SafeStr_377 = "_-QC"
 * @identifier _SafeStr_380 = "_-7a"
 * @identifier _SafeStr_381 = "_-2x"
 * @identifier _SafeStr_382 = "_-S0"
 * @identifier _SafeStr_386 = "_-8V"
 * @identifier _SafeStr_389 = "_-8o"
 * @identifier _SafeStr_406 = "_-hk"
 * @identifier _SafeStr_408 = "_-Ug"
 * @identifier _SafeStr_410 = "_-BI"
 * @identifier _SafeStr_424 = "_-KM"
 * @identifier _SafeStr_428 = "_-jr"
 * @identifier _SafeStr_430 = "_-Qh"
 * @identifier _SafeStr_433 = "_-eq"
 * @identifier _SafeStr_435 = "_-FE"
 * @identifier _SafeStr_437 = "_-4O"
 * @identifier _SafeStr_441 = "_-9z"
 * @identifier _SafeStr_451 = "_-Fy"
 * @identifier _SafeStr_459 = "_-CA"
 * @identifier _SafeStr_464 = "_-gS"
 * @identifier _SafeStr_469 = "_-B5"
 * @identifier _SafeStr_470 = "_-Ux"
 * @identifier _SafeStr_477 = "_-NO"
 * @identifier _SafeStr_479 = "_-PX"
 * @identifier _SafeStr_480 = "_-bg"
 * @identifier _SafeStr_482 = "_-J6"
 * @identifier _SafeStr_486 = "_-as"
 * @identifier _SafeStr_487 = "_-6"
 * @identifier _SafeStr_490 = "_-Eh"
 * @identifier _SafeStr_492 = "_-jq"
 * @identifier _SafeStr_502 = "_-gj"
 * @identifier _SafeStr_503 = "_-Bl"
 * @identifier _SafeStr_507 = "_-a3"
 * @identifier _SafeStr_513 = "_-Tf"
 * @identifier _SafeStr_515 = "_-66"
 * @identifier _SafeStr_519 = "_-MJ"
 * @identifier _SafeStr_520 = "_-Xq"
 * @identifier _SafeStr_522 = "_-hg"
 * @identifier _SafeStr_524 = "_-Zn"
 * @identifier _SafeStr_528 = "_-jR"
 * @identifier _SafeStr_532 = "_-68"
 * @identifier _SafeStr_535 = "_-cJ"
 * @identifier _SafeStr_536 = "_-Jl"
 * @identifier _SafeStr_540 = "_-Zm"
 * @identifier _SafeStr_542 = "_-cS"
 * @identifier _SafeStr_545 = "_-RS"
 * @identifier _SafeStr_546 = "_-Ar"
 * @identifier _SafeStr_553 = "_-Eg"
 * @identifier _SafeStr_558 = "_-aH"
 * @identifier _SafeStr_559 = "_-4D"
 * @identifier _SafeStr_561 = "_-Ae"
 * @identifier _SafeStr_562 = "_-fl"
 * @identifier _SafeStr_570 = "_-Bc"
 * @identifier _SafeStr_571 = "_-91"
 * @identifier _SafeStr_574 = "_-X8"
 * @identifier _SafeStr_575 = "_-Yx"
 * @identifier _SafeStr_577 = "_-Vo"
 * @identifier _SafeStr_578 = "_-I2"
 * @identifier _SafeStr_579 = "_-92"
 * @identifier _SafeStr_581 = "_-Nu"
 * @identifier _SafeStr_582 = "_-Ol"
 * @identifier _SafeStr_583 = "_-4Y"
 * @identifier _SafeStr_585 = "_-7S"
 * @identifier _SafeStr_589 = "_-WM"
 * @identifier _SafeStr_592 = "_-Ef"
 * @identifier _SafeStr_593 = "_-4B"
 * @identifier _SafeStr_594 = "_-gR"
 * @identifier _SafeStr_596 = "_-Rc"
 * @identifier _SafeStr_599 = "_-d5"
 * @identifier _SafeStr_605 = "_-jc"
 * @identifier _SafeStr_607 = "_-2e"
 * @identifier _SafeStr_608 = "_-jg"
 * @identifier _SafeStr_610 = "_-Lb"
 * @identifier _SafeStr_611 = "_-Ld"
 * @identifier _SafeStr_612 = "_-FB"
 * @identifier _SafeStr_622 = "_-dL"
 * @identifier _SafeStr_625 = "_-M5"
 * @identifier _SafeStr_627 = "_-7M"
 * @identifier _SafeStr_629 = "_-Gy"
 * @identifier _SafeStr_631 = "_-UL"
 * @identifier _SafeStr_635 = "_-Fw"
 * @identifier _SafeStr_638 = "_-Ml"
 * @identifier _SafeStr_639 = "_-K3"
 * @identifier _SafeStr_641 = "_-Fa"
 * @identifier _SafeStr_645 = "_-el"
 * @identifier _SafeStr_649 = "_-SA"
 * @identifier _SafeStr_652 = "_-Ag"
 * @identifier _SafeStr_654 = "_-T1"
 * @identifier _SafeStr_656 = "_-Uu"
 * @identifier _SafeStr_661 = "_-JP"
 * @identifier _SafeStr_669 = "_-Ia"
 * @identifier _SafeStr_673 = "_-PD"
 * @identifier _SafeStr_675 = "_-Vn"
 * @identifier _SafeStr_679 = "_-5r"
 * @identifier _SafeStr_680 = "_-5c"
 * @identifier _SafeStr_682 = "_-BV"
 * @identifier _SafeStr_683 = "_-fD"
 * @identifier _SafeStr_687 = "_-Zk"
 * @identifier _SafeStr_688 = "_-WC"
 * @identifier _SafeStr_689 = "_-a7"
 * @identifier _SafeStr_690 = "_-W8"
 * @identifier _SafeStr_701 = "_-F0"
 * @identifier _SafeStr_704 = "_-1w"
 * @identifier _SafeStr_705 = "_-57"
 * @identifier _SafeStr_709 = "_-e5"
 * @identifier _SafeStr_711 = "_-7G"
 * @identifier _SafeStr_712 = "_-Ei"
 * @identifier _SafeStr_713 = "_-Cv"
 * @identifier _SafeStr_715 = "_-gq"
 * @identifier _SafeStr_721 = "_-6O"
 * @identifier _SafeStr_723 = "_-Re"
 * @identifier _SafeStr_725 = "_-Fs"
 * @identifier _SafeStr_726 = "_-Dd"
 * @identifier _SafeStr_732 = "_-OK"
 * @identifier _SafeStr_733 = "_-Pw"
 * @identifier _SafeStr_735 = "_-N0"
 * @identifier _SafeStr_736 = "_-QX"
 * @identifier _SafeStr_737 = "_-LL"
 * @identifier _SafeStr_741 = "_-QJ"
 * @identifier _SafeStr_742 = "_-ef"
 * @identifier _SafeStr_744 = "_-8u"
 * @identifier _SafeStr_746 = "_-ji"
 * @identifier _SafeStr_747 = "_-Pn"
 * @identifier _SafeStr_748 = "_-1t"
 * @identifier _SafeStr_750 = "_-U9"
 * @identifier _SafeStr_754 = "_-An"
 * @identifier _SafeStr_755 = "_-GH"
 * @identifier _SafeStr_758 = "_-D"
 * @identifier _SafeStr_759 = "_-7u"
 * @identifier _SafeStr_763 = "_-KR"
 * @identifier _SafeStr_764 = "_-IL"
 * @identifier _SafeStr_770 = "_-YW"
 * @identifier _SafeStr_772 = "_-ZI"
 * @identifier _SafeStr_775 = "_-d7"
 * @identifier _SafeStr_779 = "_-Ow"
 * @identifier _SafeStr_781 = "_-9w"
 * @identifier _SafeStr_782 = "_-Kq"
 * @identifier _SafeStr_784 = "_-CJ"
 * @identifier _SafeStr_786 = "_-NS"
 * @identifier _SafeStr_787 = "_-TG"
 * @identifier _SafeStr_788 = "_-ak"
 * @identifier _SafeStr_790 = "_-51"
 * @identifier _SafeStr_791 = "_-H1"
 * @identifier _SafeStr_800 = "_-9I"
 * @identifier _SafeStr_805 = "_-MV"
 * @identifier _SafeStr_806 = "_-UB"
 * @identifier _SafeStr_810 = "_-BN"
 * @identifier _SafeStr_812 = "_-7F"
 * @identifier _SafeStr_814 = "_-8c"
 * @identifier _SafeStr_817 = "_-Lj"
 * @identifier _SafeStr_819 = "_-B9"
 * @identifier _SafeStr_822 = "_-bn"
 * @identifier _SafeStr_823 = "_-Cc"
 * @identifier _SafeStr_825 = "_-V2"
 * @identifier _SafeStr_830 = "_-Gs"
 * @identifier _SafeStr_831 = "_-CC"
 * @identifier _SafeStr_832 = "_-R9"
 * @identifier _SafeStr_833 = "_-Pf"
 * @identifier _SafeStr_834 = "_-eZ"
 * @identifier _SafeStr_835 = "_-5J"
 * @identifier _SafeStr_836 = "_-f7"
 * @identifier _SafeStr_837 = "_-5E"
 * @identifier _SafeStr_838 = "_-3T"
 * @identifier _SafeStr_842 = "_-Zc"
 * @identifier _SafeStr_844 = "_-Co"
 * @identifier _SafeStr_845 = "_-aV"
 * @identifier _SafeStr_846 = "_-co"
 * @identifier _SafeStr_850 = "_-g8"
 * @identifier _SafeStr_851 = "_-ei"
 * @identifier _SafeStr_858 = "_-BU"
 * @identifier _SafeStr_862 = "_-4a"
 * @identifier _SafeStr_863 = "_-5D"
 * @identifier _SafeStr_866 = "_-aK"
 * @identifier _SafeStr_867 = "_-gV"
 * @identifier _SafeStr_869 = "_-Tj"
 * @identifier _SafeStr_871 = "_-7Z"
 * @identifier _SafeStr_873 = "_-if"
 * @identifier _SafeStr_875 = "_-ZS"
 * @identifier _SafeStr_877 = "_-1x"
 * @identifier _SafeStr_879 = "_-ja"
 * @identifier _SafeStr_884 = "_-E1"
 * @identifier _SafeStr_885 = "_-jf"
 * @identifier _SafeStr_887 = "_-2V"
 * @identifier _SafeStr_892 = "_-Lc"
 * @identifier _SafeStr_894 = "_-bo"
 * @identifier _SafeStr_896 = "_-TN"
 * @identifier _SafeStr_899 = "_-Xa"
 * @identifier _SafeStr_900 = "_-Ju"
 * @identifier _SafeStr_902 = "_-KK"
 * @identifier _SafeStr_903 = "_-TC"
 * @identifier _SafeStr_904 = "_-gX"
 * @identifier _SafeStr_909 = "_-jP"
 * @identifier _SafeStr_912 = "_-HX"
 * @identifier _SafeStr_913 = "_-a1"
 * @identifier _SafeStr_915 = "_-Z4"
 * @identifier _SafeStr_916 = "_-dX"
 * @identifier _SafeStr_920 = "_-8t"
 * @identifier _SafeStr_921 = "_-3n"
 * @identifier _SafeStr_923 = "_-LE"
 * @identifier _SafeStr_925 = "_-dr"
 * @identifier _SafeStr_927 = "_-Py"
 * @identifier _SafeStr_932 = "_-a0"
 * @identifier _SafeStr_934 = "_-KT"
 * @identifier _SafeStr_936 = "_-CT"
 * @identifier _SafeStr_942 = "_-Bm"
 * @identifier _SafeStr_943 = "_-1H"
 * @identifier _SafeStr_946 = "_-dn"
 * @identifier _SafeStr_947 = "_-3B"
 * @identifier _SafeStr_952 = "_-67"
 * @identifier _SafeStr_955 = "_-H5"
 * @identifier _SafeStr_956 = "_-G9"
 * @identifier _SafeStr_959 = "_-5l"
 * @identifier _SafeStr_963 = "_-7V"
 * @identifier _SafeStr_964 = "_-4t"
 * @identifier _SafeStr_969 = "_-LH"
 * @identifier _SafeStr_970 = "_-4m"
 * @identifier _SafeStr_971 = "_-hy"
 * @identifier _SafeStr_974 = "_-eS"
 * @identifier _SafeStr_975 = "_-jO"
 * @identifier _SafeStr_976 = "_-Bf"
 * @identifier _SafeStr_979 = "_-EG"
 * @identifier _SafeStr_981 = "_-Ty"
 * @identifier _SafeStr_987 = "_-5g"
 * @identifier _SafeStr_995 = "_-Oh"
 * @identifier _SafeStr_998 = "_-L0"
 * @identifier _SafeStr_999 = "_-fx"
 * @identifier _SafeStr_1000 = "_-7A"
 * @identifier _SafeStr_1003 = "_-Cw"
 * @identifier _SafeStr_1011 = "_-9Z"
 * @identifier _SafeStr_1012 = "_-Li"
 * @identifier _SafeStr_1013 = "_-79"
 * @identifier _SafeStr_1014 = "_-Pe"
 * @identifier _SafeStr_1016 = "_-MZ"
 * @identifier _SafeStr_1023 = "_-W9"
 * @identifier _SafeStr_1024 = "_-8k"
 * @identifier _SafeStr_1026 = "_-Mp"
 * @identifier _SafeStr_1029 = "_-A"
 * @identifier _SafeStr_1030 = "_-Le"
 * @identifier _SafeStr_1032 = "_-8m"
 * @identifier _SafeStr_1036 = "_-Rz"
 * @identifier _SafeStr_1037 = "_-Ej"
 * @identifier _SafeStr_1038 = "_-ez"
 * @identifier _SafeStr_1041 = "_-SH"
 * @identifier _SafeStr_1045 = "_-HT"
 * @identifier _SafeStr_1047 = "_-ZU"
 * @identifier _SafeStr_1049 = "_-hE"
 * @identifier _SafeStr_1050 = "_-Kr"
 * @identifier _SafeStr_1051 = "_-Ke"
 * @identifier _SafeStr_1052 = "_-5M"
 * @identifier _SafeStr_1053 = "_-13"
 * @identifier _SafeStr_1057 = "_-3t"
 * @identifier _SafeStr_1060 = "_-1U"
 * @identifier _SafeStr_1061 = "_-40"
 * @identifier _SafeStr_1065 = "_-Ak"
 * @identifier _SafeStr_1066 = "_-2a"
 * @identifier _SafeStr_1068 = "_-7Y"
 * @identifier _SafeStr_1070 = "_-Vd"
 * @identifier _SafeStr_1073 = "_-14"
 * @identifier _SafeStr_1076 = "_-Vj"
 * @identifier _SafeStr_1077 = "_-RU"
 * @identifier _SafeStr_1078 = "_-9A"
 * @identifier _SafeStr_1083 = "_-4J"
 * @identifier _SafeStr_1084 = "_-69"
 * @identifier _SafeStr_1087 = "_-Zo"
 * @identifier _SafeStr_1088 = "_-UZ"
 * @identifier _SafeStr_1090 = "_-SM"
 * @identifier _SafeStr_1091 = "_-GE"
 * @identifier _SafeStr_1092 = "_-Aw"
 * @identifier _SafeStr_1093 = "_-IG"
 * @identifier _SafeStr_1097 = "_-j2"
 * @identifier _SafeStr_1104 = "_-SQ"
 * @identifier _SafeStr_1114 = "_-WR"
 * @identifier _SafeStr_1115 = "_-gU"
 * @identifier _SafeStr_1116 = "_-JX"
 * @identifier _SafeStr_1118 = "_-N2"
 * @identifier _SafeStr_1119 = "_-6Z"
 * @identifier _SafeStr_1120 = "_-2w"
 * @identifier _SafeStr_1122 = "_-9j"
 * @identifier _SafeStr_1127 = "_-ID"
 * @identifier _SafeStr_1130 = "_-Oj"
 * @identifier _SafeStr_1133 = "_-Pz"
 * @identifier _SafeStr_1135 = "_-hL"
 * @identifier _SafeStr_1136 = "_-fr"
 * @identifier _SafeStr_1137 = "_-Qs"
 * @identifier _SafeStr_1139 = "_-Hq"
 * @identifier _SafeStr_1144 = "_-XL"
 * @identifier _SafeStr_1145 = "_-gg"
 * @identifier _SafeStr_1148 = "_-LJ"
 * @identifier _SafeStr_1149 = "_-VA"
 * @identifier _SafeStr_1151 = "_-5T"
 * @identifier _SafeStr_1154 = "_-Rp"
 * @identifier _SafeStr_1156 = "_-c7"
 * @identifier _SafeStr_1158 = "_-KG"
 * @identifier _SafeStr_1159 = "_-aY"
 * @identifier _SafeStr_1162 = "_-W1"
 * @identifier _SafeStr_1163 = "_-a2"
 * @identifier _SafeStr_1164 = "_-A8"
 * @identifier _SafeStr_1165 = "_-8x"
 * @identifier _SafeStr_1166 = "_-bS"
 * @identifier _SafeStr_1167 = "_-ev"
 * @identifier _SafeStr_1170 = "_-aE"
 * @identifier _SafeStr_1171 = "_-QB"
 * @identifier _SafeStr_1172 = "_-37"
 * @identifier _SafeStr_1175 = "_-bN"
 * @identifier _SafeStr_1176 = "_-gr"
 * @identifier _SafeStr_1177 = "_-3d"
 * @identifier _SafeStr_1178 = "_-fB"
 * @identifier _SafeStr_1179 = "_-VK"
 * @identifier _SafeStr_1181 = "_-3Z"
 * @identifier _SafeStr_1183 = "_-BH"
 * @identifier _SafeStr_1185 = "_-Q6"
 * @identifier _SafeStr_1186 = "_-SX"
 * @identifier _SafeStr_1187 = "_-3N"
 * @identifier _SafeStr_1189 = "_-6G"
 * @identifier _SafeStr_1190 = "_-Xw"
 * @identifier _SafeStr_1191 = "_-VD"
 * @identifier _SafeStr_1192 = "_-ch"
 * @identifier _SafeStr_1200 = "_-js"
 * @identifier _SafeStr_1203 = "_-6o"
 * @identifier _SafeStr_1205 = "_-fN"
 * @identifier _SafeStr_1209 = "_-aI"
 * @identifier _SafeStr_1210 = "_-U8"
 * @identifier _SafeStr_1211 = "_-Yy"
 * @identifier _SafeStr_1212 = "_-4i"
 * @identifier _SafeStr_1217 = "_-bW"
 * @identifier _SafeStr_1218 = "_-KA"
 * @identifier _SafeStr_1219 = "_-RP"
 * @identifier _SafeStr_1221 = "_-O6"
 * @identifier _SafeStr_1225 = "_-Bz"
 * @identifier _SafeStr_1227 = "_-Sr"
 * @identifier _SafeStr_1228 = "_-Xp"
 * @identifier _SafeStr_1229 = "_-AL"
 * @identifier _SafeStr_1230 = "_-iN"
 * @identifier _SafeStr_1233 = "_-Q2"
 * @identifier _SafeStr_1237 = "_-2M"
 * @identifier _SafeStr_1238 = "_-fd"
 * @identifier _SafeStr_1239 = "_-TT"
 * @identifier _SafeStr_1241 = "_-Qv"
 * @identifier _SafeStr_1248 = "_-8M"
 * @identifier _SafeStr_1250 = "_-UF"
 * @identifier _SafeStr_1251 = "_-ZW"
 * @identifier _SafeStr_1253 = "_-Mz"
 * @identifier _SafeStr_1257 = "_-Xe"
 * @identifier _SafeStr_1260 = "_-1l"
 * @identifier _SafeStr_1263 = "_-dd"
 * @identifier _SafeStr_1265 = "_-du"
 * @identifier _SafeStr_1266 = "_-8L"
 * @identifier _SafeStr_1269 = "_-93"
 * @identifier _SafeStr_1271 = "_-Lk"
 * @identifier _SafeStr_1272 = "_-M8"
 * @identifier _SafeStr_1275 = "_-NI"
 * @identifier _SafeStr_1276 = "_-Yt"
 * @identifier _SafeStr_1277 = "_-cf"
 * @identifier _SafeStr_1279 = "_-k9"
 * @identifier _SafeStr_1284 = "_-M6"
 * @identifier _SafeStr_1289 = "_-24"
 * @identifier _SafeStr_1290 = "_-gs"
 * @identifier _SafeStr_1291 = "_-Oo"
 * @identifier _SafeStr_1296 = "_-b0"
 * @identifier _SafeStr_1297 = "_-Ww"
 * @identifier _SafeStr_1300 = "_-7C"
 * @identifier _SafeStr_1303 = "_-Dv"
 * @identifier _SafeStr_1305 = "_-45"
 * @identifier _SafeStr_1313 = "_-Nr"
 * @identifier _SafeStr_1314 = "_-2U"
 * @identifier _SafeStr_1317 = "_-9y"
 * @identifier _SafeStr_1318 = "_-NJ"
 * @identifier _SafeStr_1322 = "_-Gm"
 * @identifier _SafeStr_1325 = "_-jF"
 * @identifier _SafeStr_1326 = "_-LI"
 * @identifier _SafeStr_1332 = "_-ex"
 * @identifier _SafeStr_1333 = "_-T2"
 * @identifier _SafeStr_1334 = "_-XY"
 * @identifier _SafeStr_1336 = "_-GZ"
 * @identifier _SafeStr_1338 = "_-9M"
 * @identifier _SafeStr_1339 = "_-TS"
 * @identifier _SafeStr_1342 = "_-FO"
 * @identifier _SafeStr_1344 = "_-Ue"
 * @identifier _SafeStr_1348 = "_-X1"
 * @identifier _SafeStr_1354 = "_-b7"
 * @identifier _SafeStr_1355 = "_-im"
 * @identifier _SafeStr_1356 = "_-7D"
 * @identifier _SafeStr_1358 = "_-Hu"
 * @identifier _SafeStr_1359 = "_-fo"
 * @identifier _SafeStr_1360 = "_-BA"
 * @identifier _SafeStr_1366 = "_-cP"
 * @identifier _SafeStr_1368 = "_-GY"
 * @identifier _SafeStr_1369 = "_-9S"
 * @identifier _SafeStr_1374 = "_-LU"
 * @identifier _SafeStr_1376 = "_-I7"
 * @identifier _SafeStr_1380 = "_-aQ"
 * @identifier _SafeStr_1381 = "_-Gu"
 * @identifier _SafeStr_1383 = "_-E5"
 * @identifier _SafeStr_1384 = "_-M1"
 * @identifier _SafeStr_1387 = "_-ia"
 * @identifier _SafeStr_1390 = "_-5q"
 * @identifier _SafeStr_1391 = "_-bw"
 * @identifier _SafeStr_1395 = "_-RY"
 * @identifier _SafeStr_1399 = "_-Nt"
 * @identifier _SafeStr_1402 = "_-ft"
 * @identifier _SafeStr_1404 = "_-bv"
 * @identifier _SafeStr_1405 = "_-KD"
 * @identifier _SafeStr_1408 = "_-k3"
 * @identifier _SafeStr_1410 = "_-YR"
 * @identifier _SafeStr_1415 = "_-LO"
 * @identifier _SafeStr_1418 = "_-X2"
 * @identifier _SafeStr_1419 = "_-f0"
 * @identifier _SafeStr_1421 = "_-5v"
 * @identifier _SafeStr_1423 = "_-4v"
 * @identifier _SafeStr_1426 = "_-iK"
 * @identifier _SafeStr_1428 = "_-Pc"
 * @identifier _SafeStr_1429 = "_-gQ"
 * @identifier _SafeStr_1431 = "_-B8"
 * @identifier _SafeStr_1432 = "_-Im"
 * @identifier _SafeStr_1434 = "_-gL"
 * @identifier _SafeStr_1453 = "_-Uo"
 * @identifier _SafeStr_1454 = "_-hp"
 * @identifier _SafeStr_1455 = "_-PH"
 * @identifier _SafeStr_1460 = "_-Nv"
 * @identifier _SafeStr_1461 = "_-K6"
 * @identifier _SafeStr_1462 = "_-Do"
 * @identifier _SafeStr_1465 = "_-PG"
 * @identifier _SafeStr_1469 = "_-Fn"
 * @identifier _SafeStr_1470 = "_-Ha"
 * @identifier _SafeStr_1474 = "_-6l"
 * @identifier _SafeStr_1475 = "_-hv"
 * @identifier _SafeStr_1477 = "_-gA"
 * @identifier _SafeStr_1478 = "_-Lp"
 * @identifier _SafeStr_1480 = "_-JF"
 * @identifier _SafeStr_1484 = "_-Sn"
 * @identifier _SafeStr_1489 = "_-cY"
 * @identifier _SafeStr_1490 = "_-cn"
 * @identifier _SafeStr_1497 = "_-OG"
 * @identifier _SafeStr_1502 = "_-27"
 * @identifier _SafeStr_1503 = "_-Nn"
 * @identifier _SafeStr_1506 = "_-F6"
 * @identifier _SafeStr_1507 = "_-DQ"
 * @identifier _SafeStr_1508 = "_-KF"
 * @identifier _SafeStr_1510 = "_-Qt"
 * @identifier _SafeStr_1514 = "_-bt"
 * @identifier _SafeStr_1520 = "_-iu"
 * @identifier _SafeStr_1522 = "_-CR"
 * @identifier _SafeStr_1523 = "_-CQ"
 * @identifier _SafeStr_1525 = "_-Nc"
 * @identifier _SafeStr_1530 = "_-PE"
 * @identifier _SafeStr_1533 = "_-VV"
 * @identifier _SafeStr_1534 = "_-GG"
 * @identifier _SafeStr_1537 = "_-D8"
 * @identifier _SafeStr_1539 = "_-Sa"
 * @identifier _SafeStr_1541 = "_-GD"
 * @identifier _SafeStr_1544 = "_-Vs"
 * @identifier _SafeStr_1546 = "_-iH"
 * @identifier _SafeStr_1548 = "_-Ay"
 * @identifier _SafeStr_1550 = "_-eE"
 * @identifier _SafeStr_1551 = "_-T4"
 * @identifier _SafeStr_1554 = "_-9D"
 * @identifier _SafeStr_1558 = "_-UC"
 * @identifier _SafeStr_1559 = "_-c0"
 * @identifier _SafeStr_1562 = "_-Cn"
 * @identifier _SafeStr_1566 = "_-WB"
 * @identifier _SafeStr_1571 = "_-KI"
 * @identifier _SafeStr_1573 = "_-Lv"
 * @identifier _SafeStr_1577 = "_-bF"
 * @identifier _SafeStr_1578 = "_-Xk"
 * @identifier _SafeStr_1579 = "_-DJ"
 * @identifier _SafeStr_1583 = "_-Zz"
 * @identifier _SafeStr_1588 = "_-is"
 * @identifier _SafeStr_1589 = "_-Wz"
 * @identifier _SafeStr_1592 = "_-8H"
 * @identifier _SafeStr_1597 = "_-fv"
 * @identifier _SafeStr_1599 = "_-ZO"
 * @identifier _SafeStr_1601 = "_-Ng"
 * @identifier _SafeStr_1605 = "_-Cq"
 * @identifier _SafeStr_1607 = "_-2n"
 * @identifier _SafeStr_1608 = "_-i7"
 * @identifier _SafeStr_1609 = "_-bP"
 * @identifier _SafeStr_1611 = "_-VB"
 * @identifier _SafeStr_1612 = "_-ha"
 * @identifier _SafeStr_1613 = "_-iM"
 * @identifier _SafeStr_1615 = "_-g2"
 * @identifier _SafeStr_1616 = "_-3J"
 * @identifier _SafeStr_1621 = "_-Kz"
 * @identifier _SafeStr_1624 = "_-bL"
 * @identifier _SafeStr_1625 = "_-R8"
 * @identifier _SafeStr_1626 = "_-Zt"
 * @identifier _SafeStr_1628 = "_-HE"
 * @identifier _SafeStr_1630 = "_-Iq"
 * @identifier _SafeStr_1634 = "_-VX"
 * @identifier _SafeStr_1638 = "_-Fm"
 * @identifier _SafeStr_1642 = "_-gJ"
 * @identifier _SafeStr_1644 = "_-dg"
 * @identifier _SafeStr_1646 = "_-jI"
 * @identifier _SafeStr_1650 = "_-cC"
 * @identifier _SafeStr_1655 = "_-J1"
 * @identifier _SafeStr_1656 = "_-cR"
 * @identifier _SafeStr_1657 = "_-7c"
 * @identifier _SafeStr_1663 = "_-LX"
 * @identifier _SafeStr_1666 = "_-aw"
 * @identifier _SafeStr_1669 = "_-W4"
 * @identifier _SafeStr_1671 = "_-jQ"
 * @identifier _SafeStr_1675 = "_-33"
 * @identifier _SafeStr_1676 = "_-cr"
 * @identifier _SafeStr_1677 = "_-T9"
 * @identifier _SafeStr_1684 = "_-Z8"
 * @identifier _SafeStr_1685 = "_-kB"
 * @identifier _SafeStr_1688 = "_-4g"
 * @identifier _SafeStr_1690 = "_-hA"
 * @identifier _SafeStr_1691 = "_-Lr"
 * @identifier _SafeStr_1692 = "_-a6"
 * @identifier _SafeStr_1695 = "_-Uw"
 * @identifier _SafeStr_1698 = "_-FZ"
 * @identifier _SafeStr_1699 = "_-3U"
 * @identifier _SafeStr_1700 = "_-Yp"
 * @identifier _SafeStr_1701 = "_-NQ"
 * @identifier _SafeStr_1702 = "_-cy"
 * @identifier _SafeStr_1703 = "_-XZ"
 * @identifier _SafeStr_1705 = "_-YK"
 * @identifier _SafeStr_1706 = "_-6Y"
 * @identifier _SafeStr_1708 = "_-Of"
 * @identifier _SafeStr_1709 = "_-Lq"
 * @identifier _SafeStr_1710 = "_-7f"
 * @identifier _SafeStr_1711 = "_-32"
 * @identifier _SafeStr_1716 = "_-ZP"
 * @identifier _SafeStr_1722 = "_-Kt"
 * @identifier _SafeStr_1723 = "_-5W"
 * @identifier _SafeStr_1724 = "_-YA"
 * @identifier _SafeStr_1730 = "_-WN"
 * @identifier _SafeStr_1736 = "_-WA"
 * @identifier _SafeStr_1738 = "_-62"
 * @identifier _SafeStr_1741 = "_-SK"
 * @identifier _SafeStr_1745 = "_-DS"
 * @identifier _SafeStr_1748 = "_-JI"
 * @identifier _SafeStr_1749 = "_-1D"
 * @identifier _SafeStr_1751 = "_-TD"
 * @identifier _SafeStr_1752 = "_-1q"
 * @identifier _SafeStr_1755 = "_-db"
 * @identifier _SafeStr_1756 = "_-bZ"
 * @identifier _SafeStr_1759 = "_-Gw"
 * @identifier _SafeStr_1761 = "_-iS"
 * @identifier _SafeStr_1762 = "_-Wo"
 * @identifier _SafeStr_1763 = "_-4e"
 * @identifier _SafeStr_1764 = "_-YQ"
 * @identifier _SafeStr_1766 = "_-at"
 * @identifier _SafeStr_1767 = "_-jk"
 * @identifier _SafeStr_1770 = "_-ai"
 * @identifier _SafeStr_1772 = "_-5x"
 * @identifier _SafeStr_1774 = "_-bK"
 * @identifier _SafeStr_1775 = "_-Bq"
 * @identifier _SafeStr_1777 = "_-JU"
 * @identifier _SafeStr_1778 = "_-Yj"
 * @identifier _SafeStr_1779 = "_-gM"
 * @identifier _SafeStr_1782 = "_-OC"
 * @identifier _SafeStr_1785 = "_-UQ"
 * @identifier _SafeStr_1789 = "_-TA"
 * @identifier _SafeStr_1791 = "_-dI"
 * @identifier _SafeStr_1792 = "_-Bw"
 * @identifier _SafeStr_1794 = "_-Cl"
 * @identifier _SafeStr_1796 = "_-5i"
 * @identifier _SafeStr_1797 = "_-HR"
 * @identifier _SafeStr_1801 = "_-hn"
 * @identifier _SafeStr_1805 = "_-GU"
 * @identifier _SafeStr_1806 = "_-fP"
 * @identifier _SafeStr_1808 = "_-Tt"
 * @identifier _SafeStr_1809 = "_-eM"
 * @identifier _SafeStr_1810 = "_-cM"
 * @identifier _SafeStr_1811 = "_-N8"
 * @identifier _SafeStr_1815 = "_-H3"
 * @identifier _SafeStr_1818 = "_-Cx"
 * @identifier _SafeStr_1823 = "_-Mt"
 * @identifier _SafeStr_1830 = "_-ae"
 * @identifier _SafeStr_1831 = "_-p"
 * @identifier _SafeStr_1832 = "_-Cg"
 * @identifier _SafeStr_1834 = "_-JE"
 * @identifier _SafeStr_1838 = "_-AO"
 * @identifier _SafeStr_1841 = "_-cO"
 * @identifier _SafeStr_1844 = "_-Qi"
 * @identifier _SafeStr_1847 = "_-6s"
 * @identifier _SafeStr_1850 = "_-C9"
 * @identifier _SafeStr_1853 = "_-QY"
 * @identifier _SafeStr_1855 = "_-2b"
 * @identifier _SafeStr_1856 = "_-fk"
 * @identifier _SafeStr_1857 = "_-KW"
 * @identifier _SafeStr_1858 = "_-St"
 * @identifier _SafeStr_1863 = "_-Et"
 * @identifier _SafeStr_1866 = "_-I0"
 * @identifier _SafeStr_1867 = "_-Po"
 * @identifier _SafeStr_1868 = "_-4X"
 * @identifier _SafeStr_1869 = "_-UG"
 * @identifier _SafeStr_1870 = "_-by"
 * @identifier _SafeStr_1872 = "_-NP"
 * @identifier _SafeStr_1874 = "_-Me"
 * @identifier _SafeStr_1875 = "_-Td"
 * @identifier _SafeStr_1878 = "_-R1"
 * @identifier _SafeStr_1882 = "_-jv"
 * @identifier _SafeStr_1883 = "_-Kb"
 * @identifier _SafeStr_1884 = "_-Wf"
 * @identifier _SafeStr_1886 = "_-bz"
 * @identifier _SafeStr_1888 = "_-hF"
 * @identifier _SafeStr_1890 = "_-MQ"
 * @identifier _SafeStr_1892 = "_-Mf"
 * @identifier _SafeStr_1894 = "_-OY"
 * @identifier _SafeStr_1902 = "_-bE"
 * @identifier _SafeStr_1904 = "_-B3"
 * @identifier _SafeStr_1907 = "_-9T"
 * @identifier _SafeStr_1908 = "_-VY"
 * @identifier _SafeStr_1909 = "_-bH"
 * @identifier _SafeStr_1910 = "_-HW"
 * @identifier _SafeStr_1912 = "_-jb"
 * @identifier _SafeStr_1914 = "_-Dk"
 * @identifier _SafeStr_1918 = "_-9"
 * @identifier _SafeStr_1919 = "_-YN"
 * @identifier _SafeStr_1921 = "_-jp"
 * @identifier _SafeStr_1922 = "_-Z9"
 * @identifier _SafeStr_1924 = "_-dK"
 * @identifier _SafeStr_1927 = "_-J9"
 * @identifier _SafeStr_1928 = "_-5Y"
 * @identifier _SafeStr_1930 = "_-2v"
 * @identifier _SafeStr_1934 = "_-gh"
 * @identifier _SafeStr_1938 = "_-i1"
 * @identifier _SafeStr_1940 = "_-Jc"
 * @identifier _SafeStr_1944 = "_-Xg"
 * @identifier _SafeStr_1947 = "_-HA"
 * @identifier _SafeStr_1948 = "_-Mr"
 * @identifier _SafeStr_1950 = "_-Pa"
 * @identifier _SafeStr_1953 = "_-5F"
 * @identifier _SafeStr_1957 = "_-I4"
 * @identifier _SafeStr_1959 = "_-RO"
 * @identifier _SafeStr_1960 = "_-TW"
 * @identifier _SafeStr_1963 = "_-YG"
 * @identifier _SafeStr_1967 = "_-YD"
 * @identifier _SafeStr_1969 = "_-Dn"
 * @identifier _SafeStr_1970 = "_-hm"
 * @identifier _SafeStr_1971 = "_-K7"
 * @identifier _SafeStr_1972 = "_-h9"
 * @identifier _SafeStr_1974 = "_-Fp"
 * @identifier _SafeStr_1975 = "_-gi"
 * @identifier _SafeStr_1981 = "_-u"
 * @identifier _SafeStr_1987 = "_-bX"
 * @identifier _SafeStr_1988 = "_-61"
 * @identifier _SafeStr_1993 = "_-5I"
 * @identifier _SafeStr_1994 = "_-hx"
 * @identifier _SafeStr_1995 = "_-jE"
 * @identifier _SafeStr_1998 = "_-Be"
 * @identifier _SafeStr_2000 = "_-So"
 * @identifier _SafeStr_2002 = "_-hG"
 * @identifier _SafeStr_2004 = "_-AG"
 * @identifier _SafeStr_2006 = "_-GC"
 * @identifier _SafeStr_2007 = "_-E6"
 * @identifier _SafeStr_2008 = "_-64"
 * @identifier _SafeStr_2010 = "_-QK"
 * @identifier _SafeStr_2011 = "_-6L"
 * @identifier _SafeStr_2012 = "_-f9"
 * @identifier _SafeStr_2015 = "_-Gc"
 * @identifier _SafeStr_2017 = "_-1j"
 * @identifier _SafeStr_2019 = "_-h0"
 * @identifier _SafeStr_2021 = "_-5w"
 * @identifier _SafeStr_2022 = "_-83"
 * @identifier _SafeStr_2024 = "_-Nm"
 * @identifier _SafeStr_2028 = "_-Oi"
 * @identifier _SafeStr_2036 = "_-Yi"
 * @identifier _SafeStr_2037 = "_-Qk"
 * @identifier _SafeStr_2038 = "_-WQ"
 * @identifier _SafeStr_2041 = "_-Lf"
 * @identifier _SafeStr_2042 = "_-Nx"
 * @identifier _SafeStr_2044 = "_-Ul"
 * @identifier _SafeStr_2045 = "_-EA"
 * @identifier _SafeStr_2046 = "_-ad"
 * @identifier _SafeStr_2052 = "_-KH"
 * @identifier _SafeStr_2053 = "_-QH"
 * @identifier _SafeStr_2054 = "_-jm"
 * @identifier _SafeStr_2061 = "_-Oz"
 * @identifier _SafeStr_2062 = "_-jn"
 * @identifier _SafeStr_2063 = "_-Cy"
 * @identifier _SafeStr_2064 = "_-Em"
 * @identifier _SafeStr_2066 = "_-8z"
 * @identifier _SafeStr_2067 = "_-JW"
 * @identifier _SafeStr_2068 = "_-hs"
 * @identifier _SafeStr_2069 = "_-ds"
 * @identifier _SafeStr_2077 = "_-M4"
 * @identifier _SafeStr_2079 = "_-EN"
 * @identifier _SafeStr_2082 = "_-Mw"
 * @identifier _SafeStr_2083 = "_-VH"
 * @identifier _SafeStr_2084 = "_-9v"
 * @identifier _SafeStr_2087 = "_-LG"
 * @identifier _SafeStr_2090 = "_-NG"
 * @identifier _SafeStr_2091 = "_-gf"
 * @identifier _SafeStr_2092 = "_-ee"
 * @identifier _SafeStr_2101 = "_-Cm"
 * @identifier _SafeStr_2109 = "_-6e"
 * @identifier _SafeStr_2112 = "_-fC"
 * @identifier _SafeStr_2113 = "_-5k"
 * @identifier _SafeStr_2114 = "_-Ad"
 * @identifier _SafeStr_2115 = "_-4u"
 * @identifier _SafeStr_2117 = "_-Pm"
 * @identifier _SafeStr_2119 = "_-53"
 * @identifier _SafeStr_2121 = "_-Jh"
 * @identifier _SafeStr_2124 = "_-AJ"
 * @identifier _SafeStr_2125 = "_-Xu"
 * @identifier _SafeStr_2127 = "_-X9"
 * @identifier _SafeStr_2133 = "_-U5"
 * @identifier _SafeStr_2134 = "_-8A"
 * @identifier _SafeStr_2135 = "_-Kp"
 * @identifier _SafeStr_2137 = "_-fa"
 * @identifier _SafeStr_2138 = "_-43"
 * @identifier _SafeStr_2140 = "_-1T"
 * @identifier _SafeStr_2141 = "_-AI"
 * @identifier _SafeStr_2145 = "_-YO"
 * @identifier _SafeStr_2147 = "_-fc"
 * @identifier _SafeStr_2149 = "_-38"
 * @identifier _SafeStr_2154 = "_-Rk"
 * @identifier _SafeStr_2155 = "_-Or"
 * @identifier _SafeStr_2156 = "_-II"
 * @identifier _SafeStr_2157 = "_-HH"
 * @identifier _SafeStr_2160 = "_-Ce"
 * @identifier _SafeStr_2164 = "_-O"
 * @identifier _SafeStr_2166 = "_-JL"
 * @identifier _SafeStr_2167 = "_-U3"
 * @identifier _SafeStr_2169 = "_-V5"
 * @identifier _SafeStr_2171 = "_-gC"
 * @identifier _SafeStr_2176 = "_-ZH"
 * @identifier _SafeStr_2177 = "_-Uv"
 * @identifier _SafeStr_2179 = "_-bm"
 * @identifier _SafeStr_2180 = "_-b2"
 * @identifier _SafeStr_2181 = "_-2L"
 * @identifier _SafeStr_2182 = "_-As"
 * @identifier _SafeStr_2186 = "_-QW"
 * @identifier _SafeStr_2187 = "_-d6"
 * @identifier _SafeStr_2188 = "_-42"
 * @identifier _SafeStr_2190 = "_-Wu"
 * @identifier _SafeStr_2193 = "_-HY"
 * @identifier _SafeStr_2196 = "_-NL"
 * @identifier _SafeStr_2197 = "_-96"
 * @identifier _SafeStr_2200 = "_-Fq"
 * @identifier _SafeStr_2204 = "_-O5"
 * @identifier _SafeStr_2205 = "_-fb"
 * @identifier _SafeStr_2208 = "_-LF"
 * @identifier _SafeStr_2209 = "_-Bs"
 * @identifier _SafeStr_2215 = "_-CH"
 * @identifier _SafeStr_2217 = "_-Ai"
 * @identifier _SafeStr_2218 = "_-j8"
 * @identifier _SafeStr_2223 = "_-iL"
 * @identifier _SafeStr_2224 = "_-HM"
 * @identifier _SafeStr_2228 = "_-X6"
 * @identifier _SafeStr_2229 = "_-1P"
 * @identifier _SafeStr_2231 = "_-XO"
 * @identifier _SafeStr_2237 = "_-CS"
 * @identifier _SafeStr_2240 = "_-Px"
 * @identifier _SafeStr_2241 = "_-eN"
 * @identifier _SafeStr_2243 = "_-Qj"
 * @identifier _SafeStr_2248 = "_-9K"
 * @identifier _SafeStr_2249 = "_-RV"
 * @identifier _SafeStr_2253 = "_-fW"
 * @identifier _SafeStr_2254 = "_-Vv"
 * @identifier _SafeStr_2255 = "_-QN"
 * @identifier _SafeStr_2256 = "_-4z"
 * @identifier _SafeStr_2258 = "_-Pl"
 * @identifier _SafeStr_2262 = "_-fm"
 * @identifier _SafeStr_2263 = "_-YY"
 * @identifier _SafeStr_2265 = "_-76"
 * @identifier _SafeStr_2271 = "_-P0"
 * @identifier _SafeStr_2275 = "_-x"
 * @identifier _SafeStr_2279 = "_-AW"
 * @identifier _SafeStr_2280 = "_-ik"
 * @identifier _SafeStr_2281 = "_-eJ"
 * @identifier _SafeStr_2282 = "_-3x"
 * @identifier _SafeStr_2285 = "_-Du"
 * @identifier _SafeStr_2286 = "_-jS"
 * @identifier _SafeStr_2290 = "_-ZT"
 * @identifier _SafeStr_2298 = "_-Kk"
 * @identifier _SafeStr_2299 = "_-9o"
 * @identifier _SafeStr_2307 = "_-If"
 * @identifier _SafeStr_2309 = "_-3h"
 * @identifier _SafeStr_2315 = "_-MD"
 * @identifier _SafeStr_2316 = "_-FQ"
 * @identifier _SafeStr_2321 = "_-eo"
 * @identifier _SafeStr_2322 = "_-TE"
 * @identifier _SafeStr_2323 = "_-fA"
 * @identifier _SafeStr_2325 = "_-UA"
 * @identifier _SafeStr_2326 = "_-Y9"
 * @identifier _SafeStr_2327 = "_-iI"
 * @identifier _SafeStr_2330 = "_-PB"
 * @identifier _SafeStr_2331 = "_-Bk"
 * @identifier _SafeStr_2334 = "_-C"
 * @identifier _SafeStr_2336 = "_-gn"
 * @identifier _SafeStr_2343 = "_-Gx"
 * @identifier _SafeStr_2345 = "_-Th"
 * @identifier _SafeStr_2347 = "_-Wk"
 * @identifier _SafeStr_2354 = "_-i6"
 * @identifier _SafeStr_2356 = "_-N5"
 * @identifier _SafeStr_2357 = "_-EY"
 * @identifier _SafeStr_2359 = "_-Lx"
 * @identifier _SafeStr_2360 = "_-f8"
 * @identifier _SafeStr_2364 = "_-av"
 * @identifier _SafeStr_2365 = "_-NZ"
 * @identifier _SafeStr_2368 = "_-hM"
 * @identifier _SafeStr_2369 = "_-OL"
 * @identifier _SafeStr_2371 = "_-e2"
 * @identifier _SafeStr_2372 = "_-ZM"
 * @identifier _SafeStr_2377 = "_-Rf"
 * @identifier _SafeStr_2379 = "_-Zx"
 * @identifier _SafeStr_2381 = "_-HN"
 * @identifier _SafeStr_2383 = "_-8U"
 * @identifier _SafeStr_2384 = "_-CF"
 * @identifier _SafeStr_2387 = "_-NV"
 * @identifier _SafeStr_2393 = "_-DO"
 * @identifier _SafeStr_2397 = "_-8h"
 * @identifier _SafeStr_2398 = "_-Km"
 * @identifier _SafeStr_2399 = "_-aM"
 * @identifier _SafeStr_2402 = "_-gO"
 * @identifier _SafeStr_2403 = "_-K"
 * @identifier _SafeStr_2404 = "_-fE"
 * @identifier _SafeStr_2409 = "_-b1"
 * @identifier _SafeStr_2415 = "_-E4"
 * @identifier _SafeStr_2416 = "_-Tz"
 * @identifier _SafeStr_2417 = "_-Kw"
 * @identifier _SafeStr_2425 = "_-fJ"
 * @identifier _SafeStr_2428 = "_-7P"
 * @identifier _SafeStr_2429 = "_-S2"
 * @identifier _SafeStr_2430 = "_-Nj"
 * @identifier _SafeStr_2431 = "_-48"
 * @identifier _SafeStr_2432 = "_-4N"
 * @identifier _SafeStr_2437 = "_-a5"
 * @identifier _SafeStr_2440 = "_-dQ"
 * @identifier _SafeStr_2441 = "_-71"
 * @identifier _SafeStr_2446 = "_-Eo"
 * @identifier _SafeStr_2447 = "_-ek"
 * @identifier _SafeStr_2450 = "_-4I"
 * @identifier _SafeStr_2451 = "_-3u"
 * @identifier _SafeStr_2455 = "_-6b"
 * @identifier _SafeStr_2458 = "_-Rt"
 * @identifier _SafeStr_2463 = "_-7T"
 * @identifier _SafeStr_2465 = "_-dG"
 * @identifier _SafeStr_2466 = "_-94"
 * @identifier _SafeStr_2469 = "_-r"
 * @identifier _SafeStr_2470 = "_-hl"
 * @identifier _SafeStr_2471 = "_-W5"
 * @identifier _SafeStr_2474 = "_-9R"
 * @identifier _SafeStr_2476 = "_-Qm"
 * @identifier _SafeStr_2478 = "_-1Z"
 * @identifier _SafeStr_2479 = "_-3q"
 * @identifier _SafeStr_2480 = "_-Wl"
 * @identifier _SafeStr_2483 = "_-de"
 * @identifier _SafeStr_2488 = "_-LS"
 * @identifier _SafeStr_2491 = "_-L8"
 * @identifier _SafeStr_2494 = "_-HJ"
 * @identifier _SafeStr_2496 = "_-W2"
 * @identifier _SafeStr_2497 = "_-Wy"
 * @identifier _SafeStr_2498 = "_-QZ"
 * @identifier _SafeStr_2501 = "_-eU"
 * @identifier _SafeStr_2502 = "_-It"
 * @identifier _SafeStr_2503 = "_-MU"
 * @identifier _SafeStr_2504 = "_-ZC"
 * @identifier _SafeStr_2508 = "_-IZ"
 * @identifier _SafeStr_2509 = "_-bf"
 * @identifier _SafeStr_2510 = "_-CM"
 * @identifier _SafeStr_2511 = "_-b"
 * @identifier _SafeStr_2513 = "_-6q"
 * @identifier _SafeStr_2517 = "_-YU"
 * @identifier _SafeStr_2519 = "_-Si"
 * @identifier _SafeStr_2522 = "_-QI"
 * @identifier _SafeStr_2524 = "_-cv"
 * @identifier _SafeStr_2527 = "_-8J"
 * @identifier _SafeStr_2528 = "_-DV"
 * @identifier _SafeStr_2529 = "_-GP"
 * @identifier _SafeStr_2531 = "_-ag"
 * @identifier _SafeStr_2532 = "_-15"
 * @identifier _SafeStr_2533 = "_-b9"
 * @identifier _SafeStr_2534 = "_-QT"
 * @identifier _SafeStr_2536 = "_-Rx"
 * @identifier _SafeStr_2540 = "_-78"
 * @identifier _SafeStr_2541 = "_-Z0"
 * @identifier _SafeStr_2542 = "_-Da"
 * @identifier _SafeStr_2543 = "_-Kc"
 * @identifier _SafeStr_2545 = "_-BJ"
 * @identifier _SafeStr_2547 = "_-8T"
 * @identifier _SafeStr_2550 = "_-Wh"
 * @identifier _SafeStr_2552 = "_-74"
 * @identifier _SafeStr_2553 = "_-YM"
 * @identifier _SafeStr_2554 = "_-A6"
 * @identifier _SafeStr_2555 = "_-an"
 * @identifier _SafeStr_2558 = "_-DR"
 * @identifier _SafeStr_2559 = "_-O4"
 * @identifier _SafeStr_2561 = "_-4l"
 * @identifier _SafeStr_2562 = "_-DT"
 * @identifier _SafeStr_2563 = "_-A5"
 * @identifier _SafeStr_2565 = "_-q"
 * @identifier _SafeStr_2566 = "_-Kn"
 * @identifier _SafeStr_2567 = "_-dE"
 * @identifier _SafeStr_2570 = "_-P9"
 * @identifier _SafeStr_2573 = "_-aR"
 * @identifier _SafeStr_2574 = "_-Bu"
 * @identifier _SafeStr_2575 = "_-Wg"
 * @identifier _SafeStr_2576 = "_-2t"
 * @identifier _SafeStr_2578 = "_-HZ"
 * @identifier _SafeStr_2580 = "_-YH"
 * @identifier _SafeStr_2581 = "_-C0"
 * @identifier _SafeStr_2582 = "_-RQ"
 * @identifier _SafeStr_2585 = "_-OD"
 * @identifier _SafeStr_2588 = "_-bi"
 * @identifier _SafeStr_2589 = "_-hq"
 * @identifier _SafeStr_2590 = "_-Q5"
 * @identifier _SafeStr_2591 = "_-Gg"
 * @identifier _SafeStr_2603 = "_-Qe"
 * @identifier _SafeStr_2605 = "_-3S"
 * @identifier _SafeStr_2606 = "_-do"
 * @identifier _SafeStr_2607 = "_-Sw"
 * @identifier _SafeStr_2608 = "_-YB"
 * @identifier _SafeStr_2609 = "_-Sx"
 * @identifier _SafeStr_2610 = "_-h2"
 * @identifier _SafeStr_2616 = "_-fH"
 * @identifier _SafeStr_2617 = "_-8n"
 * @identifier _SafeStr_2618 = "_-RZ"
 * @identifier _SafeStr_2622 = "_-Ac"
 * @identifier _SafeStr_2624 = "_-Y4"
 * @identifier _SafeStr_2625 = "_-2z"
 * @identifier _SafeStr_2626 = "_-8F"
 * @identifier _SafeStr_2627 = "_-6i"
 * @identifier _SafeStr_2631 = "_-N4"
 * @identifier _SafeStr_2633 = "_-JG"
 * @identifier _SafeStr_2634 = "_-4S"
 * @identifier _SafeStr_2635 = "_-5N"
 * @identifier _SafeStr_2638 = "_-A7"
 * @identifier _SafeStr_2641 = "_-Mj"
 * @identifier _SafeStr_2645 = "_-1f"
 * @identifier _SafeStr_2647 = "_-4h"
 * @identifier _SafeStr_2651 = "_-HS"
 * @identifier _SafeStr_2653 = "_-6d"
 * @identifier _SafeStr_2656 = "_-cw"
 * @identifier _SafeStr_2658 = "_-k1"
 * @identifier _SafeStr_2659 = "_-dC"
 * @identifier _SafeStr_2660 = "_-4q"
 * @identifier _SafeStr_2661 = "_-fF"
 */
