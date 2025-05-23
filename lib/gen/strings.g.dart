/// Generated file. Do not edit.
///
/// Original: assets/translations
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 1034 (517 per locale)
///
/// Built on 2025-05-13 at 17:54 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	fr(languageCode: 'fr', build: _StringsFr.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _StringsGenericEn generic = _StringsGenericEn._(_root);
	late final _StringsHomepageEn homepage = _StringsHomepageEn._(_root);
	late final _StringsFoldersEn folders = _StringsFoldersEn._(_root);
	late final _StringsToolsEn tools = _StringsToolsEn._(_root);
	late final _StringsCreditsEn credits = _StringsCreditsEn._(_root);
}

// Path: generic
class _StringsGenericEn {
	_StringsGenericEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get app_name => 'Toolbox';
	String get error => 'Error';
	String get warning => 'Warning';
	String get ok => 'OK';
	String get cancel => 'Cancel';
	String get search => 'Search';
	String get enable => 'Enable';
	String get reset => 'Reset';
	String get yes => 'Yes';
	String get no => 'No';
}

// Path: homepage
class _StringsHomepageEn {
	_StringsHomepageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get update_available => 'Update available';
	String get update_available_message => 'A new version of Toolbox is available. Update it now to get the latest features and improvements.';
	String get switch_view => 'Switch view';
	String get search_all_folders => 'Search in all folders';
	String get add => 'Add';
	String get remove => 'Remove';
	String get favorites => 'Favorites';
	String get would_you_like_to_add_this_tool_to_favorites => 'Would you like to add this tool to favorites?';
	String get would_you_like_to_remove_this_tool_from_favorites => 'Would you like to remove this tool from favorites?';
}

// Path: folders
class _StringsFoldersEn {
	_StringsFoldersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get audio => 'Audio';
	String get calculations => 'Calculations';
	String get games => 'Games';
	String get geography => 'Geography';
	String get miscellaneous => 'Miscellaneous';
	String get network => 'Network';
	String get random => 'Random';
	String get time => 'Time';
	String get web => 'Web';
}

// Path: tools
class _StringsToolsEn {
	_StringsToolsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsToolsBaseconverterEn baseconverter = _StringsToolsBaseconverterEn._(_root);
	late final _StringsToolsClockEn clock = _StringsToolsClockEn._(_root);
	late final _StringsToolsMetronomeEn metronome = _StringsToolsMetronomeEn._(_root);
	late final _StringsToolsMegaphoneEn megaphone = _StringsToolsMegaphoneEn._(_root);
	late final _StringsToolsNslookupEn nslookup = _StringsToolsNslookupEn._(_root);
	late final _StringsToolsPingEn ping = _StringsToolsPingEn._(_root);
	late final _StringsToolsSoundmeterEn soundmeter = _StringsToolsSoundmeterEn._(_root);
	late final _StringsToolsQrreaderEn qrreader = _StringsToolsQrreaderEn._(_root);
	late final _StringsToolsTimerEn timer = _StringsToolsTimerEn._(_root);
	late final _StringsToolsStopwatchEn stopwatch = _StringsToolsStopwatchEn._(_root);
	late final _StringsToolsRouletteEn roulette = _StringsToolsRouletteEn._(_root);
	late final _StringsToolsFlipcoinsEn flipcoins = _StringsToolsFlipcoinsEn._(_root);
	late final _StringsToolsRandomnumberEn randomnumber = _StringsToolsRandomnumberEn._(_root);
	late final _StringsToolsRandomcolorEn randomcolor = _StringsToolsRandomcolorEn._(_root);
	late final _StringsToolsSshclientEn sshclient = _StringsToolsSshclientEn._(_root);
	late final _StringsToolsWhiteboardEn whiteboard = _StringsToolsWhiteboardEn._(_root);
	late final _StringsToolsNetworkinfoEn networkinfo = _StringsToolsNetworkinfoEn._(_root);
	late final _StringsToolsUuidgeneratorEn uuidgenerator = _StringsToolsUuidgeneratorEn._(_root);
	late final _StringsToolsTexttospeechEn texttospeech = _StringsToolsTexttospeechEn._(_root);
	late final _StringsToolsNearbypublictransportstopsEn nearbypublictransportstops = _StringsToolsNearbypublictransportstopsEn._(_root);
	late final _StringsToolsFileencryptionEn fileencryption = _StringsToolsFileencryptionEn._(_root);
	late final _StringsToolsYoutubethumbnailEn youtubethumbnail = _StringsToolsYoutubethumbnailEn._(_root);
	late final _StringsToolsNationalanthemsEn nationalanthems = _StringsToolsNationalanthemsEn._(_root);
	late final _StringsToolsHttprequestEn httprequest = _StringsToolsHttprequestEn._(_root);
	late final _StringsToolsMorsecodeEn morsecode = _StringsToolsMorsecodeEn._(_root);
	late final _StringsToolsOsmEn osm = _StringsToolsOsmEn._(_root);
	late final _StringsToolsGameoflifeEn gameoflife = _StringsToolsGameoflifeEn._(_root);
	late final _StringsToolsSpeedometerEn speedometer = _StringsToolsSpeedometerEn._(_root);
	late final _StringsToolsMcServerPingEn mc_server_ping = _StringsToolsMcServerPingEn._(_root);
	late final _StringsToolsTimestampconverterEn timestampconverter = _StringsToolsTimestampconverterEn._(_root);
	late final _StringsToolsUrlshortenerEn urlshortener = _StringsToolsUrlshortenerEn._(_root);
	late final _StringsToolsCounterEn counter = _StringsToolsCounterEn._(_root);
	late final _StringsToolsBitwisecalculatorEn bitwisecalculator = _StringsToolsBitwisecalculatorEn._(_root);
	late final _StringsToolsMusicsearchEn musicsearch = _StringsToolsMusicsearchEn._(_root);
	late final _StringsToolsMusicanalyserEn musicanalyser = _StringsToolsMusicanalyserEn._(_root);
	late final _StringsToolsTextdifferencesEn textdifferences = _StringsToolsTextdifferencesEn._(_root);
	late final _StringsToolsCharacterscopyEn characterscopy = _StringsToolsCharacterscopyEn._(_root);
	late final _StringsToolsWhoisdomainEn whoisdomain = _StringsToolsWhoisdomainEn._(_root);
	late final _StringsToolsTextcounterEn textcounter = _StringsToolsTextcounterEn._(_root);
	late final _StringsToolsRomannumeralEn romannumeral = _StringsToolsRomannumeralEn._(_root);
	late final _StringsToolsAreacalculatorEn areacalculator = _StringsToolsAreacalculatorEn._(_root);
	late final _StringsToolsMathtexEn mathtex = _StringsToolsMathtexEn._(_root);
	late final _StringsToolsCompassEn compass = _StringsToolsCompassEn._(_root);
	late final _StringsToolsQrcreatorEn qrcreator = _StringsToolsQrcreatorEn._(_root);
	late final _StringsToolsPastebinEn pastebin = _StringsToolsPastebinEn._(_root);
}

// Path: credits
class _StringsCreditsEn {
	_StringsCreditsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Credits';
	String app_icon({required Object author}) => 'App icon by ${author}';
	String app_license({required Object license}) => 'The app is licensed under the ${license} license';
	String tools_icons({required Object author}) => 'Tools icons by ${author}';
	String get ads_disclaimer => 'Ads are there to help me pay server costs and support the development of this app.\nOnly a small banner is displayed at the bottom of the screen, nothing to block your Toolbox experience.';
	String get more_apps_and_services => 'More apps and services';
	String get view_licenses => 'View licenses';
	String get contribute_on_github => 'Contribute on GitHub';
	String get email_copied_to_clipboard => 'Email copied to clipboard';
	String get made_with_love_in_switzerland => 'Made with love in Switzerland';
	String get made_with_love_in_switzerland_description => 'Made in Switzerland, used worldwide.\nThank you for using Toolbox.\nIf you like it, please consider leaving a review on the Play Store or App Store.\nIt helps me a lot and motivates me to keep improving the app.';
	late final _StringsCreditsTranslationsEn translations = _StringsCreditsTranslationsEn._(_root);
}

// Path: tools.baseconverter
class _StringsToolsBaseconverterEn {
	_StringsToolsBaseconverterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Base converter';
	String get enter_a_dec_number => 'Enter a decimal number';
	String get enter_a_hex_number => 'Enter a hexadecimal number';
	String get enter_a_bin_number => 'Enter a binary number';
	String get enter_a_oct_number => 'Enter an octal number';
	String get hexadecimal => 'Hexadecimal';
	String get binary => 'Binary';
	String get octal => 'Octal';
	String get decimal => 'Decimal';
	String get incompatible_number => 'Incompatible number';
	String get too_big_number => 'Too big number';
	String the_number_you_entered_is_not_a_valid_x_number({required Object base}) => 'The number you entered is not a valid ${base} number';
	String get the_number_you_entered_is_too_big_to_be_abble_to_convert_it => 'The number you entered is too big to be able to convert it';
}

// Path: tools.clock
class _StringsToolsClockEn {
	_StringsToolsClockEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Clock';
	String get change_timezone => 'Change timezone';
	String get timezone => 'Timezone';
	String get choose_a_timezone => 'Choose a timezone';
	String get select_local => 'Local time';
}

// Path: tools.metronome
class _StringsToolsMetronomeEn {
	_StringsToolsMetronomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Metronome';
	String get bpm => 'BPM';
	String get beats_per_measure => 'Beats per measure';
	String get start => 'Start';
	String get stop => 'Stop';
}

// Path: tools.megaphone
class _StringsToolsMegaphoneEn {
	_StringsToolsMegaphoneEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Megaphone';
	late final _StringsToolsMegaphoneErrorEn error = _StringsToolsMegaphoneErrorEn._(_root);
}

// Path: tools.nslookup
class _StringsToolsNslookupEn {
	_StringsToolsNslookupEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'NSLookup';
	String get enter_a_domain_name => 'Enter a domain name';
	String get lookup => 'Lookup';
	late final _StringsToolsNslookupErrorEn error = _StringsToolsNslookupErrorEn._(_root);
}

// Path: tools.ping
class _StringsToolsPingEn {
	_StringsToolsPingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Ping';
	String get ping => 'Ping';
	String get enter_a_domain_name_or_ip => 'Enter a domain name or IP address';
	String reply_from_host_time_ttl({required Object host, required Object time, required Object ttl}) => 'Reply from ${host}: time=${time}ms TTL=${ttl}';
	String x_packets_transmitted_y({required Object transmitted, required Object received}) => '${transmitted} packets transmitted, ${received} packets received';
	late final _StringsToolsPingErrorEn error = _StringsToolsPingErrorEn._(_root);
}

// Path: tools.soundmeter
class _StringsToolsSoundmeterEn {
	_StringsToolsSoundmeterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Sound meter';
	String get decibels => 'dB';
	late final _StringsToolsSoundmeterErrorEn error = _StringsToolsSoundmeterErrorEn._(_root);
}

// Path: tools.qrreader
class _StringsToolsQrreaderEn {
	_StringsToolsQrreaderEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'QR reader';
	String get scanned => 'Scanned';
	String get openurl => 'Open link';
	String get copy_password => 'Copy password';
	String get copy => 'Copy';
	String get copied_to_clipboard => 'Copied to clipboard';
	String get wifi => 'WiFi';
	String get wifi_ssid => 'SSID';
	String get wifi_password => 'Password';
	late final _StringsToolsQrreaderErrorEn error = _StringsToolsQrreaderErrorEn._(_root);
}

// Path: tools.timer
class _StringsToolsTimerEn {
	_StringsToolsTimerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Timer';
	String get start => 'Start';
	String get stop => 'Stop';
	String get ios_warning_message => 'For the timer to ring on iOS, you must not quit the application or switch off your iPhone screen. Otherwise iOS will prevent the timer from ringing when it reaches zero.';
}

// Path: tools.stopwatch
class _StringsToolsStopwatchEn {
	_StringsToolsStopwatchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Stopwatch';
	String get start => 'Start';
	String get stop => 'Stop';
	String get reset => 'Reset';
	String get lap => 'Lap';
}

// Path: tools.roulette
class _StringsToolsRouletteEn {
	_StringsToolsRouletteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Roulette';
	String get tap_to_roll_info => 'Tap the wheel to roll it';
	String get default_1 => 'Study';
	String get default_2 => 'Play';
	String get default_3 => 'Sleep';
	String get add => 'Add';
	String get remove => 'Remove';
	String get add_item => 'Add an item';
	String get item_name => 'Item name';
	String get remove_an_item => 'Remove an item';
	late final _StringsToolsRouletteWarningEn warning = _StringsToolsRouletteWarningEn._(_root);
}

// Path: tools.flipcoins
class _StringsToolsFlipcoinsEn {
	_StringsToolsFlipcoinsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Flip a coin';
	String get change_coin_currency => 'Change coin currency';
}

// Path: tools.randomnumber
class _StringsToolsRandomnumberEn {
	_StringsToolsRandomnumberEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Random number';
	String get min => 'Min';
	String get max => 'Max';
	late final _StringsToolsRandomnumberErrorEn error = _StringsToolsRandomnumberErrorEn._(_root);
}

// Path: tools.randomcolor
class _StringsToolsRandomcolorEn {
	_StringsToolsRandomcolorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Random color';
	String get hint => 'Tap the color to change it';
	String get tap_to_copy => 'Tap to copy';
	String get copied_to_clipboard => 'Copied to clipboard';
}

// Path: tools.sshclient
class _StringsToolsSshclientEn {
	_StringsToolsSshclientEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'SSH client';
	String get backspace => 'Backspace';
	String get use_password => 'Use password';
	String get use_ssh_key => 'Use SSH key';
	String get host => 'Host';
	String get port => 'Port';
	String get username => 'Username';
	String get password => 'Password';
	String get connect => 'Connect';
	String get select_private_key => 'Select private key';
	String get no_private_key_selected => 'No private key selected';
	String get passphrase => 'Passphrase (leave empty if none)';
	late final _StringsToolsSshclientErrorEn error = _StringsToolsSshclientErrorEn._(_root);
}

// Path: tools.whiteboard
class _StringsToolsWhiteboardEn {
	_StringsToolsWhiteboardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Whiteboard';
	String get share_success => 'Your whiteboard has been shared successfully';
	String get save_success => 'Your whiteboard has been saved successfully';
}

// Path: tools.networkinfo
class _StringsToolsNetworkinfoEn {
	_StringsToolsNetworkinfoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Network info';
	String get loading => 'Loading...';
	String get location_permission_required => 'Location permission is required to get some WiFi info (this is an OS limitation).\nYou could get incorrect info if you don\'t grant it.';
	String get public_ip => 'Public IP address';
	String get local_ip => 'Local IP address';
	String get local_subnet_mask => 'Local network subnet mask';
	String get local_gateway_ip => 'Local network gateway IP';
	String get local_broadcast_ip => 'Local network broadcast IP';
	String get wifi_name => 'WiFi name';
	String get wifi_bssid => 'WiFi BSSID';
	String get not_available_on_ios => 'Not available on iOS';
	String get note_location_permission => 'Note: some information may be incorrect if you didn\'t grant precise location permission.';
}

// Path: tools.uuidgenerator
class _StringsToolsUuidgeneratorEn {
	_StringsToolsUuidgeneratorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'UUID generator';
	String get generate => 'Generate';
	String get default_uuid_text => 'Press a button to generate a UUID';
	String get tap_to_copy => 'Tap to copy';
	String get copied_to_clipboard => 'Copied to clipboard';
	String get v1_uuid => 'v1 (time-based)';
	String get v4_uuid => 'v4 (random)';
	String get v5_uuid => 'v5 (sha1-based)';
	String get v5_generate_title => 'Generate v5 UUID';
	String get v5_namespace => 'Namespace (leave blank for random)';
	String get v5_name => 'Name (leave blank for none)';
	late final _StringsToolsUuidgeneratorErrorEn error = _StringsToolsUuidgeneratorErrorEn._(_root);
}

// Path: tools.texttospeech
class _StringsToolsTexttospeechEn {
	_StringsToolsTexttospeechEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Text to speech';
	String get choose_a_language => 'Choose a language';
	String get text_to_speak => 'Text to speak';
	String get pitch => 'Pitch';
	String get rate => 'Rate';
	String get play => 'Play';
	String get stop => 'Stop';
	late final _StringsToolsTexttospeechErrorEn error = _StringsToolsTexttospeechErrorEn._(_root);
}

// Path: tools.nearbypublictransportstops
class _StringsToolsNearbypublictransportstopsEn {
	_StringsToolsNearbypublictransportstopsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Nearby transport stops';
	String get loading => 'Loading...';
	String get refresh => 'Refresh';
	String get data_source => 'Data source';
	String get initial_dialog_title => 'Information';
	String initial_dialog_message({required Object source}) => 'This tool is intended to be used in Switzerland. It uses the data from "${source}"';
	String get data_license_dialog_open => 'Open';
	String get data_license_dialog_title => 'Data source';
	String data_license_dialog_message({required Object source, required Object url}) => 'The data used in this tool comes from "${source}".\n${url}';
	String get no_departures => 'No departures found';
	String get departure => 'Departure';
	String get arrival => 'Arrival';
	String get platform => 'Platform';
	String get show_on_map => 'Map';
	String get map_marker_title => 'Stop';
	late final _StringsToolsNearbypublictransportstopsErrorEn error = _StringsToolsNearbypublictransportstopsErrorEn._(_root);
}

// Path: tools.fileencryption
class _StringsToolsFileencryptionEn {
	_StringsToolsFileencryptionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'File encryption';
	String get home_hint => 'Pick a file to encrypt it. If you want to decrypt a file, pick an encrypted file with the .aes extension';
	String get no_file_selected => 'No file selected';
	String get enter_password => 'Please enter a password';
	String get file_saved_successfully => 'File saved successfully';
	String get pick_a_file => 'Pick a file';
	String get encryption_password => 'Encryption password';
	String get encrypt => 'Encrypt';
	String get decrypt => 'Decrypt';
	late final _StringsToolsFileencryptionErrorEn error = _StringsToolsFileencryptionErrorEn._(_root);
}

// Path: tools.youtubethumbnail
class _StringsToolsYoutubethumbnailEn {
	_StringsToolsYoutubethumbnailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'YouTube thumbnail';
	String get saved => 'Thumbnail saved to device';
	String get youtube_video_id => 'YouTube video URL';
	String get save_thumbnail => 'Save thumbnail';
	late final _StringsToolsYoutubethumbnailErrorEn error = _StringsToolsYoutubethumbnailErrorEn._(_root);
}

// Path: tools.nationalanthems
class _StringsToolsNationalanthemsEn {
	_StringsToolsNationalanthemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'National anthems';
	String get stop => 'Stop the anthem';
	String get search => 'Search (English name)';
	String get license => 'License';
	String license_text({required Object source, required Object license}) => 'The audio files are provided by "${source}" under the ${license} license';
	String get open => 'Open';
	String get view_license => 'View license';
	String get loading_audio_title => 'Loading';
	String get loading_audio_text => 'Loading the anthem, please wait...';
	late final _StringsToolsNationalanthemsErrorEn error = _StringsToolsNationalanthemsErrorEn._(_root);
}

// Path: tools.httprequest
class _StringsToolsHttprequestEn {
	_StringsToolsHttprequestEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'HTTP request';
	String get method => 'Method';
	String get custom_method => 'Custom method';
	String get url => 'URL';
	String get headers => 'Headers';
	String get body => 'Body';
	String get render_html => 'Render HTML';
	String get back_to_details => 'Back to details';
	String get send_request => 'Send request';
	String get response => 'Response';
	String get status_code => 'Status code';
	late final _StringsToolsHttprequestErrorEn error = _StringsToolsHttprequestErrorEn._(_root);
}

// Path: tools.morsecode
class _StringsToolsMorsecodeEn {
	_StringsToolsMorsecodeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Morse code';
	String get alphabet_field => 'Alphabet (A-Z, 0-9)';
	String get morse_field => 'Morse code (. and -)';
	String get note_spaces => 'Note: Use 1 space between letters, 3 spaces between words.';
	String get alphabet_to_morse => 'Alphabet to morse';
	String get morse_to_alphabet => 'Morse to alphabet';
	String get play_audio => 'Play audio';
}

// Path: tools.osm
class _StringsToolsOsmEn {
	_StringsToolsOsmEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Map (OSM)';
	String get go_to_my_location => 'Go to my location';
	String get loading_map => 'Loading map...';
	late final _StringsToolsOsmErrorEn error = _StringsToolsOsmErrorEn._(_root);
}

// Path: tools.gameoflife
class _StringsToolsGameoflifeEn {
	_StringsToolsGameoflifeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Game of life';
	String get grid_size => 'Grid size';
	String current_size_is_x({required Object size}) => 'Current size is ${size}';
	String get waiting => 'Waiting';
	String get stop_simulation => 'Stop simulation';
	String get start_simulation => 'Start simulation';
	String get randomize_grid => 'Randomize grid';
	String get clear_grid => 'Clear grid';
	late final _StringsToolsGameoflifeErrorEn error = _StringsToolsGameoflifeErrorEn._(_root);
}

// Path: tools.speedometer
class _StringsToolsSpeedometerEn {
	_StringsToolsSpeedometerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Speedometer';
	String get reset => 'Reset';
	String get about_traveled_distance_title => 'About traveled distance';
	String get about_traveled_distance_description => 'Traveled distance is calculated using the speed detected by the GPS.\nThis means that the distance is not 100% accurate.';
	String get kmh => 'km/h';
	String get km => 'km';
	String get mph => 'mph';
	String get mi => 'mi';
	String get change_speed_unit => 'Change speed unit';
	String get change_speed_unit_description => 'Choose the speed unit you want to use with the speedometer';
	String get traveled_distance => 'Traveled distance';
	late final _StringsToolsSpeedometerErrorEn error = _StringsToolsSpeedometerErrorEn._(_root);
}

// Path: tools.mc_server_ping
class _StringsToolsMcServerPingEn {
	_StringsToolsMcServerPingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'MC server ping';
	String get java_edition => 'Java Edition';
	String get information_java => 'Information';
	String get information_java_description => 'Check this box if the server is available for the Java Edition of Minecraft. If not, unchecked it and the tool will use the Bedrock Edition API.';
	String get server_ip => 'Minecraft server IP (or domain)';
	String get ping => 'Ping server';
	String get ping_another_server => 'Ping another server';
	String get api_used => 'API used';
	String get about_the_api => 'About the API';
	String about_the_api_description({required Object source, required Object website}) => 'This tool uses the "${source}" from "${website}" to ping Minecraft servers.';
	String get about_open => 'Open';
	String the_server_id_is({required Object id}) => 'The server ID is "${id}"';
	String get added_to_favorites => 'Added to favorites';
	String get added_to_favorites_description => 'The server has been added to your favorites.';
	String get removed_from_favorites => 'Removed from favorites';
	String get removed_from_favorites_description => 'The server has been removed from your favorites.';
	String get add_to_favorites => 'Add to favorite';
	String get remove_from_favorites => 'Remove from favorite';
	String get from_favorites => 'From favorites';
	String get pick_from_favorites => 'Pick from favorites';
	String get no_favorites => 'No favorites';
	String get no_favorites_description => 'You don\'t have any favorite servers yet.';
	late final _StringsToolsMcServerPingErrorEn error = _StringsToolsMcServerPingErrorEn._(_root);
}

// Path: tools.timestampconverter
class _StringsToolsTimestampconverterEn {
	_StringsToolsTimestampconverterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Timestamp converter';
	String get now_tooltip => 'Now';
	String get utc => 'UTC';
	String get local => 'Local';
	String get local_or_utc_dialog_title => 'Local or UTC';
	String get local_or_utc_dialog_message => 'Do you want to pick a local or UTC date?';
	String get unix_timestamp => 'Unix timestamp';
	String get convert_timestamp_to_date => 'Convert timestamp to date';
	String get tap_the_date_to_change_it => 'Tap the date to change it';
	String get select_seconds => 'Select seconds';
	late final _StringsToolsTimestampconverterErrorEn error = _StringsToolsTimestampconverterErrorEn._(_root);
}

// Path: tools.urlshortener
class _StringsToolsUrlshortenerEn {
	_StringsToolsUrlshortenerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'URL shortener';
	String get url => 'URL';
	String get qr_code => 'QR code';
	String get share => 'Share';
	String get share_dialog_message => 'What do you want to share?';
	String get your_shortened_url_is => 'Your shortened URL is';
	String get copy_to_clipboard => 'Copy to clipboard';
	String get shorten_another_url => 'Shorten another URL';
	String get url_to_shorten => 'URL to shorten';
	String by_clicking_you_accept({required Object url}) => 'By clicking the shorten button, you agree to the terms of service of "${url}" available via the link below.';
	String get terms_of_service => 'Terms of service';
	String get shorten => 'Shorten';
	String get more_features => 'More features';
	String get more_features_message => 'Use additional features such as text sharing, custom links, and more via the official JTU.ME website';
	String get open => 'Open';
	late final _StringsToolsUrlshortenerErrorEn error = _StringsToolsUrlshortenerErrorEn._(_root);
}

