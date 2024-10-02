// class ArtworkModel {
//   int id;
//   String apiModel;
//   String apiLink;
//   bool isBoosted;
//   String title;
//   String? altTitles;
//   Thumbnail? thumbnail;
//   String mainReferenceNumber;
//   bool hasNotBeenViewedMuch;
//   dynamic boostRank;
//   int dateStart;
//   int dateEnd;
//   String dateDisplay;
//   String? dateQualifierTitle;
//   dynamic dateQualifierId;
//   String artistDisplay;
//   String placeOfOrigin;
//   String? description;
//   String? shortDescription;
//   String dimensions;
//   List<DimensionsDetail> dimensionsDetail;
//   String mediumDisplay;
//   dynamic inscriptions;
//   String creditLine;
//   dynamic catalogueDisplay;
//   String publicationHistory;
//   String exhibitionHistory;
//   dynamic edition;
//   String publishingVerificationLevel;
//   int internalDepartmentId;
//   int fiscalYear;
//   dynamic fiscalYearDeaccession;
//   bool isPublicDomain;
//   bool isZoomable;
//   int maxZoomWindowSize;
//   dynamic copyrightNotice;
//   bool hasMultimediaResources;
//   bool hasEducationalResources;
//   bool hasAdvancedImaging;
//   double colorfulness;
//   ArtworkColor color;
//   dynamic latitude;
//   dynamic longitude;
//   dynamic latlon;
//   bool isOnView;
//   dynamic onLoanDisplay;
//   dynamic galleryTitle;
//   dynamic galleryId;
//   dynamic nomismaId;
//   String artworkTypeTitle;
//   int artworkTypeId;
//   String departmentTitle;
//   String departmentId;
//   int artistId;
//   String artistTitle;
//   List<String> altArtistIds;
//   List<int> artistIds;
//   List<String> artistTitles;
//   List<String> categoryIds;
//   List<String> categoryTitles;
//   List<String> termTitles;
//   dynamic styleId;
//   dynamic styleTitle;
//   List<dynamic> altStyleIds;
//   List<dynamic> styleIds;
//   List<dynamic> styleTitles;
//   String classificationTitle;
//   List<String> classificationIds;
//   List<String> classificationTitles;
//   dynamic subjectId;
//   List<dynamic> altSubjectIds;
//   List<dynamic> subjectIds;
//   List<dynamic> subjectTitles;
//   String? materialId;
//   List<dynamic> altMaterialIds;
//   List<String>? materialIds;
//   List<String>? materialTitles;
//   dynamic techniqueId;
//   List<dynamic> altTechniqueIds;
//   List<dynamic> techniqueIds;
//   List<dynamic> techniqueTitles;
//   List<dynamic> themeTitles;
//   String? imageId;
//   List<String>? altImageIds;
//   List<dynamic> documentIds;
//   List<dynamic> soundIds;
//   List<dynamic> videoIds;
//   List<dynamic> textIds;
//   List<dynamic> sectionIds;
//   List<dynamic> sectionTitles;
//   List<dynamic> siteIds;
//   List<SuggestAutocompleteAll> suggestAutocompleteAll;
//   String sourceUpdatedAt;
//   String updatedAt;
//   String timestamp;
//
//   ArtworkModel({
//     required this.id,
//     required this.apiModel,
//     required this.apiLink,
//     required this.isBoosted,
//     required this.title,
//     this.altTitles,
//     this.thumbnail,
//     required this.mainReferenceNumber,
//     required this.hasNotBeenViewedMuch,
//     this.boostRank,
//     required this.dateStart,
//     required this.dateEnd,
//     required this.dateDisplay,
//     this.dateQualifierTitle,
//     this.dateQualifierId,
//     required this.artistDisplay,
//     required this.placeOfOrigin,
//     this.description,
//     this.shortDescription,
//     required this.dimensions,
//     required this.dimensionsDetail,
//     required this.mediumDisplay,
//     this.inscriptions,
//     required this.creditLine,
//     this.catalogueDisplay,
//     required this.publicationHistory,
//     required this.exhibitionHistory,
//     this.edition,
//     required this.publishingVerificationLevel,
//     required this.internalDepartmentId,
//     required this.fiscalYear,
//     this.fiscalYearDeaccession,
//     required this.isPublicDomain,
//     required this.isZoomable,
//     required this.maxZoomWindowSize,
//     this.copyrightNotice,
//     required this.hasMultimediaResources,
//     required this.hasEducationalResources,
//     required this.hasAdvancedImaging,
//     required this.colorfulness,
//     required this.color,
//     this.latitude,
//     this.longitude,
//     this.latlon,
//     required this.isOnView,
//     this.onLoanDisplay,
//     this.galleryTitle,
//     this.galleryId,
//     this.nomismaId,
//     required this.artworkTypeTitle,
//     required this.artworkTypeId,
//     required this.departmentTitle,
//     required this.departmentId,
//     required this.artistId,
//     required this.artistTitle,
//     required this.altArtistIds,
//     required this.artistIds,
//     required this.artistTitles,
//     required this.categoryIds,
//     required this.categoryTitles,
//     required this.termTitles,
//     this.styleId,
//     this.styleTitle,
//     required this.altStyleIds,
//     required this.styleIds,
//     required this.styleTitles,
//     required this.classificationTitle,
//     required this.classificationIds,
//     required this.classificationTitles,
//     this.subjectId,
//     required this.altSubjectIds,
//     required this.subjectIds,
//     required this.subjectTitles,
//     this.materialId,
//     required this.altMaterialIds,
//     this.materialIds,
//     this.materialTitles,
//     this.techniqueId,
//     required this.altTechniqueIds,
//     required this.techniqueIds,
//     required this.techniqueTitles,
//     required this.themeTitles,
//     this.imageId,
//     this.altImageIds,
//     required this.documentIds,
//     required this.soundIds,
//     required this.videoIds,
//     required this.textIds,
//     required this.sectionIds,
//     required this.sectionTitles,
//     required this.siteIds,
//     required this.suggestAutocompleteAll,
//     required this.sourceUpdatedAt,
//     required this.updatedAt,
//     required this.timestamp,
//   });
//
//   // fromJson method
//   factory ArtworkModel.fromJson(Map<String, dynamic> json) {
//     return ArtworkModel(
//       id: json['id'],
//       apiModel: json['api_model'],
//       apiLink: json['api_link'],
//       isBoosted: json['is_boosted'],
//       title: json['title'],
//       altTitles: json['alt_titles'],
//       thumbnail: json['thumbnail'] != null ? Thumbnail.fromJson(json['thumbnail']) : null,
//       mainReferenceNumber: json['main_reference_number'],
//       hasNotBeenViewedMuch: json['has_not_been_viewed_much'],
//       boostRank: json['boost_rank'],
//       dateStart: json['date_start'],
//       dateEnd: json['date_end'],
//       dateDisplay: json['date_display'],
//       dateQualifierTitle: json['date_qualifier_title'],
//       dateQualifierId: json['date_qualifier_id'],
//       artistDisplay: json['artist_display'],
//       placeOfOrigin: json['place_of_origin'],
//       description: json['description'],
//       shortDescription: json['short_description'],
//       dimensions: json['dimensions'],
//       dimensionsDetail: (json['dimensions_detail'] as List)
//           .map((i) => DimensionsDetail.fromJson(i))
//           .toList(),
//       mediumDisplay: json['medium_display'],
//       inscriptions: json['inscriptions'],
//       creditLine: json['credit_line'],
//       catalogueDisplay: json['catalogue_display'],
//       publicationHistory: json['publication_history'],
//       exhibitionHistory: json['exhibition_history'],
//       edition: json['edition'],
//       publishingVerificationLevel: json['publishing_verification_level'],
//       internalDepartmentId: json['internal_department_id'],
//       fiscalYear: json['fiscal_year'],
//       fiscalYearDeaccession: json['fiscal_year_deaccession'],
//       isPublicDomain: json['is_public_domain'],
//       isZoomable: json['is_zoomable'],
//       maxZoomWindowSize: json['max_zoom_window_size'],
//       copyrightNotice: json['copyright_notice'],
//       hasMultimediaResources: json['has_multimedia_resources'],
//       hasEducationalResources: json['has_educational_resources'],
//       hasAdvancedImaging: json['has_advanced_imaging'],
//       colorfulness: (json['colorfulness'] is int)
//           ? (json['colorfulness'] as int).toDouble()
//           : json['colorfulness'],
//       color: ArtworkColor.fromJson(json['color']),
//       latitude: json['latitude'],
//       longitude: json['longitude'],
//       latlon: json['latlon'],
//       isOnView: json['is_on_view'],
//       onLoanDisplay: json['on_loan_display'],
//       galleryTitle: json['gallery_title'],
//       galleryId: json['gallery_id'],
//       nomismaId: json['nomisma_id'],
//       artworkTypeTitle: json['artwork_type_title'],
//       artworkTypeId: json['artwork_type_id'],
//       departmentTitle: json['department_title'],
//       departmentId: json['department_id'],
//       artistId: json['artist_id'],
//       artistTitle: json['artist_title'],
//       altArtistIds: List<String>.from(json['alt_artist_ids']),
//       artistIds: List<int>.from(json['artist_ids']),
//       artistTitles: List<String>.from(json['artist_titles']),
//       categoryIds: List<String>.from(json['category_ids']),
//       categoryTitles: List<String>.from(json['category_titles']),
//       termTitles: List<String>.from(json['term_titles']),
//       styleId: json['style_id'],
//       styleTitle: json['style_title'],
//       altStyleIds: List<dynamic>.from(json['alt_style_ids']),
//       styleIds: List<dynamic>.from(json['style_ids']),
//       styleTitles: List<dynamic>.from(json['style_titles']),
//       classificationTitle: json['classification_title'],
//       classificationIds: List<String>.from(json['classification_ids']),
//       classificationTitles: List<String>.from(json['classification_titles']),
//       subjectId: json['subject_id'],
//       altSubjectIds: List<dynamic>.from(json['alt_subject_ids']),
//       subjectIds: List<dynamic>.from(json['subject_ids']),
//       subjectTitles: List<dynamic>.from(json['subject_titles']),
//       materialId: json['material_id'],
//       altMaterialIds: List<dynamic>.from(json['alt_material_ids']),
//       materialIds: json['material_ids'] != null ? List<String>.from(json['material_ids']) : null,
//       materialTitles: json['material_titles'] != null ? List<String>.from(json['material_titles']) : null,
//       techniqueId: json['technique_id'],
//       altTechniqueIds: List<dynamic>.from(json['alt_technique_ids']),
//       techniqueIds: List<dynamic>.from(json['technique_ids']),
//       techniqueTitles: List<dynamic>.from(json['technique_titles']),
//       themeTitles: List<dynamic>.from(json['theme_titles']),
//       imageId: json['image_id'],
//       altImageIds: json['alt_image_ids'] != null ? List<String>.from(json['alt_image_ids']) : null,
//       documentIds: List<dynamic>.from(json['document_ids']),
//       soundIds: List<dynamic>.from(json['sound_ids']),
//       videoIds: List<dynamic>.from(json['video_ids']),
//       textIds: List<dynamic>.from(json['text_ids']),
//       sectionIds: List<dynamic>.from(json['section_ids']),
//       sectionTitles: List<dynamic>.from(json['section_titles']),
//       siteIds: List<dynamic>.from(json['site_ids']),
//       suggestAutocompleteAll: (json['suggest_autocomplete_all'] as List)
//           .map((i) => SuggestAutocompleteAll.fromJson(i))
//           .toList(),
//       sourceUpdatedAt: json['source_updated_at'],
//       updatedAt: json['updated_at'],
//       timestamp: json['timestamp'],
//     );
//   }
// }

