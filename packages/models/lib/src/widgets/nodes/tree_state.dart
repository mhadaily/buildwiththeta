import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:theta_models/theta_models.dart';

/// TreeState is the state of the tree
class TreeState with ChangeNotifier {
  /// Constructor
  /// [forPlay] is true when we are in Play Mode
  /// [params] is the list of params of the Scaffold
  /// [states] is the list of states of the Scaffold
  /// [dataset] is the list of dataset created by other widgets inside the same page
  /// [pageId] is the id of the page
  /// [isPage] is true if this is a page, false if it is a component
  /// [colorStyles] is the list of color styles
  /// [textStyles] is the list of text styles
  /// [localization] is the localization object
  /// [theme] is the theme object
  /// [deviceInfo] is the device info object
  /// [workflows] is the list of workflows
  /// [config] is the project config object
  /// [nodeOverrides] is the list of node overrides
  /// [fit] is the fit of the component
  TreeState({
    required this.forPlay,
    required this.pageId,
    required this.isPage,
    required this.colorStyles,
    required this.textStyles,
    required this.theme,
    required this.deviceInfo,
    required this.workflows,
    required this.nodeOverrides,
    required this.fit,
    this.focusedNode,
    this.focusedNodes = const [],
    this.hoveredNode,
    this.nodeComponentID,
    this.nodes = const [],
    this.xLines = const [],
    this.yLines = const [],
    this.isPreloaded = false,
    this.customFonts = const [],
    this.isDeviceCurrentlyFocused = true,
    this.isDeviceCurrentlyHovered = true,
    this.nodeControls = const {},
    this.defaultNodeControls = const SizedBox.shrink(),
  });

  /// Are we in Play Mode?
  bool forPlay;

  /// The page id
  PageID pageId;

  /// Is this a page or a component?
  bool isPage;

  /// The color styles
  List<ColorStyleEntity> colorStyles;

  /// The text styles
  List<TextStyleEntity> textStyles;

  /// Device type
  DeviceInfo deviceInfo;

  /// Current theme
  ThemeMode theme;

  /// Focused node
  CNode? focusedNode;

  /// Focused nodes
  List<CNode> focusedNodes;

  CNode? hoveredNode;

  /// Nodes
  List<CNode> nodes;

  ComponentFit fit = ComponentFit.absolute;

  /// Workflows
  /// This is the list of all the workflows
  /// Workflow = custom code
  /// User can create custom code and add it to the project
  /// This code will be executed when the workflow is called
  List<Workflow> workflows;

  List<Override> nodeOverrides;

  List<int> xLines;
  List<int> yLines;

  DeviceType get deviceType => deviceInfo.identifier.type;

  NodeID? nodeComponentID;

  bool isPreloaded;

  List<CustomFontEntity> customFonts;

  bool isDeviceCurrentlyFocused;
  bool isDeviceCurrentlyHovered;

  Map<String, Widget> nodeControls;
  Widget defaultNodeControls;

  void onForPlayChanged(bool value) {
    forPlay = value;
  }

  void onFocusedDeviceChanged(DeviceType device) {
    isDeviceCurrentlyFocused = device == deviceType;
  }

  void onHoveredDeviceChanged(DeviceType device) {
    isDeviceCurrentlyHovered = device == deviceType;
  }

  void onPageIDChanged(PageID pageID) {
    pageId = pageID;
  }

  void onColorsChanged(ColorStyles colors) {
    colorStyles = colors;
  }

  void onTextsChanged(TextStyles texts) {
    textStyles = texts;
  }

  void onThemeChanged(ThemeMode themeMode) {
    theme = themeMode;
  }

  void onDeviceChanged(DeviceInfo deviceInfo) {
    this.deviceInfo = deviceInfo;
  }

  void onFocusNodeChanged(CNode? node) {
    focusedNode = node;
  }

  void onFocusedNodesChanged(List<CNode> nodes) {
    focusedNodes = nodes;
  }

  void onHoverNodeChanged(CNode? node) {
    hoveredNode = node;
  }

  void onNodesChanged(Nodes nodes) {
    this.nodes = nodes;
  }

  void onLinesChanged(List<int> xLines, List<int> yLines) {
    this.xLines = xLines;
    this.yLines = yLines;
  }

  void onFitChanged(ComponentFit fit) {
    this.fit = fit;
  }

  void onNodeComponentIDChanged(NodeID nodeComponentID) {
    this.nodeComponentID = nodeComponentID;
  }

  void onWorkflowsChanged(List<Workflow> workflows) {
    this.workflows = workflows;
  }

  void onOverridesChanged(List<Override> nodeOverrides) {
    this.nodeOverrides = nodeOverrides;
  }

  void onPreloadedFlagChanged(bool preloaded) {
    isPreloaded = preloaded;
  }

  void onCustomFontsChanged(List<CustomFontEntity> customFonts) {
    this.customFonts = customFonts;
  }

  void onNodeControlsChanged(Map<String, Widget> controls) {
    nodeControls = controls;
  }

  void onDefaultNodeControlsChanged(Widget controls) {
    defaultNodeControls = controls;
  }

  void notify() {
    notifyListeners();
  }

  TreeState copyWith({
    final CNode? node,
    final bool? forPlay,
    final int? loop,
    final bool? isVertical,
    final PageID? pageId,
    final bool? isPage,
    final List<ColorStyleEntity>? colorStyles,
    final List<TextStyleEntity>? textStyles,
    final DeviceInfo? deviceInfo,
    final ThemeMode? theme,
    final List<Workflow>? workflows,
    final List<Override>? nodeOverrides,
    final Nodes? nodes,
    final List<int>? xLines,
    final List<int>? yLines,
    final ComponentFit? fit,
    final NodeID? nodeComponentID,
    final bool? preloaded,
    final bool? isDeviceCurrentlyFocused,
    final bool? isDeviceCurrentlyHovered,
    final Map<String, Widget>? nodeControls,
    final Widget? defaultNodeControls,
  }) {
    return TreeState(
      forPlay: forPlay ?? this.forPlay,
      pageId: pageId ?? this.pageId,
      isPage: isPage ?? this.isPage,
      colorStyles: colorStyles ?? this.colorStyles,
      textStyles: textStyles ?? this.textStyles,
      deviceInfo: deviceInfo ?? this.deviceInfo,
      nodeOverrides: nodeOverrides ?? this.nodeOverrides,
      theme: theme ?? this.theme,
      workflows: workflows ?? this.workflows,
      nodes: nodes ?? this.nodes,
      xLines: xLines ?? this.xLines,
      yLines: yLines ?? this.yLines,
      fit: fit ?? this.fit,
      nodeComponentID: nodeComponentID ?? this.nodeComponentID,
      isPreloaded: preloaded ?? isPreloaded,
      isDeviceCurrentlyFocused:
          isDeviceCurrentlyFocused ?? this.isDeviceCurrentlyFocused,
      isDeviceCurrentlyHovered:
          isDeviceCurrentlyHovered ?? this.isDeviceCurrentlyHovered,
      nodeControls: nodeControls ?? this.nodeControls,
      defaultNodeControls: defaultNodeControls ?? this.defaultNodeControls,
    );
  }
}