// Path: tools.counter
class _StringsToolsCounterEn {
	_StringsToolsCounterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Counter';
	String get add_button => 'Add button';
	String get remove_button => 'Remove button';
	String get enter_number => 'Enter a number';
	late final _StringsToolsCounterErrorEn error = _StringsToolsCounterErrorEn._(_root);
}

// Path: tools.bitwisecalculator
class _StringsToolsBitwisecalculatorEn {
	_StringsToolsBitwisecalculatorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Bitwise calculator';
	String get first_number => 'First number';
	String get second_number => 'Second number';
	String get enter_a_binary_number => 'Enter a binary number';
	String get and => 'AND';
	String get or => 'OR';
	String get xor => 'XOR';
	late final _StringsToolsBitwisecalculatorErrorEn error = _StringsToolsBitwisecalculatorErrorEn._(_root);
}

// Path: tools.musicsearch
class _StringsToolsMusicsearchEn {
	_StringsToolsMusicsearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Music search';
	String get unknown_title => 'Unknown title';
	String get unknown_artist => 'Unknown artist';
	String get unknown_album => 'Unknown album';
	String get loading => 'Loading';
	String get loading_audio_preview => 'Loading audio preview...';
	String get stop_audio_preview => 'Stop audio preview';
	String get data_source => 'Data source';
	String this_tool_uses_the_x_api({required Object service}) => 'This tool uses the "${service}" API to search for music.\nThe audio previews are provided by "${service}".';
	String go_to_x({required Object service}) => 'Go to ${service}';
	String get search_for_music => 'Search for music';
	String get use_the_searchbar_to_search_music => 'Use the search bar to find music.\nIf your search returns no results, try a different search term.';
	String open_in_x({required Object service}) => 'Open in ${service}';
	String get play_preview => 'Play preview';
	late final _StringsToolsMusicsearchErrorEn error = _StringsToolsMusicsearchErrorEn._(_root);
}

// Path: tools.musicanalyser
class _StringsToolsMusicanalyserEn {
	_StringsToolsMusicanalyserEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Music analyser';
	String get press_the_button_to_start_music_analysis => 'Press the button to start music analysis';
	String get loading => 'Loading...';
	String analyzing_music({required Object remainingSeconds}) => 'Analyzing music... (${remainingSeconds}s)';
	String get getting_results => 'Getting results...';
	String get unknown => 'Unknown';
	String get api_used => 'API used';
	String this_tool_uses_the_x_api({required Object service, required Object company}) => 'This tool uses the "${service}" API via a Koizeay backend server. "${service}" is a registered trademark of "${company}" and is not affiliated with this tool.';
	String get start_analyzing_music => 'Start analyzing music';
	String get clear => 'Clear';
	late final _StringsToolsMusicanalyserErrorEn error = _StringsToolsMusicanalyserErrorEn._(_root);
}

// Path: tools.textdifferences
class _StringsToolsTextdifferencesEn {
	_StringsToolsTextdifferencesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Text differences';
	String get old_text => 'Old text';
	String get new_text => 'New text';
	String get no_text_hint => 'Enter text in the fields above to see the differences';
}

// Path: tools.characterscopy
class _StringsToolsCharacterscopyEn {
	_StringsToolsCharacterscopyEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Characters copy';
	String get important => 'Important';
	String get important_description => 'Some characters may not be displayed correctly on all devices depending on your operating system. Also, some characters may not be supported by all apps and fonts. Just click on the character you want to copy and it will be copied to your clipboard.';
	String get copied_to_clipboard => 'Copied to clipboard';
}

// Path: tools.whoisdomain
class _StringsToolsWhoisdomainEn {
	_StringsToolsWhoisdomainEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Whois domain';
	String get domain_name => 'Domain name';
	String get whois_lookup => 'Whois lookup';
	String get disclaimer => 'Disclaimer';
	String get disclaimer_text => 'Toolbox provides WHOIS query functionality for informational purposes only. The data retrieved may not be accurate, complete, or up-to-date, and is subject to the terms and conditions of the respective domain registries. Users are prohibited from using WHOIS data for spam, unlawful purposes, or automated data collection. By using this tool, you agree to comply with applicable laws and the registry\'s terms of service. Toolbox and/or Koizeay assumes no responsibility for errors, omissions, or misuse of the data. Please note that some TLDs may not be supported by this tool.';
	String get loading => 'Loading...';
	String get ip_address_not_supported => 'IP address not supported';
	String get ip_address_not_supported_description => 'This tool only supports domain names, not IP addresses';
	String get no_result => 'No valid result found';
	String get view_pretty => 'View pretty';
	String get view_raw => 'View raw';
	late final _StringsToolsWhoisdomainErrorEn error = _StringsToolsWhoisdomainErrorEn._(_root);
}

// Path: tools.textcounter
class _StringsToolsTextcounterEn {
	_StringsToolsTextcounterEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Text counter';
	String get clear => 'Clear';
	String get enter_text_here => 'Enter text here';
	String get length => 'Length';
	String get trimmed_length => 'Trimmed length';
	String get raw_length => 'Raw length';
	String get letters => 'Letters';
	String get words => 'Words';
	String get spaces => 'Spaces';
	String get digits => 'Digits';
	String get lines => 'Lines';
	String get empty_lines => 'Empty lines';
	String get total_lines => 'Total lines';
}

// Path: tools.romannumeral
class _StringsToolsRomannumeralEn {
	_StringsToolsRomannumeralEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Roman numeral';
	String get change_to => 'Change to';
	String get roman_numeral => 'roman numeral';
	String get number => 'number';
	String get number_input_hint => 'Number';
	String get roman_numeral_input_hint => 'Roman numeral';
	String get tap_to_copy => 'Tap to copy';
	String get copied_to_clipboard => 'Copied to clipboard';
	late final _StringsToolsRomannumeralErrorEn error = _StringsToolsRomannumeralErrorEn._(_root);
}

// Path: tools.areacalculator
class _StringsToolsAreacalculatorEn {
	_StringsToolsAreacalculatorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Area calculator';
	String get select_a_shape => 'Select a shape';
	String get area => 'Area';
	String get calculate => 'Calculate';
	late final _StringsToolsAreacalculatorShapesEn shapes = _StringsToolsAreacalculatorShapesEn._(_root);
	late final _StringsToolsAreacalculatorInputsEn inputs = _StringsToolsAreacalculatorInputsEn._(_root);
	late final _StringsToolsAreacalculatorErrorEn error = _StringsToolsAreacalculatorErrorEn._(_root);
}

// Path: tools.mathtex
class _StringsToolsMathtexEn {
	_StringsToolsMathtexEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'MathTeX';
	String get enter_a_mathematical_expression_in_tex_format => 'Enter a mathematical expression in TeX format';
	String get export_to_image => 'Export to image';
	String get edit_pixel_ratio => 'Edit pixel ratio';
	String get new_pixel_ratio => 'New pixel ratio';
	String get get_help => 'Get help';
	String get close_help => 'Close help';
	String get copied_to_clipboard => 'Copied to clipboard';
	late final _StringsToolsMathtexErrorEn error = _StringsToolsMathtexErrorEn._(_root);
}

// Path: tools.compass
class _StringsToolsCompassEn {
	_StringsToolsCompassEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Compass';
	late final _StringsToolsCompassErrorEn error = _StringsToolsCompassErrorEn._(_root);
}

// Path: tools.qrcreator
class _StringsToolsQrcreatorEn {
	_StringsToolsQrcreatorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'QR creator';
	String get ecc_low => 'Low';
	String get ecc_medium => 'Medium';
	String get ecc_quartile => 'Quartile';
	String get ecc_high => 'High';
	String get saved_successfully => 'QR code saved successfully';
	String get shared_successfully => 'QR code shared successfully';
	String get enter_text_or_url => 'Enter text or URL';
	String get error_correction_level => 'Error correction level';
	String get create => 'Create';
	String get save => 'Save';
	String get share => 'Share';
	late final _StringsToolsQrcreatorErrorEn error = _StringsToolsQrcreatorErrorEn._(_root);
}

// Path: tools.pastebin
class _StringsToolsPastebinEn {
	_StringsToolsPastebinEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Pastebin';
	String get url => 'URL';
	String get qr_code => 'QR code';
	String get share => 'Share';
	String get share_dialog_message => 'What do you want to share?';
	String get your_short_link_is => 'Your short link is';
	String get copy_to_clipboard => 'Copy to clipboard';
	String get copied_to_clipboard => 'Short link copied to clipboard';
	String get paste_another_text => 'Paste another text';
	String get text_to_paste => 'Text to paste';
	String get text_paste_field_hint => 'Paste your text, source code or other content here';
	String by_clicking_you_accept({required Object url}) => 'By clicking the send button, you agree to the terms of service of "${url}" available via the link below.';
	String get terms_of_service => 'Terms of service';
	String get send => 'Send';
	String get more_features => 'More features';
	String get more_features_message => 'Use additional features such as URL shortening, custom links, and more via the official JTU.ME website';
	String get open => 'Open';
	late final _StringsToolsPastebinErrorEn error = _StringsToolsPastebinErrorEn._(_root);
}

// Path: credits.translations
class _StringsCreditsTranslationsEn {
	_StringsCreditsTranslationsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Translations';
	String english({required Object author}) => 'English by ${author}';
	String french({required Object author}) => 'French by ${author}';
}

// Path: tools.megaphone.error
class _StringsToolsMegaphoneErrorEn {
	_StringsToolsMegaphoneErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get microphone_permission_denied => 'Permission denied, please allow the application to access the microphone in your device settings';
}

// Path: tools.nslookup.error
class _StringsToolsNslookupErrorEn {
	_StringsToolsNslookupErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get please_enter_a_domain_name => 'Please enter a domain name';
	String get no_address_associated_with_domain => 'There is no address associated with the host name.\nCheck your input and your internet connection then try again.';
}

// Path: tools.ping.error
class _StringsToolsPingErrorEn {
	_StringsToolsPingErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get please_enter_a_domain_name_or_ip => 'Please enter a domain name or IP address';
	String get request_timeout => 'Request timeout';
	String get unkown_host => 'Unknown host';
	String get no_reply => 'No reply';
	String get unkown_error => 'Unknown error';
}

// Path: tools.soundmeter.error
class _StringsToolsSoundmeterErrorEn {
	_StringsToolsSoundmeterErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get impossible_to_start_the_sound_meter => 'Impossible to start the sound meter';
	String get no_sound_detected => 'No sound detected, check that the application has access to the microphone in the settings of your device.';
}

// Path: tools.qrreader.error
class _StringsToolsQrreaderErrorEn {
	_StringsToolsQrreaderErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get no_qr_code => 'No QR code';
	String get error_no_result => 'No result found';
}

// Path: tools.roulette.warning
class _StringsToolsRouletteWarningEn {
	_StringsToolsRouletteWarningEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String you_cant_add_more_than_x_items({required Object numberOfItems}) => 'You can\'t have more than ${numberOfItems} items in the roulette.';
	String you_must_have_at_least_x_items({required Object numberOfItems}) => 'You must have at least ${numberOfItems} items in the roulette.';
	String get you_must_enter_an_item_name => 'You must enter an item name.';
}

// Path: tools.randomnumber.error
class _StringsToolsRandomnumberErrorEn {
	_StringsToolsRandomnumberErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_number => 'Invalid number, please try again.';
	String get min_must_be_lower_than_max => 'The minimum number must be lower than the maximum number.';
	String min_and_max_must_be_between_x_and_y({required Object minNumberLimit, required Object maxNumberLimit}) => 'The minimum and maximum numbers must be between ${minNumberLimit} and ${maxNumberLimit}.';
}

// Path: tools.sshclient.error
class _StringsToolsSshclientErrorEn {
	_StringsToolsSshclientErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_port => 'Invalid port';
	String get invalid_passphrase => 'You may have entered a passphrase when your key is not encrypted, or vice versa';
	String get invalid_private_key => 'The key you provided is not a valid private key';
	String get authentication_failed => 'Authentication failed';
	String get connection_failed => 'Could not connect to host';
	String get unknown_error => 'An unknown error occurred. Please try again';
}

// Path: tools.uuidgenerator.error
class _StringsToolsUuidgeneratorErrorEn {
	_StringsToolsUuidgeneratorErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_namespace => 'The namespace is not a valid UUID';
}

// Path: tools.texttospeech.error
class _StringsToolsTexttospeechErrorEn {
	_StringsToolsTexttospeechErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get please_try_again => 'Please try again later.\nIf it\'s the first time you\'re using this language, please wait a few seconds and try again.';
	String get please_select_a_language => 'Please select a language';
}

// Path: tools.nearbypublictransportstops.error
class _StringsToolsNearbypublictransportstopsErrorEn {
	_StringsToolsNearbypublictransportstopsErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get location_permission_denied => 'Location permission denied or disabled, please enable it in settings in order to see nearby stops.';
	String get check_internet_connection => 'Please check your internet connection and try again.';
	String get api_empty_response => 'The API returned an empty response';
	String api_error_xxx({required Object errorCode}) => 'The API returned an error: ${errorCode}';
	String get no_stops_found => 'No stops found for this search';
	String get no_maps_app => 'No maps app found on your device';
}

// Path: tools.fileencryption.error
class _StringsToolsFileencryptionErrorEn {
	_StringsToolsFileencryptionErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get failed_to_read_file => 'Failed to read the file';
	String get failed_to_decrypt_file => 'Failed to decrypt the file, please check the password';
	String get please_enter_a_password => 'Please enter a password';
}

// Path: tools.youtubethumbnail.error
class _StringsToolsYoutubethumbnailErrorEn {
	_StringsToolsYoutubethumbnailErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get failed_to_download => 'Failed to download thumbnail from YouTube';
	String get please_enter_a_video_id => 'Please enter a valid YouTube video URL\n\nExamples: \nhttps://www.youtube.com/watch?v=dQw4w9WgXcQ\nhttps://youtu.be/dQw4w9WgXcQ\n\nYou also need an internet connection to download the thumbnail from YouTube';
}

// Path: tools.nationalanthems.error
class _StringsToolsNationalanthemsErrorEn {
	_StringsToolsNationalanthemsErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get failed_to_load_list => 'Impossible to load the list of anthems. Please check your internet connection and try again.';
	String get failed_to_play_anthem => 'Impossible to play the anthem. Please check your internet connection and try again.';
}

// Path: tools.httprequest.error
class _StringsToolsHttprequestErrorEn {
	_StringsToolsHttprequestErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get url_cannot_be_empty => 'The URL cannot be empty';
	String get invalid_url => 'Invalid URL';
	String get invalid_headers => 'Invalid headers';
	String get timeout => 'The request timed out.\nPlease check your input and your internet connection then try again.';
	String get other_error => 'An error occurred while sending the request.\nPlease check your input and your internet connection then try again.';
}

// Path: tools.osm.error
class _StringsToolsOsmErrorEn {
	_StringsToolsOsmErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get location_permission_denied => 'You need to grant location permissions to use this feature';
	String get location_services_disabled => 'Location services are disabled';
}

// Path: tools.gameoflife.error
class _StringsToolsGameoflifeErrorEn {
	_StringsToolsGameoflifeErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get no_alive_cells => 'No alive cells';
	String get no_alive_cells_description => 'There are no alive cells.\nPlease tap on the grid to add some.';
	String get please_stop_simulation => 'Please stop the simulation first';
}

// Path: tools.speedometer.error
class _StringsToolsSpeedometerErrorEn {
	_StringsToolsSpeedometerErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get location_permission_denied_title => 'Location required';
	String get location_permission_denied_description => 'This tool requires location permission to determine your speed.';
	String get location_services_disabled_title => 'Location services disabled';
	String get location_services_disabled_description => 'This tool requires location services to be enabled to determine your speed.';
}

// Path: tools.mc_server_ping.error
class _StringsToolsMcServerPingErrorEn {
	_StringsToolsMcServerPingErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get please_enter_a_server_ip => 'Please enter a server IP or domain';
	String get server_offline_or_does_not_exist => 'The server is offline or does not exist';
	String get please_check_your_internet_connection => 'Please check your internet connection and try again';
}

// Path: tools.timestampconverter.error
class _StringsToolsTimestampconverterErrorEn {
	_StringsToolsTimestampconverterErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_timestamp => 'Invalid timestamp';
}

// Path: tools.urlshortener.error
class _StringsToolsUrlshortenerErrorEn {
	_StringsToolsUrlshortenerErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get failed_to_shorten_url => 'Failed to shorten the URL, please check your input and your internet connection.';
	String get impossible_to_connect_to_the_server => 'Impossible to connect to the server';
	String get impossible_to_connect_to_the_server_message => 'Failed to connect to the server, please check your internet connection and try again.';
}

// Path: tools.counter.error
class _StringsToolsCounterErrorEn {
	_StringsToolsCounterErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_number => 'The number you entered is invalid';
	String the_number_must_be_between_x_and_y({required Object minNumberLimit, required Object maxNumberLimit}) => 'The number must be between ${minNumberLimit} and ${maxNumberLimit}';
	String get you_must_have_at_least_one_button => 'You must have at least one button';
	String get this_button_already_exists => 'This button already exists';
}

// Path: tools.bitwisecalculator.error
class _StringsToolsBitwisecalculatorErrorEn {
	_StringsToolsBitwisecalculatorErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_input => 'Invalid input';
}

// Path: tools.musicsearch.error
class _StringsToolsMusicsearchErrorEn {
	_StringsToolsMusicsearchErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get error_playing_audio_preview => 'Error playing audio preview. Please try again later.';
	String get unable_to_connect_to_the_api => 'Unable to connect to the API, please check your internet connection and try again.';
}

// Path: tools.musicanalyser.error
class _StringsToolsMusicanalyserErrorEn {
	_StringsToolsMusicanalyserErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get permission_denied => 'Permission denied';
	String get permission_denied_description => 'The microphone permission is required to analyze music. Please grant the permission and try again.';
	String get no_match_found => 'No match found';
	String get no_match_found_description => 'No music match was found. Please try again.';
	String get error_occurred => 'An error occurred while analyzing the music. Please check your internet connection and try again.';
	String get please_update_the_app_and_try_again => 'Please update the app and try again. If the problem persists with the latest version, please try again later.';
}

// Path: tools.whoisdomain.error
class _StringsToolsWhoisdomainErrorEn {
	_StringsToolsWhoisdomainErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get impossible_to_get_whois_information => 'Impossible to get the whois information, please check your input and your internet connection then try again';
}

// Path: tools.romannumeral.error
class _StringsToolsRomannumeralErrorEn {
	_StringsToolsRomannumeralErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_roman_numeral => 'Invalid or unsupported roman numeral';
}

// Path: tools.areacalculator.shapes
class _StringsToolsAreacalculatorShapesEn {
	_StringsToolsAreacalculatorShapesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get circle => 'Circle';
	String get ellipse => 'Ellipse';
	String get equilateral_triangle => 'Equilateral triangle';
	String get kite => 'Kite';
	String get parallelogram => 'Parallelogram';
	String get rectangle => 'Rectangle';
	String get rhombus => 'Rhombus';
	String get regular_hexagon => 'Regular hexagon';
	String get regular_octagon => 'Regular octagon';
	String get regular_pentagon => 'Regular pentagon';
	String get regular_polygon => 'Regular polygon';
	String get square => 'Square';
	String get trapezoid => 'Trapezoid';
	String get triangle => 'Triangle';
}

// Path: tools.areacalculator.inputs
class _StringsToolsAreacalculatorInputsEn {
	_StringsToolsAreacalculatorInputsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get radius => 'Radius';
	String get major_axis => 'Major axis';
	String get minor_axis => 'Minor axis';
	String get side => 'Side';
	String get base => 'Base';
	String get height => 'Height';
	String get diagonal_1 => 'Diagonal 1';
	String get diagonal_2 => 'Diagonal 2';
	String get length => 'Length';
	String get width => 'Width';
	String get number_of_sides => 'Number of sides';
	String get side_length => 'Side length';
	String get apothem => 'Apothem';
	String get base_1 => 'Base 1';
	String get base_2 => 'Base 2';
}

// Path: tools.areacalculator.error
class _StringsToolsAreacalculatorErrorEn {
	_StringsToolsAreacalculatorErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_input => 'Invalid input';
	String get please_enter_a_value_for => 'Please enter a value for';
	String get please_enter_a_valid_number_for => 'Please enter a valid number for';
	String get please_enter_a_positive_number_for => 'Please enter a positive number for';
	String get please_try_again_with_different_values => 'Please try again with different values';
	String get the_area_of_the_shape_is_zero => 'The area of the shape is zero';
}

// Path: tools.mathtex.error
class _StringsToolsMathtexErrorEn {
	_StringsToolsMathtexErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get an_error_occurred_while_rendering_the_mathtex => 'An error occurred while rendering the MathTeX';
	String get an_error_occurred_while_exporting_the_image => 'An error occurred while exporting the image';
}

// Path: tools.compass.error
class _StringsToolsCompassErrorEn {
	_StringsToolsCompassErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get please_grant_location_permission => 'Please grant location permission to use the compass. It is mandatory to access the device\'s sensors.';
}

// Path: tools.qrcreator.error
class _StringsToolsQrcreatorErrorEn {
	_StringsToolsQrcreatorErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get failed_to_create_qr_code => 'Failed to create QR code, please check your input and try again';
}

// Path: tools.pastebin.error
class _StringsToolsPastebinErrorEn {
	_StringsToolsPastebinErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get failed_to_obtain_short_link => 'Failed to obtain short link, please check your internet connection and try again';
	String get impossible_to_connect_to_the_server => 'Impossible to connect to the server';
	String get impossible_to_connect_to_the_server_message => 'Failed to connect to the server, please check your internet connection and try again.';
}

// Path: <root>
class _StringsFr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsFr.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsFr _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsGenericFr generic = _StringsGenericFr._(_root);
	@override late final _StringsHomepageFr homepage = _StringsHomepageFr._(_root);
	@override late final _StringsFoldersFr folders = _StringsFoldersFr._(_root);
	@override late final _StringsToolsFr tools = _StringsToolsFr._(_root);
	@override late final _StringsCreditsFr credits = _StringsCreditsFr._(_root);
}

// Path: generic
class _StringsGenericFr implements _StringsGenericEn {
	_StringsGenericFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get app_name => 'Toolbox';
	@override String get error => 'Erreur';
	@override String get warning => 'Attention';
	@override String get ok => 'OK';
	@override String get cancel => 'Annuler';
	@override String get search => 'Rechercher';
	@override String get enable => 'Activer';
	@override String get reset => 'Réinitialiser';
	@override String get yes => 'Oui';
	@override String get no => 'Non';
}

// Path: homepage
class _StringsHomepageFr implements _StringsHomepageEn {
	_StringsHomepageFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get update_available => 'Mise à jour disponible';
	@override String get update_available_message => 'Une nouvelle version de Toolbox est disponible. Mettez à jour dès maintenant pour bénéficier des dernières fonctionnalités et améliorations.';
	@override String get switch_view => 'Changer de vue';
	@override String get search_all_folders => 'Rechercher dans tous les dossiers';
	@override String get add => 'Ajouter';
	@override String get remove => 'Supprimer';
	@override String get favorites => 'Favoris';
	@override String get would_you_like_to_add_this_tool_to_favorites => 'Voulez-vous ajouter cet outil aux favoris ?';
	@override String get would_you_like_to_remove_this_tool_from_favorites => 'Voulez-vous retirer cet outils des favoris ?';
}

// Path: folders
class _StringsFoldersFr implements _StringsFoldersEn {
	_StringsFoldersFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get audio => 'Audio';
	@override String get calculations => 'Calculs';
	@override String get games => 'Jeux';
	@override String get geography => 'Géographie';
	@override String get miscellaneous => 'Divers';
	@override String get network => 'Réseau';
	@override String get random => 'Aléatoire';
	@override String get time => 'Temps';
	@override String get web => 'Web';
}

