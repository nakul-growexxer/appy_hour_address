class AddressModel {
  String? id;
  String? addressName;
  String? addressLine1;
  String? addressLine2;
  String? phoneNumber;
  String? city;
  String? zip;
  String? state;
  int? isDefault;

  AddressModel(
      {this.id,
      this.addressName,
      this.addressLine1,
      this.addressLine2,
      this.phoneNumber,
      this.city,
      this.zip,
      this.state,
      this.isDefault});

  AddressModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    addressName = json['address_name'];
    addressLine1 = json['address_line_1'];
    addressLine2 = json['address_line_2'];
    phoneNumber = json['phone_number'];
    city = json['city'];
    zip = json['zip'];
    state = json['state'];
    isDefault = json['is_default'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['address_name'] = addressName;
    data['address_line_1'] = addressLine1;
    data['address_line_2'] = addressLine2;
    data['phone_number'] = phoneNumber;
    data['city'] = city;
    data['zip'] = zip;
    data['state'] = state;
    data['is_default'] = isDefault;
    return data;
  }

  static String buildAddress(AddressModel address) {
    return "${address.addressName ?? ""}\n"
        "${address.addressLine1 ?? ""}\n"
        "${address.addressLine2 ?? ""}";
  }
}