class ArtworkModel {
  final int? id;
  final String? apiLink;
  final String? title;
  final Thumbnail? thumbnail;
  final int? dateStart; // 작품 시작
  final int? dateEnd;  // 작품 끝
  final String? artistDisplay; // 작품 아티스트
  final String? dimensions; // 작픔 크기
  final String? mediumDisplay; // 작품 사용 재료
  final String? exhibitionHistory; // 이 작품이 전시된 모든 장소 목록
  final String? provenanceText; //
  final List<String>? categoryIds;
  final List<String>? categoryTitles;
  final List<String>? termTitles; // 분류 태그
  final String? imageId;// 이미지
  final List<String>? altImageIds; // 다른 각도의 이미지인 듯
  final String? description; // 설명
  final String? shortDescription;

  ArtworkModel({
    required this.id,
    required this.apiLink,
    required this.title,
    required this.thumbnail,
    required this.dateStart,
    required this.dateEnd,
    required this.artistDisplay,
    required this.dimensions,
    required this.mediumDisplay,
    required this.exhibitionHistory,
    required this.provenanceText,
    required this.categoryIds,
    required this.categoryTitles,
    required this.termTitles,
    required this.imageId,
    required this.altImageIds,
    required this.description,
    required this.shortDescription,
  });

  factory ArtworkModel.fromJson(Map<String, dynamic> json) {

    String imageUrl(String imageId) => 'https://www.artic.edu/iiif/2/$imageId/full/843,/0/default.jpg';

    List<String>? aliImageIdList = json['alt_image_ids'] == null ? null : List<String>.from(json['alt_image_ids']);
    List<String>? aliImageUrlList(List<String>? imageIds) {
      if (imageIds == null) return null;
      return imageIds.map((e) => imageUrl(e)).toList();
    }

    return ArtworkModel(
      id: json['id'],
      apiLink: json['api_link'],
      title: json['title'],
      thumbnail: json['thumbnail'] != null ? Thumbnail.fromJson(json['thumbnail']) : null,
      dateStart: json['date_start'],
      dateEnd: json['date_end'],
      artistDisplay: json['artist_display'],
      dimensions: json['dimensions'],
      mediumDisplay: json['medium_display'],
      exhibitionHistory: json['exhibition_history'],
      provenanceText: json['provenance_text'],
      categoryIds: json['category_ids'] == null ? null : List<String>.from(json['category_ids']),
      categoryTitles: json['category_titles'] == null ? null : List<String>.from(json['category_titles']),
      termTitles: json['term_titles'] == null ? null : List<String>.from(json['term_titles']),
      altImageIds: aliImageUrlList(aliImageIdList),
      imageId: json['image_id'] == null ? null : imageUrl(json['image_id']),
      description: json['description'],
      shortDescription: json['short_description'],
    );
  }
}

