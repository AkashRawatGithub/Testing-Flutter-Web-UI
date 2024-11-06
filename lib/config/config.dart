class Environment {
//main url ip
  // static const API_BASE_POINT = 'https://node.jeevantika.com:4200/';
  static const API_BASE_POINT = 'https://api.jeevantikainnovations.com:4200/';
  static const BASEURL = 'https://api.jeevantikainnovations.com/';
  // static const BASEURL = 'https://node.jeevantika.com/';

  static const API_CUSTOMER_POINT = API_BASE_POINT + 'customer/';
  static const API_ADMIN_POINT = API_BASE_POINT + 'admin/';
  static const API_BACKOFFICE_POINT = API_BASE_POINT + 'backoffice/';
  static const API_ACCOUNTANT_POINT = '${API_BASE_POINT}accountant/';

  //################################################################
  /////////////////////////////////////////////////////////check chekc
  static Uri customer_registration =
      Uri.parse(API_CUSTOMER_POINT + "registration");
  static Uri customer_login = Uri.parse(API_CUSTOMER_POINT + "login");

  static Uri State_List = Uri.parse(API_ADMIN_POINT + "state");
  ////////////////////////////////////////////////////////////////
  static Uri Theme_Details = Uri.parse(API_ADMIN_POINT + "theme-details");
  static Uri company_list = Uri.parse(API_ADMIN_POINT + "company-name");
  static Uri question_list = Uri.parse(API_BACKOFFICE_POINT + "question-list");
  static Uri add_company = Uri.parse(API_CUSTOMER_POINT + "move_to_portfolio");
  static Uri Editprofile = Uri.parse(API_CUSTOMER_POINT + "profile");
  static Uri get_portfolio = Uri.parse(API_BACKOFFICE_POINT + "open-new-tab");
  static Uri personal_detail =
      Uri.parse(API_BACKOFFICE_POINT + "personal-detail");

  static Uri City_list = Uri.parse(API_ADMIN_POINT + "city-list");
  /////////////////////////ankitt 08-09-2023/////////////////////////////
  static Uri Add_Nomineee = Uri.parse(API_BACKOFFICE_POINT + "add-nominee");
  static Uri surety_details =
      Uri.parse(API_BACKOFFICE_POINT + "surety-details");
  static Uri witness_details =
      Uri.parse(API_BACKOFFICE_POINT + "witness-details");

  ///
  ///
  static Uri investor_sear_first =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-first");
  static Uri investor_sear_second =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-second");
  static Uri investor_sear_third =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-third");
  static Uri investor_sear_four =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-four");
  static Uri investor_sear_five =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-five");
  static Uri investor_sear_six =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-six");
  static Uri investor_sear_seven =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-seven");
  static Uri investor_sear_eight =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-eight");
  static Uri investor_sear_nine =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-nine");
  static Uri investor_sear_ten =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-ten");
  static Uri investor_sear_eleven =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-eleven");
  static Uri investor_sear_twelve =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-twelve");
  static Uri investor_sear_thirteen =
      Uri.parse(API_CUSTOMER_POINT + "investor-search-thirteen");

  ///
  static Uri addremovefavorite =
      Uri.parse(API_CUSTOMER_POINT + "addremove_wishlist");
  static Uri investorselect = Uri.parse(API_CUSTOMER_POINT + "investorselect");
  static Uri portfolio_added_investor =
      Uri.parse(API_CUSTOMER_POINT + "added-investor-portfolio");
  static Uri otp = Uri.parse(API_CUSTOMER_POINT + "otp");
  static Uri favorite_list = Uri.parse(API_CUSTOMER_POINT + "favorite-list");

  static Uri legal_heir = Uri.parse(API_BACKOFFICE_POINT + "legal-heir");
  static Uri transmission_details =
  Uri.parse(API_BACKOFFICE_POINT + "transmission-details");
  static Uri certificate_details =
  Uri.parse(API_BACKOFFICE_POINT + "certificate-details");
  static Uri update_certificateportfolio =
  Uri.parse(API_BACKOFFICE_POINT + "update-certificateportfolio-details");
  static Uri custmer_portfolio_record =
  Uri.parse(API_BACKOFFICE_POINT + "customer-portfolio-records");
  static Uri joint_holder = Uri.parse(API_BACKOFFICE_POINT + "joint-holder");
  static Uri portfoilo_company =
  Uri.parse("${API_BACKOFFICE_POINT}get-portfolio-list");
  static Uri delete_portfolio =
  Uri.parse("${API_BACKOFFICE_POINT}delete-portfolio");
  static Uri BIILKEYCHECK =Uri.parse("${API_ACCOUNTANT_POINT}check_bill_key");
  static Uri CREATEBILLPAYMENT =Uri.parse("${API_ACCOUNTANT_POINT}create_bill_payment");
  static Uri CHECKPAYMETSTATUS =Uri.parse("${API_ACCOUNTANT_POINT}check_paymetStatus");


}
