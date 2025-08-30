import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Signup'**
  String get signup;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @continueN.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueN;

  /// No description provided for @selectContry.
  ///
  /// In en, this message translates to:
  /// **'Select Country'**
  String get selectContry;

  /// No description provided for @emailAddressOrMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Email address or mobile number'**
  String get emailAddressOrMobileNumber;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @byContinuing.
  ///
  /// In en, this message translates to:
  /// **'By continuing, you agree to the'**
  String get byContinuing;

  /// No description provided for @terms.
  ///
  /// In en, this message translates to:
  /// **'terms of service'**
  String get terms;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'privacy policy'**
  String get privacyPolicy;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @chooseLanguage.
  ///
  /// In en, this message translates to:
  /// **'Choose Language'**
  String get chooseLanguage;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get mobile;

  /// No description provided for @validEmailMobile.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid email or mobile number'**
  String get validEmailMobile;

  /// No description provided for @enterEmailMobile.
  ///
  /// In en, this message translates to:
  /// **'Please enter email or mobile number'**
  String get enterEmailMobile;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @otpSendContent.
  ///
  /// In en, this message translates to:
  /// **'An One Time Password (OTP) has been sent to this number or email'**
  String get otpSendContent;

  /// No description provided for @passwordContent.
  ///
  /// In en, this message translates to:
  /// **'Please enter the password you have set for the number or email below'**
  String get passwordContent;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'CHANGE'**
  String get change;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @signInUsingOtp.
  ///
  /// In en, this message translates to:
  /// **'Sign in using OTP'**
  String get signInUsingOtp;

  /// No description provided for @enterYourPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enterYourPassword;

  /// No description provided for @forgetPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget Password'**
  String get forgetPassword;

  /// No description provided for @enterOtp.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP'**
  String get enterOtp;

  /// No description provided for @signInUsingPass.
  ///
  /// In en, this message translates to:
  /// **'Sign in using password'**
  String get signInUsingPass;

  /// No description provided for @resendOtp.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP'**
  String get resendOtp;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @enterYourName.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterYourName;

  /// No description provided for @enterYourMobile.
  ///
  /// In en, this message translates to:
  /// **'Enter your mobile number'**
  String get enterYourMobile;

  /// No description provided for @validMobile.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid mobile number'**
  String get validMobile;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email address'**
  String get enterYourEmail;

  /// No description provided for @validEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid email address'**
  String get validEmail;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @isThisCorrect.
  ///
  /// In en, this message translates to:
  /// **'Is this correct ? '**
  String get isThisCorrect;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @testOtp.
  ///
  /// In en, this message translates to:
  /// **'Login to your account with test OTP ***'**
  String get testOtp;

  /// No description provided for @minPassRequired.
  ///
  /// In en, this message translates to:
  /// **'minimum 8 characters required'**
  String get minPassRequired;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter password'**
  String get enterPassword;

  /// No description provided for @enterNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter your new password'**
  String get enterNewPassword;

  /// No description provided for @galleryText.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get galleryText;

  /// No description provided for @cameraText.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get cameraText;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'Required field'**
  String get requiredField;

  /// No description provided for @selectGender.
  ///
  /// In en, this message translates to:
  /// **'Select Gender'**
  String get selectGender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @preferNotSay.
  ///
  /// In en, this message translates to:
  /// **'Prefer not to say'**
  String get preferNotSay;

  /// No description provided for @enterUserName.
  ///
  /// In en, this message translates to:
  /// **'Please enter user name'**
  String get enterUserName;

  /// No description provided for @enterMobile.
  ///
  /// In en, this message translates to:
  /// **'Please enter mobile number'**
  String get enterMobile;

  /// No description provided for @enterEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter email address'**
  String get enterEmail;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @applyRefferal.
  ///
  /// In en, this message translates to:
  /// **'Apply Refferal'**
  String get applyRefferal;

  /// No description provided for @enterRefferalCode.
  ///
  /// In en, this message translates to:
  /// **'Enter refferal code'**
  String get enterRefferalCode;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @notValidPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'The provided phone number is not valid'**
  String get notValidPhoneNumber;

  /// No description provided for @otpSendTo.
  ///
  /// In en, this message translates to:
  /// **'OTP send to ***'**
  String get otpSendTo;

  /// No description provided for @otpForLogin.
  ///
  /// In en, this message translates to:
  /// **'Otp for Login'**
  String get otpForLogin;

  /// No description provided for @enterValidOtp.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid OTP'**
  String get enterValidOtp;

  /// No description provided for @verifySuccess.
  ///
  /// In en, this message translates to:
  /// **'Verified Successfully'**
  String get verifySuccess;

  /// No description provided for @validPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid password'**
  String get validPassword;

  /// No description provided for @loginSuccess.
  ///
  /// In en, this message translates to:
  /// **'Login Successfully'**
  String get loginSuccess;

  /// No description provided for @passCheck.
  ///
  /// In en, this message translates to:
  /// **'Password Changed Successfully'**
  String get passCheck;

  /// No description provided for @arrowSpeed.
  ///
  /// In en, this message translates to:
  /// **'Arrowspeed'**
  String get arrowSpeed;

  /// No description provided for @bookYourBus.
  ///
  /// In en, this message translates to:
  /// **'Book your bus!'**
  String get bookYourBus;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @yourLastSearch.
  ///
  /// In en, this message translates to:
  /// **'Your Last Search'**
  String get yourLastSearch;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @getAttractivePromos.
  ///
  /// In en, this message translates to:
  /// **'Get attractive promos!'**
  String get getAttractivePromos;

  /// No description provided for @bookings.
  ///
  /// In en, this message translates to:
  /// **'Bookings'**
  String get bookings;

  /// No description provided for @passengersList.
  ///
  /// In en, this message translates to:
  /// **'Passengers List'**
  String get passengersList;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @referAndEarn.
  ///
  /// In en, this message translates to:
  /// **'Refer & Earn'**
  String get referAndEarn;

  /// No description provided for @changeLanguge.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguge;

  /// No description provided for @offers.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get offers;

  /// No description provided for @offersDetails.
  ///
  /// In en, this message translates to:
  /// **'Offers Details'**
  String get offersDetails;

  /// No description provided for @faqSupport.
  ///
  /// In en, this message translates to:
  /// **'FAQ\'s & Support'**
  String get faqSupport;

  /// No description provided for @aboutUs.
  ///
  /// In en, this message translates to:
  /// **'About Us'**
  String get aboutUs;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @logoutContent.
  ///
  /// In en, this message translates to:
  /// **'Are you sure, do you want to logout?'**
  String get logoutContent;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @deleteAccountContent.
  ///
  /// In en, this message translates to:
  /// **'Deleting your account will erase all personal data. Do you want to proceed?'**
  String get deleteAccountContent;

  /// No description provided for @deleteAccountPageContent.
  ///
  /// In en, this message translates to:
  /// **'We have received your request to delete your account. It will be deactivated within ** hours and permanently deleted after *** days, along with any unused credits, promotions, or rewards.'**
  String get deleteAccountPageContent;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @successfullyUpdatedText.
  ///
  /// In en, this message translates to:
  /// **'Successfully updated your details'**
  String get successfullyUpdatedText;

  /// No description provided for @age.
  ///
  /// In en, this message translates to:
  /// **'Age'**
  String get age;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @enterYourAge.
  ///
  /// In en, this message translates to:
  /// **'Enter your age'**
  String get enterYourAge;

  /// No description provided for @pleaseEnterAge.
  ///
  /// In en, this message translates to:
  /// **'Please enter age'**
  String get pleaseEnterAge;

  /// No description provided for @validAge.
  ///
  /// In en, this message translates to:
  /// **'age >= 1 year'**
  String get validAge;

  /// No description provided for @paymentSuccess.
  ///
  /// In en, this message translates to:
  /// **'Payment Success'**
  String get paymentSuccess;

  /// No description provided for @paymentFailed.
  ///
  /// In en, this message translates to:
  /// **'Payment Failed'**
  String get paymentFailed;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get okay;

  /// No description provided for @cardList.
  ///
  /// In en, this message translates to:
  /// **'Card List'**
  String get cardList;

  /// No description provided for @addCard.
  ///
  /// In en, this message translates to:
  /// **'Add Card'**
  String get addCard;

  /// No description provided for @cards.
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get cards;

  /// No description provided for @cardDetails.
  ///
  /// In en, this message translates to:
  /// **'Card Details'**
  String get cardDetails;

  /// No description provided for @saveCard.
  ///
  /// In en, this message translates to:
  /// **'Save Card'**
  String get saveCard;

  /// No description provided for @enterTheCardDetails.
  ///
  /// In en, this message translates to:
  /// **'Enter the card details'**
  String get enterTheCardDetails;

  /// No description provided for @recentTransaction.
  ///
  /// In en, this message translates to:
  /// **'Recent Transaction'**
  String get recentTransaction;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @paymentDetails.
  ///
  /// In en, this message translates to:
  /// **'Payment Details:'**
  String get paymentDetails;

  /// No description provided for @walletTopUp.
  ///
  /// In en, this message translates to:
  /// **'Wallet top-up'**
  String get walletTopUp;

  /// No description provided for @topUpAmount.
  ///
  /// In en, this message translates to:
  /// **'Top-up Amount'**
  String get topUpAmount;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @payWith.
  ///
  /// In en, this message translates to:
  /// **'Pay with:'**
  String get payWith;

  /// No description provided for @creditOrDebitCards.
  ///
  /// In en, this message translates to:
  /// **'Credit or Debit Cards'**
  String get creditOrDebitCards;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @addMoney.
  ///
  /// In en, this message translates to:
  /// **'Add Money'**
  String get addMoney;

  /// No description provided for @addMoneyContent.
  ///
  /// In en, this message translates to:
  /// **'Enter the amount that should be added to wallet'**
  String get addMoneyContent;

  /// No description provided for @enterAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter Amount'**
  String get enterAmount;

  /// No description provided for @walletMinimumAmountToAdd.
  ///
  /// In en, this message translates to:
  /// **'Minimum amount to add'**
  String get walletMinimumAmountToAdd;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @walletBalance.
  ///
  /// In en, this message translates to:
  /// **'Wallet Balance'**
  String get walletBalance;

  /// No description provided for @referNow.
  ///
  /// In en, this message translates to:
  /// **'Refer now!'**
  String get referNow;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get or;

  /// No description provided for @refferalInviteText.
  ///
  /// In en, this message translates to:
  /// **'**Join me on ! using my invite code **** To make easy your ride'**
  String get refferalInviteText;

  /// No description provided for @yourTopReferals.
  ///
  /// In en, this message translates to:
  /// **'Your top referrals'**
  String get yourTopReferals;

  /// No description provided for @locationPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Location permission denied'**
  String get locationPermissionDenied;

  /// No description provided for @couldNotFetchLocation.
  ///
  /// In en, this message translates to:
  /// **'Could not fetch location'**
  String get couldNotFetchLocation;

  /// No description provided for @pleaseEnterValidData.
  ///
  /// In en, this message translates to:
  /// **'Please enter the valid data'**
  String get pleaseEnterValidData;

  /// No description provided for @addPassenger.
  ///
  /// In en, this message translates to:
  /// **'Add Passenger'**
  String get addPassenger;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @expiringSoon.
  ///
  /// In en, this message translates to:
  /// **'Expiring Soon'**
  String get expiringSoon;

  /// No description provided for @newN.
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get newN;

  /// No description provided for @claimOffer.
  ///
  /// In en, this message translates to:
  /// **'Claim Offer'**
  String get claimOffer;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get termsAndConditions;

  /// No description provided for @usage.
  ///
  /// In en, this message translates to:
  /// **'Usage'**
  String get usage;

  /// No description provided for @currentlyNoOffers.
  ///
  /// In en, this message translates to:
  /// **'Currently no offers available'**
  String get currentlyNoOffers;

  /// No description provided for @noOffersContent.
  ///
  /// In en, this message translates to:
  /// **'We can’t find offers for you right now. But we working hard to reward you!'**
  String get noOffersContent;

  /// No description provided for @searchForFaq.
  ///
  /// In en, this message translates to:
  /// **'Search for FAQ\'s'**
  String get searchForFaq;

  /// No description provided for @issueWithRecentBooking.
  ///
  /// In en, this message translates to:
  /// **'Issue with recent bookings?'**
  String get issueWithRecentBooking;

  /// No description provided for @needMoreHelp.
  ///
  /// In en, this message translates to:
  /// **'Need more help?'**
  String get needMoreHelp;

  /// No description provided for @callUsNow.
  ///
  /// In en, this message translates to:
  /// **'Call us now'**
  String get callUsNow;

  /// No description provided for @chatWithOurAgent.
  ///
  /// In en, this message translates to:
  /// **'Chat with our agent'**
  String get chatWithOurAgent;

  /// No description provided for @mailYourIssueToUs.
  ///
  /// In en, this message translates to:
  /// **'Mail your issue to us'**
  String get mailYourIssueToUs;

  /// No description provided for @officialDocuments.
  ///
  /// In en, this message translates to:
  /// **'Official Documents'**
  String get officialDocuments;

  /// No description provided for @privacyPolicyAboutUs.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicyAboutUs;

  /// No description provided for @officialWebsite.
  ///
  /// In en, this message translates to:
  /// **'Official Website'**
  String get officialWebsite;

  /// No description provided for @licences.
  ///
  /// In en, this message translates to:
  /// **'Licences'**
  String get licences;

  /// No description provided for @userAgreement.
  ///
  /// In en, this message translates to:
  /// **'User Agreement'**
  String get userAgreement;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @adminChat.
  ///
  /// In en, this message translates to:
  /// **'Admin Chat'**
  String get adminChat;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
