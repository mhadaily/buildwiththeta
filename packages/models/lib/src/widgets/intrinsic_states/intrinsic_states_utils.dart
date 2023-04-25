import 'package:theta_models/theta_models.dart';

class IntrinsicStateUtils {
  static final IntrinsicStateUtils _instance = IntrinsicStateUtils._internal();

  factory IntrinsicStateUtils() {
    return _instance;
  }

  IntrinsicStateUtils._internal();

  final Map<String, IntrinsicState> _intrinsicStates = {
    NType.align: AlignIntrinsicStates(),
    NType.badge: BadgeIntrinsicStates(),
    NType.button: ButtonIntrinsicStates(),
    NType.center: CenterIntrinsicStates(),
    NType.checkbox: CheckBoxIntrinsicStates(),
    NType.column: ColumnIntrinsicStates(),
    NType.component: ComponentIntrinsicStates(),
    NType.condition: ConditionIntrinsicStates(),
    NType.container: ContainerIntrinsicStates(),
    NType.divider: DividerIntrinsicStates(),
    NType.expanded: ExpandedIntrinsicStates(),
    NType.googleMaps: GoogleMapsIntrinsicStates(),
    NType.gestureDetector: GestureDetectorIntrinsicStates(),
    NType.gridView: GridViewIntrinsicStates(),
    NType.gridViewBuilder: GridViewBuilderIntrinsicStates(),
    NType.fontAwesomeIcon: FontAwesomeIconIntrinsicStates(),
    NType.featherIcon: FeatherIconIntrinsicStates(),
    NType.hero: HeroIntrinsicStates(),
    NType.icon: IconIntrinsicStates(),
    NType.lineIcon: LineIconIntrinsicStates(),
    NType.ignorePointer: IgnorePointerIntrinsicStates(),
    NType.image: ImageIntrinsicStates(),
    NType.liquidSwipe: LiquidSwipeIntrinsicStates(),
    NType.listTile: ListTileIntrinsicStates(),
    NType.lottie: LottieIntrinsicStates(),
    NType.opacity: OpacityIntrinsicStates(),
    NType.pageView: PageViewIntrinsicStates(),
    NType.positioned: PositionedIntrinsicStates(),
    NType.responsiveCondition: ResponsiveConditionIntrinsicStates(),
    NType.row: RowIntrinsicStates(),
    NType.safeArea: SafeAreaIntrinsicStates(),
    NType.scaffold: ScaffoldIntrinsicStates(),
    NType.spacer: SpacerIntrinsicStates(),
    NType.stack: StackIntrinsicStates(),
    NType.text: TextIntrinsicStates(),
    NType.adMobBanner: GoogleAdMobBannerAdIntrinsicStates(),
    NType.textField: TextFieldIntrinsicStates(),
    NType.video: VideoIntrinsicStates(),
    NType.appBar: AppBarIntrinsicStates(),
    NType.bottomBar: BottomBarIntrinsicStates(),
    NType.drawer: DrawerIntrinsicStates(),
    NType.loginWithTwitter: LoginTwitterIntrinsicStates(),
    NType.loginWithApple: LoginAppleIntrinsicStates(),
    NType.loginWithGoogle: LoginGoogleIntrinsicStates(),
    NType.loginWithFacebook: LoginFacebookIntrinsicStates(),
    NType.loginWithGitHub: LoginGitHubIntrinsicStates(),
    NType.loginWithTwitch: LoginTwitchIntrinsicStates(),
    NType.loginWithLinkedin: LoginLinkedinIntrinsicStates(),
    NType.loginWithDiscord: LoginDiscordIntrinsicStates(),
    NType.loginWithGitlab: LoginGitlabIntrinsicStates(),
    NType.loginWithBitBucket: LoginBitBucketIntrinsicStates(),
    NType.radio: RadioIntrinsicStates(),
    NType.tooltip: TooltipIntrinsicStates(),
    NType.materialAppBar: MaterialAppBarIntrinsicStates(),
    NType.materialBottomBar: MaterialBottomBarIntrinsicStates(),
    NType.bottombaritem: BottombaritemIntrinsicStates(),
    NType.supabaseFutureBuilder: SupabaseFutureBuilderIntrinsicStates(),
    NType.supabaseStreamBuilder: SupabaseStreamBuilderIntrinsicStates(),
    NType.linearProgressIndicator: LinearProgressIndicatorIntrinsicStates(),
    NType.card: CardIntrinsicStates(),
    NType.visibility: VisibilityIntrinsicStates(),
    NType.placeholder: PlaceholderIntrinsicStates(),
    NType.rotatedBox: RotatedBoxIntrinsicStates(),
    NType.circularProgressIndicator: CircularProgressIndicatorIntrinsicStates(),
    NType.listViewBuilder: ListViewBuilderIntrinsicStates(),
    NType.clipRoundedRect: ClipRRectIntrinsicStates(),
    NType.indexedStack: IndexedStackIntrinsicStates(),
    NType.refreshIndicator: RefreshIndicatorIntrinsicStates(),
    NType.cupertinoSwitch: CupertinoSwitchIntrinsicStates(),
    NType.map: MapIntrinsicStates(),
    NType.marker: MarkerIntrinsicStates(),
    NType.tcard: TCardIntrinsicStates(),
    NType.tcardBuilder: TCardBuilderIntrinsicStates(),
    NType.concentricPageView: ConcentricPageViewIntrinsicStates(),
    NType.bouncingWidget: BouncingWidgetIntrinsicStates(),
    NType.calendar: CalendarIntrinsicStates(),
    NType.calendarV2: CalendarV2IntrinsicStates(),
    NType.webview: WebviewIntrinsicStates(),
    NType.audioPlayer: AudioPlayerIntrinsicStates(),
    NType.audioPlayerProgressIndicator:
        AudioPlayerProgressIndicatorIntrinsicStates(),
    NType.audioPlayerVolumeIndicator:
        AudioPlayerVolumeIndicatorIntrinsicStates(),
    NType.supabaseLoggedUser: SupabaseLoggedUserIntrinsicStates(),
    NType.httpRequest: HttpRequestFutureBuilderIntrinsicStates(),
    NType.cupertinoSegmentedControl: CupertinoSegmentedControlIntrinsicState(),
    NType.cupertinoPicker: CupertinoPickerIntrinsicStates(),
    NType.dotsIndicator: DotsIndicatorIntrinsicStates(),
    NType.mapBuilder: MapBuilderIntrinsicStates(),
    NType.wrapper: WrapperIntrinsicStates(),
    NType.revenueCatProducts: RevenueCatProductIntrinsicStates(),
    NType.revenueCatSubStatus: RevenueCatSubStatusIntrinsicStates(),
    NType.tetaStoreProductsBuilder: ThetaStoreProductsBuilderIntrinsicStates(),
    NType.tetaStoreShippingBuilder: ThetaStoreShippingBuilderIntrinsicStates(),
    NType.tetaStoreCartItemsBuilder:
        ThetaStoreCartItemsBuilderBodyIntrinsicStates(),
    NType.cmsFetch: CmsFetchIntrinsicStates(),
    NType.cmsStream: CmsStreamIntrinsicStates(),
    NType.cmsLoggedUser: CmsLoggedUserIntrinsicStates(),
    NType.cmsCount: CmsCountIntrinsicStates(),
    NType.cmsCustomQuery: CmsCustomQueryIntrinsicStates(),
    NType.animationConfigList: AnimationConfigListIntrinsicStates(),
    NType.animationConfigGrid: AnimationConfigGridIntrinsicStates(),
    NType.fadeInAnimation: FadeInAnimationIntrinsicStates(),
    NType.scaleAnimation: ScaleAnimationIntrinsicStates(),
    NType.slideAnimation: SlideAnimationIntrinsicStates(),
    NType.qrCode: QrCodeIntrinsicStates(),
    NType.barcode: BarcodeIntrinsicStates(),
    NType.qonversionProducts: QonversionProductIntrinsicStates(),
    NType.qonversionSubStatus: QonversionSubStatusIntrinsicStates(),
    NType.qrScanner: QrScannerIntrinsicStates(),
    NType.customHttpRequest: CustomHttpRequestIntrinsicStates(),
    NType.apiCallsFetch: ApiCallsFetchIntrinsicStates(),
  };

  IntrinsicState getStateByType(final NType type) {
    return _intrinsicStates[type] ?? IntrinsicState.basic;
  }
}