// Path: tools
class _StringsToolsFr implements _StringsToolsEn {
	_StringsToolsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override late final _StringsToolsBaseconverterFr baseconverter = _StringsToolsBaseconverterFr._(_root);
	@override late final _StringsToolsClockFr clock = _StringsToolsClockFr._(_root);
	@override late final _StringsToolsMetronomeFr metronome = _StringsToolsMetronomeFr._(_root);
	@override late final _StringsToolsMegaphoneFr megaphone = _StringsToolsMegaphoneFr._(_root);
	@override late final _StringsToolsNslookupFr nslookup = _StringsToolsNslookupFr._(_root);
	@override late final _StringsToolsPingFr ping = _StringsToolsPingFr._(_root);
	@override late final _StringsToolsSoundmeterFr soundmeter = _StringsToolsSoundmeterFr._(_root);
	@override late final _StringsToolsQrreaderFr qrreader = _StringsToolsQrreaderFr._(_root);
	@override late final _StringsToolsTimerFr timer = _StringsToolsTimerFr._(_root);
	@override late final _StringsToolsStopwatchFr stopwatch = _StringsToolsStopwatchFr._(_root);
	@override late final _StringsToolsRouletteFr roulette = _StringsToolsRouletteFr._(_root);
	@override late final _StringsToolsFlipcoinsFr flipcoins = _StringsToolsFlipcoinsFr._(_root);
	@override late final _StringsToolsRandomnumberFr randomnumber = _StringsToolsRandomnumberFr._(_root);
	@override late final _StringsToolsRandomcolorFr randomcolor = _StringsToolsRandomcolorFr._(_root);
	@override late final _StringsToolsSshclientFr sshclient = _StringsToolsSshclientFr._(_root);
	@override late final _StringsToolsWhiteboardFr whiteboard = _StringsToolsWhiteboardFr._(_root);
	@override late final _StringsToolsNetworkinfoFr networkinfo = _StringsToolsNetworkinfoFr._(_root);
	@override late final _StringsToolsUuidgeneratorFr uuidgenerator = _StringsToolsUuidgeneratorFr._(_root);
	@override late final _StringsToolsTexttospeechFr texttospeech = _StringsToolsTexttospeechFr._(_root);
	@override late final _StringsToolsNearbypublictransportstopsFr nearbypublictransportstops = _StringsToolsNearbypublictransportstopsFr._(_root);
	@override late final _StringsToolsFileencryptionFr fileencryption = _StringsToolsFileencryptionFr._(_root);
	@override late final _StringsToolsYoutubethumbnailFr youtubethumbnail = _StringsToolsYoutubethumbnailFr._(_root);
	@override late final _StringsToolsNationalanthemsFr nationalanthems = _StringsToolsNationalanthemsFr._(_root);
	@override late final _StringsToolsHttprequestFr httprequest = _StringsToolsHttprequestFr._(_root);
	@override late final _StringsToolsMorsecodeFr morsecode = _StringsToolsMorsecodeFr._(_root);
	@override late final _StringsToolsOsmFr osm = _StringsToolsOsmFr._(_root);
	@override late final _StringsToolsGameoflifeFr gameoflife = _StringsToolsGameoflifeFr._(_root);
	@override late final _StringsToolsSpeedometerFr speedometer = _StringsToolsSpeedometerFr._(_root);
	@override late final _StringsToolsMcServerPingFr mc_server_ping = _StringsToolsMcServerPingFr._(_root);
	@override late final _StringsToolsTimestampconverterFr timestampconverter = _StringsToolsTimestampconverterFr._(_root);
	@override late final _StringsToolsUrlshortenerFr urlshortener = _StringsToolsUrlshortenerFr._(_root);
	@override late final _StringsToolsCounterFr counter = _StringsToolsCounterFr._(_root);
	@override late final _StringsToolsBitwisecalculatorFr bitwisecalculator = _StringsToolsBitwisecalculatorFr._(_root);
	@override late final _StringsToolsMusicsearchFr musicsearch = _StringsToolsMusicsearchFr._(_root);
	@override late final _StringsToolsMusicanalyserFr musicanalyser = _StringsToolsMusicanalyserFr._(_root);
	@override late final _StringsToolsTextdifferencesFr textdifferences = _StringsToolsTextdifferencesFr._(_root);
	@override late final _StringsToolsCharacterscopyFr characterscopy = _StringsToolsCharacterscopyFr._(_root);
	@override late final _StringsToolsWhoisdomainFr whoisdomain = _StringsToolsWhoisdomainFr._(_root);
	@override late final _StringsToolsTextcounterFr textcounter = _StringsToolsTextcounterFr._(_root);
	@override late final _StringsToolsRomannumeralFr romannumeral = _StringsToolsRomannumeralFr._(_root);
	@override late final _StringsToolsAreacalculatorFr areacalculator = _StringsToolsAreacalculatorFr._(_root);
	@override late final _StringsToolsMathtexFr mathtex = _StringsToolsMathtexFr._(_root);
	@override late final _StringsToolsCompassFr compass = _StringsToolsCompassFr._(_root);
	@override late final _StringsToolsQrcreatorFr qrcreator = _StringsToolsQrcreatorFr._(_root);
	@override late final _StringsToolsPastebinFr pastebin = _StringsToolsPastebinFr._(_root);
}

// Path: credits
class _StringsCreditsFr implements _StringsCreditsEn {
	_StringsCreditsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Crédits';
	@override String app_icon({required Object author}) => 'Icône de l\'application par ${author}';
	@override String app_license({required Object license}) => 'Application sous licence ${license}';
	@override String tools_icons({required Object author}) => 'Icônes des outils par ${author}';
	@override String get ads_disclaimer => 'Les publicités sont là pour m\'aider à payer les coûts de serveur et à soutenir le développement de cette application. Seule une petite bannière est affichée en bas de l\'écran, rien qui ne bloque votre expérience avec Toolbox.';
	@override String get more_apps_and_services => 'Plus d\'apps et services';
	@override String get view_licenses => 'Voir les licences';
	@override String get contribute_on_github => 'Contribuez sur GitHub';
	@override String get email_copied_to_clipboard => 'Email copié dans le presse-papiers';
	@override String get made_with_love_in_switzerland => 'Développé de tout cœur en Suisse';
	@override String get made_with_love_in_switzerland_description => 'Développé en Suisse, utilisé dans le monde entier.\nMerci d\'utiliser Toolbox.\nSi vous l\'appréciez, n\'hésitez pas à laisser un commentaire sur le Play Store ou l\'App Store.\nCela m\'aide beaucoup et me motive à continuer à améliorer l\'application.';
	@override late final _StringsCreditsTranslationsFr translations = _StringsCreditsTranslationsFr._(_root);
}

// Path: tools.baseconverter
class _StringsToolsBaseconverterFr implements _StringsToolsBaseconverterEn {
	_StringsToolsBaseconverterFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Convertisseur de base';
	@override String get enter_a_dec_number => 'Entrez un nombre décimal';
	@override String get enter_a_hex_number => 'Entrez un nombre hexadécimal';
	@override String get enter_a_bin_number => 'Entrez un nombre binaire';
	@override String get enter_a_oct_number => 'Entrez un nombre octal';
	@override String get hexadecimal => 'Hexadécimal';
	@override String get binary => 'Binaire';
	@override String get octal => 'Octal';
	@override String get decimal => 'Décimal';
	@override String get incompatible_number => 'Nombre incompatible';
	@override String get too_big_number => 'Nombre trop grand';
	@override String the_number_you_entered_is_not_a_valid_x_number({required Object base}) => 'Le nombre que vous avez entré n\'est pas un nombre ${base} valide';
	@override String get the_number_you_entered_is_too_big_to_be_abble_to_convert_it => 'Le nombre que vous avez entré est trop grand pour être converti';
}

// Path: tools.clock
class _StringsToolsClockFr implements _StringsToolsClockEn {
	_StringsToolsClockFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Horloge';
	@override String get change_timezone => 'Changer le fuseau horaire';
	@override String get timezone => 'Fuseau horaire';
	@override String get choose_a_timezone => 'Choisissez un fuseau horaire';
	@override String get select_local => 'Heure locale';
}

// Path: tools.metronome
class _StringsToolsMetronomeFr implements _StringsToolsMetronomeEn {
	_StringsToolsMetronomeFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Métronome';
	@override String get bpm => 'BPM';
	@override String get beats_per_measure => 'Battements par mesure';
	@override String get start => 'Démarrer';
	@override String get stop => 'Arrêter';
}

// Path: tools.megaphone
class _StringsToolsMegaphoneFr implements _StringsToolsMegaphoneEn {
	_StringsToolsMegaphoneFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mégaphone';
	@override late final _StringsToolsMegaphoneErrorFr error = _StringsToolsMegaphoneErrorFr._(_root);
}

// Path: tools.nslookup
class _StringsToolsNslookupFr implements _StringsToolsNslookupEn {
	_StringsToolsNslookupFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'NSLookup';
	@override String get enter_a_domain_name => 'Entrez un nom de domaine';
	@override String get lookup => 'Rechercher';
	@override late final _StringsToolsNslookupErrorFr error = _StringsToolsNslookupErrorFr._(_root);
}

// Path: tools.ping
class _StringsToolsPingFr implements _StringsToolsPingEn {
	_StringsToolsPingFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ping';
	@override String get ping => 'Ping';
	@override String get enter_a_domain_name_or_ip => 'Entrez un nom de domaine ou une adresse IP';
	@override String reply_from_host_time_ttl({required Object host, required Object time, required Object ttl}) => 'Réponse de ${host} : temps=${time}ms TTL=${ttl}';
	@override String x_packets_transmitted_y({required Object transmitted, required Object received}) => '${transmitted} paquets transmis, ${received} paquets reçus';
	@override late final _StringsToolsPingErrorFr error = _StringsToolsPingErrorFr._(_root);
}

// Path: tools.soundmeter
class _StringsToolsSoundmeterFr implements _StringsToolsSoundmeterEn {
	_StringsToolsSoundmeterFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sonomètre';
	@override String get decibels => 'dB';
	@override late final _StringsToolsSoundmeterErrorFr error = _StringsToolsSoundmeterErrorFr._(_root);
}

// Path: tools.qrreader
class _StringsToolsQrreaderFr implements _StringsToolsQrreaderEn {
	_StringsToolsQrreaderFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lecteur de QR';
	@override String get scanned => 'Scanné';
	@override String get openurl => 'Ouvrir le lien';
	@override String get copy_password => 'Copier le MDP';
	@override String get copy => 'Copier';
	@override String get copied_to_clipboard => 'Copié dans le presse-papiers';
	@override String get wifi => 'WiFi';
	@override String get wifi_ssid => 'SSID';
	@override String get wifi_password => 'Mot de passe';
	@override late final _StringsToolsQrreaderErrorFr error = _StringsToolsQrreaderErrorFr._(_root);
}

// Path: tools.timer
class _StringsToolsTimerFr implements _StringsToolsTimerEn {
	_StringsToolsTimerFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Minuteur';
	@override String get start => 'Démarrer';
	@override String get stop => 'Arrêter';
	@override String get ios_warning_message => 'Pour que le minuteur sonne sur iOS, vous ne devez pas quitter l\'application ni éteindre l\'écran de votre iPhone. Sinon, iOS empêchera le minuteur de sonner lorsqu\'il atteindra zéro.';
}

// Path: tools.stopwatch
class _StringsToolsStopwatchFr implements _StringsToolsStopwatchEn {
	_StringsToolsStopwatchFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chronomètre';
	@override String get start => 'Go';
	@override String get stop => 'Stop';
	@override String get reset => 'Effacer';
	@override String get lap => 'Tour';
}

// Path: tools.roulette
class _StringsToolsRouletteFr implements _StringsToolsRouletteEn {
	_StringsToolsRouletteFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Roulette';
	@override String get tap_to_roll_info => 'Touchez la roue pour la faire tourner';
	@override String get default_1 => 'Étudier';
	@override String get default_2 => 'Jouer';
	@override String get default_3 => 'Dormir';
	@override String get add => 'Ajouter';
	@override String get remove => 'Supprimer';
	@override String get add_item => 'Ajouter un item';
	@override String get item_name => 'Nom de l\'item';
	@override String get remove_an_item => 'Supprimer un item';
	@override late final _StringsToolsRouletteWarningFr warning = _StringsToolsRouletteWarningFr._(_root);
}

// Path: tools.flipcoins
class _StringsToolsFlipcoinsFr implements _StringsToolsFlipcoinsEn {
	_StringsToolsFlipcoinsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pile ou face';
	@override String get change_coin_currency => 'Changer la devise de la pièce';
}

// Path: tools.randomnumber
class _StringsToolsRandomnumberFr implements _StringsToolsRandomnumberEn {
	_StringsToolsRandomnumberFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Nombre aléatoire';
	@override String get min => 'Min';
	@override String get max => 'Max';
	@override late final _StringsToolsRandomnumberErrorFr error = _StringsToolsRandomnumberErrorFr._(_root);
}

// Path: tools.randomcolor
class _StringsToolsRandomcolorFr implements _StringsToolsRandomcolorEn {
	_StringsToolsRandomcolorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Couleur aléatoire';
	@override String get hint => 'Touchez la couleur pour la changer';
	@override String get tap_to_copy => 'Cliquez pour copier';
	@override String get copied_to_clipboard => 'Copié dans le presse-papier';
}

// Path: tools.sshclient
class _StringsToolsSshclientFr implements _StringsToolsSshclientEn {
	_StringsToolsSshclientFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Client SSH';
	@override String get backspace => 'Effacer';
	@override String get use_password => 'Utiliser un mot de passe';
	@override String get use_ssh_key => 'Utiliser une clé SSH';
	@override String get host => 'Hôte';
	@override String get port => 'Port';
	@override String get username => 'Nom d\'utilisateur';
	@override String get password => 'Mot de passe';
	@override String get connect => 'Se connecter';
	@override String get select_private_key => 'Sélectionner une clé privée';
	@override String get no_private_key_selected => 'Aucune clé privée sélectionnée';
	@override String get passphrase => 'Phrase secrète (laisser vide si aucune)';
	@override late final _StringsToolsSshclientErrorFr error = _StringsToolsSshclientErrorFr._(_root);
}

// Path: tools.whiteboard
class _StringsToolsWhiteboardFr implements _StringsToolsWhiteboardEn {
	_StringsToolsWhiteboardFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Tableau blanc';
	@override String get share_success => 'Votre tableau blanc a été partagé avec succès';
	@override String get save_success => 'Votre tableau blanc a été enregistré avec succès';
}

// Path: tools.networkinfo
class _StringsToolsNetworkinfoFr implements _StringsToolsNetworkinfoEn {
	_StringsToolsNetworkinfoFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Informations réseau';
	@override String get loading => 'Chargement...';
	@override String get location_permission_required => 'La permission de localisation est nécessaire pour obtenir certaines informations sur le WiFi (il s\'agit d\'une limitation du système d\'exploitation).\nVous risquez d\'obtenir des informations erronées si vous ne l\'autorisez pas.';
	@override String get public_ip => 'Adresse IP publique';
	@override String get local_ip => 'Adresse IP locale';
	@override String get local_subnet_mask => 'Masque de sous-réseau local';
	@override String get local_gateway_ip => 'Adresse IP de passerelle locale';
	@override String get local_broadcast_ip => 'Adresse IP de diffusion locale';
	@override String get wifi_name => 'Nom du WiFi';
	@override String get wifi_bssid => 'BSSID du WiFi';
	@override String get not_available_on_ios => 'Non disponible sur iOS';
	@override String get note_location_permission => 'Remarque : certaines informations peuvent être incorrectes si vous n\'avez pas autorisé la permission de localisation précise.';
}

// Path: tools.uuidgenerator
class _StringsToolsUuidgeneratorFr implements _StringsToolsUuidgeneratorEn {
	_StringsToolsUuidgeneratorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Générateur d\'UUID';
	@override String get generate => 'Générer';
	@override String get default_uuid_text => 'Appuyer sur un bouton pour générer un UUID';
	@override String get tap_to_copy => 'Cliquez pour copier';
	@override String get copied_to_clipboard => 'Copié dans le presse-papiers';
	@override String get v1_uuid => 'v1 (basé sur le temps)';
	@override String get v4_uuid => 'v4 (aléatoire)';
	@override String get v5_uuid => 'v5 (basé sur sha1)';
	@override String get v5_generate_title => 'Générer un UUID v5';
	@override String get v5_namespace => 'Espace de noms (laisser vide pour aléatoire)';
	@override String get v5_name => 'Nom (laisser vide si aucun)';
	@override late final _StringsToolsUuidgeneratorErrorFr error = _StringsToolsUuidgeneratorErrorFr._(_root);
}

// Path: tools.texttospeech
class _StringsToolsTexttospeechFr implements _StringsToolsTexttospeechEn {
	_StringsToolsTexttospeechFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Synthèse vocale';
	@override String get choose_a_language => 'Choisir une langue';
	@override String get text_to_speak => 'Texte à prononcer';
	@override String get pitch => 'Hauteur';
	@override String get rate => 'Débit';
	@override String get play => 'Play';
	@override String get stop => 'Stop';
	@override late final _StringsToolsTexttospeechErrorFr error = _StringsToolsTexttospeechErrorFr._(_root);
}

// Path: tools.nearbypublictransportstops
class _StringsToolsNearbypublictransportstopsFr implements _StringsToolsNearbypublictransportstopsEn {
	_StringsToolsNearbypublictransportstopsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Arrêts de transport';
	@override String get loading => 'Chargement...';
	@override String get refresh => 'Rafraîchir';
	@override String get data_source => 'Source des données';
	@override String get initial_dialog_title => 'Information';
	@override String initial_dialog_message({required Object source}) => 'Cet outil est destiné à être utilisé en Suisse. Il utilise les données de "${source}"';
	@override String get data_license_dialog_open => 'Ouvrir';
	@override String get data_license_dialog_title => 'Source des données';
	@override String data_license_dialog_message({required Object source, required Object url}) => 'Les données utilisées dans cet outil proviennent de "${source}".\n${url}';
	@override String get no_departures => 'Aucun départ';
	@override String get departure => 'Départ';
	@override String get arrival => 'Arrivée';
	@override String get platform => 'Voie';
	@override String get show_on_map => 'Plan';
	@override String get map_marker_title => 'Arrêt de transport';
	@override late final _StringsToolsNearbypublictransportstopsErrorFr error = _StringsToolsNearbypublictransportstopsErrorFr._(_root);
}

// Path: tools.fileencryption
class _StringsToolsFileencryptionFr implements _StringsToolsFileencryptionEn {
	_StringsToolsFileencryptionFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chiffrement de fichiers';
	@override String get home_hint => 'Choisissez un fichier pour le chiffrer. Si vous souhaitez déchiffrer un fichier, choisissez un fichier chiffré ayant l\'extension .aes.';
	@override String get no_file_selected => 'Aucun fichier sélectionné';
	@override String get enter_password => 'Veuillez entrer un mot de passe';
	@override String get file_saved_successfully => 'Fichier enregistré avec succès';
	@override String get pick_a_file => 'Choisir un fichier';
	@override String get encryption_password => 'Mot de passe de chiffrement';
	@override String get encrypt => 'Chiffrer';
	@override String get decrypt => 'Déchiffrer';
	@override late final _StringsToolsFileencryptionErrorFr error = _StringsToolsFileencryptionErrorFr._(_root);
}

// Path: tools.youtubethumbnail
class _StringsToolsYoutubethumbnailFr implements _StringsToolsYoutubethumbnailEn {
	_StringsToolsYoutubethumbnailFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Miniature YouTube';
	@override String get saved => 'Miniature enregistrée avec succès';
	@override String get youtube_video_id => 'URL de la vidéo YouTube';
	@override String get save_thumbnail => 'Enregistrer la miniature';
	@override late final _StringsToolsYoutubethumbnailErrorFr error = _StringsToolsYoutubethumbnailErrorFr._(_root);
}

// Path: tools.nationalanthems
class _StringsToolsNationalanthemsFr implements _StringsToolsNationalanthemsEn {
	_StringsToolsNationalanthemsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hymnes nationaux';
	@override String get stop => 'Arrêter l\'hymne';
	@override String get search => 'Rechercher (en anglais)';
	@override String get license => 'Licence';
	@override String license_text({required Object source, required Object license}) => 'Les fichiers audio sont fournis par "${source}" sous la licence ${license}';
	@override String get open => 'Ouvrir';
	@override String get view_license => 'Voir la licence';
	@override String get loading_audio_title => 'Chargement';
	@override String get loading_audio_text => 'Chargement de l\'hymne en cours...';
	@override late final _StringsToolsNationalanthemsErrorFr error = _StringsToolsNationalanthemsErrorFr._(_root);
}

// Path: tools.httprequest
class _StringsToolsHttprequestFr implements _StringsToolsHttprequestEn {
	_StringsToolsHttprequestFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Requête HTTP';
	@override String get method => 'Méthode';
	@override String get custom_method => 'Méthode personnalisée';
	@override String get url => 'URL';
	@override String get headers => 'En-têtes (headers)';
	@override String get body => 'Corps (body)';
	@override String get send_request => 'Envoyer la requête';
	@override String get response => 'Réponse';
	@override String get render_html => 'Rendre le HTML';
	@override String get back_to_details => 'Retour aux détails';
	@override String get status_code => 'Code d\'état';
	@override late final _StringsToolsHttprequestErrorFr error = _StringsToolsHttprequestErrorFr._(_root);
}

// Path: tools.morsecode
class _StringsToolsMorsecodeFr implements _StringsToolsMorsecodeEn {
	_StringsToolsMorsecodeFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Code morse';
	@override String get alphabet_field => 'Alphabet (A-Z, 0-9)';
	@override String get morse_field => 'Code Morse (. and -)';
	@override String get note_spaces => 'Note : Utilisez 1 espace entre les lettres et 3 espaces entre les mots.';
	@override String get alphabet_to_morse => 'Alphabet vers morse';
	@override String get morse_to_alphabet => 'Morse vers alphabet';
	@override String get play_audio => 'Écouter l\'audio';
}

// Path: tools.osm
class _StringsToolsOsmFr implements _StringsToolsOsmEn {
	_StringsToolsOsmFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Plan (OSM)';
	@override String get go_to_my_location => 'Aller à ma position';
	@override String get loading_map => 'Chargement de la carte...';
	@override late final _StringsToolsOsmErrorFr error = _StringsToolsOsmErrorFr._(_root);
}

// Path: tools.gameoflife
class _StringsToolsGameoflifeFr implements _StringsToolsGameoflifeEn {
	_StringsToolsGameoflifeFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Jeu de la vie';
	@override String get grid_size => 'Taille de la grille';
	@override String current_size_is_x({required Object size}) => 'La taille actuelle est ${size}';
	@override String get waiting => 'Attente';
	@override String get stop_simulation => 'Arrêter la simulation';
	@override String get start_simulation => 'Démarrer la simulation';
	@override String get randomize_grid => 'Randomiser la grille';
	@override String get clear_grid => 'Effacer la grille';
	@override late final _StringsToolsGameoflifeErrorFr error = _StringsToolsGameoflifeErrorFr._(_root);
}

// Path: tools.speedometer
class _StringsToolsSpeedometerFr implements _StringsToolsSpeedometerEn {
	_StringsToolsSpeedometerFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compteur de vitesse';
	@override String get reset => 'Réinitialiser';
	@override String get about_traveled_distance_title => 'À propos de la distance parcourue';
	@override String get about_traveled_distance_description => 'La distance parcourue est calculée à partir de la vitesse détectée par le GPS.\nCela signifie que la distance n\'est pas exacte à 100%.';
	@override String get kmh => 'km/h';
	@override String get km => 'km';
	@override String get mph => 'mph';
	@override String get mi => 'mi';
	@override String get change_speed_unit => 'Changer d\'unité de vitesse';
	@override String get change_speed_unit_description => 'Choisissez l\'unité de vitesse que vous souhaitez utiliser avec le compteur de vitesse';
	@override String get traveled_distance => 'Distance parcourue';
	@override late final _StringsToolsSpeedometerErrorFr error = _StringsToolsSpeedometerErrorFr._(_root);
}

