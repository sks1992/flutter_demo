import 'dart:convert';

List<ExpiredVehiclesModel> expiredVehiclesModelFromJson(String str) => List<ExpiredVehiclesModel>.from(json.decode(str).map((x) => ExpiredVehiclesModel.fromJson(x)));

String expiredVehiclesModelToJson(List<ExpiredVehiclesModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ExpiredVehiclesModel {
  int? vid;
  String? userName;
  String? mobileNumber;
  String? deviceNo;
  String? vehicleNo;
  String? simNo;
  String? vehicle;
  String? installedBy;
  String? trackerType;
  String? dataLimit;
  String? speedLimit;
  String? installedDate;
  String? duePayment;
  String? expiryDate;
  String? grasePeriod;
  String? renewalDays;

  ExpiredVehiclesModel(
      {this.vid,
        this.userName,
        this.mobileNumber,
        this.deviceNo,
        this.vehicleNo,
        this.simNo,
        this.vehicle,
        this.installedBy,
        this.trackerType,
        this.dataLimit,
        this.speedLimit,
        this.installedDate,
        this.duePayment,
        this.expiryDate,
        this.grasePeriod,
        this.renewalDays});

  ExpiredVehiclesModel.fromJson(Map<String, dynamic> json) {
    vid = json['vid'];
    userName = json['userName'];
    mobileNumber = json['mobileNumber'];
    deviceNo = json['deviceNo'];
    vehicleNo = json['vehicleNo'];
    simNo = json['simNo'];
    vehicle = json['vehicle'];
    installedBy = json['installedBy'];
    trackerType = json['trackerType'];
    dataLimit = json['dataLimit'];
    speedLimit = json['speedLimit'];
    installedDate = json['installedDate'];
    duePayment = json['duePayment'];
    expiryDate = json['expiryDate'];
    grasePeriod = json['grasePeriod'];
    renewalDays = json['renewalDays'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['vid'] = vid;
    data['userName'] = userName;
    data['mobileNumber'] = mobileNumber;
    data['deviceNo'] = deviceNo;
    data['vehicleNo'] = vehicleNo;
    data['simNo'] = simNo;
    data['vehicle'] = vehicle;
    data['installedBy'] = installedBy;
    data['trackerType'] = trackerType;
    data['dataLimit'] = dataLimit;
    data['speedLimit'] = speedLimit;
    data['installedDate'] = installedDate;
    data['duePayment'] = duePayment;
    data['expiryDate'] = expiryDate;
    data['grasePeriod'] = grasePeriod;
    data['renewalDays'] = renewalDays;
    return data;
  }
}

/*class ExpiredVehiclesModel {
  ExpiredVehiclesModel({
    this.vid,
    this.userName,
    this.mobileNumber,
    this.deviceNo,
    this.vehicleNo,
    this.simNo,
    this.vehicle,
    this.installedBy,
    this.trackerType,
    this.dataLimit,
    this.speedLimit,
    this.installedDate,
    this.duePayment,
    this.expiryDate,
    this.grasePeriod,
    this.renewalDays,
  });

  int vid;
  UserName userName;
  String mobileNumber;
  String deviceNo;
  String vehicleNo;
  String simNo;
  Vehicle vehicle;
  InstalledBy installedBy;
  TrackerType trackerType;
  String dataLimit;
  String speedLimit;
  String installedDate;
  String duePayment;
  String expiryDate;
  String grasePeriod;
  String renewalDays;

  factory ExpiredVehiclesModel.fromJson(Map<String, dynamic> json) => ExpiredVehiclesModel(
    vid: json["vid"],
    userName: userNameValues.map[json["userName"]],
    mobileNumber: json["mobileNumber"],
    deviceNo: json["deviceNo"],
    vehicleNo: json["vehicleNo"],
    simNo: json["simNo"],
    vehicle: vehicleValues.map[json["vehicle"]],
    installedBy: installedByValues.map[json["installedBy"]],
    trackerType: trackerTypeValues.map[json["trackerType"]],
    dataLimit: json["dataLimit"],
    speedLimit: json["speedLimit"],
    installedDate: json["installedDate"],
    duePayment: json["duePayment"],
    expiryDate: json["expiryDate"],
    grasePeriod: json["grasePeriod"],
    renewalDays: json["renewalDays"],
  );

  Map<String, dynamic> toJson() => {
    "vid": vid,
    "userName": userNameValues.reverse[userName],
    "mobileNumber": mobileNumber,
    "deviceNo": deviceNo,
    "vehicleNo": vehicleNo,
    "simNo": simNo,
    "vehicle": vehicleValues.reverse[vehicle],
    "installedBy": installedByValues.reverse[installedBy],
    "trackerType": trackerTypeValues.reverse[trackerType],
    "dataLimit": dataLimit,
    "speedLimit": speedLimit,
    "installedDate": installedDate,
    "duePayment": duePayment,
    "expiryDate": expiryDate,
    "grasePeriod": grasePeriod,
    "renewalDays": renewalDays,
  };
}

enum InstalledBy { EMPTY, ANKIT_PUN, NARESH, KISAN, ANKIT_PUNE, SHIWAJI, SACHIN, ANIL, SHANKAR, INSTALLED_BY_NARESH }

final installedByValues = EnumValues({
  "ANIL": InstalledBy.ANIL,
  "ankit pun": InstalledBy.ANKIT_PUN,
  "ankit PUNE": InstalledBy.ANKIT_PUNE,
  "": InstalledBy.EMPTY,
  "NARESH": InstalledBy.INSTALLED_BY_NARESH,
  "kisan": InstalledBy.KISAN,
  "Naresh": InstalledBy.NARESH,
  "sachin": InstalledBy.SACHIN,
  "shankar": InstalledBy.SHANKAR,
  "SHIWAJI": InstalledBy.SHIWAJI
});

enum TrackerType { LT05, WE_TRACK2, EMPTY, MAGNET, RP02, RV09, WE_TRACK_LITE, EV02, V5, BW09, RV03, ET300, BW09_FUEL }

final trackerTypeValues = EnumValues({
  "BW09": TrackerType.BW09,
  "BW09 FUEL": TrackerType.BW09_FUEL,
  "": TrackerType.EMPTY,
  "ET300": TrackerType.ET300,
  "EV02": TrackerType.EV02,
  "LT05": TrackerType.LT05,
  "MAGNET ": TrackerType.MAGNET,
  "RP02": TrackerType.RP02,
  "RV03": TrackerType.RV03,
  "RV09": TrackerType.RV09,
  "v5": TrackerType.V5,
  "WeTrack2": TrackerType.WE_TRACK2,
  "We Track Lite": TrackerType.WE_TRACK_LITE
});

enum UserName { PUNEGPS }

final userNameValues = EnumValues({
  "PUNEGPS": UserName.PUNEGPS
});

enum Vehicle { TRUCK, CAR, BUS, BIKE, AMBULANCE, TRACTOR }

final vehicleValues = EnumValues({
  "Ambulance": Vehicle.AMBULANCE,
  "Bike": Vehicle.BIKE,
  "Bus": Vehicle.BUS,
  "Car": Vehicle.CAR,
  "Tractor": Vehicle.TRACTOR,
  "Truck": Vehicle.TRUCK
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}*/
