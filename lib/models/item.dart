import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  String CODENAME;
  String GUNAME;
  String TITLE;
  String DATE;
  String PLACE;
  String ORG_NAME;
  String USE_TRGT;
  String USE_FEE;
  String PLAYER;
  String PROGRAM;
  String ETC_DESC;
  String ORG_LINK;
  String MAIN_IMG;
  String RGSTDATE;
  String TICKET;
  String STRTDATE;
  String END_DATE;
  String THEMECODE;
  String LOT;
  String LAT;
  String IS_FREE;
  String HMPG_ADDR;

  Item(
      this.CODENAME,
      this.GUNAME,
      this.TITLE,
      this.DATE,
      this.PLACE,
      this.ORG_NAME,
      this.USE_TRGT,
      this.USE_FEE,
      this.PLAYER,
      this.PROGRAM,
      this.ETC_DESC,
      this.ORG_LINK,
      this.MAIN_IMG,
      this.RGSTDATE,
      this.TICKET,
      this.STRTDATE,
      this.END_DATE,
      this.THEMECODE,
      this.LOT,
      this.LAT,
      this.IS_FREE,
      this.HMPG_ADDR);

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);

  @override
  String toString() {
    return 'Item{CODENAME: $CODENAME, GUNAME: $GUNAME, TITLE: $TITLE, DATE: $DATE, PLACE: $PLACE, ORG_NAME: $ORG_NAME, USE_TRGT: $USE_TRGT, USE_FEE: $USE_FEE, PLAYER: $PLAYER, PROGRAM: $PROGRAM, ETC_DESC: $ETC_DESC, ORG_LINK: $ORG_LINK, MAIN_IMG: $MAIN_IMG, RGSTDATE: $RGSTDATE, TICKET: $TICKET, STRTDATE: $STRTDATE, END_DATE: $END_DATE, THEMECODE: $THEMECODE, LOT: $LOT, LAT: $LAT, IS_FREE: $IS_FREE, HMPG_ADDR: $HMPG_ADDR}';
  }
}