// Path: tools.mc_server_ping
class _StringsToolsMcServerPingFr implements _StringsToolsMcServerPingEn {
	_StringsToolsMcServerPingFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ping serveur MC';
	@override String get java_edition => 'Édition Java';
	@override String get information_java => 'Information';
	@override String get information_java_description => 'Cochez cette case si le serveur est disponible pour l\'édition Java de Minecraft. Si ce n\'est pas le cas, décochez-la et l\'outil utilisera l\'API de l\'édition Bedrock.';
	@override String get server_ip => 'IP ou domaine du serveur Minecraft';
	@override String get ping => 'Ping';
	@override String get ping_another_server => 'Ping un autre serveur';
	@override String get api_used => 'API utilisée';
	@override String get about_the_api => 'À propos de l\'API';
	@override String about_the_api_description({required Object source, required Object website}) => 'Cet outil utilise "${source}" du site "${website}" pour ping les serveurs Minecraft.';
	@override String get about_open => 'Ouvrir';
	@override String the_server_id_is({required Object id}) => 'L\'ID du serveur est "${id}"';
	@override String get added_to_favorites => 'Ajouté aux favoris';
	@override String get added_to_favorites_description => 'Le serveur a été ajouté aux favoris.';
	@override String get removed_from_favorites => 'Retiré des favoris';
	@override String get removed_from_favorites_description => 'Le serveur a été retiré des favoris.';
	@override String get add_to_favorites => 'Ajouter aux favoris';
	@override String get remove_from_favorites => 'Retirer des favoris';
	@override String get from_favorites => 'Depuis les favoris';
	@override String get pick_from_favorites => 'Choisir depuis les favoris';
	@override String get no_favorites => 'Aucun favori';
	@override String get no_favorites_description => 'Vous n\'avez pas encore ajouté de serveurs aux favoris.';
	@override late final _StringsToolsMcServerPingErrorFr error = _StringsToolsMcServerPingErrorFr._(_root);
}

// Path: tools.timestampconverter
class _StringsToolsTimestampconverterFr implements _StringsToolsTimestampconverterEn {
	_StringsToolsTimestampconverterFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Convertisseur de timestamp';
	@override String get now_tooltip => 'Maintenant';
	@override String get utc => 'UTC';
	@override String get local => 'Local';
	@override String get local_or_utc_dialog_title => 'Local ou UTC';
	@override String get local_or_utc_dialog_message => 'Allez-vous selectionner une date et une heure locale ou UTC ?';
	@override String get unix_timestamp => 'Timestamp Unix';
	@override String get convert_timestamp_to_date => 'Convertir le timestamp en date';
	@override String get tap_the_date_to_change_it => 'Appuyez sur la date pour la modifier';
	@override String get select_seconds => 'Sélectionner les secondes';
	@override late final _StringsToolsTimestampconverterErrorFr error = _StringsToolsTimestampconverterErrorFr._(_root);
}

// Path: tools.urlshortener
class _StringsToolsUrlshortenerFr implements _StringsToolsUrlshortenerEn {
	_StringsToolsUrlshortenerFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Raccourcisseur d\'URL';
	@override String get url => 'L\'URL';
	@override String get qr_code => 'Le code QR';
	@override String get share => 'Partager';
	@override String get share_dialog_message => 'Que souhaitez-vous partager ?';
	@override String get your_shortened_url_is => 'Votre URL raccourcie est';
	@override String get copy_to_clipboard => 'Copier dans le presse-papiers';
	@override String get shorten_another_url => 'Raccourcir une autre URL';
	@override String get url_to_shorten => 'URL à raccourcir';
	@override String by_clicking_you_accept({required Object url}) => 'En cliquant sur le bouton « raccourcir », vous acceptez les conditions d\'utilisation de "${url}" disponibles via le lien ci-dessous.';
	@override String get terms_of_service => 'Conditions d\'utilisation (ToS)';
	@override String get shorten => 'Raccourcir';
	@override String get more_features => 'Plus de fonctionnalités';
	@override String get more_features_message => 'Utiliser des fonctions supplémentaires telles que le partage de texte, des liens personnalisés, et plus via le site officiel JTU.ME';
	@override String get open => 'Ouvrir';
	@override late final _StringsToolsUrlshortenerErrorFr error = _StringsToolsUrlshortenerErrorFr._(_root);
}

// Path: tools.counter
class _StringsToolsCounterFr implements _StringsToolsCounterEn {
	_StringsToolsCounterFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compteur';
	@override String get add_button => 'Ajouter un bouton';
	@override String get remove_button => 'Supprimer un bouton';
	@override String get enter_number => 'Entrez un nombre';
	@override late final _StringsToolsCounterErrorFr error = _StringsToolsCounterErrorFr._(_root);
}

// Path: tools.bitwisecalculator
class _StringsToolsBitwisecalculatorFr implements _StringsToolsBitwisecalculatorEn {
	_StringsToolsBitwisecalculatorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calculatrice binaire';
	@override String get first_number => 'Premier nombre';
	@override String get second_number => 'Deuxième nombre';
	@override String get enter_a_binary_number => 'Entrez un nombre binaire';
	@override String get and => 'ET';
	@override String get or => 'OU';
	@override String get xor => 'OU exclusif';
	@override late final _StringsToolsBitwisecalculatorErrorFr error = _StringsToolsBitwisecalculatorErrorFr._(_root);
}

// Path: tools.musicsearch
class _StringsToolsMusicsearchFr implements _StringsToolsMusicsearchEn {
	_StringsToolsMusicsearchFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Recherche de musique';
	@override String get unknown_title => 'Titre inconnu';
	@override String get unknown_artist => 'Artiste inconnu';
	@override String get unknown_album => 'Album inconnu';
	@override String get loading => 'Chargement';
	@override String get loading_audio_preview => 'Chargement de l\'échantillon audio...';
	@override String get stop_audio_preview => 'Arrêter l\'échantillon audio';
	@override String get data_source => 'Source des données';
	@override String this_tool_uses_the_x_api({required Object service}) => 'Cet outil utilise l\'API "${service}" pour rechercher de la musique.\nLes échantillons audio sont fournis par "${service}".';
	@override String go_to_x({required Object service}) => 'Aller sur ${service}';
	@override String get search_for_music => 'Rechercher de la musique';
	@override String get use_the_searchbar_to_search_music => 'Utilisez la barre de recherche pour trouver de la musique.\nSi votre recherche ne donne aucun résultat, essayez un autre terme de recherche.';
	@override String open_in_x({required Object service}) => 'Ouvrir dans ${service}';
	@override String get play_preview => 'Lire l\'échantillon';
	@override late final _StringsToolsMusicsearchErrorFr error = _StringsToolsMusicsearchErrorFr._(_root);
}

// Path: tools.musicanalyser
class _StringsToolsMusicanalyserFr implements _StringsToolsMusicanalyserEn {
	_StringsToolsMusicanalyserFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Analyse de musique';
	@override String get press_the_button_to_start_music_analysis => 'Appuyez sur le bouton pour démarrer l\'analyse de la musique';
	@override String get loading => 'Chargement...';
	@override String analyzing_music({required Object remainingSeconds}) => 'Analyse de la musique... (${remainingSeconds}s)';
	@override String get getting_results => 'Récupération des résultats...';
	@override String get unknown => 'Inconnu';
	@override String get api_used => 'API utilisée';
	@override String this_tool_uses_the_x_api({required Object service, required Object company}) => 'Cet outil utilise l\'API "${service}" via un serveur backend de Koizeay. "${service}" est une marque déposée de "${company}" et n\'est pas affiliée à cet outil.';
	@override String get start_analyzing_music => 'Démarrer l\'analyse de la musique';
	@override String get clear => 'Effacer';
	@override late final _StringsToolsMusicanalyserErrorFr error = _StringsToolsMusicanalyserErrorFr._(_root);
}

// Path: tools.textdifferences
class _StringsToolsTextdifferencesFr implements _StringsToolsTextdifferencesEn {
	_StringsToolsTextdifferencesFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Différences de texte';
	@override String get old_text => 'Ancien texte';
	@override String get new_text => 'Nouveau texte';
	@override String get no_text_hint => 'Entrez du texte ci-dessus pour voir les différences';
}

// Path: tools.characterscopy
class _StringsToolsCharacterscopyFr implements _StringsToolsCharacterscopyEn {
	_StringsToolsCharacterscopyFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Copie de caractères';
	@override String get important => 'Important';
	@override String get important_description => 'Certains caractères peuvent ne pas s\'afficher correctement sur tous les appareils en fonction de votre système d\'exploitation. De même, certains caractères peuvent ne pas être pris en charge par toutes les applications et polices. Cliquez simplement sur le caractère que vous souhaitez copier et il sera copié dans votre presse-papiers.';
	@override String get copied_to_clipboard => 'Copié dans le presse-papiers';
}

// Path: tools.whoisdomain
class _StringsToolsWhoisdomainFr implements _StringsToolsWhoisdomainEn {
	_StringsToolsWhoisdomainFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Whois de domaine';
	@override String get domain_name => 'Nom de domaine';
	@override String get whois_lookup => 'Recherche Whois';
	@override String get disclaimer => 'Avertissement';
	@override String get disclaimer_text => 'Toolbox fournit une fonction de recherche WHOIS à des fins d\'information uniquement. Les données récupérées peuvent ne pas être exactes, complètes ou à jour, et sont soumises aux conditions générales des registres de domaines respectifs. Il est interdit aux utilisateurs d\'utiliser les données WHOIS à des fins de spam, à des fins illégales ou de collecter des données de manière automatisée. En utilisant cet outil, vous acceptez de vous conformer aux lois applicables et aux conditions de service du registre. Toolbox et/ou Koizeay n\'assument aucune responsabilité en cas d\'erreurs, d\'omissions ou d\'utilisation abusive des données. Veuillez noter que certains TLD peuvent ne pas être pris en charge par cet outil.';
	@override String get loading => 'Chargement...';
	@override String get ip_address_not_supported => 'Adresse IP non prise en charge';
	@override String get ip_address_not_supported_description => 'Cet outil supporte uniquement les recherches de domaine, pas les recherches d\'adresse IP';
	@override String get no_result => 'Aucun résultat valide trouvé';
	@override String get view_pretty => 'Vue formatée';
	@override String get view_raw => 'Vue brute';
	@override late final _StringsToolsWhoisdomainErrorFr error = _StringsToolsWhoisdomainErrorFr._(_root);
}

// Path: tools.textcounter
class _StringsToolsTextcounterFr implements _StringsToolsTextcounterEn {
	_StringsToolsTextcounterFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compteur de texte';
	@override String get clear => 'Effacer';
	@override String get enter_text_here => 'Entrez du texte';
	@override String get length => 'Longueur';
	@override String get trimmed_length => 'Longueur tronquée';
	@override String get raw_length => 'Longueur brute';
	@override String get letters => 'Lettres';
	@override String get words => 'Mots';
	@override String get spaces => 'Espaces';
	@override String get digits => 'Chiffres';
	@override String get lines => 'Lignes';
	@override String get empty_lines => 'Lignes vides';
	@override String get total_lines => 'Total de lignes';
}

// Path: tools.romannumeral
class _StringsToolsRomannumeralFr implements _StringsToolsRomannumeralEn {
	_StringsToolsRomannumeralFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chiffres romains';
	@override String get change_to => 'Passer en';
	@override String get roman_numeral => 'chiffre romain';
	@override String get number => 'nombre';
	@override String get number_input_hint => 'Nombre';
	@override String get roman_numeral_input_hint => 'Chiffre romains';
	@override String get tap_to_copy => 'Cliquez pour copier';
	@override String get copied_to_clipboard => 'Copié dans le presse-papiers';
	@override late final _StringsToolsRomannumeralErrorFr error = _StringsToolsRomannumeralErrorFr._(_root);
}

// Path: tools.areacalculator
class _StringsToolsAreacalculatorFr implements _StringsToolsAreacalculatorEn {
	_StringsToolsAreacalculatorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Calculateur d\'aire';
	@override String get select_a_shape => 'Sélectionnez une forme';
	@override String get calculate => 'Calculer';
	@override String get area => 'Aire';
	@override late final _StringsToolsAreacalculatorShapesFr shapes = _StringsToolsAreacalculatorShapesFr._(_root);
	@override late final _StringsToolsAreacalculatorInputsFr inputs = _StringsToolsAreacalculatorInputsFr._(_root);
	@override late final _StringsToolsAreacalculatorErrorFr error = _StringsToolsAreacalculatorErrorFr._(_root);
}

// Path: tools.mathtex
class _StringsToolsMathtexFr implements _StringsToolsMathtexEn {
	_StringsToolsMathtexFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'MathTeX';
	@override String get enter_a_mathematical_expression_in_tex_format => 'Entrez une expression mathématique au format TeX';
	@override String get export_to_image => 'Exporter en image';
	@override String get edit_pixel_ratio => 'Modifier le ratio de pixels';
	@override String get new_pixel_ratio => 'Nouveau ratio de pixels';
	@override String get get_help => 'Obtenir de l\'aide';
	@override String get close_help => 'Fermer l\'aide';
	@override String get copied_to_clipboard => 'Copié dans le presse-papiers';
	@override late final _StringsToolsMathtexErrorFr error = _StringsToolsMathtexErrorFr._(_root);
}

// Path: tools.compass
class _StringsToolsCompassFr implements _StringsToolsCompassEn {
	_StringsToolsCompassFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Boussole';
	@override late final _StringsToolsCompassErrorFr error = _StringsToolsCompassErrorFr._(_root);
}

// Path: tools.qrcreator
class _StringsToolsQrcreatorFr implements _StringsToolsQrcreatorEn {
	_StringsToolsQrcreatorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Créateur de QR';
	@override String get ecc_low => 'Bas';
	@override String get ecc_medium => 'Moyen';
	@override String get ecc_quartile => 'Quartile';
	@override String get ecc_high => 'Haut';
	@override String get saved_successfully => 'QR code enregistré avec succès';
	@override String get shared_successfully => 'QR code partagé avec succès';
	@override String get enter_text_or_url => 'Entrez du texte ou une URL';
	@override String get error_correction_level => 'Niveau de correction d\'erreur';
	@override String get create => 'Créer';
	@override String get save => 'Enregistrer';
	@override String get share => 'Partager';
	@override late final _StringsToolsQrcreatorErrorFr error = _StringsToolsQrcreatorErrorFr._(_root);
}

// Path: tools.pastebin
class _StringsToolsPastebinFr implements _StringsToolsPastebinEn {
	_StringsToolsPastebinFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pastebin';
	@override String get url => 'L\'URL';
	@override String get qr_code => 'Le code QR';
	@override String get share => 'Partager';
	@override String get share_dialog_message => 'Que souhaitez-vous partager ?';
	@override String get your_short_link_is => 'Votre lien court est';
	@override String get copy_to_clipboard => 'Copier dans le presse-papiers';
	@override String get copied_to_clipboard => 'Lien court copié dans le presse-papiers';
	@override String get paste_another_text => 'Coller un autre texte';
	@override String get text_to_paste => 'Texte à coller';
	@override String get text_paste_field_hint => 'Collez votre texte, code source ou autre contenu ici';
	@override String by_clicking_you_accept({required Object url}) => 'En cliquant sur le bouton « envoyer », vous acceptez les conditions d\'utilisation de "${url}" disponibles via le lien ci-dessous.';
	@override String get terms_of_service => 'Conditions d\'utilisation (ToS)';
	@override String get send => 'Envoyer';
	@override String get more_features => 'Plus de fonctionnalités';
	@override String get more_features_message => 'Utiliser des fonctions supplémentaires telles que le raccourcissement d\'URL, des liens personnalisés, et plus via le site officiel JTU.ME';
	@override String get open => 'Ouvrir';
	@override late final _StringsToolsPastebinErrorFr error = _StringsToolsPastebinErrorFr._(_root);
}

// Path: credits.translations
class _StringsCreditsTranslationsFr implements _StringsCreditsTranslationsEn {
	_StringsCreditsTranslationsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Traductions';
	@override String english({required Object author}) => 'Anglais par ${author}';
	@override String french({required Object author}) => 'Français par ${author}';
}

// Path: tools.megaphone.error
class _StringsToolsMegaphoneErrorFr implements _StringsToolsMegaphoneErrorEn {
	_StringsToolsMegaphoneErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get microphone_permission_denied => 'Permission refusée, veuillez autoriser l\'application à accéder au micro dans les paramètres de votre appareil';
}

// Path: tools.nslookup.error
class _StringsToolsNslookupErrorFr implements _StringsToolsNslookupErrorEn {
	_StringsToolsNslookupErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get please_enter_a_domain_name => 'Veuillez entrer un nom de domaine';
	@override String get no_address_associated_with_domain => 'Aucune adresse IP n\'est associée au nom d\'hôte.\nVérifiez votre saisie et votre connexion internet puis réessayez.';
}

// Path: tools.ping.error
class _StringsToolsPingErrorFr implements _StringsToolsPingErrorEn {
	_StringsToolsPingErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get please_enter_a_domain_name_or_ip => 'Veuillez entrer un nom de domaine ou une adresse IP';
	@override String get request_timeout => 'Délai d\'attente de la demande dépassé';
	@override String get unkown_host => 'Hôte inconnu';
	@override String get no_reply => 'Pas de réponse';
	@override String get unkown_error => 'Erreur inconnue';
}

// Path: tools.soundmeter.error
class _StringsToolsSoundmeterErrorFr implements _StringsToolsSoundmeterErrorEn {
	_StringsToolsSoundmeterErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get impossible_to_start_the_sound_meter => 'Impossible de démarrer le sonomètre';
	@override String get no_sound_detected => 'Aucun son détecté, vérifiez que l\'application a accès au micro dans les paramètres de votre appareil.';
}

// Path: tools.qrreader.error
class _StringsToolsQrreaderErrorFr implements _StringsToolsQrreaderErrorEn {
	_StringsToolsQrreaderErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get no_qr_code => 'Aucun code QR';
	@override String get error_no_result => 'Aucun résultat trouvé';
}

// Path: tools.roulette.warning
class _StringsToolsRouletteWarningFr implements _StringsToolsRouletteWarningEn {
	_StringsToolsRouletteWarningFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String you_cant_add_more_than_x_items({required Object numberOfItems}) => 'Vous ne pouvez pas ajouter plus de ${numberOfItems} items dans la roulette';
	@override String you_must_have_at_least_x_items({required Object numberOfItems}) => 'Vous devez avoir au moins ${numberOfItems} items dans la roulette';
	@override String get you_must_enter_an_item_name => 'Vous devez entrer un nom d\'item';
}

// Path: tools.randomnumber.error
class _StringsToolsRandomnumberErrorFr implements _StringsToolsRandomnumberErrorEn {
	_StringsToolsRandomnumberErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_number => 'Nombre invalide, veuillez réessayer.';
	@override String get min_must_be_lower_than_max => 'Le nombre minimum doit être inférieur au nombre maximum.';
	@override String min_and_max_must_be_between_x_and_y({required Object minNumberLimit, required Object maxNumberLimit}) => 'Les nombres minimum et maximum doivent être compris entre ${minNumberLimit} et ${maxNumberLimit}.';
}

// Path: tools.sshclient.error
class _StringsToolsSshclientErrorFr implements _StringsToolsSshclientErrorEn {
	_StringsToolsSshclientErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_port => 'Port invalide';
	@override String get invalid_passphrase => 'Vous avez peut-être saisi une phrase de passe alors que votre clé n\'est pas cryptée, ou inversement';
	@override String get invalid_private_key => 'La clé que vous avez fournie n\'est pas une clé privée valide';
	@override String get authentication_failed => 'Échec de l\'authentification';
	@override String get connection_failed => 'Impossible de se connecter à l\'hôte';
	@override String get unknown_error => 'Une erreur inconnue s\'est produite, veuillez réessayer';
}

// Path: tools.uuidgenerator.error
class _StringsToolsUuidgeneratorErrorFr implements _StringsToolsUuidgeneratorErrorEn {
	_StringsToolsUuidgeneratorErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_namespace => 'L\'espace de noms n\'est pas un UUID valide';
}

// Path: tools.texttospeech.error
class _StringsToolsTexttospeechErrorFr implements _StringsToolsTexttospeechErrorEn {
	_StringsToolsTexttospeechErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get please_try_again => 'Veuillez réessayer plus tard.\nSi vous utilisez cette langue pour la première fois, veuillez patienter quelques secondes et réessayer.';
	@override String get please_select_a_language => 'Veuillez sélectionner une langue';
}

// Path: tools.nearbypublictransportstops.error
class _StringsToolsNearbypublictransportstopsErrorFr implements _StringsToolsNearbypublictransportstopsErrorEn {
	_StringsToolsNearbypublictransportstopsErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get location_permission_denied => 'La permission de localisation a été refusée ou désactivée, veuillez l\'activer dans les paramètres afin de voir les arrêts de transport public à proximité.';
	@override String get check_internet_connection => 'Vérifiez votre connexion internet et réessayez.';
	@override String get api_empty_response => 'L\'API a renvoyé une réponse vide';
	@override String api_error_xxx({required Object errorCode}) => 'L\'API a renvoyé une erreur ${errorCode}';
	@override String get no_stops_found => 'Aucun arrêt trouvé avec cette recherche';
	@override String get no_maps_app => 'Aucune application de cartographie n\'est installée sur votre appareil';
}

// Path: tools.fileencryption.error
class _StringsToolsFileencryptionErrorFr implements _StringsToolsFileencryptionErrorEn {
	_StringsToolsFileencryptionErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get failed_to_read_file => 'Échec de la lecture du fichier';
	@override String get failed_to_decrypt_file => 'Échec de déchiffrement du fichier, veuillez vérifier le mot de passe';
	@override String get please_enter_a_password => 'Veuillez entrer un mot de passe';
}

// Path: tools.youtubethumbnail.error
class _StringsToolsYoutubethumbnailErrorFr implements _StringsToolsYoutubethumbnailErrorEn {
	_StringsToolsYoutubethumbnailErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get failed_to_download => 'Impossible de télécharger la miniature depuis YouTube';
	@override String get please_enter_a_video_id => 'Veuillez saisir l\'URL d\'une vidéo YouTube valide\n\nExemples : \nhttps://www.youtube.com/watch?v=dQw4w9WgXcQ\nhttps://youtu.be/dQw4w9WgXcQ\n\nVous avez également besoin d\'une connexion internet pour télécharger la miniature à partir de YouTube';
}

// Path: tools.nationalanthems.error
class _StringsToolsNationalanthemsErrorFr implements _StringsToolsNationalanthemsErrorEn {
	_StringsToolsNationalanthemsErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get failed_to_load_list => 'Impossible de charger la liste des hymnes. Veuillez vérifier votre connexion internet et réessayer.';
	@override String get failed_to_play_anthem => 'Impossible de jouer l\'hymne. Veuillez vérifier votre connexion internet et réessayer.';
}

// Path: tools.httprequest.error
class _StringsToolsHttprequestErrorFr implements _StringsToolsHttprequestErrorEn {
	_StringsToolsHttprequestErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get url_cannot_be_empty => 'L\'URL ne peut pas être vide';
	@override String get invalid_url => 'URL invalide';
	@override String get invalid_headers => 'En-têtes invalides';
	@override String get timeout => 'La requête a dépassé le temps de réponse.\nVeuillez vérifier votre saisie et votre connexion internet, puis réessayez.';
	@override String get other_error => 'Une erreur s\'est produite lors de l\'envoi de la requête.\nVeuillez vérifier votre saisie et votre connexion internet, puis réessayez.';
}

// Path: tools.osm.error
class _StringsToolsOsmErrorFr implements _StringsToolsOsmErrorEn {
	_StringsToolsOsmErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get location_permission_denied => 'Vous devez autoriser l\'accès à la position pour utiliser cette fonction';
	@override String get location_services_disabled => 'Les services de position sont désactivés';
}

// Path: tools.gameoflife.error
class _StringsToolsGameoflifeErrorFr implements _StringsToolsGameoflifeErrorEn {
	_StringsToolsGameoflifeErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get no_alive_cells => 'Pas de cellules vivantes';
	@override String get no_alive_cells_description => 'Il n\'y a pas de cellules vivantes.\nVeuillez toucher la grille pour en ajouter.';
	@override String get please_stop_simulation => 'Veuillez d\'abord arrêter la simulation';
}

// Path: tools.speedometer.error
class _StringsToolsSpeedometerErrorFr implements _StringsToolsSpeedometerErrorEn {
	_StringsToolsSpeedometerErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get location_permission_denied_title => 'Position requise';
	@override String get location_permission_denied_description => 'Cet outil nécessite l\'accès à la position pour déterminer votre vitesse.';
	@override String get location_services_disabled_title => 'Services de position désactivés';
	@override String get location_services_disabled_description => 'Cet outil nécessite que les services de localisation soient activés pour déterminer votre vitesse.';
}

// Path: tools.mc_server_ping.error
class _StringsToolsMcServerPingErrorFr implements _StringsToolsMcServerPingErrorEn {
	_StringsToolsMcServerPingErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get please_enter_a_server_ip => 'Veuillez entrer une adresse IP ou un nom de domaine valide';
	@override String get server_offline_or_does_not_exist => 'Le serveur est hors ligne ou n\'existe pas';
	@override String get please_check_your_internet_connection => 'Veuillez vérifier votre connexion internet et réessayer';
}

// Path: tools.timestampconverter.error
class _StringsToolsTimestampconverterErrorFr implements _StringsToolsTimestampconverterErrorEn {
	_StringsToolsTimestampconverterErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_timestamp => 'Timestamp invalide';
}

