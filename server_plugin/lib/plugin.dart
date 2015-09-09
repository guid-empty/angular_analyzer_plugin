library angular2.src.analysis.server_plugin;

import 'package:analysis_server/analysis/analysis_domain.dart';
import 'package:analysis_server/plugin/navigation.dart';
import 'package:angular2_server_plugin/src/analysis.dart';
import 'package:plugin/plugin.dart';

/// Contribute a plugin for services such as completions, indexing and refactoring
/// of Angular 2 dart code.
class AngularServerPlugin implements Plugin {
  /// The unique identifier for this plugin.
  static const String UNIQUE_IDENTIFIER = 'angular2.analysis.server_plugin';

  @override
  String get uniqueIdentifier => UNIQUE_IDENTIFIER;

  @override
  void registerExtensionPoints(RegisterExtensionPoint registerExtensionPoint) {}

  @override
  void registerExtensions(RegisterExtension registerExtension) {
    registerExtension(SET_ANALYSIS_DOMAIN_EXTENSION_POINT_ID,
        new AnalysisDomainContributor().setAnalysisDomain);
    registerExtension(NAVIGATION_CONTRIBUTOR_EXTENSION_POINT_ID,
        new AngularNavigationContributor());
  }
}
