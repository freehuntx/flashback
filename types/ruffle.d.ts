declare global {
  namespace Ruffle {
    enum ReadyState {
      Nothing = 0,
      Loading,
      Loaded,
    }

    // https://ruffle.rs/js-docs/master/interfaces/Config.URLLoadOptions.html
    interface URLLoadOptions {
      url: string;
      allowScriptAccess?: boolean;
      parameters?: null | string | URLSearchParams | Record<string, any>;
      autoplay?: AutoPlay;
      backgroundColor?: null | string;
      letterbox?: Letterbox;
      unmuteOverlay?: UnmuteOverlay;
      upgradeToHttps?: boolean;
      compatibilityRules?: boolean;
      favorFlash?: boolean;
      warnOnUnsupportedContent?: boolean;
      logLevel?: LogLevel;
      showSwfDownload?: boolean;
      contextMenu?: boolean | ContextMenu;
      preloader?: boolean;
      splashScreen?: boolean;
      maxExecutionDuration?: Duration;
      base?: null | string;
      menu?: boolean;
      salign?: string;
      forceAlign?: boolean;
      quality?: string;
      scale?: string;
      forceScale?: boolean;
      allowFullscreen?: boolean;
      frameRate?: null | number;
      wmode?: WindowMode;
      playerVersion?: null | number;
      preferredRenderer?: null | RenderBackend;
      publicPath?: null | string;
      polyfills?: boolean;
      openUrlMode?: OpenURLMode;
      allowNetworking?: NetworkingAccessMode;
      openInNewTab?: null | ((swf: URL) => void);
      socketProxy?: SocketProxy[];
      fontSources?: string[];
      defaultFonts?: DefaultFonts;
      credentialAllowList?: string[];
      playerRuntime?: PlayerRuntime;
    }

    // https://ruffle.rs/js-docs/master/interfaces/Config.DataLoadOptions.html
    interface DataLoadOptions {
      data: ArrayLike<number> | ArrayBufferLike;
      swfFileName?: string;
      allowScriptAccess?: boolean;
      parameters?: null | string | URLSearchParams | Record<string, any>;
      autoplay?: AutoPlay;
      backgroundColor?: null | string;
      letterbox?: Letterbox;
      unmuteOverlay?: UnmuteOverlay;
      upgradeToHttps?: boolean;
      compatibilityRules?: boolean;
      favorFlash?: boolean;
      warnOnUnsupportedContent?: boolean;
      logLevel?: LogLevel;
      showSwfDownload?: boolean;
      contextMenu?: boolean | ContextMenu;
      preloader?: boolean;
      splashScreen?: boolean;
      maxExecutionDuration?: Duration;
      base?: null | string;
      menu?: boolean;
      salign?: string;
      forceAlign?: boolean;
      quality?: string;
      scale?: string;
      forceScale?: boolean;
      allowFullscreen?: boolean;
      frameRate?: null | number;
      wmode?: WindowMode;
      playerVersion?: null | number;
      preferredRenderer?: null | RenderBackend;
      publicPath?: null | string;
      polyfills?: boolean;
      openUrlMode?: OpenURLMode;
      allowNetworking?: NetworkingAccessMode;
      openInNewTab?: null | ((swf: URL) => void);
      socketProxy?: SocketProxy[];
      fontSources?: string[];
      defaultFonts?: DefaultFonts;
      credentialAllowList?: string[];
      playerRuntime?: PlayerRuntime;
    }

    type Config =  URLLoadOptions | DataLoadOptions

    // https://ruffle.rs/js-docs/master/interfaces/Player.PlayerElement.html
    interface PlayerElement extends HTMLElement {
      ruffle<V extends 1 = 1>(version?: V): APIVersions[V];
      onFSCommand: null | ((command: string, args: string) => void);
      config: object | URLLoadOptions | DataLoadOptions;
      loadedConfig: null | URLLoadOptions | DataLoadOptions;
      get readyState(): ReadyState;
      get metadata(): null | MovieMetadata;
      reload(): Promise<void>;
      load(options: string | URLLoadOptions | DataLoadOptions): Promise<void>;
      play(): void;
      get isPlaying(): boolean;
      get volume(): number;
      set volume(value: number): void;
      get fullscreenEnabled(): boolean;
      get isFullscreen(): boolean;
      setFullscreen(isFull: boolean): void;
      enterFullscreen(): void;
      exitFullscreen(): void;
      pause(): void;
      set traceObserver(observer: null | ((message: string) => void)): void;
      downloadSwf(): Promise<void>;
      displayMessage(message: string): void;
      PercentLoaded(): number;
    }
  }

  interface Window {
    RufflePlayer: {
      config: RuffleConfig;
      newest: () => {
        createPlayer: () => Ruffle.PlayerElement;
      };
    };
  }
}

export {};
