class Motorbike {
  final String mId;
  final String mBrand;
  final String mModel;
  final String mVersion;
  final String mYear;
  final String mKm;
  final String mSellPrice;
  final String mPurchasePrice;

  const Motorbike({
    required this.mId,
    required this.mBrand,
    required this.mModel,
    required this.mVersion,
    required this.mYear,
    required this.mKm,
    required this.mSellPrice,
    required this.mPurchasePrice,
  });

  showMotorbikeInfo() {
    print("Motorbike ${mId}: ${mBrand} ${mModel} (${mVersion})");
    print("Year: ${mYear} | Km: ${mKm}");
    print("Sell price: ${mSellPrice} | Purchase price: ${mPurchasePrice}");
  }

  factory Motorbike.fromJson(Map<String, dynamic> json) {
    return Motorbike(
        mId: json['id'],
        mBrand: json['brand'],
        mModel: json['model'],
        mVersion: json['version'],
        mYear: json['year'],
        mKm: json['km'],
        mSellPrice: json['sell_price'],
        mPurchasePrice: json['purchase_price']);
  }
}
