class ThemeSetting {
  int? cloneId;
  String? name,
      logo,
      mobile,
      email,
      address,
      logoIcon,
      favicon,
      title,
      description,
      image,
      colorCombo,
      headingColor,
      descriptionColor,
      homeHeading,
      homeSubheading,
      homeDescription,
      homeImage,
      aboutTopDescription,
      aboutCard1Heading,
      aboutCard1Description,
      aboutCard2Heading,
      aboutCard2Description,
      companyName,
      serviceHeading,
      serviceDescription,
      facebook,
      twitter,
      linkedin;
  bool checker;

  ThemeSetting({
    this.checker = false,
    this.name,
    this.mobile,
    this.serviceHeading,
    this.serviceDescription,
    this.email,
    this.address,
    this.cloneId,
    this.logo,
    this.logoIcon,
    this.favicon,
    this.title,
    this.description,
    this.image,
    this.colorCombo,
    this.headingColor,
    this.descriptionColor,
    this.homeHeading,
    this.homeSubheading,
    this.homeDescription,
    this.homeImage,
    this.aboutTopDescription,
    this.aboutCard1Heading,
    this.aboutCard1Description,
    this.aboutCard2Heading,
    this.aboutCard2Description,
    this.companyName,
    this.facebook,
    this.twitter,
    this.linkedin,
  });

  factory ThemeSetting.fromJson(Map<String, dynamic> json) {
    // print("All JSON for response: $json");
    return ThemeSetting(
      checker: json["checker"] ?? false,
      name: json["name"] ?? "",
      mobile: json["mobile"] ?? "",
      email: json["email"] ?? "",
      address: json["address"] ?? "",
      logo: json["logo"] ?? "",
      cloneId: json["clone_id"],
      logoIcon: json["logo_icon"] ?? "",
      favicon: json["favicon"],
      title: json["title"] ?? "",
      description: json["description"] ?? "",
      image: json["image"],
      colorCombo: json["color_combo"],
      headingColor: json["heading_color"],
      descriptionColor: json["description_color"],
      homeHeading: json["home_heading"] ?? "",
      homeSubheading: json["home_subheading"] ?? "",
      homeDescription: json["home_description"] ?? "",
      homeImage: json["home_image"],
      aboutTopDescription: json["about_top_description"] ?? "",
      aboutCard1Heading: json["about_card_1_heading"] ?? "",
      aboutCard1Description: json["about_card_1_description"] ?? "",
      aboutCard2Heading: json["about_card_2_heading"] ?? "",
      aboutCard2Description: json["about_card_2_description"] ?? "",
      companyName: json["company_name"] ?? "",
      facebook: json["facebook"],
      twitter: json["twitter"],
      linkedin: json["linkedin"],
      serviceHeading: json["service_heading"] ?? "",
      serviceDescription: json["service_description"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "clone_id": cloneId,
      "mobile": mobile,
      "email": email,
      "address": address,
      "logo": logo,
      "logo_icon": logoIcon,
      "favicon": favicon,
      "title": title,
      "description": description,
      "image": image,
      "color_combo": colorCombo,
      "heading_color": headingColor,
      "description_color": descriptionColor,
      "home_heading": homeHeading,
      "home_subheading": homeSubheading,
      "home_description": homeDescription,
      "home_image": homeImage,
      "about_top_description": aboutTopDescription,
      "about_card_1_heading": aboutCard1Heading,
      "about_card_1_description": aboutCard1Description,
      "about_card_2_heading": aboutCard2Heading,
      "about_card_2_description": aboutCard2Description,
      "company_name": companyName,
      "facebook": facebook,
      "twitter": twitter,
      "service_heading": serviceHeading,
      "service_description": serviceDescription,
      "linkedin": linkedin,
    };
  }
}
class ThemeTestimonial {
  String? image, name, message, address;
  int? rating;

  ThemeTestimonial({
    this.image,
    this.name,
    this.message,
    this.rating,
    this.address,
  });

  factory ThemeTestimonial.fromJson(Map<String, dynamic> json) {
    return ThemeTestimonial(
      image: json["image"],
      name: json["name"],
      message: json["message"],
      rating: json["rating"],
      address: json["address"],
    );
  }
}

class ThemeManagement {
  String? title, name, description, image;
  int? id;

  ThemeManagement({
    this.title,
    this.name,
    this.description,
    this.id,
    this.image,
  });

  factory ThemeManagement.fromJson(Map<String, dynamic> json) {
    return ThemeManagement(
      title: json["title"] != null ? json["title"] : "",
      name: json["name"] != null ? json["name"] : "",
      description: json["description"] != null ? json["description"] : "",
      id: json["id"],
      image: json["image"],
    );
  }
}