package com.miniclip.gamemanager.utils
{
   public function absoluteURI(param1:String, param2:* = null):String
   {
      var found:Boolean;
      var done:Boolean;
      var root:uri = null;
      var BlackBox:Object = null;
      var MGM:Object = null;
      var known:Array = null;
      var ext:String = null;
      var found_known_ext:Boolean = false;
      var found_unknown_ext:Boolean = false;
      var c:Array = null;
      var path:String = param1;
      var option:* = param2;
      trace("AbsoluteURI - path = " + path);
      if(Security.sandboxType != Security.REMOTE)
      {
         return path;
      }
      found = true;
      done = false;
      try
      {
         trace("AbsoluteURI - Found the GameManager");
         BlackBox = getDefinitionByName("com.miniclip.blackbox.BlackBox");
         MGM = getDefinitionByName("com.miniclip.MiniclipGameManager");
         root = new uri(BlackBox.current.url.toString());
         trace("AbsoluteURI - BlackBox.current.url = " + root.toString());
      }
      catch(e:ReferenceError)
      {
         trace("AbsoluteURI - Not Loaded by the GameManager");
         found = false;
      }
      if(option != null)
      {
         if(option is String)
         {
            found = true;
            root = new uri(option);
         }
      }
      if(found)
      {
         root.fragment = "";
         root.query = "";
         if(root.path == "")
         {
            root.path = "/";
         }
         known = ["html",".htm",".swf",".xml"];
         ext = root.path.substr(root.path.length - 4);
         found_known_ext = false;
         found_unknown_ext = false;
         if(known.indexOf(ext) > -1)
         {
            found_known_ext = true;
         }
         else if(ext.indexOf(".") > -1)
         {
            found_unknown_ext = true;
         }
         if(root.path != "/" && root.path.charAt(root.path.length - 1) != "/" && (found_known_ext || found_unknown_ext))
         {
            root.path = root.path.substr(0,root.path.lastIndexOf("/") + 1);
         }
         else if(root.path != "/" && root.path.charAt(root.path.length - 1) != "/")
         {
            root.path += "/";
         }
         c = path.split("");
         if(c[0] == "/")
         {
            root.path = path;
            done = true;
         }
         if(c[0] + c[1] == "./")
         {
            path = path.substr(2);
         }
         if(c[0] + c[1] + c[2] == "../" && !done)
         {
            if(root.path == "/")
            {
               throw new Error("Can not navigate to parent directory \"" + path + "\"\nwhen there is no parent \"" + root.toString() + "\"");
            }
            if(root.path.charAt(root.path.length - 1) == "/")
            {
               root.path = root.path.substr(0,root.path.length - 1);
            }
            while(c[0] + c[1] + c[2] == "../" && root.path.length > 1 && root.path != "/")
            {
               path = path.substr(3);
               c = path.split("");
               root.path = root.path.substr(0,root.path.lastIndexOf("/"));
            }
            if(root.path != "/" && root.path.charAt(root.path.length - 1) != "/")
            {
               root.path += "/";
            }
            root.path += path;
            done = true;
         }
         if(!done)
         {
            root.path += path;
         }
         trace("AbsoluteURI - return uri = " + root.toString());
         return root.toString();
      }
      trace("AbsoluteURI - return path = " + path);
      return path;
   }}

import com.miniclip.utils.uri;
import flash.system.Security;
import flash.utils.getDefinitionByName;

