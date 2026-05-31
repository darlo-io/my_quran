///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsRu with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override String get home => 'Главная';
	@override String get read => 'Чтение';
	@override String get search => 'Поиск';
	@override String get hifz => 'Hifz';
	@override String get profile => 'Профиль';
	@override String get reader => 'Читать';
	@override String get reader_surahs => 'Суры';
	@override String get reader_bookmarks => 'Закладки';
	@override String get reader_settings => 'Настройки чтения';
	@override String get continue_reading => 'Продолжить чтение';
	@override String get daily_goal => 'Дневная цель';
	@override String get goals => 'Цели';
	@override String get settings => 'Настройки';
	@override String get theme => 'Тема';
	@override String get light_theme => 'Светлая';
	@override String get dark_theme => 'Тёмная';
	@override String get system_theme => 'Системная';
	@override String get language => 'Язык';
	@override String get translations => 'Переводы';
	@override String get reciters => 'Чтецы';
	@override String get audio => 'Аудио';
	@override String get downloads => 'Загрузки';
	@override String get storage => 'Хранилище';
	@override String get statistics => 'Статистика';
	@override String get account => 'Аккаунт';
	@override String get sign_in => 'Войти';
	@override String get sign_up => 'Регистрация';
	@override String get sign_out => 'Выйти';
	@override String get forgot_password => 'Забыли пароль?';
	@override String get bookmarks => 'Закладки';
	@override String get add_bookmark => 'Добавить закладку';
	@override String get remove_bookmark => 'Удалить закладку';
	@override String get no_bookmarks => 'Нет закладок';
	@override String get no_results => 'Ничего не найдено';
	@override String get loading => 'Загрузка...';
	@override String get error => 'Ошибка';
	@override String get retry => 'Повторить';
	@override String get cancel => 'Отмена';
	@override String get save => 'Сохранить';
	@override String get delete => 'Удалить';
	@override String get edit => 'Редактировать';
	@override String get done => 'Готово';
	@override String get back => 'Назад';
	@override String get next => 'Далее';
	@override String get skip => 'Пропустить';
	@override String get start => 'Начать';
	@override String get finish => 'Завершить';
	@override String get ok => 'OK';
	@override String get yes => 'Да';
	@override String get no => 'Нет';
	@override String get confirm => 'Подтвердить';
	@override String get share => 'Поделиться';
	@override String get copy => 'Копировать';
	@override String get show_translation => 'Показать перевод';
	@override String get hide_translation => 'Скрыть перевод';
	@override String get show_transliteration => 'Показать транслитерацию';
	@override String get hide_transliteration => 'Скрыть транслитерацию';
	@override String get font_size => 'Размер шрифта';
	@override String get reader_mode => 'Режим чтения';
	@override String get line_by_line => 'Построчно';
	@override String get continuous => 'Непрерывно';
	@override String get surah => 'Сура';
	@override String get ayah => 'Аят';
	@override String get juz => 'Джуз';
	@override String get page => 'Страница';
	@override String get play => 'Воспроизвести';
	@override String get pause => 'Пауза';
	@override String get stop => 'Стоп';
	@override String get play_surah => 'Слушать суру';
	@override String get play_ayah => 'Слушать аят';
	@override String get select_reciter => 'Выбрать чтеца';
	@override String get audio_quality => 'Качество аудио';
	@override String get streaming => 'Стриминг';
	@override String get downloaded => 'Загружено';
	@override String get download => 'Загрузить';
	@override String get downloading => 'Загрузка...';
	@override String get download_complete => 'Загрузка завершена';
	@override String get download_failed => 'Ошибка загрузки';
	@override String get remove_download => 'Удалить загрузку';
	@override String get storage_used => 'Использовано';
	@override String get storage_free => 'Свободно';
	@override String get hifz_plans => 'Планы заучивания';
	@override String get hifz_review => 'Повторение';
	@override String get new_plan => 'Новый план';
	@override String get review_today => 'Сегодня на повторение';
	@override String get again => 'Снова';
	@override String get hard => 'Сложно';
	@override String get good => 'Хорошо';
	@override String get easy => 'Легко';
	@override String get mastered => 'Выучено';
	@override String get learning => 'Изучается';
	@override String get streak => 'Серия дней';
	@override String get retention => 'Удержание';
	@override String get reviews_completed => 'Повторений завершено';
	@override String get daily_reading_goal => 'Цель чтения';
	@override String get daily_hifz_goal => 'Цель заучивания';
	@override String get ayahs_per_day => 'Аятов в день';
	@override String get pages_per_day => 'Страниц в день';
	@override String get minutes_per_day => 'Минут в день';
	@override String get goal_completed => 'Цель выполнена';
	@override String get search_quran => 'Поиск по Корану';
	@override String get search_history => 'История поиска';
	@override String get clear_history => 'Очистить историю';
	@override String get recent_searches => 'Недавние поиски';
	@override String get no_internet => 'Нет подключения к интернету';
	@override String get offline_mode => 'Офлайн-режим';
	@override String get sync => 'Синхронизация';
	@override String get sync_now => 'Синхронизировать';
	@override String get synced => 'Синхронизировано';
	@override String get sync_failed => 'Ошибка синхронизации';
	@override String get onboarding_welcome => 'Добро пожаловать в Quran App';
	@override String get onboarding_reading => 'Читайте Коран в любом месте';
	@override String get onboarding_audio => 'Слушайте любимых чтецов';
	@override String get onboarding_hifz => 'Заучивайте аяты эффективно';
	@override String get content_packs => 'Пакеты контента';
	@override String get install => 'Установить';
	@override String get update => 'Обновить';
	@override String get installed => 'Установлено';
	@override String get version => 'Версия';
	@override String get content_sources => 'Источники контента';
	@override String get attributions => 'Атрибуции';
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'home' => 'Главная',
			'read' => 'Чтение',
			'search' => 'Поиск',
			'hifz' => 'Hifz',
			'profile' => 'Профиль',
			'reader' => 'Читать',
			'reader_surahs' => 'Суры',
			'reader_bookmarks' => 'Закладки',
			'reader_settings' => 'Настройки чтения',
			'continue_reading' => 'Продолжить чтение',
			'daily_goal' => 'Дневная цель',
			'goals' => 'Цели',
			'settings' => 'Настройки',
			'theme' => 'Тема',
			'light_theme' => 'Светлая',
			'dark_theme' => 'Тёмная',
			'system_theme' => 'Системная',
			'language' => 'Язык',
			'translations' => 'Переводы',
			'reciters' => 'Чтецы',
			'audio' => 'Аудио',
			'downloads' => 'Загрузки',
			'storage' => 'Хранилище',
			'statistics' => 'Статистика',
			'account' => 'Аккаунт',
			'sign_in' => 'Войти',
			'sign_up' => 'Регистрация',
			'sign_out' => 'Выйти',
			'forgot_password' => 'Забыли пароль?',
			'bookmarks' => 'Закладки',
			'add_bookmark' => 'Добавить закладку',
			'remove_bookmark' => 'Удалить закладку',
			'no_bookmarks' => 'Нет закладок',
			'no_results' => 'Ничего не найдено',
			'loading' => 'Загрузка...',
			'error' => 'Ошибка',
			'retry' => 'Повторить',
			'cancel' => 'Отмена',
			'save' => 'Сохранить',
			'delete' => 'Удалить',
			'edit' => 'Редактировать',
			'done' => 'Готово',
			'back' => 'Назад',
			'next' => 'Далее',
			'skip' => 'Пропустить',
			'start' => 'Начать',
			'finish' => 'Завершить',
			'ok' => 'OK',
			'yes' => 'Да',
			'no' => 'Нет',
			'confirm' => 'Подтвердить',
			'share' => 'Поделиться',
			'copy' => 'Копировать',
			'show_translation' => 'Показать перевод',
			'hide_translation' => 'Скрыть перевод',
			'show_transliteration' => 'Показать транслитерацию',
			'hide_transliteration' => 'Скрыть транслитерацию',
			'font_size' => 'Размер шрифта',
			'reader_mode' => 'Режим чтения',
			'line_by_line' => 'Построчно',
			'continuous' => 'Непрерывно',
			'surah' => 'Сура',
			'ayah' => 'Аят',
			'juz' => 'Джуз',
			'page' => 'Страница',
			'play' => 'Воспроизвести',
			'pause' => 'Пауза',
			'stop' => 'Стоп',
			'play_surah' => 'Слушать суру',
			'play_ayah' => 'Слушать аят',
			'select_reciter' => 'Выбрать чтеца',
			'audio_quality' => 'Качество аудио',
			'streaming' => 'Стриминг',
			'downloaded' => 'Загружено',
			'download' => 'Загрузить',
			'downloading' => 'Загрузка...',
			'download_complete' => 'Загрузка завершена',
			'download_failed' => 'Ошибка загрузки',
			'remove_download' => 'Удалить загрузку',
			'storage_used' => 'Использовано',
			'storage_free' => 'Свободно',
			'hifz_plans' => 'Планы заучивания',
			'hifz_review' => 'Повторение',
			'new_plan' => 'Новый план',
			'review_today' => 'Сегодня на повторение',
			'again' => 'Снова',
			'hard' => 'Сложно',
			'good' => 'Хорошо',
			'easy' => 'Легко',
			'mastered' => 'Выучено',
			'learning' => 'Изучается',
			'streak' => 'Серия дней',
			'retention' => 'Удержание',
			'reviews_completed' => 'Повторений завершено',
			'daily_reading_goal' => 'Цель чтения',
			'daily_hifz_goal' => 'Цель заучивания',
			'ayahs_per_day' => 'Аятов в день',
			'pages_per_day' => 'Страниц в день',
			'minutes_per_day' => 'Минут в день',
			'goal_completed' => 'Цель выполнена',
			'search_quran' => 'Поиск по Корану',
			'search_history' => 'История поиска',
			'clear_history' => 'Очистить историю',
			'recent_searches' => 'Недавние поиски',
			'no_internet' => 'Нет подключения к интернету',
			'offline_mode' => 'Офлайн-режим',
			'sync' => 'Синхронизация',
			'sync_now' => 'Синхронизировать',
			'synced' => 'Синхронизировано',
			'sync_failed' => 'Ошибка синхронизации',
			'onboarding_welcome' => 'Добро пожаловать в Quran App',
			'onboarding_reading' => 'Читайте Коран в любом месте',
			'onboarding_audio' => 'Слушайте любимых чтецов',
			'onboarding_hifz' => 'Заучивайте аяты эффективно',
			'content_packs' => 'Пакеты контента',
			'install' => 'Установить',
			'update' => 'Обновить',
			'installed' => 'Установлено',
			'version' => 'Версия',
			'content_sources' => 'Источники контента',
			'attributions' => 'Атрибуции',
			_ => null,
		};
	}
}
