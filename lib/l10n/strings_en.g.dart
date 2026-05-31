///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'Home'
	String get home => 'Home';

	/// en: 'Read'
	String get read => 'Read';

	/// en: 'Search'
	String get search => 'Search';

	/// en: 'Hifz'
	String get hifz => 'Hifz';

	/// en: 'Profile'
	String get profile => 'Profile';

	/// en: 'Read'
	String get reader => 'Read';

	/// en: 'Surahs'
	String get reader_surahs => 'Surahs';

	/// en: 'Bookmarks'
	String get reader_bookmarks => 'Bookmarks';

	/// en: 'Reader Settings'
	String get reader_settings => 'Reader Settings';

	/// en: 'Continue Reading'
	String get continue_reading => 'Continue Reading';

	/// en: 'Daily Goal'
	String get daily_goal => 'Daily Goal';

	/// en: 'Goals'
	String get goals => 'Goals';

	/// en: 'Settings'
	String get settings => 'Settings';

	/// en: 'Theme'
	String get theme => 'Theme';

	/// en: 'Light'
	String get light_theme => 'Light';

	/// en: 'Dark'
	String get dark_theme => 'Dark';

	/// en: 'System'
	String get system_theme => 'System';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Translations'
	String get translations => 'Translations';

	/// en: 'Reciters'
	String get reciters => 'Reciters';

	/// en: 'Audio'
	String get audio => 'Audio';

	/// en: 'Downloads'
	String get downloads => 'Downloads';

	/// en: 'Storage'
	String get storage => 'Storage';

	/// en: 'Statistics'
	String get statistics => 'Statistics';

	/// en: 'Account'
	String get account => 'Account';

	/// en: 'Sign In'
	String get sign_in => 'Sign In';

	/// en: 'Sign Up'
	String get sign_up => 'Sign Up';

	/// en: 'Sign Out'
	String get sign_out => 'Sign Out';

	/// en: 'Forgot Password?'
	String get forgot_password => 'Forgot Password?';

	/// en: 'Bookmarks'
	String get bookmarks => 'Bookmarks';

	/// en: 'Add Bookmark'
	String get add_bookmark => 'Add Bookmark';

	/// en: 'Remove Bookmark'
	String get remove_bookmark => 'Remove Bookmark';

	/// en: 'No bookmarks'
	String get no_bookmarks => 'No bookmarks';

	/// en: 'No results found'
	String get no_results => 'No results found';

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'Error'
	String get error => 'Error';

	/// en: 'Retry'
	String get retry => 'Retry';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Done'
	String get done => 'Done';

	/// en: 'Back'
	String get back => 'Back';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Skip'
	String get skip => 'Skip';

	/// en: 'Start'
	String get start => 'Start';

	/// en: 'Finish'
	String get finish => 'Finish';

	/// en: 'OK'
	String get ok => 'OK';

	/// en: 'Yes'
	String get yes => 'Yes';

	/// en: 'No'
	String get no => 'No';

	/// en: 'Confirm'
	String get confirm => 'Confirm';

	/// en: 'Share'
	String get share => 'Share';

	/// en: 'Copy'
	String get copy => 'Copy';

	/// en: 'Show Translation'
	String get show_translation => 'Show Translation';

	/// en: 'Hide Translation'
	String get hide_translation => 'Hide Translation';

	/// en: 'Show Transliteration'
	String get show_transliteration => 'Show Transliteration';

	/// en: 'Hide Transliteration'
	String get hide_transliteration => 'Hide Transliteration';

	/// en: 'Font Size'
	String get font_size => 'Font Size';

	/// en: 'Reader Mode'
	String get reader_mode => 'Reader Mode';

	/// en: 'Line by Line'
	String get line_by_line => 'Line by Line';

	/// en: 'Continuous'
	String get continuous => 'Continuous';

	/// en: 'Surah'
	String get surah => 'Surah';

	/// en: 'Ayah'
	String get ayah => 'Ayah';

	/// en: 'Juz'
	String get juz => 'Juz';

	/// en: 'Page'
	String get page => 'Page';

	/// en: 'Play'
	String get play => 'Play';

	/// en: 'Pause'
	String get pause => 'Pause';

	/// en: 'Stop'
	String get stop => 'Stop';

	/// en: 'Play Surah'
	String get play_surah => 'Play Surah';

	/// en: 'Play Ayah'
	String get play_ayah => 'Play Ayah';

	/// en: 'Select Reciter'
	String get select_reciter => 'Select Reciter';

	/// en: 'Audio Quality'
	String get audio_quality => 'Audio Quality';

	/// en: 'Streaming'
	String get streaming => 'Streaming';

	/// en: 'Downloaded'
	String get downloaded => 'Downloaded';

	/// en: 'Download'
	String get download => 'Download';

	/// en: 'Downloading...'
	String get downloading => 'Downloading...';

	/// en: 'Download Complete'
	String get download_complete => 'Download Complete';

	/// en: 'Download Failed'
	String get download_failed => 'Download Failed';

	/// en: 'Remove Download'
	String get remove_download => 'Remove Download';

	/// en: 'Used'
	String get storage_used => 'Used';

	/// en: 'Free'
	String get storage_free => 'Free';

	/// en: 'Memorization Plans'
	String get hifz_plans => 'Memorization Plans';

	/// en: 'Review'
	String get hifz_review => 'Review';

	/// en: 'New Plan'
	String get new_plan => 'New Plan';

	/// en: 'To Review Today'
	String get review_today => 'To Review Today';

	/// en: 'Again'
	String get again => 'Again';

	/// en: 'Hard'
	String get hard => 'Hard';

	/// en: 'Good'
	String get good => 'Good';

	/// en: 'Easy'
	String get easy => 'Easy';

	/// en: 'Mastered'
	String get mastered => 'Mastered';

	/// en: 'Learning'
	String get learning => 'Learning';

	/// en: 'Streak'
	String get streak => 'Streak';

	/// en: 'Retention'
	String get retention => 'Retention';

	/// en: 'Reviews Completed'
	String get reviews_completed => 'Reviews Completed';

	/// en: 'Daily Reading Goal'
	String get daily_reading_goal => 'Daily Reading Goal';

	/// en: 'Daily Hifz Goal'
	String get daily_hifz_goal => 'Daily Hifz Goal';

	/// en: 'Ayahs per day'
	String get ayahs_per_day => 'Ayahs per day';

	/// en: 'Pages per day'
	String get pages_per_day => 'Pages per day';

	/// en: 'Minutes per day'
	String get minutes_per_day => 'Minutes per day';

	/// en: 'Goal Completed'
	String get goal_completed => 'Goal Completed';

	/// en: 'Search Quran'
	String get search_quran => 'Search Quran';

	/// en: 'Search History'
	String get search_history => 'Search History';

	/// en: 'Clear History'
	String get clear_history => 'Clear History';

	/// en: 'Recent Searches'
	String get recent_searches => 'Recent Searches';

	/// en: 'No Internet Connection'
	String get no_internet => 'No Internet Connection';

	/// en: 'Offline Mode'
	String get offline_mode => 'Offline Mode';

	/// en: 'Sync'
	String get sync => 'Sync';

	/// en: 'Sync Now'
	String get sync_now => 'Sync Now';

	/// en: 'Synced'
	String get synced => 'Synced';

	/// en: 'Sync Failed'
	String get sync_failed => 'Sync Failed';

	/// en: 'Welcome to Quran App'
	String get onboarding_welcome => 'Welcome to Quran App';

	/// en: 'Read Quran anywhere'
	String get onboarding_reading => 'Read Quran anywhere';

	/// en: 'Listen to your favorite reciters'
	String get onboarding_audio => 'Listen to your favorite reciters';

	/// en: 'Memorize ayahs effectively'
	String get onboarding_hifz => 'Memorize ayahs effectively';

	/// en: 'Content Packs'
	String get content_packs => 'Content Packs';

	/// en: 'Install'
	String get install => 'Install';

	/// en: 'Update'
	String get update => 'Update';

	/// en: 'Installed'
	String get installed => 'Installed';

	/// en: 'Version'
	String get version => 'Version';

	/// en: 'Content Sources'
	String get content_sources => 'Content Sources';

	/// en: 'Attributions'
	String get attributions => 'Attributions';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'home' => 'Home',
			'read' => 'Read',
			'search' => 'Search',
			'hifz' => 'Hifz',
			'profile' => 'Profile',
			'reader' => 'Read',
			'reader_surahs' => 'Surahs',
			'reader_bookmarks' => 'Bookmarks',
			'reader_settings' => 'Reader Settings',
			'continue_reading' => 'Continue Reading',
			'daily_goal' => 'Daily Goal',
			'goals' => 'Goals',
			'settings' => 'Settings',
			'theme' => 'Theme',
			'light_theme' => 'Light',
			'dark_theme' => 'Dark',
			'system_theme' => 'System',
			'language' => 'Language',
			'translations' => 'Translations',
			'reciters' => 'Reciters',
			'audio' => 'Audio',
			'downloads' => 'Downloads',
			'storage' => 'Storage',
			'statistics' => 'Statistics',
			'account' => 'Account',
			'sign_in' => 'Sign In',
			'sign_up' => 'Sign Up',
			'sign_out' => 'Sign Out',
			'forgot_password' => 'Forgot Password?',
			'bookmarks' => 'Bookmarks',
			'add_bookmark' => 'Add Bookmark',
			'remove_bookmark' => 'Remove Bookmark',
			'no_bookmarks' => 'No bookmarks',
			'no_results' => 'No results found',
			'loading' => 'Loading...',
			'error' => 'Error',
			'retry' => 'Retry',
			'cancel' => 'Cancel',
			'save' => 'Save',
			'delete' => 'Delete',
			'edit' => 'Edit',
			'done' => 'Done',
			'back' => 'Back',
			'next' => 'Next',
			'skip' => 'Skip',
			'start' => 'Start',
			'finish' => 'Finish',
			'ok' => 'OK',
			'yes' => 'Yes',
			'no' => 'No',
			'confirm' => 'Confirm',
			'share' => 'Share',
			'copy' => 'Copy',
			'show_translation' => 'Show Translation',
			'hide_translation' => 'Hide Translation',
			'show_transliteration' => 'Show Transliteration',
			'hide_transliteration' => 'Hide Transliteration',
			'font_size' => 'Font Size',
			'reader_mode' => 'Reader Mode',
			'line_by_line' => 'Line by Line',
			'continuous' => 'Continuous',
			'surah' => 'Surah',
			'ayah' => 'Ayah',
			'juz' => 'Juz',
			'page' => 'Page',
			'play' => 'Play',
			'pause' => 'Pause',
			'stop' => 'Stop',
			'play_surah' => 'Play Surah',
			'play_ayah' => 'Play Ayah',
			'select_reciter' => 'Select Reciter',
			'audio_quality' => 'Audio Quality',
			'streaming' => 'Streaming',
			'downloaded' => 'Downloaded',
			'download' => 'Download',
			'downloading' => 'Downloading...',
			'download_complete' => 'Download Complete',
			'download_failed' => 'Download Failed',
			'remove_download' => 'Remove Download',
			'storage_used' => 'Used',
			'storage_free' => 'Free',
			'hifz_plans' => 'Memorization Plans',
			'hifz_review' => 'Review',
			'new_plan' => 'New Plan',
			'review_today' => 'To Review Today',
			'again' => 'Again',
			'hard' => 'Hard',
			'good' => 'Good',
			'easy' => 'Easy',
			'mastered' => 'Mastered',
			'learning' => 'Learning',
			'streak' => 'Streak',
			'retention' => 'Retention',
			'reviews_completed' => 'Reviews Completed',
			'daily_reading_goal' => 'Daily Reading Goal',
			'daily_hifz_goal' => 'Daily Hifz Goal',
			'ayahs_per_day' => 'Ayahs per day',
			'pages_per_day' => 'Pages per day',
			'minutes_per_day' => 'Minutes per day',
			'goal_completed' => 'Goal Completed',
			'search_quran' => 'Search Quran',
			'search_history' => 'Search History',
			'clear_history' => 'Clear History',
			'recent_searches' => 'Recent Searches',
			'no_internet' => 'No Internet Connection',
			'offline_mode' => 'Offline Mode',
			'sync' => 'Sync',
			'sync_now' => 'Sync Now',
			'synced' => 'Synced',
			'sync_failed' => 'Sync Failed',
			'onboarding_welcome' => 'Welcome to Quran App',
			'onboarding_reading' => 'Read Quran anywhere',
			'onboarding_audio' => 'Listen to your favorite reciters',
			'onboarding_hifz' => 'Memorize ayahs effectively',
			'content_packs' => 'Content Packs',
			'install' => 'Install',
			'update' => 'Update',
			'installed' => 'Installed',
			'version' => 'Version',
			'content_sources' => 'Content Sources',
			'attributions' => 'Attributions',
			_ => null,
		};
	}
}