// Path: tools.urlshortener.error
class _StringsToolsUrlshortenerErrorFr implements _StringsToolsUrlshortenerErrorEn {
	_StringsToolsUrlshortenerErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get failed_to_shorten_url => 'Le raccourcissement de l\'URL a échoué, veuillez vérifier votre saisie et votre connexion internet.';
	@override String get impossible_to_connect_to_the_server => 'Impossible de se connecter au serveur';
	@override String get impossible_to_connect_to_the_server_message => 'Échec de la connexion au serveur, veuillez vérifier votre connexion internet et réessayer.';
}

// Path: tools.counter.error
class _StringsToolsCounterErrorFr implements _StringsToolsCounterErrorEn {
	_StringsToolsCounterErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_number => 'Le nombre que vous avez entré n\'est pas valide';
	@override String the_number_must_be_between_x_and_y({required Object minNumberLimit, required Object maxNumberLimit}) => 'Le nombre doit être compris entre ${minNumberLimit} et ${maxNumberLimit}';
	@override String get you_must_have_at_least_one_button => 'Vous devez avoir au moins un bouton';
	@override String get this_button_already_exists => 'Ce bouton existe déjà';
}

// Path: tools.bitwisecalculator.error
class _StringsToolsBitwisecalculatorErrorFr implements _StringsToolsBitwisecalculatorErrorEn {
	_StringsToolsBitwisecalculatorErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_input => 'Saisie invalide';
}

// Path: tools.musicsearch.error
class _StringsToolsMusicsearchErrorFr implements _StringsToolsMusicsearchErrorEn {
	_StringsToolsMusicsearchErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get error_playing_audio_preview => 'Erreur lors de la lecture de l\'échantillon audio. Veuillez réessayer plus tard.';
	@override String get unable_to_connect_to_the_api => 'Impossible de se connecter à l\'API, veuillez vérifier votre connexion internet et réessayer.';
}

// Path: tools.musicanalyser.error
class _StringsToolsMusicanalyserErrorFr implements _StringsToolsMusicanalyserErrorEn {
	_StringsToolsMusicanalyserErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get permission_denied => 'Permission refusée';
	@override String get permission_denied_description => 'L\'autorisation du microphone est nécessaire pour analyser la musique. Veuillez accorder cette autorisation et réessayer.';
	@override String get no_match_found => 'Aucune correspondance trouvée';
	@override String get no_match_found_description => 'Aucune correspondance musicale n\'a été trouvée. Veuillez réessayer.';
	@override String get error_occurred => 'Une erreur s\'est produite lors de l\'analyse de la musique. Veuillez vérifier votre connexion internet et réessayer.';
	@override String get please_update_the_app_and_try_again => 'Veuillez mettre à jour l\'application et réessayer. Si le problème persiste avec la dernière version, réessayez plus tard.';
}

// Path: tools.whoisdomain.error
class _StringsToolsWhoisdomainErrorFr implements _StringsToolsWhoisdomainErrorEn {
	_StringsToolsWhoisdomainErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get impossible_to_get_whois_information => 'Impossible d\'obtenir les informations whois, veuillez vérifier votre saisie et votre connexion internet puis réessayez';
}

// Path: tools.romannumeral.error
class _StringsToolsRomannumeralErrorFr implements _StringsToolsRomannumeralErrorEn {
	_StringsToolsRomannumeralErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_roman_numeral => 'Chiffre romain invalide ou non pris en charge';
}

// Path: tools.areacalculator.shapes
class _StringsToolsAreacalculatorShapesFr implements _StringsToolsAreacalculatorShapesEn {
	_StringsToolsAreacalculatorShapesFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get circle => 'Cercle';
	@override String get ellipse => 'Ellipse';
	@override String get equilateral_triangle => 'Triangle équilatéral';
	@override String get kite => 'Cerf-volant';
	@override String get parallelogram => 'Parallélogramme';
	@override String get rectangle => 'Rectangle';
	@override String get rhombus => 'Losange';
	@override String get regular_hexagon => 'Hexagone régulier';
	@override String get regular_octagon => 'Octogone régulier';
	@override String get regular_pentagon => 'Pentagone régulier';
	@override String get regular_polygon => 'Polygone régulier';
	@override String get square => 'Carré';
	@override String get trapezoid => 'Trapèze';
	@override String get triangle => 'Triangle';
}

// Path: tools.areacalculator.inputs
class _StringsToolsAreacalculatorInputsFr implements _StringsToolsAreacalculatorInputsEn {
	_StringsToolsAreacalculatorInputsFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get radius => 'Rayon';
	@override String get major_axis => 'Grand axe';
	@override String get minor_axis => 'Petit axe';
	@override String get side => 'Côté';
	@override String get base => 'Base';
	@override String get height => 'Hauteur';
	@override String get diagonal_1 => 'Diagonale 1';
	@override String get diagonal_2 => 'Diagonale 2';
	@override String get length => 'Longueur';
	@override String get width => 'Largeur';
	@override String get number_of_sides => 'Nombre de côtés';
	@override String get side_length => 'Longueur du côté';
	@override String get apothem => 'Apotème';
	@override String get base_1 => 'Base 1';
	@override String get base_2 => 'Base 2';
}

// Path: tools.areacalculator.error
class _StringsToolsAreacalculatorErrorFr implements _StringsToolsAreacalculatorErrorEn {
	_StringsToolsAreacalculatorErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get invalid_input => 'Entrée invalide';
	@override String get please_enter_a_value_for => 'Veuillez entrer une valeur pour';
	@override String get please_enter_a_valid_number_for => 'Veuillez entrer un nombre valide pour';
	@override String get please_enter_a_positive_number_for => 'Veuillez entrer un nombre positif pour';
	@override String get please_try_again_with_different_values => 'Veuillez réessayer avec des valeurs différentes';
	@override String get the_area_of_the_shape_is_zero => 'L\'aire de la forme est de zéro';
}

// Path: tools.mathtex.error
class _StringsToolsMathtexErrorFr implements _StringsToolsMathtexErrorEn {
	_StringsToolsMathtexErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get an_error_occurred_while_rendering_the_mathtex => 'Une erreur s\'est produite lors du rendu de MathTeX';
	@override String get an_error_occurred_while_exporting_the_image => 'Une erreur s\'est produite lors de l\'exportation de l\'image';
}

// Path: tools.compass.error
class _StringsToolsCompassErrorFr implements _StringsToolsCompassErrorEn {
	_StringsToolsCompassErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get please_grant_location_permission => 'Veuillez autoriser la permission de localisation pour utiliser la boussole. Cette autorisation est obligatoire pour accéder aux capteurs de l\'appareil.';
}

// Path: tools.qrcreator.error
class _StringsToolsQrcreatorErrorFr implements _StringsToolsQrcreatorErrorEn {
	_StringsToolsQrcreatorErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get failed_to_create_qr_code => 'Échec de la création du QR code, veuillez vérifier votre saisie et réessayer';
}

// Path: tools.pastebin.error
class _StringsToolsPastebinErrorFr implements _StringsToolsPastebinErrorEn {
	_StringsToolsPastebinErrorFr._(this._root);

	@override final _StringsFr _root; // ignore: unused_field

