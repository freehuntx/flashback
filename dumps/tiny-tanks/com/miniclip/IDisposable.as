package com.miniclip
{
   public interface IDisposable
   {
      
      function get isDisposed() : Boolean;
      
      function dispose() : void;
   }
}

