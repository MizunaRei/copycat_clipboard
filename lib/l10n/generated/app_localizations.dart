import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart' deferred as app_localizations_en;

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'CopyCat'**
  String get appName;

  /// No description provided for @collections.
  ///
  /// In en, this message translates to:
  /// **'Collections'**
  String get collections;

  /// No description provided for @collection.
  ///
  /// In en, this message translates to:
  /// **'Collection'**
  String get collection;

  /// No description provided for @createCollection.
  ///
  /// In en, this message translates to:
  /// **'Create Collection'**
  String get createCollection;

  /// No description provided for @editCollection.
  ///
  /// In en, this message translates to:
  /// **'Edit Collection'**
  String get editCollection;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @noDescription.
  ///
  /// In en, this message translates to:
  /// **'No description'**
  String get noDescription;

  /// No description provided for @noResultsWereFound.
  ///
  /// In en, this message translates to:
  /// **'No Results were found'**
  String get noResultsWereFound;

  /// No description provided for @driveSetupDone.
  ///
  /// In en, this message translates to:
  /// **'Drive Setup Done 🥳'**
  String get driveSetupDone;

  /// No description provided for @pleaseWaitWhileWeSetupSyncing.
  ///
  /// In en, this message translates to:
  /// **'Please wait while we setup\nsyncing'**
  String get pleaseWaitWhileWeSetupSyncing;

  /// No description provided for @driveSetupMayTakeFewMin.
  ///
  /// In en, this message translates to:
  /// **'This might take about a minute to complete.\n( Please do not close the app )'**
  String get driveSetupMayTakeFewMin;

  /// No description provided for @refreshNow.
  ///
  /// In en, this message translates to:
  /// **'Refresh Now'**
  String get refreshNow;

  /// No description provided for @newUpdates.
  ///
  /// In en, this message translates to:
  /// **'Changes Available:\n {ADDED} Added, {UPDATED} Updated and {DELETED} Deleted'**
  String newUpdates(int ADDED, int UPDATED, int DELETED);

  /// No description provided for @itemDeleted.
  ///
  /// In en, this message translates to:
  /// **'Item Deleted'**
  String get itemDeleted;

  /// No description provided for @deletingFromCloud.
  ///
  /// In en, this message translates to:
  /// **'Deleting from Cloud'**
  String get deletingFromCloud;

  /// No description provided for @emptyClipboard.
  ///
  /// In en, this message translates to:
  /// **'Your clipboard is empty'**
  String get emptyClipboard;

  /// No description provided for @loadMore.
  ///
  /// In en, this message translates to:
  /// **'Load More'**
  String get loadMore;

  /// No description provided for @clipboard.
  ///
  /// In en, this message translates to:
  /// **'Clipboard'**
  String get clipboard;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @export.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get export;

  /// No description provided for @searchClipboard.
  ///
  /// In en, this message translates to:
  /// **'Search Clipboard'**
  String get searchClipboard;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @copyCatClipboard.
  ///
  /// In en, this message translates to:
  /// **'CopyCat Clipboard'**
  String get copyCatClipboard;

  /// No description provided for @oneClipboardLimitlessPosibility.
  ///
  /// In en, this message translates to:
  /// **'One Clipboard, Limitless Posibility'**
  String get oneClipboardLimitlessPosibility;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @editDetails.
  ///
  /// In en, this message translates to:
  /// **'Edit Details'**
  String get editDetails;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @nothingHere.
  ///
  /// In en, this message translates to:
  /// **'Nothing Here'**
  String get nothingHere;

  /// No description provided for @downloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading'**
  String get downloading;

  /// No description provided for @downloadForOffline.
  ///
  /// In en, this message translates to:
  /// **'Downloading for offline'**
  String get downloadForOffline;

  /// No description provided for @copyToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy to Clipboard'**
  String get copyToClipboard;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @resetYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset your password'**
  String get resetYourPassword;

  /// No description provided for @passwordResetSuccess.
  ///
  /// In en, this message translates to:
  /// **'Password reset successfully'**
  String get passwordResetSuccess;

  /// No description provided for @findWhateverYouLooking.
  ///
  /// In en, this message translates to:
  /// **'Find Whatever you are looking for...'**
  String get findWhateverYouLooking;

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No results were found.'**
  String get noResults;

  /// No description provided for @searchInClipboard.
  ///
  /// In en, this message translates to:
  /// **'Search in clipboard'**
  String get searchInClipboard;

  /// No description provided for @basicLocal.
  ///
  /// In en, this message translates to:
  /// **'Basic • Local'**
  String get basicLocal;

  /// No description provided for @localSettingsDesc.
  ///
  /// In en, this message translates to:
  /// **'These settings are applicable to this device only.'**
  String get localSettingsDesc;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @syncLocal.
  ///
  /// In en, this message translates to:
  /// **'Sync • Local'**
  String get syncLocal;

  /// No description provided for @dontAutoCopyOver.
  ///
  /// In en, this message translates to:
  /// **'Don\'t Auto Copy Over'**
  String get dontAutoCopyOver;

  /// No description provided for @dontAutoCopyOverDesc.
  ///
  /// In en, this message translates to:
  /// **'Files and Media over a certain size ({SIZE}) will not be copied automatically.'**
  String dontAutoCopyOverDesc(String SIZE);

  /// No description provided for @dontAutoUploadOver.
  ///
  /// In en, this message translates to:
  /// **'Don\'t Auto Upload Over'**
  String get dontAutoUploadOver;

  /// No description provided for @dontAutoUploadOverDesc.
  ///
  /// In en, this message translates to:
  /// **'Files and Media over a certain size ({SIZE}) will not be uploaded automatically.'**
  String dontAutoUploadOverDesc(String SIZE);

  /// No description provided for @enableSync.
  ///
  /// In en, this message translates to:
  /// **'Enable Sync'**
  String get enableSync;

  /// No description provided for @enableSyncDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep your files updated across devices'**
  String get enableSyncDesc;

  /// No description provided for @syncFiles.
  ///
  /// In en, this message translates to:
  /// **'Sync Files and Medias'**
  String get syncFiles;

  /// No description provided for @syncFilesDesc.
  ///
  /// In en, this message translates to:
  /// **'Keep your files and media items updated across devices.'**
  String get syncFilesDesc;

  /// No description provided for @connected.
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get connected;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @authorizing.
  ///
  /// In en, this message translates to:
  /// **'Authorizing...'**
  String get authorizing;

  /// No description provided for @connectNow.
  ///
  /// In en, this message translates to:
  /// **'Connect Now'**
  String get connectNow;

  /// No description provided for @tips.
  ///
  /// In en, this message translates to:
  /// **'ⓘ Tips'**
  String get tips;

  /// No description provided for @cloudStorageInfoDefault.
  ///
  /// In en, this message translates to:
  /// **'\n\nGoogle Drive not connected, File and media syncing is disabled.'**
  String get cloudStorageInfoDefault;

  /// No description provided for @cloudStorageInfo.
  ///
  /// In en, this message translates to:
  /// **'{INFO}Your files and media are synced securely across devices using Google Drive to protect your privacy.'**
  String cloudStorageInfo(String INFO);

  /// No description provided for @attentionNeeded.
  ///
  /// In en, this message translates to:
  /// **'⚠ Attention Needed!'**
  String get attentionNeeded;

  /// No description provided for @isPaused.
  ///
  /// In en, this message translates to:
  /// **'Is Paused?'**
  String get isPaused;

  /// No description provided for @isPausedDesc.
  ///
  /// In en, this message translates to:
  /// **'{isPaused, select, true{Auto copy is not paused} other{Auto Copy is paused until {TILL}}}'**
  String isPausedDesc(String isPaused, String TILL);

  /// No description provided for @paste.
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get paste;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @previewEdit.
  ///
  /// In en, this message translates to:
  /// **'Preview & Edit'**
  String get previewEdit;

  /// No description provided for @pastingTheSharedContent.
  ///
  /// In en, this message translates to:
  /// **'Pasting the Shared Content to Clipboard'**
  String get pastingTheSharedContent;

  /// No description provided for @smartPaste.
  ///
  /// In en, this message translates to:
  /// **'Smart Paste'**
  String get smartPaste;

  /// No description provided for @smartPasteDesc.
  ///
  /// In en, this message translates to:
  /// **'Enable to paste clips directly to the last focused window.'**
  String get smartPasteDesc;

  /// No description provided for @launchAtStartup.
  ///
  /// In en, this message translates to:
  /// **'Launch At Startup'**
  String get launchAtStartup;

  /// No description provided for @launchAtStartupDesc.
  ///
  /// In en, this message translates to:
  /// **'Enable to start the app automatically when your device starts.'**
  String get launchAtStartupDesc;

  /// No description provided for @autoSyncInterval.
  ///
  /// In en, this message translates to:
  /// **'Auto Sync Interval'**
  String get autoSyncInterval;

  /// No description provided for @autoSyncIntervalDesc.
  ///
  /// In en, this message translates to:
  /// **'Clipboard will be automatically synced every {TIME}'**
  String autoSyncIntervalDesc(String TIME);

  /// No description provided for @clipboardShortcut.
  ///
  /// In en, this message translates to:
  /// **'Clipboard Shortcut'**
  String get clipboardShortcut;

  /// No description provided for @clipboardShortcutDesc.
  ///
  /// In en, this message translates to:
  /// **'Effortlessly Access Clipboard Anywhere'**
  String get clipboardShortcutDesc;

  /// No description provided for @clipboardShortcutPreview.
  ///
  /// In en, this message translates to:
  /// **'Current Shortcut Key : {KEY}'**
  String clipboardShortcutPreview(String KEY);

  /// No description provided for @unassigned.
  ///
  /// In en, this message translates to:
  /// **'Unassigned'**
  String get unassigned;

  /// No description provided for @system.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get system;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @local.
  ///
  /// In en, this message translates to:
  /// **'Local'**
  String get local;

  /// No description provided for @uploading.
  ///
  /// In en, this message translates to:
  /// **'Uploading...'**
  String get uploading;

  /// No description provided for @pleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please Wait...'**
  String get pleaseWait;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @noCollection.
  ///
  /// In en, this message translates to:
  /// **'No Collection'**
  String get noCollection;

  /// No description provided for @chooseCollection.
  ///
  /// In en, this message translates to:
  /// **'Choose Collection'**
  String get chooseCollection;

  /// No description provided for @changeCollection.
  ///
  /// In en, this message translates to:
  /// **'Change Collection'**
  String get changeCollection;

  /// No description provided for @removeFromCollection.
  ///
  /// In en, this message translates to:
  /// **'Remove from collection'**
  String get removeFromCollection;

  /// No description provided for @compactMode.
  ///
  /// In en, this message translates to:
  /// **'Compact Mode'**
  String get compactMode;

  /// No description provided for @createACollection.
  ///
  /// In en, this message translates to:
  /// **'Create a new collection ( {LEFT} left )'**
  String createACollection(int LEFT);

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @logoutMessage.
  ///
  /// In en, this message translates to:
  /// **'⚠️ WARNING ⚠️\n\nLogging out will delete unsynced changes in the local database. Are you sure you want to proceed?'**
  String get logoutMessage;

  /// No description provided for @loggingYouOut.
  ///
  /// In en, this message translates to:
  /// **'Logging you out! Please wait...'**
  String get loggingYouOut;

  /// No description provided for @logoutSuccess.
  ///
  /// In en, this message translates to:
  /// **'Logged out successfully'**
  String get logoutSuccess;

  /// No description provided for @internetConnected.
  ///
  /// In en, this message translates to:
  /// **'Internet Connected'**
  String get internetConnected;

  /// No description provided for @internetDisconnected.
  ///
  /// In en, this message translates to:
  /// **'Internet Disconnected'**
  String get internetDisconnected;

  /// No description provided for @noCollectionFound.
  ///
  /// In en, this message translates to:
  /// **'No collection found'**
  String get noCollectionFound;

  /// No description provided for @pinToTop.
  ///
  /// In en, this message translates to:
  /// **'Pin to Top'**
  String get pinToTop;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// No description provided for @syncNow.
  ///
  /// In en, this message translates to:
  /// **'Sync Now'**
  String get syncNow;

  /// No description provided for @syncNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Sync Not Available'**
  String get syncNotAvailable;

  /// No description provided for @checkingForRecord.
  ///
  /// In en, this message translates to:
  /// **'Checking for Records'**
  String get checkingForRecord;

  /// No description provided for @sync.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get sync;

  /// No description provided for @syncing.
  ///
  /// In en, this message translates to:
  /// **'Syncing {PROGRESS}'**
  String syncing(String PROGRESS);

  /// No description provided for @syncingCheckFailed.
  ///
  /// In en, this message translates to:
  /// **'Syncing Check Failed: {MESSAGE}'**
  String syncingCheckFailed(String MESSAGE);

  /// No description provided for @lastSynced.
  ///
  /// In en, this message translates to:
  /// **'Last synced at {TIMESTAMP}'**
  String lastSynced(String TIMESTAMP);

  /// No description provided for @showWindow.
  ///
  /// In en, this message translates to:
  /// **'Show Window'**
  String get showWindow;

  /// No description provided for @hideWindow.
  ///
  /// In en, this message translates to:
  /// **'Hide Window'**
  String get hideWindow;

  /// No description provided for @hideWindowDesc.
  ///
  /// In en, this message translates to:
  /// **'Tip: Use keyboard shortcut to show the clipboard.'**
  String get hideWindowDesc;

  /// No description provided for @quit.
  ///
  /// In en, this message translates to:
  /// **'Quit'**
  String get quit;

  /// No description provided for @quitDesc.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to quit?'**
  String get quitDesc;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @openInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open in browser'**
  String get openInBrowser;

  /// No description provided for @makePhoneCall.
  ///
  /// In en, this message translates to:
  /// **'Make a phone call'**
  String get makePhoneCall;

  /// No description provided for @selectCollection.
  ///
  /// In en, this message translates to:
  /// **'Select a collection'**
  String get selectCollection;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @recordKeyboardShortcut.
  ///
  /// In en, this message translates to:
  /// **'Record keyboard shortcut.'**
  String get recordKeyboardShortcut;

  /// No description provided for @recordKeyboardShortcutDesc.
  ///
  /// In en, this message translates to:
  /// **'Type your shortcut using your keyboard and click '**
  String get recordKeyboardShortcutDesc;

  /// No description provided for @subscription.
  ///
  /// In en, this message translates to:
  /// **'Subscription'**
  String get subscription;

  /// No description provided for @beta.
  ///
  /// In en, this message translates to:
  /// **'BETA'**
  String get beta;

  /// No description provided for @featureListDetail.
  ///
  /// In en, this message translates to:
  /// **'CopyCat Clipboard is currently in the Beta phase. While we strive for a seamless experience, you may encounter occasional bugs. Stay tuned for upcoming features and enhancements.'**
  String get featureListDetail;

  /// No description provided for @currentPlan.
  ///
  /// In en, this message translates to:
  /// **'Current Plan'**
  String get currentPlan;

  /// No description provided for @currentPlanLabel.
  ///
  /// In en, this message translates to:
  /// **'Current Plan • {LABEL}'**
  String currentPlanLabel(String LABEL);

  /// No description provided for @included.
  ///
  /// In en, this message translates to:
  /// **'Included'**
  String get included;

  /// No description provided for @unlimitedClipboardItems.
  ///
  /// In en, this message translates to:
  /// **'• Unlimited Clipboard Items'**
  String get unlimitedClipboardItems;

  /// No description provided for @supportAllMajorPlatforms.
  ///
  /// In en, this message translates to:
  /// **'• Support all major platforms'**
  String get supportAllMajorPlatforms;

  /// No description provided for @supportsAppleUniversalClipboard.
  ///
  /// In en, this message translates to:
  /// **'• Supports Apple\'s Universal Clipboard'**
  String get supportsAppleUniversalClipboard;

  /// No description provided for @onDeviceStorage.
  ///
  /// In en, this message translates to:
  /// **'• On-Device Storage'**
  String get onDeviceStorage;

  /// No description provided for @googleDriveIntegration.
  ///
  /// In en, this message translates to:
  /// **'• Google Drive Integration'**
  String get googleDriveIntegration;

  /// No description provided for @instantSearch.
  ///
  /// In en, this message translates to:
  /// **'• Instant Search'**
  String get instantSearch;

  /// No description provided for @syncingUpToLast24Hours.
  ///
  /// In en, this message translates to:
  /// **'• Syncing up to Last 24 Hours'**
  String get syncingUpToLast24Hours;

  /// No description provided for @upTo3Collections.
  ///
  /// In en, this message translates to:
  /// **'• Up to 3 Collections'**
  String get upTo3Collections;

  /// No description provided for @autoSyncEvery30Seconds.
  ///
  /// In en, this message translates to:
  /// **'• Auto-Sync Every 30 Seconds'**
  String get autoSyncEvery30Seconds;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return lookupAppLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

Future<AppLocalizations> lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return app_localizations_en
          .loadLibrary()
          .then((dynamic _) => app_localizations_en.AppLocalizationsEn());
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