	// Translations
	@override String get failed_to_obtain_short_link => 'Impossible d\'obtenir un lien court, veuillez vérifier votre connexion internet puis réessayer';
	@override String get impossible_to_connect_to_the_server => 'Impossible de se connecter au serveur';
	@override String get impossible_to_connect_to_the_server_message => 'Échec de la connexion au serveur, veuillez vérifier votre connexion internet et réessayer.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'generic.app_name': return 'Toolbox';
			case 'generic.error': return 'Error';
			case 'generic.warning': return 'Warning';
			case 'generic.ok': return 'OK';
			case 'generic.cancel': return 'Cancel';
			case 'generic.search': return 'Search';
			case 'generic.enable': return 'Enable';
			case 'generic.reset': return 'Reset';
			case 'generic.yes': return 'Yes';
			case 'generic.no': return 'No';
			case 'homepage.update_available': return 'Update available';
			case 'homepage.update_available_message': return 'A new version of Toolbox is available. Update it now to get the latest features and improvements.';
			case 'homepage.switch_view': return 'Switch view';
			case 'homepage.search_all_folders': return 'Search in all folders';
			case 'homepage.add': return 'Add';
			case 'homepage.remove': return 'Remove';
			case 'homepage.favorites': return 'Favorites';
			case 'homepage.would_you_like_to_add_this_tool_to_favorites': return 'Would you like to add this tool to favorites?';
			case 'homepage.would_you_like_to_remove_this_tool_from_favorites': return 'Would you like to remove this tool from favorites?';
			case 'folders.audio': return 'Audio';
			case 'folders.calculations': return 'Calculations';
			case 'folders.games': return 'Games';
			case 'folders.geography': return 'Geography';
			case 'folders.miscellaneous': return 'Miscellaneous';
			case 'folders.network': return 'Network';
			case 'folders.random': return 'Random';
			case 'folders.time': return 'Time';
			case 'folders.web': return 'Web';
			case 'tools.baseconverter.title': return 'Base converter';
			case 'tools.baseconverter.enter_a_dec_number': return 'Enter a decimal number';
			case 'tools.baseconverter.enter_a_hex_number': return 'Enter a hexadecimal number';
			case 'tools.baseconverter.enter_a_bin_number': return 'Enter a binary number';
			case 'tools.baseconverter.enter_a_oct_number': return 'Enter an octal number';
			case 'tools.baseconverter.hexadecimal': return 'Hexadecimal';
			case 'tools.baseconverter.binary': return 'Binary';
			case 'tools.baseconverter.octal': return 'Octal';
			case 'tools.baseconverter.decimal': return 'Decimal';
			case 'tools.baseconverter.incompatible_number': return 'Incompatible number';
			case 'tools.baseconverter.too_big_number': return 'Too big number';
			case 'tools.baseconverter.the_number_you_entered_is_not_a_valid_x_number': return ({required Object base}) => 'The number you entered is not a valid ${base} number';
			case 'tools.baseconverter.the_number_you_entered_is_too_big_to_be_abble_to_convert_it': return 'The number you entered is too big to be able to convert it';
			case 'tools.clock.title': return 'Clock';
			case 'tools.clock.change_timezone': return 'Change timezone';
			case 'tools.clock.timezone': return 'Timezone';
			case 'tools.clock.choose_a_timezone': return 'Choose a timezone';
			case 'tools.clock.select_local': return 'Local time';
			case 'tools.metronome.title': return 'Metronome';
			case 'tools.metronome.bpm': return 'BPM';
			case 'tools.metronome.beats_per_measure': return 'Beats per measure';
			case 'tools.metronome.start': return 'Start';
			case 'tools.metronome.stop': return 'Stop';
			case 'tools.megaphone.title': return 'Megaphone';
			case 'tools.megaphone.error.microphone_permission_denied': return 'Permission denied, please allow the application to access the microphone in your device settings';
			case 'tools.nslookup.title': return 'NSLookup';
			case 'tools.nslookup.enter_a_domain_name': return 'Enter a domain name';
			case 'tools.nslookup.lookup': return 'Lookup';
			case 'tools.nslookup.error.please_enter_a_domain_name': return 'Please enter a domain name';
			case 'tools.nslookup.error.no_address_associated_with_domain': return 'There is no address associated with the host name.\nCheck your input and your internet connection then try again.';
			case 'tools.ping.title': return 'Ping';
			case 'tools.ping.ping': return 'Ping';
			case 'tools.ping.enter_a_domain_name_or_ip': return 'Enter a domain name or IP address';
			case 'tools.ping.reply_from_host_time_ttl': return ({required Object host, required Object time, required Object ttl}) => 'Reply from ${host}: time=${time}ms TTL=${ttl}';
			case 'tools.ping.x_packets_transmitted_y': return ({required Object transmitted, required Object received}) => '${transmitted} packets transmitted, ${received} packets received';
			case 'tools.ping.error.please_enter_a_domain_name_or_ip': return 'Please enter a domain name or IP address';
			case 'tools.ping.error.request_timeout': return 'Request timeout';
			case 'tools.ping.error.unkown_host': return 'Unknown host';
			case 'tools.ping.error.no_reply': return 'No reply';
			case 'tools.ping.error.unkown_error': return 'Unknown error';
			case 'tools.soundmeter.title': return 'Sound meter';
			case 'tools.soundmeter.decibels': return 'dB';
			case 'tools.soundmeter.error.impossible_to_start_the_sound_meter': return 'Impossible to start the sound meter';
			case 'tools.soundmeter.error.no_sound_detected': return 'No sound detected, check that the application has access to the microphone in the settings of your device.';
			case 'tools.qrreader.title': return 'QR reader';
			case 'tools.qrreader.scanned': return 'Scanned';
			case 'tools.qrreader.openurl': return 'Open link';
			case 'tools.qrreader.copy_password': return 'Copy password';
			case 'tools.qrreader.copy': return 'Copy';
			case 'tools.qrreader.copied_to_clipboard': return 'Copied to clipboard';
			case 'tools.qrreader.wifi': return 'WiFi';
			case 'tools.qrreader.wifi_ssid': return 'SSID';
			case 'tools.qrreader.wifi_password': return 'Password';
			case 'tools.qrreader.error.no_qr_code': return 'No QR code';
			case 'tools.qrreader.error.error_no_result': return 'No result found';
			case 'tools.timer.title': return 'Timer';
			case 'tools.timer.start': return 'Start';
			case 'tools.timer.stop': return 'Stop';
			case 'tools.timer.ios_warning_message': return 'For the timer to ring on iOS, you must not quit the application or switch off your iPhone screen. Otherwise iOS will prevent the timer from ringing when it reaches zero.';
			case 'tools.stopwatch.title': return 'Stopwatch';
			case 'tools.stopwatch.start': return 'Start';
			case 'tools.stopwatch.stop': return 'Stop';
			case 'tools.stopwatch.reset': return 'Reset';
			case 'tools.stopwatch.lap': return 'Lap';
			case 'tools.roulette.title': return 'Roulette';
			case 'tools.roulette.tap_to_roll_info': return 'Tap the wheel to roll it';
			case 'tools.roulette.default_1': return 'Study';
			case 'tools.roulette.default_2': return 'Play';
			case 'tools.roulette.default_3': return 'Sleep';
			case 'tools.roulette.add': return 'Add';
			case 'tools.roulette.remove': return 'Remove';
			case 'tools.roulette.add_item': return 'Add an item';
			case 'tools.roulette.item_name': return 'Item name';
			case 'tools.roulette.remove_an_item': return 'Remove an item';
			case 'tools.roulette.warning.you_cant_add_more_than_x_items': return ({required Object numberOfItems}) => 'You can\'t have more than ${numberOfItems} items in the roulette.';
			case 'tools.roulette.warning.you_must_have_at_least_x_items': return ({required Object numberOfItems}) => 'You must have at least ${numberOfItems} items in the roulette.';
			case 'tools.roulette.warning.you_must_enter_an_item_name': return 'You must enter an item name.';
			case 'tools.flipcoins.title': return 'Flip a coin';
			case 'tools.flipcoins.change_coin_currency': return 'Change coin currency';
			case 'tools.randomnumber.title': return 'Random number';
			case 'tools.randomnumber.min': return 'Min';
			case 'tools.randomnumber.max': return 'Max';
			case 'tools.randomnumber.error.invalid_number': return 'Invalid number, please try again.';
			case 'tools.randomnumber.error.min_must_be_lower_than_max': return 'The minimum number must be lower than the maximum number.';
			case 'tools.randomnumber.error.min_and_max_must_be_between_x_and_y': return ({required Object minNumberLimit, required Object maxNumberLimit}) => 'The minimum and maximum numbers must be between ${minNumberLimit} and ${maxNumberLimit}.';
			case 'tools.randomcolor.title': return 'Random color';
			case 'tools.randomcolor.hint': return 'Tap the color to change it';
			case 'tools.randomcolor.tap_to_copy': return 'Tap to copy';
			case 'tools.randomcolor.copied_to_clipboard': return 'Copied to clipboard';
			case 'tools.sshclient.title': return 'SSH client';
			case 'tools.sshclient.backspace': return 'Backspace';
			case 'tools.sshclient.use_password': return 'Use password';
			case 'tools.sshclient.use_ssh_key': return 'Use SSH key';
			case 'tools.sshclient.host': return 'Host';
			case 'tools.sshclient.port': return 'Port';
			case 'tools.sshclient.username': return 'Username';
			case 'tools.sshclient.password': return 'Password';
			case 'tools.sshclient.connect': return 'Connect';
			case 'tools.sshclient.select_private_key': return 'Select private key';
			case 'tools.sshclient.no_private_key_selected': return 'No private key selected';
			case 'tools.sshclient.passphrase': return 'Passphrase (leave empty if none)';
			case 'tools.sshclient.error.invalid_port': return 'Invalid port';
			case 'tools.sshclient.error.invalid_passphrase': return 'You may have entered a passphrase when your key is not encrypted, or vice versa';
			case 'tools.sshclient.error.invalid_private_key': return 'The key you provided is not a valid private key';
			case 'tools.sshclient.error.authentication_failed': return 'Authentication failed';
			case 'tools.sshclient.error.connection_failed': return 'Could not connect to host';
			case 'tools.sshclient.error.unknown_error': return 'An unknown error occurred. Please try again';
			case 'tools.whiteboard.title': return 'Whiteboard';
			case 'tools.whiteboard.share_success': return 'Your whiteboard has been shared successfully';
			case 'tools.whiteboard.save_success': return 'Your whiteboard has been saved successfully';
			case 'tools.networkinfo.title': return 'Network info';
			case 'tools.networkinfo.loading': return 'Loading...';
			case 'tools.networkinfo.location_permission_required': return 'Location permission is required to get some WiFi info (this is an OS limitation).\nYou could get incorrect info if you don\'t grant it.';
			case 'tools.networkinfo.public_ip': return 'Public IP address';
			case 'tools.networkinfo.local_ip': return 'Local IP address';
			case 'tools.networkinfo.local_subnet_mask': return 'Local network subnet mask';
			case 'tools.networkinfo.local_gateway_ip': return 'Local network gateway IP';
			case 'tools.networkinfo.local_broadcast_ip': return 'Local network broadcast IP';
			case 'tools.networkinfo.wifi_name': return 'WiFi name';
			case 'tools.networkinfo.wifi_bssid': return 'WiFi BSSID';
			case 'tools.networkinfo.not_available_on_ios': return 'Not available on iOS';
			case 'tools.networkinfo.note_location_permission': return 'Note: some information may be incorrect if you didn\'t grant precise location permission.';
			case 'tools.uuidgenerator.title': return 'UUID generator';
			case 'tools.uuidgenerator.generate': return 'Generate';
			case 'tools.uuidgenerator.default_uuid_text': return 'Press a button to generate a UUID';
			case 'tools.uuidgenerator.tap_to_copy': return 'Tap to copy';
			case 'tools.uuidgenerator.copied_to_clipboard': return 'Copied to clipboard';
			case 'tools.uuidgenerator.v1_uuid': return 'v1 (time-based)';
			case 'tools.uuidgenerator.v4_uuid': return 'v4 (random)';
			case 'tools.uuidgenerator.v5_uuid': return 'v5 (sha1-based)';
			case 'tools.uuidgenerator.v5_generate_title': return 'Generate v5 UUID';
			case 'tools.uuidgenerator.v5_namespace': return 'Namespace (leave blank for random)';
			case 'tools.uuidgenerator.v5_name': return 'Name (leave blank for none)';
			case 'tools.uuidgenerator.error.invalid_namespace': return 'The namespace is not a valid UUID';
			case 'tools.texttospeech.title': return 'Text to speech';
			case 'tools.texttospeech.choose_a_language': return 'Choose a language';
			case 'tools.texttospeech.text_to_speak': return 'Text to speak';
			case 'tools.texttospeech.pitch': return 'Pitch';
			case 'tools.texttospeech.rate': return 'Rate';
			case 'tools.texttospeech.play': return 'Play';
			case 'tools.texttospeech.stop': return 'Stop';
			case 'tools.texttospeech.error.please_try_again': return 'Please try again later.\nIf it\'s the first time you\'re using this language, please wait a few seconds and try again.';
			case 'tools.texttospeech.error.please_select_a_language': return 'Please select a language';
			case 'tools.nearbypublictransportstops.title': return 'Nearby transport stops';
			case 'tools.nearbypublictransportstops.loading': return 'Loading...';
			case 'tools.nearbypublictransportstops.refresh': return 'Refresh';
			case 'tools.nearbypublictransportstops.data_source': return 'Data source';
			case 'tools.nearbypublictransportstops.initial_dialog_title': return 'Information';
			case 'tools.nearbypublictransportstops.initial_dialog_message': return ({required Object source}) => 'This tool is intended to be used in Switzerland. It uses the data from "${source}"';
			case 'tools.nearbypublictransportstops.data_license_dialog_open': return 'Open';
			case 'tools.nearbypublictransportstops.data_license_dialog_title': return 'Data source';
			case 'tools.nearbypublictransportstops.data_license_dialog_message': return ({required Object source, required Object url}) => 'The data used in this tool comes from "${source}".\n${url}';
			case 'tools.nearbypublictransportstops.no_departures': return 'No departures found';
			case 'tools.nearbypublictransportstops.departure': return 'Departure';
			case 'tools.nearbypublictransportstops.arrival': return 'Arrival';
			case 'tools.nearbypublictransportstops.platform': return 'Platform';
			case 'tools.nearbypublictransportstops.show_on_map': return 'Map';
			case 'tools.nearbypublictransportstops.map_marker_title': return 'Stop';
			case 'tools.nearbypublictransportstops.error.location_permission_denied': return 'Location permission denied or disabled, please enable it in settings in order to see nearby stops.';
			case 'tools.nearbypublictransportstops.error.check_internet_connection': return 'Please check your internet connection and try again.';
			case 'tools.nearbypublictransportstops.error.api_empty_response': return 'The API returned an empty response';
			case 'tools.nearbypublictransportstops.error.api_error_xxx': return ({required Object errorCode}) => 'The API returned an error: ${errorCode}';
			case 'tools.nearbypublictransportstops.error.no_stops_found': return 'No stops found for this search';
			case 'tools.nearbypublictransportstops.error.no_maps_app': return 'No maps app found on your device';
			case 'tools.fileencryption.title': return 'File encryption';
			case 'tools.fileencryption.home_hint': return 'Pick a file to encrypt it. If you want to decrypt a file, pick an encrypted file with the .aes extension';
			case 'tools.fileencryption.no_file_selected': return 'No file selected';
			case 'tools.fileencryption.enter_password': return 'Please enter a password';
			case 'tools.fileencryption.file_saved_successfully': return 'File saved successfully';
			case 'tools.fileencryption.pick_a_file': return 'Pick a file';
			case 'tools.fileencryption.encryption_password': return 'Encryption password';
			case 'tools.fileencryption.encrypt': return 'Encrypt';
			case 'tools.fileencryption.decrypt': return 'Decrypt';
			case 'tools.fileencryption.error.failed_to_read_file': return 'Failed to read the file';
			case 'tools.fileencryption.error.failed_to_decrypt_file': return 'Failed to decrypt the file, please check the password';
			case 'tools.fileencryption.error.please_enter_a_password': return 'Please enter a password';
			case 'tools.youtubethumbnail.title': return 'YouTube thumbnail';
			case 'tools.youtubethumbnail.saved': return 'Thumbnail saved to device';
			case 'tools.youtubethumbnail.youtube_video_id': return 'YouTube video URL';
			case 'tools.youtubethumbnail.save_thumbnail': return 'Save thumbnail';
			case 'tools.youtubethumbnail.error.failed_to_download': return 'Failed to download thumbnail from YouTube';
			case 'tools.youtubethumbnail.error.please_enter_a_video_id': return 'Please enter a valid YouTube video URL\n\nExamples: \nhttps://www.youtube.com/watch?v=dQw4w9WgXcQ\nhttps://youtu.be/dQw4w9WgXcQ\n\nYou also need an internet connection to download the thumbnail from YouTube';
			case 'tools.nationalanthems.title': return 'National anthems';
			case 'tools.nationalanthems.stop': return 'Stop the anthem';
			case 'tools.nationalanthems.search': return 'Search (English name)';
			case 'tools.nationalanthems.license': return 'License';
			case 'tools.nationalanthems.license_text': return ({required Object source, required Object license}) => 'The audio files are provided by "${source}" under the ${license} license';
			case 'tools.nationalanthems.open': return 'Open';
			case 'tools.nationalanthems.view_license': return 'View license';
			case 'tools.nationalanthems.loading_audio_title': return 'Loading';
			case 'tools.nationalanthems.loading_audio_text': return 'Loading the anthem, please wait...';
			case 'tools.nationalanthems.error.failed_to_load_list': return 'Impossible to load the list of anthems. Please check your internet connection and try again.';
			case 'tools.nationalanthems.error.failed_to_play_anthem': return 'Impossible to play the anthem. Please check your internet connection and try again.';
			case 'tools.httprequest.title': return 'HTTP request';
			case 'tools.httprequest.method': return 'Method';
			case 'tools.httprequest.custom_method': return 'Custom method';
			case 'tools.httprequest.url': return 'URL';
			case 'tools.httprequest.headers': return 'Headers';
			case 'tools.httprequest.body': return 'Body';
			case 'tools.httprequest.render_html': return 'Render HTML';
			case 'tools.httprequest.back_to_details': return 'Back to details';
			case 'tools.httprequest.send_request': return 'Send request';
			case 'tools.httprequest.response': return 'Response';
			case 'tools.httprequest.status_code': return 'Status code';
			case 'tools.httprequest.error.url_cannot_be_empty': return 'The URL cannot be empty';
			case 'tools.httprequest.error.invalid_url': return 'Invalid URL';
			case 'tools.httprequest.error.invalid_headers': return 'Invalid headers';
			case 'tools.httprequest.error.timeout': return 'The request timed out.\nPlease check your input and your internet connection then try again.';
			case 'tools.httprequest.error.other_error': return 'An error occurred while sending the request.\nPlease check your input and your internet connection then try again.';
			case 'tools.morsecode.title': return 'Morse code';
			case 'tools.morsecode.alphabet_field': return 'Alphabet (A-Z, 0-9)';
			case 'tools.morsecode.morse_field': return 'Morse code (. and -)';
			case 'tools.morsecode.note_spaces': return 'Note: Use 1 space between letters, 3 spaces between words.';
			case 'tools.morsecode.alphabet_to_morse': return 'Alphabet to morse';
			case 'tools.morsecode.morse_to_alphabet': return 'Morse to alphabet';
			case 'tools.morsecode.play_audio': return 'Play audio';
			case 'tools.osm.title': return 'Map (OSM)';
			case 'tools.osm.go_to_my_location': return 'Go to my location';
			case 'tools.osm.loading_map': return 'Loading map...';
			case 'tools.osm.error.location_permission_denied': return 'You need to grant location permissions to use this feature';
			case 'tools.osm.error.location_services_disabled': return 'Location services are disabled';
			case 'tools.gameoflife.title': return 'Game of life';
			case 'tools.gameoflife.grid_size': return 'Grid size';
			case 'tools.gameoflife.current_size_is_x': return ({required Object size}) => 'Current size is ${size}';
			case 'tools.gameoflife.waiting': return 'Waiting';
			case 'tools.gameoflife.stop_simulation': return 'Stop simulation';
			case 'tools.gameoflife.start_simulation': return 'Start simulation';
			case 'tools.gameoflife.randomize_grid': return 'Randomize grid';
			case 'tools.gameoflife.clear_grid': return 'Clear grid';
			case 'tools.gameoflife.error.no_alive_cells': return 'No alive cells';
			case 'tools.gameoflife.error.no_alive_cells_description': return 'There are no alive cells.\nPlease tap on the grid to add some.';
			case 'tools.gameoflife.error.please_stop_simulation': return 'Please stop the simulation first';
			case 'tools.speedometer.title': return 'Speedometer';
			case 'tools.speedometer.reset': return 'Reset';
			case 'tools.speedometer.about_traveled_distance_title': return 'About traveled distance';
			case 'tools.speedometer.about_traveled_distance_description': return 'Traveled distance is calculated using the speed detected by the GPS.\nThis means that the distance is not 100% accurate.';
			case 'tools.speedometer.kmh': return 'km/h';
			case 'tools.speedometer.km': return 'km';
			case 'tools.speedometer.mph': return 'mph';
			case 'tools.speedometer.mi': return 'mi';
			case 'tools.speedometer.change_speed_unit': return 'Change speed unit';
			case 'tools.speedometer.change_speed_unit_description': return 'Choose the speed unit you want to use with the speedometer';
			case 'tools.speedometer.traveled_distance': return 'Traveled distance';
			case 'tools.speedometer.error.location_permission_denied_title': return 'Location required';
			case 'tools.speedometer.error.location_permission_denied_description': return 'This tool requires location permission to determine your speed.';
			case 'tools.speedometer.error.location_services_disabled_title': return 'Location services disabled';
			case 'tools.speedometer.error.location_services_disabled_description': return 'This tool requires location services to be enabled to determine your speed.';
			case 'tools.mc_server_ping.title': return 'MC server ping';
			case 'tools.mc_server_ping.java_edition': return 'Java Edition';
			case 'tools.mc_server_ping.information_java': return 'Information';
			case 'tools.mc_server_ping.information_java_description': return 'Check this box if the server is available for the Java Edition of Minecraft. If not, unchecked it and the tool will use the Bedrock Edition API.';
			case 'tools.mc_server_ping.server_ip': return 'Minecraft server IP (or domain)';
			case 'tools.mc_server_ping.ping': return 'Ping server';
			case 'tools.mc_server_ping.ping_another_server': return 'Ping another server';
			case 'tools.mc_server_ping.api_used': return 'API used';
			case 'tools.mc_server_ping.about_the_api': return 'About the API';
			case 'tools.mc_server_ping.about_the_api_description': return ({required Object source, required Object website}) => 'This tool uses the "${source}" from "${website}" to ping Minecraft servers.';
			case 'tools.mc_server_ping.about_open': return 'Open';
			case 'tools.mc_server_ping.the_server_id_is': return ({required Object id}) => 'The server ID is "${id}"';
			case 'tools.mc_server_ping.added_to_favorites': return 'Added to favorites';
			case 'tools.mc_server_ping.added_to_favorites_description': return 'The server has been added to your favorites.';
			case 'tools.mc_server_ping.removed_from_favorites': return 'Removed from favorites';
			case 'tools.mc_server_ping.removed_from_favorites_description': return 'The server has been removed from your favorites.';
			case 'tools.mc_server_ping.add_to_favorites': return 'Add to favorite';
			case 'tools.mc_server_ping.remove_from_favorites': return 'Remove from favorite';
			case 'tools.mc_server_ping.from_favorites': return 'From favorites';
			case 'tools.mc_server_ping.pick_from_favorites': return 'Pick from favorites';
			case 'tools.mc_server_ping.no_favorites': return 'No favorites';
			case 'tools.mc_server_ping.no_favorites_description': return 'You don\'t have any favorite servers yet.';
			case 'tools.mc_server_ping.error.please_enter_a_server_ip': return 'Please enter a server IP or domain';
			case 'tools.mc_server_ping.error.server_offline_or_does_not_exist': return 'The server is offline or does not exist';
			case 'tools.mc_server_ping.error.please_check_your_internet_connection': return 'Please check your internet connection and try again';
			case 'tools.timestampconverter.title': return 'Timestamp converter';
			case 'tools.timestampconverter.now_tooltip': return 'Now';
			case 'tools.timestampconverter.utc': return 'UTC';
			case 'tools.timestampconverter.local': return 'Local';
			case 'tools.timestampconverter.local_or_utc_dialog_title': return 'Local or UTC';
			case 'tools.timestampconverter.local_or_utc_dialog_message': return 'Do you want to pick a local or UTC date?';
			case 'tools.timestampconverter.unix_timestamp': return 'Unix timestamp';
			case 'tools.timestampconverter.convert_timestamp_to_date': return 'Convert timestamp to date';
			case 'tools.timestampconverter.tap_the_date_to_change_it': return 'Tap the date to change it';
			case 'tools.timestampconverter.select_seconds': return 'Select seconds';
			case 'tools.timestampconverter.error.invalid_timestamp': return 'Invalid timestamp';
			case 'tools.urlshortener.title': return 'URL shortener';
			case 'tools.urlshortener.url': return 'URL';
			case 'tools.urlshortener.qr_code': return 'QR code';
			case 'tools.urlshortener.share': return 'Share';
			case 'tools.urlshortener.share_dialog_message': return 'What do you want to share?';
			case 'tools.urlshortener.your_shortened_url_is': return 'Your shortened URL is';
			case 'tools.urlshortener.copy_to_clipboard': return 'Copy to clipboard';
			case 'tools.urlshortener.shorten_another_url': return 'Shorten another URL';
			case 'tools.urlshortener.url_to_shorten': return 'URL to shorten';
			case 'tools.urlshortener.by_clicking_you_accept': return ({required Object url}) => 'By clicking the shorten button, you agree to the terms of service of "${url}" available via the link below.';
			case 'tools.urlshortener.terms_of_service': return 'Terms of service';
			case 'tools.urlshortener.shorten': return 'Shorten';
			case 'tools.urlshortener.more_features': return 'More features';
			case 'tools.urlshortener.more_features_message': return 'Use additional features such as text sharing, custom links, and more via the official JTU.ME website';
			case 'tools.urlshortener.open': return 'Open';
			case 'tools.urlshortener.error.failed_to_shorten_url': return 'Failed to shorten the URL, please check your input and your internet connection.';
			case 'tools.urlshortener.error.impossible_to_connect_to_the_server': return 'Impossible to connect to the server';
			case 'tools.urlshortener.error.impossible_to_connect_to_the_server_message': return 'Failed to connect to the server, please check your internet connection and try again.';
			case 'tools.counter.title': return 'Counter';
			case 'tools.counter.add_button': return 'Add button';
			case 'tools.counter.remove_button': return 'Remove button';
			case 'tools.counter.enter_number': return 'Enter a number';
			case 'tools.counter.error.invalid_number': return 'The number you entered is invalid';
			case 'tools.counter.error.the_number_must_be_between_x_and_y': return ({required Object minNumberLimit, required Object maxNumberLimit}) => 'The number must be between ${minNumberLimit} and ${maxNumberLimit}';
			case 'tools.counter.error.you_must_have_at_least_one_button': return 'You must have at least one button';
			case 'tools.counter.error.this_button_already_exists': return 'This button already exists';
			case 'tools.bitwisecalculator.title': return 'Bitwise calculator';
			case 'tools.bitwisecalculator.first_number': return 'First number';
			case 'tools.bitwisecalculator.second_number': return 'Second number';
			case 'tools.bitwisecalculator.enter_a_binary_number': return 'Enter a binary number';
			case 'tools.bitwisecalculator.and': return 'AND';
			case 'tools.bitwisecalculator.or': return 'OR';
			case 'tools.bitwisecalculator.xor': return 'XOR';
			case 'tools.bitwisecalculator.error.invalid_input': return 'Invalid input';
			case 'tools.musicsearch.title': return 'Music search';
			case 'tools.musicsearch.unknown_title': return 'Unknown title';
			case 'tools.musicsearch.unknown_artist': return 'Unknown artist';
			case 'tools.musicsearch.unknown_album': return 'Unknown album';
			case 'tools.musicsearch.loading': return 'Loading';
			case 'tools.musicsearch.loading_audio_preview': return 'Loading audio preview...';
			case 'tools.musicsearch.stop_audio_preview': return 'Stop audio preview';
			case 'tools.musicsearch.data_source': return 'Data source';
			case 'tools.musicsearch.this_tool_uses_the_x_api': return ({required Object service}) => 'This tool uses the "${service}" API to search for music.\nThe audio previews are provided by "${service}".';
			case 'tools.musicsearch.go_to_x': return ({required Object service}) => 'Go to ${service}';
			case 'tools.musicsearch.search_for_music': return 'Search for music';
			case 'tools.musicsearch.use_the_searchbar_to_search_music': return 'Use the search bar to find music.\nIf your search returns no results, try a different search term.';
			case 'tools.musicsearch.open_in_x': return ({required Object service}) => 'Open in ${service}';
			case 'tools.musicsearch.play_preview': return 'Play preview';
			case 'tools.musicsearch.error.error_playing_audio_preview': return 'Error playing audio preview. Please try again later.';
			case 'tools.musicsearch.error.unable_to_connect_to_the_api': return 'Unable to connect to the API, please check your internet connection and try again.';
			case 'tools.musicanalyser.title': return 'Music analyser';
			case 'tools.musicanalyser.press_the_button_to_start_music_analysis': return 'Press the button to start music analysis';
			case 'tools.musicanalyser.loading': return 'Loading...';
			case 'tools.musicanalyser.analyzing_music': return ({required Object remainingSeconds}) => 'Analyzing music... (${remainingSeconds}s)';
			case 'tools.musicanalyser.getting_results': return 'Getting results...';
			case 'tools.musicanalyser.unknown': return 'Unknown';
			case 'tools.musicanalyser.api_used': return 'API used';
			case 'tools.musicanalyser.this_tool_uses_the_x_api': return ({required Object service, required Object company}) => 'This tool uses the "${service}" API via a Koizeay backend server. "${service}" is a registered trademark of "${company}" and is not affiliated with this tool.';
			case 'tools.musicanalyser.start_analyzing_music': return 'Start analyzing music';
			case 'tools.musicanalyser.clear': return 'Clear';
			case 'tools.musicanalyser.error.permission_denied': return 'Permission denied';
			case 'tools.musicanalyser.error.permission_denied_description': return 'The microphone permission is required to analyze music. Please grant the permission and try again.';
			case 'tools.musicanalyser.error.no_match_found': return 'No match found';
			case 'tools.musicanalyser.error.no_match_found_description': return 'No music match was found. Please try again.';
			case 'tools.musicanalyser.error.error_occurred': return 'An error occurred while analyzing the music. Please check your internet connection and try again.';
			case 'tools.musicanalyser.error.please_update_the_app_and_try_again': return 'Please update the app and try again. If the problem persists with the latest version, please try again later.';
			case 'tools.textdifferences.title': return 'Text differences';
			case 'tools.textdifferences.old_text': return 'Old text';
			case 'tools.textdifferences.new_text': return 'New text';
			case 'tools.textdifferences.no_text_hint': return 'Enter text in the fields above to see the differences';
			case 'tools.characterscopy.title': return 'Characters copy';
			case 'tools.characterscopy.important': return 'Important';
			case 'tools.characterscopy.important_description': return 'Some characters may not be displayed correctly on all devices depending on your operating system. Also, some characters may not be supported by all apps and fonts. Just click on the character you want to copy and it will be copied to your clipboard.';
			case 'tools.characterscopy.copied_to_clipboard': return 'Copied to clipboard';
			case 'tools.whoisdomain.title': return 'Whois domain';
			case 'tools.whoisdomain.domain_name': return 'Domain name';
			case 'tools.whoisdomain.whois_lookup': return 'Whois lookup';
			case 'tools.whoisdomain.disclaimer': return 'Disclaimer';
			case 'tools.whoisdomain.disclaimer_text': return 'Toolbox provides WHOIS query functionality for informational purposes only. The data retrieved may not be accurate, complete, or up-to-date, and is subject to the terms and conditions of the respective domain registries. Users are prohibited from using WHOIS data for spam, unlawful purposes, or automated data collection. By using this tool, you agree to comply with applicable laws and the registry\'s terms of service. Toolbox and/or Koizeay assumes no responsibility for errors, omissions, or misuse of the data. Please note that some TLDs may not be supported by this tool.';
			case 'tools.whoisdomain.loading': return 'Loading...';
			case 'tools.whoisdomain.ip_address_not_supported': return 'IP address not supported';
			case 'tools.whoisdomain.ip_address_not_supported_description': return 'This tool only supports domain names, not IP addresses';
			case 'tools.whoisdomain.no_result': return 'No valid result found';
			case 'tools.whoisdomain.view_pretty': return 'View pretty';
			case 'tools.whoisdomain.view_raw': return 'View raw';
			case 'tools.whoisdomain.error.impossible_to_get_whois_information': return 'Impossible to get the whois information, please check your input and your internet connection then try again';
			case 'tools.textcounter.title': return 'Text counter';
			case 'tools.textcounter.clear': return 'Clear';
			case 'tools.textcounter.enter_text_here': return 'Enter text here';
			case 'tools.textcounter.length': return 'Length';
			case 'tools.textcounter.trimmed_length': return 'Trimmed length';
			case 'tools.textcounter.raw_length': return 'Raw length';
			case 'tools.textcounter.letters': return 'Letters';
			case 'tools.textcounter.words': return 'Words';
			case 'tools.textcounter.spaces': return 'Spaces';
			case 'tools.textcounter.digits': return 'Digits';
			case 'tools.textcounter.lines': return 'Lines';
			case 'tools.textcounter.empty_lines': return 'Empty lines';
			case 'tools.textcounter.total_lines': return 'Total lines';
			case 'tools.romannumeral.title': return 'Roman numeral';
			case 'tools.romannumeral.change_to': return 'Change to';
			case 'tools.romannumeral.roman_numeral': return 'roman numeral';
			case 'tools.romannumeral.number': return 'number';
			case 'tools.romannumeral.number_input_hint': return 'Number';
			case 'tools.romannumeral.roman_numeral_input_hint': return 'Roman numeral';
			case 'tools.romannumeral.tap_to_copy': return 'Tap to copy';
			case 'tools.romannumeral.copied_to_clipboard': return 'Copied to clipboard';
			case 'tools.romannumeral.error.invalid_roman_numeral': return 'Invalid or unsupported roman numeral';
			case 'tools.areacalculator.title': return 'Area calculator';
			case 'tools.areacalculator.select_a_shape': return 'Select a shape';
			case 'tools.areacalculator.area': return 'Area';
			case 'tools.areacalculator.calculate': return 'Calculate';
			case 'tools.areacalculator.shapes.circle': return 'Circle';
			case 'tools.areacalculator.shapes.ellipse': return 'Ellipse';
			case 'tools.areacalculator.shapes.equilateral_triangle': return 'Equilateral triangle';
			case 'tools.areacalculator.shapes.kite': return 'Kite';
			case 'tools.areacalculator.shapes.parallelogram': return 'Parallelogram';
			case 'tools.areacalculator.shapes.rectangle': return 'Rectangle';
			case 'tools.areacalculator.shapes.rhombus': return 'Rhombus';
			case 'tools.areacalculator.shapes.regular_hexagon': return 'Regular hexagon';
			case 'tools.areacalculator.shapes.regular_octagon': return 'Regular octagon';
			case 'tools.areacalculator.shapes.regular_pentagon': return 'Regular pentagon';
			case 'tools.areacalculator.shapes.regular_polygon': return 'Regular polygon';
			case 'tools.areacalculator.shapes.square': return 'Square';
			case 'tools.areacalculator.shapes.trapezoid': return 'Trapezoid';
			case 'tools.areacalculator.shapes.triangle': return 'Triangle';
			case 'tools.areacalculator.inputs.radius': return 'Radius';
			case 'tools.areacalculator.inputs.major_axis': return 'Major axis';
			case 'tools.areacalculator.inputs.minor_axis': return 'Minor axis';
			case 'tools.areacalculator.inputs.side': return 'Side';
			case 'tools.areacalculator.inputs.base': return 'Base';
			case 'tools.areacalculator.inputs.height': return 'Height';
			case 'tools.areacalculator.inputs.diagonal_1': return 'Diagonal 1';
			case 'tools.areacalculator.inputs.diagonal_2': return 'Diagonal 2';
			case 'tools.areacalculator.inputs.length': return 'Length';
			case 'tools.areacalculator.inputs.width': return 'Width';
			case 'tools.areacalculator.inputs.number_of_sides': return 'Number of sides';
			case 'tools.areacalculator.inputs.side_length': return 'Side length';
			case 'tools.areacalculator.inputs.apothem': return 'Apothem';
			case 'tools.areacalculator.inputs.base_1': return 'Base 1';
			case 'tools.areacalculator.inputs.base_2': return 'Base 2';
			case 'tools.areacalculator.error.invalid_input': return 'Invalid input';
			case 'tools.areacalculator.error.please_enter_a_value_for': return 'Please enter a value for';
			case 'tools.areacalculator.error.please_enter_a_valid_number_for': return 'Please enter a valid number for';
			case 'tools.areacalculator.error.please_enter_a_positive_number_for': return 'Please enter a positive number for';
			case 'tools.areacalculator.error.please_try_again_with_different_values': return 'Please try again with different values';
			case 'tools.areacalculator.error.the_area_of_the_shape_is_zero': return 'The area of the shape is zero';
			case 'tools.mathtex.title': return 'MathTeX';
			case 'tools.mathtex.enter_a_mathematical_expression_in_tex_format': return 'Enter a mathematical expression in TeX format';
			case 'tools.mathtex.export_to_image': return 'Export to image';
			case 'tools.mathtex.edit_pixel_ratio': return 'Edit pixel ratio';
			case 'tools.mathtex.new_pixel_ratio': return 'New pixel ratio';
			case 'tools.mathtex.get_help': return 'Get help';
			case 'tools.mathtex.close_help': return 'Close help';
			case 'tools.mathtex.copied_to_clipboard': return 'Copied to clipboard';
			case 'tools.mathtex.error.an_error_occurred_while_rendering_the_mathtex': return 'An error occurred while rendering the MathTeX';
			case 'tools.mathtex.error.an_error_occurred_while_exporting_the_image': return 'An error occurred while exporting the image';
			case 'tools.compass.title': return 'Compass';
			case 'tools.compass.error.please_grant_location_permission': return 'Please grant location permission to use the compass. It is mandatory to access the device\'s sensors.';
			case 'tools.qrcreator.title': return 'QR creator';
			case 'tools.qrcreator.ecc_low': return 'Low';
			case 'tools.qrcreator.ecc_medium': return 'Medium';
			case 'tools.qrcreator.ecc_quartile': return 'Quartile';
			case 'tools.qrcreator.ecc_high': return 'High';
			case 'tools.qrcreator.saved_successfully': return 'QR code saved successfully';
			case 'tools.qrcreator.shared_successfully': return 'QR code shared successfully';
			case 'tools.qrcreator.enter_text_or_url': return 'Enter text or URL';
			case 'tools.qrcreator.error_correction_level': return 'Error correction level';
			case 'tools.qrcreator.create': return 'Create';
			case 'tools.qrcreator.save': return 'Save';
			case 'tools.qrcreator.share': return 'Share';
			case 'tools.qrcreator.error.failed_to_create_qr_code': return 'Failed to create QR code, please check your input and try again';
			case 'tools.pastebin.title': return 'Pastebin';
			case 'tools.pastebin.url': return 'URL';
			case 'tools.pastebin.qr_code': return 'QR code';
			case 'tools.pastebin.share': return 'Share';
			case 'tools.pastebin.share_dialog_message': return 'What do you want to share?';
			case 'tools.pastebin.your_short_link_is': return 'Your short link is';
			case 'tools.pastebin.copy_to_clipboard': return 'Copy to clipboard';
			case 'tools.pastebin.copied_to_clipboard': return 'Short link copied to clipboard';
			case 'tools.pastebin.paste_another_text': return 'Paste another text';
			case 'tools.pastebin.text_to_paste': return 'Text to paste';
			case 'tools.pastebin.text_paste_field_hint': return 'Paste your text, source code or other content here';
			case 'tools.pastebin.by_clicking_you_accept': return ({required Object url}) => 'By clicking the send button, you agree to the terms of service of "${url}" available via the link below.';
			case 'tools.pastebin.terms_of_service': return 'Terms of service';
			case 'tools.pastebin.send': return 'Send';
			case 'tools.pastebin.more_features': return 'More features';
			case 'tools.pastebin.more_features_message': return 'Use additional features such as URL shortening, custom links, and more via the official JTU.ME website';
			case 'tools.pastebin.open': return 'Open';
			case 'tools.pastebin.error.failed_to_obtain_short_link': return 'Failed to obtain short link, please check your internet connection and try again';
			case 'tools.pastebin.error.impossible_to_connect_to_the_server': return 'Impossible to connect to the server';
			case 'tools.pastebin.error.impossible_to_connect_to_the_server_message': return 'Failed to connect to the server, please check your internet connection and try again.';
			case 'credits.title': return 'Credits';
			case 'credits.app_icon': return ({required Object author}) => 'App icon by ${author}';
			case 'credits.app_license': return ({required Object license}) => 'The app is licensed under the ${license} license';
			case 'credits.tools_icons': return ({required Object author}) => 'Tools icons by ${author}';
			case 'credits.ads_disclaimer': return 'Ads are there to help me pay server costs and support the development of this app.\nOnly a small banner is displayed at the bottom of the screen, nothing to block your Toolbox experience.';
			case 'credits.more_apps_and_services': return 'More apps and services';
			case 'credits.view_licenses': return 'View licenses';
			case 'credits.contribute_on_github': return 'Contribute on GitHub';
			case 'credits.email_copied_to_clipboard': return 'Email copied to clipboard';
			case 'credits.made_with_love_in_switzerland': return 'Made with love in Switzerland';
			case 'credits.made_with_love_in_switzerland_description': return 'Made in Switzerland, used worldwide.\nThank you for using Toolbox.\nIf you like it, please consider leaving a review on the Play Store or App Store.\nIt helps me a lot and motivates me to keep improving the app.';
			case 'credits.translations.title': return 'Translations';
			case 'credits.translations.english': return ({required Object author}) => 'English by ${author}';
			case 'credits.translations.french': return ({required Object author}) => 'French by ${author}';
			default: return null;
		}
	}
}