class Thumbnail {
  String? lqip;
  int? width;
  int? height;
  String? altText;

  Thumbnail({
    required this.lqip,
    required this.width,
    required this.height,
    required this.altText,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      lqip: json['lqip'],
      width: json['width'],
      height: json['height'],
      altText: json['alt_text'],
    );
  }
}

class DimensionsDetail {
  int depth;
  int width;
  int height;
  dynamic diameter;
  dynamic clarification;

  DimensionsDetail({
    required this.depth,
    required this.width,
    required this.height,
    this.diameter,
    this.clarification,
  });

  factory DimensionsDetail.fromJson(Map<String, dynamic> json) {
    return DimensionsDetail(
      depth: json['depth'],
      width: json['width'],
      height: json['height'],
      diameter: json['diameter'],
      clarification: json['clarification'],
    );
  }
}

class ArtworkColor {
  int h;
  int l;
  int s;
  double percentage;
  int population;

  ArtworkColor({
    required this.h,
    required this.l,
    required this.s,
    required this.percentage,
    required this.population,
  });

  factory ArtworkColor.fromJson(Map<String, dynamic> json) {
    return ArtworkColor(
      h: json['h'],
      l: json['l'],
      s: json['s'],
      percentage: json['percentage'],
      population: json['population'],
    );
  }
}

class SuggestAutocompleteAll {
  List<String> input;
  Map<String, List<String>> contexts;

  SuggestAutocompleteAll({
    required this.input,
    required this.contexts,
  });

  factory SuggestAutocompleteAll.fromJson(Map<String, dynamic> json) {
    return SuggestAutocompleteAll(
      input: List<String>.from(json['input']),
      contexts: Map<String, List<String>>.from(json['contexts']),
    );
  }
}