extension on _StringsFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'generic.app_name': return 'Toolbox';
			case 'generic.error': return 'Erreur';
			case 'generic.warning': return 'Attention';
			case 'generic.ok': return 'OK';
			case 'generic.cancel': return 'Annuler';
			case 'generic.search': return 'Rechercher';
			case 'generic.enable': return 'Activer';
			case 'generic.reset': return 'Réinitialiser';
			case 'generic.yes': return 'Oui';
			case 'generic.no': return 'Non';
			case 'homepage.update_available': return 'Mise à jour disponible';
			case 'homepage.update_available_message': return 'Une nouvelle version de Toolbox est disponible. Mettez à jour dès maintenant pour bénéficier des dernières fonctionnalités et améliorations.';
			case 'homepage.switch_view': return 'Changer de vue';
			case 'homepage.search_all_folders': return 'Rechercher dans tous les dossiers';
			case 'homepage.add': return 'Ajouter';
			case 'homepage.remove': return 'Supprimer';
			case 'homepage.favorites': return 'Favoris';
			case 'homepage.would_you_like_to_add_this_tool_to_favorites': return 'Voulez-vous ajouter cet outil aux favoris ?';
			case 'homepage.would_you_like_to_remove_this_tool_from_favorites': return 'Voulez-vous retirer cet outils des favoris ?';
			case 'folders.audio': return 'Audio';
			case 'folders.calculations': return 'Calculs';
			case 'folders.games': return 'Jeux';
			case 'folders.geography': return 'Géographie';
			case 'folders.miscellaneous': return 'Divers';
			case 'folders.network': return 'Réseau';
			case 'folders.random': return 'Aléatoire';
			case 'folders.time': return 'Temps';
			case 'folders.web': return 'Web';
			case 'tools.baseconverter.title': return 'Convertisseur de base';
			case 'tools.baseconverter.enter_a_dec_number': return 'Entrez un nombre décimal';
			case 'tools.baseconverter.enter_a_hex_number': return 'Entrez un nombre hexadécimal';
			case 'tools.baseconverter.enter_a_bin_number': return 'Entrez un nombre binaire';
			case 'tools.baseconverter.enter_a_oct_number': return 'Entrez un nombre octal';
			case 'tools.baseconverter.hexadecimal': return 'Hexadécimal';
			case 'tools.baseconverter.binary': return 'Binaire';
			case 'tools.baseconverter.octal': return 'Octal';
			case 'tools.baseconverter.decimal': return 'Décimal';
			case 'tools.baseconverter.incompatible_number': return 'Nombre incompatible';
			case 'tools.baseconverter.too_big_number': return 'Nombre trop grand';
			case 'tools.baseconverter.the_number_you_entered_is_not_a_valid_x_number': return ({required Object base}) => 'Le nombre que vous avez entré n\'est pas un nombre ${base} valide';
			case 'tools.baseconverter.the_number_you_entered_is_too_big_to_be_abble_to_convert_it': return 'Le nombre que vous avez entré est trop grand pour être converti';
			case 'tools.clock.title': return 'Horloge';
			case 'tools.clock.change_timezone': return 'Changer le fuseau horaire';
			case 'tools.clock.timezone': return 'Fuseau horaire';
			case 'tools.clock.choose_a_timezone': return 'Choisissez un fuseau horaire';
			case 'tools.clock.select_local': return 'Heure locale';
			case 'tools.metronome.title': return 'Métronome';
			case 'tools.metronome.bpm': return 'BPM';
			case 'tools.metronome.beats_per_measure': return 'Battements par mesure';
			case 'tools.metronome.start': return 'Démarrer';
			case 'tools.metronome.stop': return 'Arrêter';
			case 'tools.megaphone.title': return 'Mégaphone';
			case 'tools.megaphone.error.microphone_permission_denied': return 'Permission refusée, veuillez autoriser l\'application à accéder au micro dans les paramètres de votre appareil';
			case 'tools.nslookup.title': return 'NSLookup';
			case 'tools.nslookup.enter_a_domain_name': return 'Entrez un nom de domaine';
			case 'tools.nslookup.lookup': return 'Rechercher';
			case 'tools.nslookup.error.please_enter_a_domain_name': return 'Veuillez entrer un nom de domaine';
			case 'tools.nslookup.error.no_address_associated_with_domain': return 'Aucune adresse IP n\'est associée au nom d\'hôte.\nVérifiez votre saisie et votre connexion internet puis réessayez.';
			case 'tools.ping.title': return 'Ping';
			case 'tools.ping.ping': return 'Ping';
			case 'tools.ping.enter_a_domain_name_or_ip': return 'Entrez un nom de domaine ou une adresse IP';
			case 'tools.ping.reply_from_host_time_ttl': return ({required Object host, required Object time, required Object ttl}) => 'Réponse de ${host} : temps=${time}ms TTL=${ttl}';
			case 'tools.ping.x_packets_transmitted_y': return ({required Object transmitted, required Object received}) => '${transmitted} paquets transmis, ${received} paquets reçus';
			case 'tools.ping.error.please_enter_a_domain_name_or_ip': return 'Veuillez entrer un nom de domaine ou une adresse IP';
			case 'tools.ping.error.request_timeout': return 'Délai d\'attente de la demande dépassé';
			case 'tools.ping.error.unkown_host': return 'Hôte inconnu';
			case 'tools.ping.error.no_reply': return 'Pas de réponse';
			case 'tools.ping.error.unkown_error': return 'Erreur inconnue';
			case 'tools.soundmeter.title': return 'Sonomètre';
			case 'tools.soundmeter.decibels': return 'dB';
			case 'tools.soundmeter.error.impossible_to_start_the_sound_meter': return 'Impossible de démarrer le sonomètre';
			case 'tools.soundmeter.error.no_sound_detected': return 'Aucun son détecté, vérifiez que l\'application a accès au micro dans les paramètres de votre appareil.';
			case 'tools.qrreader.title': return 'Lecteur de QR';
			case 'tools.qrreader.scanned': return 'Scanné';
			case 'tools.qrreader.openurl': return 'Ouvrir le lien';
			case 'tools.qrreader.copy_password': return 'Copier le MDP';
			case 'tools.qrreader.copy': return 'Copier';
			case 'tools.qrreader.copied_to_clipboard': return 'Copié dans le presse-papiers';
			case 'tools.qrreader.wifi': return 'WiFi';
			case 'tools.qrreader.wifi_ssid': return 'SSID';
			case 'tools.qrreader.wifi_password': return 'Mot de passe';
			case 'tools.qrreader.error.no_qr_code': return 'Aucun code QR';
			case 'tools.qrreader.error.error_no_result': return 'Aucun résultat trouvé';
			case 'tools.timer.title': return 'Minuteur';
			case 'tools.timer.start': return 'Démarrer';
			case 'tools.timer.stop': return 'Arrêter';
			case 'tools.timer.ios_warning_message': return 'Pour que le minuteur sonne sur iOS, vous ne devez pas quitter l\'application ni éteindre l\'écran de votre iPhone. Sinon, iOS empêchera le minuteur de sonner lorsqu\'il atteindra zéro.';
			case 'tools.stopwatch.title': return 'Chronomètre';
			case 'tools.stopwatch.start': return 'Go';
			case 'tools.stopwatch.stop': return 'Stop';
			case 'tools.stopwatch.reset': return 'Effacer';
			case 'tools.stopwatch.lap': return 'Tour';
			case 'tools.roulette.title': return 'Roulette';
			case 'tools.roulette.tap_to_roll_info': return 'Touchez la roue pour la faire tourner';
			case 'tools.roulette.default_1': return 'Étudier';
			case 'tools.roulette.default_2': return 'Jouer';
			case 'tools.roulette.default_3': return 'Dormir';
			case 'tools.roulette.add': return 'Ajouter';
			case 'tools.roulette.remove': return 'Supprimer';
			case 'tools.roulette.add_item': return 'Ajouter un item';
			case 'tools.roulette.item_name': return 'Nom de l\'item';
			case 'tools.roulette.remove_an_item': return 'Supprimer un item';
			case 'tools.roulette.warning.you_cant_add_more_than_x_items': return ({required Object numberOfItems}) => 'Vous ne pouvez pas ajouter plus de ${numberOfItems} items dans la roulette';
			case 'tools.roulette.warning.you_must_have_at_least_x_items': return ({required Object numberOfItems}) => 'Vous devez avoir au moins ${numberOfItems} items dans la roulette';
			case 'tools.roulette.warning.you_must_enter_an_item_name': return 'Vous devez entrer un nom d\'item';
			case 'tools.flipcoins.title': return 'Pile ou face';
			case 'tools.flipcoins.change_coin_currency': return 'Changer la devise de la pièce';
			case 'tools.randomnumber.title': return 'Nombre aléatoire';
			case 'tools.randomnumber.min': return 'Min';
			case 'tools.randomnumber.max': return 'Max';
			case 'tools.randomnumber.error.invalid_number': return 'Nombre invalide, veuillez réessayer.';
			case 'tools.randomnumber.error.min_must_be_lower_than_max': return 'Le nombre minimum doit être inférieur au nombre maximum.';
			case 'tools.randomnumber.error.min_and_max_must_be_between_x_and_y': return ({required Object minNumberLimit, required Object maxNumberLimit}) => 'Les nombres minimum et maximum doivent être compris entre ${minNumberLimit} et ${maxNumberLimit}.';
			case 'tools.randomcolor.title': return 'Couleur aléatoire';
			case 'tools.randomcolor.hint': return 'Touchez la couleur pour la changer';
			case 'tools.randomcolor.tap_to_copy': return 'Cliquez pour copier';
			case 'tools.randomcolor.copied_to_clipboard': return 'Copié dans le presse-papier';
			case 'tools.sshclient.title': return 'Client SSH';
			case 'tools.sshclient.backspace': return 'Effacer';
			case 'tools.sshclient.use_password': return 'Utiliser un mot de passe';
			case 'tools.sshclient.use_ssh_key': return 'Utiliser une clé SSH';
			case 'tools.sshclient.host': return 'Hôte';
			case 'tools.sshclient.port': return 'Port';
			case 'tools.sshclient.username': return 'Nom d\'utilisateur';
			case 'tools.sshclient.password': return 'Mot de passe';
			case 'tools.sshclient.connect': return 'Se connecter';
			case 'tools.sshclient.select_private_key': return 'Sélectionner une clé privée';
			case 'tools.sshclient.no_private_key_selected': return 'Aucune clé privée sélectionnée';
			case 'tools.sshclient.passphrase': return 'Phrase secrète (laisser vide si aucune)';
			case 'tools.sshclient.error.invalid_port': return 'Port invalide';
			case 'tools.sshclient.error.invalid_passphrase': return 'Vous avez peut-être saisi une phrase de passe alors que votre clé n\'est pas cryptée, ou inversement';
			case 'tools.sshclient.error.invalid_private_key': return 'La clé que vous avez fournie n\'est pas une clé privée valide';
			case 'tools.sshclient.error.authentication_failed': return 'Échec de l\'authentification';
			case 'tools.sshclient.error.connection_failed': return 'Impossible de se connecter à l\'hôte';
			case 'tools.sshclient.error.unknown_error': return 'Une erreur inconnue s\'est produite, veuillez réessayer';
			case 'tools.whiteboard.title': return 'Tableau blanc';
			case 'tools.whiteboard.share_success': return 'Votre tableau blanc a été partagé avec succès';
			case 'tools.whiteboard.save_success': return 'Votre tableau blanc a été enregistré avec succès';
			case 'tools.networkinfo.title': return 'Informations réseau';
			case 'tools.networkinfo.loading': return 'Chargement...';
			case 'tools.networkinfo.location_permission_required': return 'La permission de localisation est nécessaire pour obtenir certaines informations sur le WiFi (il s\'agit d\'une limitation du système d\'exploitation).\nVous risquez d\'obtenir des informations erronées si vous ne l\'autorisez pas.';
			case 'tools.networkinfo.public_ip': return 'Adresse IP publique';
			case 'tools.networkinfo.local_ip': return 'Adresse IP locale';
			case 'tools.networkinfo.local_subnet_mask': return 'Masque de sous-réseau local';
			case 'tools.networkinfo.local_gateway_ip': return 'Adresse IP de passerelle locale';
			case 'tools.networkinfo.local_broadcast_ip': return 'Adresse IP de diffusion locale';
			case 'tools.networkinfo.wifi_name': return 'Nom du WiFi';
			case 'tools.networkinfo.wifi_bssid': return 'BSSID du WiFi';
			case 'tools.networkinfo.not_available_on_ios': return 'Non disponible sur iOS';
			case 'tools.networkinfo.note_location_permission': return 'Remarque : certaines informations peuvent être incorrectes si vous n\'avez pas autorisé la permission de localisation précise.';
			case 'tools.uuidgenerator.title': return 'Générateur d\'UUID';
			case 'tools.uuidgenerator.generate': return 'Générer';
			case 'tools.uuidgenerator.default_uuid_text': return 'Appuyer sur un bouton pour générer un UUID';
			case 'tools.uuidgenerator.tap_to_copy': return 'Cliquez pour copier';
			case 'tools.uuidgenerator.copied_to_clipboard': return 'Copié dans le presse-papiers';
			case 'tools.uuidgenerator.v1_uuid': return 'v1 (basé sur le temps)';
			case 'tools.uuidgenerator.v4_uuid': return 'v4 (aléatoire)';
			case 'tools.uuidgenerator.v5_uuid': return 'v5 (basé sur sha1)';
			case 'tools.uuidgenerator.v5_generate_title': return 'Générer un UUID v5';
			case 'tools.uuidgenerator.v5_namespace': return 'Espace de noms (laisser vide pour aléatoire)';
			case 'tools.uuidgenerator.v5_name': return 'Nom (laisser vide si aucun)';
			case 'tools.uuidgenerator.error.invalid_namespace': return 'L\'espace de noms n\'est pas un UUID valide';
			case 'tools.texttospeech.title': return 'Synthèse vocale';
			case 'tools.texttospeech.choose_a_language': return 'Choisir une langue';
			case 'tools.texttospeech.text_to_speak': return 'Texte à prononcer';
			case 'tools.texttospeech.pitch': return 'Hauteur';
			case 'tools.texttospeech.rate': return 'Débit';
			case 'tools.texttospeech.play': return 'Play';
			case 'tools.texttospeech.stop': return 'Stop';
			case 'tools.texttospeech.error.please_try_again': return 'Veuillez réessayer plus tard.\nSi vous utilisez cette langue pour la première fois, veuillez patienter quelques secondes et réessayer.';
			case 'tools.texttospeech.error.please_select_a_language': return 'Veuillez sélectionner une langue';
			case 'tools.nearbypublictransportstops.title': return 'Arrêts de transport';
			case 'tools.nearbypublictransportstops.loading': return 'Chargement...';
			case 'tools.nearbypublictransportstops.refresh': return 'Rafraîchir';
			case 'tools.nearbypublictransportstops.data_source': return 'Source des données';
			case 'tools.nearbypublictransportstops.initial_dialog_title': return 'Information';
			case 'tools.nearbypublictransportstops.initial_dialog_message': return ({required Object source}) => 'Cet outil est destiné à être utilisé en Suisse. Il utilise les données de "${source}"';
			case 'tools.nearbypublictransportstops.data_license_dialog_open': return 'Ouvrir';
			case 'tools.nearbypublictransportstops.data_license_dialog_title': return 'Source des données';
			case 'tools.nearbypublictransportstops.data_license_dialog_message': return ({required Object source, required Object url}) => 'Les données utilisées dans cet outil proviennent de "${source}".\n${url}';
			case 'tools.nearbypublictransportstops.no_departures': return 'Aucun départ';
			case 'tools.nearbypublictransportstops.departure': return 'Départ';
			case 'tools.nearbypublictransportstops.arrival': return 'Arrivée';
			case 'tools.nearbypublictransportstops.platform': return 'Voie';
			case 'tools.nearbypublictransportstops.show_on_map': return 'Plan';
			case 'tools.nearbypublictransportstops.map_marker_title': return 'Arrêt de transport';
			case 'tools.nearbypublictransportstops.error.location_permission_denied': return 'La permission de localisation a été refusée ou désactivée, veuillez l\'activer dans les paramètres afin de voir les arrêts de transport public à proximité.';
			case 'tools.nearbypublictransportstops.error.check_internet_connection': return 'Vérifiez votre connexion internet et réessayez.';
			case 'tools.nearbypublictransportstops.error.api_empty_response': return 'L\'API a renvoyé une réponse vide';
			case 'tools.nearbypublictransportstops.error.api_error_xxx': return ({required Object errorCode}) => 'L\'API a renvoyé une erreur ${errorCode}';
			case 'tools.nearbypublictransportstops.error.no_stops_found': return 'Aucun arrêt trouvé avec cette recherche';
			case 'tools.nearbypublictransportstops.error.no_maps_app': return 'Aucune application de cartographie n\'est installée sur votre appareil';
			case 'tools.fileencryption.title': return 'Chiffrement de fichiers';
			case 'tools.fileencryption.home_hint': return 'Choisissez un fichier pour le chiffrer. Si vous souhaitez déchiffrer un fichier, choisissez un fichier chiffré ayant l\'extension .aes.';
			case 'tools.fileencryption.no_file_selected': return 'Aucun fichier sélectionné';
			case 'tools.fileencryption.enter_password': return 'Veuillez entrer un mot de passe';
			case 'tools.fileencryption.file_saved_successfully': return 'Fichier enregistré avec succès';
			case 'tools.fileencryption.pick_a_file': return 'Choisir un fichier';
			case 'tools.fileencryption.encryption_password': return 'Mot de passe de chiffrement';
			case 'tools.fileencryption.encrypt': return 'Chiffrer';
			case 'tools.fileencryption.decrypt': return 'Déchiffrer';
			case 'tools.fileencryption.error.failed_to_read_file': return 'Échec de la lecture du fichier';
			case 'tools.fileencryption.error.failed_to_decrypt_file': return 'Échec de déchiffrement du fichier, veuillez vérifier le mot de passe';
			case 'tools.fileencryption.error.please_enter_a_password': return 'Veuillez entrer un mot de passe';
			case 'tools.youtubethumbnail.title': return 'Miniature YouTube';
			case 'tools.youtubethumbnail.saved': return 'Miniature enregistrée avec succès';
			case 'tools.youtubethumbnail.youtube_video_id': return 'URL de la vidéo YouTube';
			case 'tools.youtubethumbnail.save_thumbnail': return 'Enregistrer la miniature';
			case 'tools.youtubethumbnail.error.failed_to_download': return 'Impossible de télécharger la miniature depuis YouTube';
			case 'tools.youtubethumbnail.error.please_enter_a_video_id': return 'Veuillez saisir l\'URL d\'une vidéo YouTube valide\n\nExemples : \nhttps://www.youtube.com/watch?v=dQw4w9WgXcQ\nhttps://youtu.be/dQw4w9WgXcQ\n\nVous avez également besoin d\'une connexion internet pour télécharger la miniature à partir de YouTube';
			case 'tools.nationalanthems.title': return 'Hymnes nationaux';
			case 'tools.nationalanthems.stop': return 'Arrêter l\'hymne';
			case 'tools.nationalanthems.search': return 'Rechercher (en anglais)';
			case 'tools.nationalanthems.license': return 'Licence';
			case 'tools.nationalanthems.license_text': return ({required Object source, required Object license}) => 'Les fichiers audio sont fournis par "${source}" sous la licence ${license}';
			case 'tools.nationalanthems.open': return 'Ouvrir';
			case 'tools.nationalanthems.view_license': return 'Voir la licence';
			case 'tools.nationalanthems.loading_audio_title': return 'Chargement';
			case 'tools.nationalanthems.loading_audio_text': return 'Chargement de l\'hymne en cours...';
			case 'tools.nationalanthems.error.failed_to_load_list': return 'Impossible de charger la liste des hymnes. Veuillez vérifier votre connexion internet et réessayer.';
			case 'tools.nationalanthems.error.failed_to_play_anthem': return 'Impossible de jouer l\'hymne. Veuillez vérifier votre connexion internet et réessayer.';
			case 'tools.httprequest.title': return 'Requête HTTP';
			case 'tools.httprequest.method': return 'Méthode';
			case 'tools.httprequest.custom_method': return 'Méthode personnalisée';
			case 'tools.httprequest.url': return 'URL';
			case 'tools.httprequest.headers': return 'En-têtes (headers)';
			case 'tools.httprequest.body': return 'Corps (body)';
			case 'tools.httprequest.send_request': return 'Envoyer la requête';
			case 'tools.httprequest.response': return 'Réponse';
			case 'tools.httprequest.render_html': return 'Rendre le HTML';
			case 'tools.httprequest.back_to_details': return 'Retour aux détails';
			case 'tools.httprequest.status_code': return 'Code d\'état';
			case 'tools.httprequest.error.url_cannot_be_empty': return 'L\'URL ne peut pas être vide';
			case 'tools.httprequest.error.invalid_url': return 'URL invalide';
			case 'tools.httprequest.error.invalid_headers': return 'En-têtes invalides';
			case 'tools.httprequest.error.timeout': return 'La requête a dépassé le temps de réponse.\nVeuillez vérifier votre saisie et votre connexion internet, puis réessayez.';
			case 'tools.httprequest.error.other_error': return 'Une erreur s\'est produite lors de l\'envoi de la requête.\nVeuillez vérifier votre saisie et votre connexion internet, puis réessayez.';
			case 'tools.morsecode.title': return 'Code morse';
			case 'tools.morsecode.alphabet_field': return 'Alphabet (A-Z, 0-9)';
			case 'tools.morsecode.morse_field': return 'Code Morse (. and -)';
			case 'tools.morsecode.note_spaces': return 'Note : Utilisez 1 espace entre les lettres et 3 espaces entre les mots.';
			case 'tools.morsecode.alphabet_to_morse': return 'Alphabet vers morse';
			case 'tools.morsecode.morse_to_alphabet': return 'Morse vers alphabet';
			case 'tools.morsecode.play_audio': return 'Écouter l\'audio';
			case 'tools.osm.title': return 'Plan (OSM)';
			case 'tools.osm.go_to_my_location': return 'Aller à ma position';
			case 'tools.osm.loading_map': return 'Chargement de la carte...';
			case 'tools.osm.error.location_permission_denied': return 'Vous devez autoriser l\'accès à la position pour utiliser cette fonction';
			case 'tools.osm.error.location_services_disabled': return 'Les services de position sont désactivés';
			case 'tools.gameoflife.title': return 'Jeu de la vie';
			case 'tools.gameoflife.grid_size': return 'Taille de la grille';
			case 'tools.gameoflife.current_size_is_x': return ({required Object size}) => 'La taille actuelle est ${size}';
			case 'tools.gameoflife.waiting': return 'Attente';
			case 'tools.gameoflife.stop_simulation': return 'Arrêter la simulation';
			case 'tools.gameoflife.start_simulation': return 'Démarrer la simulation';
			case 'tools.gameoflife.randomize_grid': return 'Randomiser la grille';
			case 'tools.gameoflife.clear_grid': return 'Effacer la grille';
			case 'tools.gameoflife.error.no_alive_cells': return 'Pas de cellules vivantes';
			case 'tools.gameoflife.error.no_alive_cells_description': return 'Il n\'y a pas de cellules vivantes.\nVeuillez toucher la grille pour en ajouter.';
			case 'tools.gameoflife.error.please_stop_simulation': return 'Veuillez d\'abord arrêter la simulation';
			case 'tools.speedometer.title': return 'Compteur de vitesse';
			case 'tools.speedometer.reset': return 'Réinitialiser';
			case 'tools.speedometer.about_traveled_distance_title': return 'À propos de la distance parcourue';
			case 'tools.speedometer.about_traveled_distance_description': return 'La distance parcourue est calculée à partir de la vitesse détectée par le GPS.\nCela signifie que la distance n\'est pas exacte à 100%.';
			case 'tools.speedometer.kmh': return 'km/h';
			case 'tools.speedometer.km': return 'km';
			case 'tools.speedometer.mph': return 'mph';
			case 'tools.speedometer.mi': return 'mi';
			case 'tools.speedometer.change_speed_unit': return 'Changer d\'unité de vitesse';
			case 'tools.speedometer.change_speed_unit_description': return 'Choisissez l\'unité de vitesse que vous souhaitez utiliser avec le compteur de vitesse';
			case 'tools.speedometer.traveled_distance': return 'Distance parcourue';
			case 'tools.speedometer.error.location_permission_denied_title': return 'Position requise';
			case 'tools.speedometer.error.location_permission_denied_description': return 'Cet outil nécessite l\'accès à la position pour déterminer votre vitesse.';
			case 'tools.speedometer.error.location_services_disabled_title': return 'Services de position désactivés';
			case 'tools.speedometer.error.location_services_disabled_description': return 'Cet outil nécessite que les services de localisation soient activés pour déterminer votre vitesse.';
			case 'tools.mc_server_ping.title': return 'Ping serveur MC';
			case 'tools.mc_server_ping.java_edition': return 'Édition Java';
			case 'tools.mc_server_ping.information_java': return 'Information';
			case 'tools.mc_server_ping.information_java_description': return 'Cochez cette case si le serveur est disponible pour l\'édition Java de Minecraft. Si ce n\'est pas le cas, décochez-la et l\'outil utilisera l\'API de l\'édition Bedrock.';
			case 'tools.mc_server_ping.server_ip': return 'IP ou domaine du serveur Minecraft';
			case 'tools.mc_server_ping.ping': return 'Ping';
			case 'tools.mc_server_ping.ping_another_server': return 'Ping un autre serveur';
			case 'tools.mc_server_ping.api_used': return 'API utilisée';
			case 'tools.mc_server_ping.about_the_api': return 'À propos de l\'API';
			case 'tools.mc_server_ping.about_the_api_description': return ({required Object source, required Object website}) => 'Cet outil utilise "${source}" du site "${website}" pour ping les serveurs Minecraft.';
			case 'tools.mc_server_ping.about_open': return 'Ouvrir';
			case 'tools.mc_server_ping.the_server_id_is': return ({required Object id}) => 'L\'ID du serveur est "${id}"';
			case 'tools.mc_server_ping.added_to_favorites': return 'Ajouté aux favoris';
			case 'tools.mc_server_ping.added_to_favorites_description': return 'Le serveur a été ajouté aux favoris.';
			case 'tools.mc_server_ping.removed_from_favorites': return 'Retiré des favoris';
			case 'tools.mc_server_ping.removed_from_favorites_description': return 'Le serveur a été retiré des favoris.';
			case 'tools.mc_server_ping.add_to_favorites': return 'Ajouter aux favoris';
			case 'tools.mc_server_ping.remove_from_favorites': return 'Retirer des favoris';
			case 'tools.mc_server_ping.from_favorites': return 'Depuis les favoris';
			case 'tools.mc_server_ping.pick_from_favorites': return 'Choisir depuis les favoris';
			case 'tools.mc_server_ping.no_favorites': return 'Aucun favori';
			case 'tools.mc_server_ping.no_favorites_description': return 'Vous n\'avez pas encore ajouté de serveurs aux favoris.';
			case 'tools.mc_server_ping.error.please_enter_a_server_ip': return 'Veuillez entrer une adresse IP ou un nom de domaine valide';
			case 'tools.mc_server_ping.error.server_offline_or_does_not_exist': return 'Le serveur est hors ligne ou n\'existe pas';
			case 'tools.mc_server_ping.error.please_check_your_internet_connection': return 'Veuillez vérifier votre connexion internet et réessayer';
			case 'tools.timestampconverter.title': return 'Convertisseur de timestamp';
			case 'tools.timestampconverter.now_tooltip': return 'Maintenant';
			case 'tools.timestampconverter.utc': return 'UTC';
			case 'tools.timestampconverter.local': return 'Local';
			case 'tools.timestampconverter.local_or_utc_dialog_title': return 'Local ou UTC';
			case 'tools.timestampconverter.local_or_utc_dialog_message': return 'Allez-vous selectionner une date et une heure locale ou UTC ?';
			case 'tools.timestampconverter.unix_timestamp': return 'Timestamp Unix';
			case 'tools.timestampconverter.convert_timestamp_to_date': return 'Convertir le timestamp en date';
			case 'tools.timestampconverter.tap_the_date_to_change_it': return 'Appuyez sur la date pour la modifier';
			case 'tools.timestampconverter.select_seconds': return 'Sélectionner les secondes';
			case 'tools.timestampconverter.error.invalid_timestamp': return 'Timestamp invalide';
			case 'tools.urlshortener.title': return 'Raccourcisseur d\'URL';
			case 'tools.urlshortener.url': return 'L\'URL';
			case 'tools.urlshortener.qr_code': return 'Le code QR';
			case 'tools.urlshortener.share': return 'Partager';
			case 'tools.urlshortener.share_dialog_message': return 'Que souhaitez-vous partager ?';
			case 'tools.urlshortener.your_shortened_url_is': return 'Votre URL raccourcie est';
			case 'tools.urlshortener.copy_to_clipboard': return 'Copier dans le presse-papiers';
			case 'tools.urlshortener.shorten_another_url': return 'Raccourcir une autre URL';
			case 'tools.urlshortener.url_to_shorten': return 'URL à raccourcir';
			case 'tools.urlshortener.by_clicking_you_accept': return ({required Object url}) => 'En cliquant sur le bouton « raccourcir », vous acceptez les conditions d\'utilisation de "${url}" disponibles via le lien ci-dessous.';
			case 'tools.urlshortener.terms_of_service': return 'Conditions d\'utilisation (ToS)';
			case 'tools.urlshortener.shorten': return 'Raccourcir';
			case 'tools.urlshortener.more_features': return 'Plus de fonctionnalités';
			case 'tools.urlshortener.more_features_message': return 'Utiliser des fonctions supplémentaires telles que le partage de texte, des liens personnalisés, et plus via le site officiel JTU.ME';
			case 'tools.urlshortener.open': return 'Ouvrir';
			case 'tools.urlshortener.error.failed_to_shorten_url': return 'Le raccourcissement de l\'URL a échoué, veuillez vérifier votre saisie et votre connexion internet.';
			case 'tools.urlshortener.error.impossible_to_connect_to_the_server': return 'Impossible de se connecter au serveur';
			case 'tools.urlshortener.error.impossible_to_connect_to_the_server_message': return 'Échec de la connexion au serveur, veuillez vérifier votre connexion internet et réessayer.';
			case 'tools.counter.title': return 'Compteur';
			case 'tools.counter.add_button': return 'Ajouter un bouton';
			case 'tools.counter.remove_button': return 'Supprimer un bouton';
			case 'tools.counter.enter_number': return 'Entrez un nombre';
			case 'tools.counter.error.invalid_number': return 'Le nombre que vous avez entré n\'est pas valide';
			case 'tools.counter.error.the_number_must_be_between_x_and_y': return ({required Object minNumberLimit, required Object maxNumberLimit}) => 'Le nombre doit être compris entre ${minNumberLimit} et ${maxNumberLimit}';
			case 'tools.counter.error.you_must_have_at_least_one_button': return 'Vous devez avoir au moins un bouton';
			case 'tools.counter.error.this_button_already_exists': return 'Ce bouton existe déjà';
			case 'tools.bitwisecalculator.title': return 'Calculatrice binaire';
			case 'tools.bitwisecalculator.first_number': return 'Premier nombre';
			case 'tools.bitwisecalculator.second_number': return 'Deuxième nombre';
			case 'tools.bitwisecalculator.enter_a_binary_number': return 'Entrez un nombre binaire';
			case 'tools.bitwisecalculator.and': return 'ET';
			case 'tools.bitwisecalculator.or': return 'OU';
			case 'tools.bitwisecalculator.xor': return 'OU exclusif';
			case 'tools.bitwisecalculator.error.invalid_input': return 'Saisie invalide';
			case 'tools.musicsearch.title': return 'Recherche de musique';
			case 'tools.musicsearch.unknown_title': return 'Titre inconnu';
			case 'tools.musicsearch.unknown_artist': return 'Artiste inconnu';
			case 'tools.musicsearch.unknown_album': return 'Album inconnu';
			case 'tools.musicsearch.loading': return 'Chargement';
			case 'tools.musicsearch.loading_audio_preview': return 'Chargement de l\'échantillon audio...';
			case 'tools.musicsearch.stop_audio_preview': return 'Arrêter l\'échantillon audio';
			case 'tools.musicsearch.data_source': return 'Source des données';
			case 'tools.musicsearch.this_tool_uses_the_x_api': return ({required Object service}) => 'Cet outil utilise l\'API "${service}" pour rechercher de la musique.\nLes échantillons audio sont fournis par "${service}".';
			case 'tools.musicsearch.go_to_x': return ({required Object service}) => 'Aller sur ${service}';
			case 'tools.musicsearch.search_for_music': return 'Rechercher de la musique';
			case 'tools.musicsearch.use_the_searchbar_to_search_music': return 'Utilisez la barre de recherche pour trouver de la musique.\nSi votre recherche ne donne aucun résultat, essayez un autre terme de recherche.';
			case 'tools.musicsearch.open_in_x': return ({required Object service}) => 'Ouvrir dans ${service}';
			case 'tools.musicsearch.play_preview': return 'Lire l\'échantillon';
			case 'tools.musicsearch.error.error_playing_audio_preview': return 'Erreur lors de la lecture de l\'échantillon audio. Veuillez réessayer plus tard.';
			case 'tools.musicsearch.error.unable_to_connect_to_the_api': return 'Impossible de se connecter à l\'API, veuillez vérifier votre connexion internet et réessayer.';
			case 'tools.musicanalyser.title': return 'Analyse de musique';
			case 'tools.musicanalyser.press_the_button_to_start_music_analysis': return 'Appuyez sur le bouton pour démarrer l\'analyse de la musique';
			case 'tools.musicanalyser.loading': return 'Chargement...';
			case 'tools.musicanalyser.analyzing_music': return ({required Object remainingSeconds}) => 'Analyse de la musique... (${remainingSeconds}s)';
			case 'tools.musicanalyser.getting_results': return 'Récupération des résultats...';
			case 'tools.musicanalyser.unknown': return 'Inconnu';
			case 'tools.musicanalyser.api_used': return 'API utilisée';
			case 'tools.musicanalyser.this_tool_uses_the_x_api': return ({required Object service, required Object company}) => 'Cet outil utilise l\'API "${service}" via un serveur backend de Koizeay. "${service}" est une marque déposée de "${company}" et n\'est pas affiliée à cet outil.';
			case 'tools.musicanalyser.start_analyzing_music': return 'Démarrer l\'analyse de la musique';
			case 'tools.musicanalyser.clear': return 'Effacer';
			case 'tools.musicanalyser.error.permission_denied': return 'Permission refusée';
			case 'tools.musicanalyser.error.permission_denied_description': return 'L\'autorisation du microphone est nécessaire pour analyser la musique. Veuillez accorder cette autorisation et réessayer.';
			case 'tools.musicanalyser.error.no_match_found': return 'Aucune correspondance trouvée';
			case 'tools.musicanalyser.error.no_match_found_description': return 'Aucune correspondance musicale n\'a été trouvée. Veuillez réessayer.';
			case 'tools.musicanalyser.error.error_occurred': return 'Une erreur s\'est produite lors de l\'analyse de la musique. Veuillez vérifier votre connexion internet et réessayer.';
			case 'tools.musicanalyser.error.please_update_the_app_and_try_again': return 'Veuillez mettre à jour l\'application et réessayer. Si le problème persiste avec la dernière version, réessayez plus tard.';
			case 'tools.textdifferences.title': return 'Différences de texte';
			case 'tools.textdifferences.old_text': return 'Ancien texte';
			case 'tools.textdifferences.new_text': return 'Nouveau texte';
			case 'tools.textdifferences.no_text_hint': return 'Entrez du texte ci-dessus pour voir les différences';
			case 'tools.characterscopy.title': return 'Copie de caractères';
			case 'tools.characterscopy.important': return 'Important';
			case 'tools.characterscopy.important_description': return 'Certains caractères peuvent ne pas s\'afficher correctement sur tous les appareils en fonction de votre système d\'exploitation. De même, certains caractères peuvent ne pas être pris en charge par toutes les applications et polices. Cliquez simplement sur le caractère que vous souhaitez copier et il sera copié dans votre presse-papiers.';
			case 'tools.characterscopy.copied_to_clipboard': return 'Copié dans le presse-papiers';
			case 'tools.whoisdomain.title': return 'Whois de domaine';
			case 'tools.whoisdomain.domain_name': return 'Nom de domaine';
			case 'tools.whoisdomain.whois_lookup': return 'Recherche Whois';
			case 'tools.whoisdomain.disclaimer': return 'Avertissement';
			case 'tools.whoisdomain.disclaimer_text': return 'Toolbox fournit une fonction de recherche WHOIS à des fins d\'information uniquement. Les données récupérées peuvent ne pas être exactes, complètes ou à jour, et sont soumises aux conditions générales des registres de domaines respectifs. Il est interdit aux utilisateurs d\'utiliser les données WHOIS à des fins de spam, à des fins illégales ou de collecter des données de manière automatisée. En utilisant cet outil, vous acceptez de vous conformer aux lois applicables et aux conditions de service du registre. Toolbox et/ou Koizeay n\'assument aucune responsabilité en cas d\'erreurs, d\'omissions ou d\'utilisation abusive des données. Veuillez noter que certains TLD peuvent ne pas être pris en charge par cet outil.';
			case 'tools.whoisdomain.loading': return 'Chargement...';
			case 'tools.whoisdomain.ip_address_not_supported': return 'Adresse IP non prise en charge';
			case 'tools.whoisdomain.ip_address_not_supported_description': return 'Cet outil supporte uniquement les recherches de domaine, pas les recherches d\'adresse IP';
			case 'tools.whoisdomain.no_result': return 'Aucun résultat valide trouvé';
			case 'tools.whoisdomain.view_pretty': return 'Vue formatée';
			case 'tools.whoisdomain.view_raw': return 'Vue brute';
			case 'tools.whoisdomain.error.impossible_to_get_whois_information': return 'Impossible d\'obtenir les informations whois, veuillez vérifier votre saisie et votre connexion internet puis réessayez';
			case 'tools.textcounter.title': return 'Compteur de texte';
			case 'tools.textcounter.clear': return 'Effacer';
			case 'tools.textcounter.enter_text_here': return 'Entrez du texte';
			case 'tools.textcounter.length': return 'Longueur';
			case 'tools.textcounter.trimmed_length': return 'Longueur tronquée';
			case 'tools.textcounter.raw_length': return 'Longueur brute';
			case 'tools.textcounter.letters': return 'Lettres';
			case 'tools.textcounter.words': return 'Mots';
			case 'tools.textcounter.spaces': return 'Espaces';
			case 'tools.textcounter.digits': return 'Chiffres';
			case 'tools.textcounter.lines': return 'Lignes';
			case 'tools.textcounter.empty_lines': return 'Lignes vides';
			case 'tools.textcounter.total_lines': return 'Total de lignes';
			case 'tools.romannumeral.title': return 'Chiffres romains';
			case 'tools.romannumeral.change_to': return 'Passer en';
			case 'tools.romannumeral.roman_numeral': return 'chiffre romain';
			case 'tools.romannumeral.number': return 'nombre';
			case 'tools.romannumeral.number_input_hint': return 'Nombre';
			case 'tools.romannumeral.roman_numeral_input_hint': return 'Chiffre romains';
			case 'tools.romannumeral.tap_to_copy': return 'Cliquez pour copier';
			case 'tools.romannumeral.copied_to_clipboard': return 'Copié dans le presse-papiers';
			case 'tools.romannumeral.error.invalid_roman_numeral': return 'Chiffre romain invalide ou non pris en charge';
			case 'tools.areacalculator.title': return 'Calculateur d\'aire';
			case 'tools.areacalculator.select_a_shape': return 'Sélectionnez une forme';
			case 'tools.areacalculator.calculate': return 'Calculer';
			case 'tools.areacalculator.area': return 'Aire';
			case 'tools.areacalculator.shapes.circle': return 'Cercle';
			case 'tools.areacalculator.shapes.ellipse': return 'Ellipse';
			case 'tools.areacalculator.shapes.equilateral_triangle': return 'Triangle équilatéral';
			case 'tools.areacalculator.shapes.kite': return 'Cerf-volant';
			case 'tools.areacalculator.shapes.parallelogram': return 'Parallélogramme';
			case 'tools.areacalculator.shapes.rectangle': return 'Rectangle';
			case 'tools.areacalculator.shapes.rhombus': return 'Losange';
			case 'tools.areacalculator.shapes.regular_hexagon': return 'Hexagone régulier';
			case 'tools.areacalculator.shapes.regular_octagon': return 'Octogone régulier';
			case 'tools.areacalculator.shapes.regular_pentagon': return 'Pentagone régulier';
			case 'tools.areacalculator.shapes.regular_polygon': return 'Polygone régulier';
			case 'tools.areacalculator.shapes.square': return 'Carré';
			case 'tools.areacalculator.shapes.trapezoid': return 'Trapèze';
			case 'tools.areacalculator.shapes.triangle': return 'Triangle';
			case 'tools.areacalculator.inputs.radius': return 'Rayon';
			case 'tools.areacalculator.inputs.major_axis': return 'Grand axe';
			case 'tools.areacalculator.inputs.minor_axis': return 'Petit axe';
			case 'tools.areacalculator.inputs.side': return 'Côté';
			case 'tools.areacalculator.inputs.base': return 'Base';
			case 'tools.areacalculator.inputs.height': return 'Hauteur';
			case 'tools.areacalculator.inputs.diagonal_1': return 'Diagonale 1';
			case 'tools.areacalculator.inputs.diagonal_2': return 'Diagonale 2';
			case 'tools.areacalculator.inputs.length': return 'Longueur';
			case 'tools.areacalculator.inputs.width': return 'Largeur';
			case 'tools.areacalculator.inputs.number_of_sides': return 'Nombre de côtés';
			case 'tools.areacalculator.inputs.side_length': return 'Longueur du côté';
			case 'tools.areacalculator.inputs.apothem': return 'Apotème';
			case 'tools.areacalculator.inputs.base_1': return 'Base 1';
			case 'tools.areacalculator.inputs.base_2': return 'Base 2';
			case 'tools.areacalculator.error.invalid_input': return 'Entrée invalide';
			case 'tools.areacalculator.error.please_enter_a_value_for': return 'Veuillez entrer une valeur pour';
			case 'tools.areacalculator.error.please_enter_a_valid_number_for': return 'Veuillez entrer un nombre valide pour';
			case 'tools.areacalculator.error.please_enter_a_positive_number_for': return 'Veuillez entrer un nombre positif pour';
			case 'tools.areacalculator.error.please_try_again_with_different_values': return 'Veuillez réessayer avec des valeurs différentes';
			case 'tools.areacalculator.error.the_area_of_the_shape_is_zero': return 'L\'aire de la forme est de zéro';
			case 'tools.mathtex.title': return 'MathTeX';
			case 'tools.mathtex.enter_a_mathematical_expression_in_tex_format': return 'Entrez une expression mathématique au format TeX';
			case 'tools.mathtex.export_to_image': return 'Exporter en image';
			case 'tools.mathtex.edit_pixel_ratio': return 'Modifier le ratio de pixels';
			case 'tools.mathtex.new_pixel_ratio': return 'Nouveau ratio de pixels';
			case 'tools.mathtex.get_help': return 'Obtenir de l\'aide';
			case 'tools.mathtex.close_help': return 'Fermer l\'aide';
			case 'tools.mathtex.copied_to_clipboard': return 'Copié dans le presse-papiers';
			case 'tools.mathtex.error.an_error_occurred_while_rendering_the_mathtex': return 'Une erreur s\'est produite lors du rendu de MathTeX';
			case 'tools.mathtex.error.an_error_occurred_while_exporting_the_image': return 'Une erreur s\'est produite lors de l\'exportation de l\'image';
			case 'tools.compass.title': return 'Boussole';
			case 'tools.compass.error.please_grant_location_permission': return 'Veuillez autoriser la permission de localisation pour utiliser la boussole. Cette autorisation est obligatoire pour accéder aux capteurs de l\'appareil.';
			case 'tools.qrcreator.title': return 'Créateur de QR';
			case 'tools.qrcreator.ecc_low': return 'Bas';
			case 'tools.qrcreator.ecc_medium': return 'Moyen';
			case 'tools.qrcreator.ecc_quartile': return 'Quartile';
			case 'tools.qrcreator.ecc_high': return 'Haut';
			case 'tools.qrcreator.saved_successfully': return 'QR code enregistré avec succès';
			case 'tools.qrcreator.shared_successfully': return 'QR code partagé avec succès';
			case 'tools.qrcreator.enter_text_or_url': return 'Entrez du texte ou une URL';
			case 'tools.qrcreator.error_correction_level': return 'Niveau de correction d\'erreur';
			case 'tools.qrcreator.create': return 'Créer';
			case 'tools.qrcreator.save': return 'Enregistrer';
			case 'tools.qrcreator.share': return 'Partager';
			case 'tools.qrcreator.error.failed_to_create_qr_code': return 'Échec de la création du QR code, veuillez vérifier votre saisie et réessayer';
			case 'tools.pastebin.title': return 'Pastebin';
			case 'tools.pastebin.url': return 'L\'URL';
			case 'tools.pastebin.qr_code': return 'Le code QR';
			case 'tools.pastebin.share': return 'Partager';
			case 'tools.pastebin.share_dialog_message': return 'Que souhaitez-vous partager ?';
			case 'tools.pastebin.your_short_link_is': return 'Votre lien court est';
			case 'tools.pastebin.copy_to_clipboard': return 'Copier dans le presse-papiers';
			case 'tools.pastebin.copied_to_clipboard': return 'Lien court copié dans le presse-papiers';
			case 'tools.pastebin.paste_another_text': return 'Coller un autre texte';
			case 'tools.pastebin.text_to_paste': return 'Texte à coller';
			case 'tools.pastebin.text_paste_field_hint': return 'Collez votre texte, code source ou autre contenu ici';
			case 'tools.pastebin.by_clicking_you_accept': return ({required Object url}) => 'En cliquant sur le bouton « envoyer », vous acceptez les conditions d\'utilisation de "${url}" disponibles via le lien ci-dessous.';
			case 'tools.pastebin.terms_of_service': return 'Conditions d\'utilisation (ToS)';
			case 'tools.pastebin.send': return 'Envoyer';
			case 'tools.pastebin.more_features': return 'Plus de fonctionnalités';
			case 'tools.pastebin.more_features_message': return 'Utiliser des fonctions supplémentaires telles que le raccourcissement d\'URL, des liens personnalisés, et plus via le site officiel JTU.ME';
			case 'tools.pastebin.open': return 'Ouvrir';
			case 'tools.pastebin.error.failed_to_obtain_short_link': return 'Impossible d\'obtenir un lien court, veuillez vérifier votre connexion internet puis réessayer';
			case 'tools.pastebin.error.impossible_to_connect_to_the_server': return 'Impossible de se connecter au serveur';
			case 'tools.pastebin.error.impossible_to_connect_to_the_server_message': return 'Échec de la connexion au serveur, veuillez vérifier votre connexion internet et réessayer.';
			case 'credits.title': return 'Crédits';
			case 'credits.app_icon': return ({required Object author}) => 'Icône de l\'application par ${author}';
			case 'credits.app_license': return ({required Object license}) => 'Application sous licence ${license}';
			case 'credits.tools_icons': return ({required Object author}) => 'Icônes des outils par ${author}';
			case 'credits.ads_disclaimer': return 'Les publicités sont là pour m\'aider à payer les coûts de serveur et à soutenir le développement de cette application. Seule une petite bannière est affichée en bas de l\'écran, rien qui ne bloque votre expérience avec Toolbox.';
			case 'credits.more_apps_and_services': return 'Plus d\'apps et services';
			case 'credits.view_licenses': return 'Voir les licences';
			case 'credits.contribute_on_github': return 'Contribuez sur GitHub';
			case 'credits.email_copied_to_clipboard': return 'Email copié dans le presse-papiers';
			case 'credits.made_with_love_in_switzerland': return 'Développé de tout cœur en Suisse';
			case 'credits.made_with_love_in_switzerland_description': return 'Développé en Suisse, utilisé dans le monde entier.\nMerci d\'utiliser Toolbox.\nSi vous l\'appréciez, n\'hésitez pas à laisser un commentaire sur le Play Store ou l\'App Store.\nCela m\'aide beaucoup et me motive à continuer à améliorer l\'application.';
			case 'credits.translations.title': return 'Traductions';
			case 'credits.translations.english': return ({required Object author}) => 'Anglais par ${author}';
			case 'credits.translations.french': return ({required Object author}) => 'Français par ${author}';
			default: return null;
		}
	}
}
