class ArtworkModel {
  int? id;
  String? apiModel;
  String? apiLink;
  bool? isBoosted;
  String? title;
  dynamic altTitles; // Null 대신 dynamic 사용
  Thumbnail? thumbnail;
  String? mainReferenceNumber;
  bool? hasNotBeenViewedMuch;
  dynamic boostRank; // Null 대신 dynamic 사용
  int? dateStart;
  int? dateEnd;
  String? dateDisplay;
  String? dateQualifierTitle;
  dynamic dateQualifierId; // Null 대신 dynamic 사용
  String? artistDisplay;
  String? placeOfOrigin;
  String? description;
  dynamic shortDescription; // Null 대신 dynamic 사용
  String? dimensions;
  List<DimensionsDetail>? dimensionsDetail;
  String? mediumDisplay;
  String? inscriptions;
  String? creditLine;
  dynamic catalogueDisplay; // Null 대신 dynamic 사용
  String? publicationHistory;
  String? exhibitionHistory;
  String? provenanceText;
  dynamic edition; // Null 대신 dynamic 사용
  String? publishingVerificationLevel;
  int? internalDepartmentId;
  dynamic fiscalYear; // Null 대신 dynamic 사용
  dynamic fiscalYearDeaccession; // Null 대신 dynamic 사용
  bool? isPublicDomain;
  bool? isZoomable;
  int? maxZoomWindowSize;
  String? copyrightNotice;
  bool? hasMultimediaResources;
  bool? hasEducationalResources;
  bool? hasAdvancedImaging;
  double? colorfulness;
  Color? color;
  dynamic latitude; // Null 대신 dynamic 사용
  dynamic longitude; // Null 대신 dynamic 사용
  dynamic latlon; // Null 대신 dynamic 사용
  bool? isOnView;
  dynamic onLoanDisplay; // Null 대신 dynamic 사용
  dynamic galleryTitle; // Null 대신 dynamic 사용
  dynamic galleryId; // Null 대신 dynamic 사용
  dynamic nomismaId; // Null 대신 dynamic 사용
  String? artworkTypeTitle;
  int? artworkTypeId;
  String? departmentTitle;
  String? departmentId;
  int? artistId;
  String? artistTitle;
  List<dynamic>? altArtistIds; // Null 대신 dynamic 사용
  List<int>? artistIds;
  List<String>? artistTitles;
  List<String>? categoryIds;
  List<String>? categoryTitles;
  List<String>? termTitles;
  String? styleId;
  String? styleTitle;
  List<dynamic>? altStyleIds; // Null 대신 dynamic 사용
  List<String>? styleIds;
  List<String>? styleTitles;
  String? classificationId;
  String? classificationTitle;
  List<String>? altClassificationIds;
  List<String>? classificationIds;
  List<String>? classificationTitles;
  String? subjectId;
  List<String>? altSubjectIds;
  List<String>? subjectIds;
  List<String>? subjectTitles;
  dynamic materialId; // Null 대신 dynamic 사용
  List<dynamic>? altMaterialIds; // Null 대신 dynamic 사용
  List<dynamic>? materialIds; // Null 대신 dynamic 사용
  List<dynamic>? materialTitles; // Null 대신 dynamic 사용
  dynamic techniqueId; // Null 대신 dynamic 사용
  List<dynamic>? altTechniqueIds; // Null 대신 dynamic 사용
  List<dynamic>? techniqueIds; // Null 대신 dynamic 사용
  List<dynamic>? techniqueTitles; // Null 대신 dynamic 사용
  List<dynamic>? themeTitles; // Null 대신 dynamic 사용
  String? imageId;
  List<dynamic>? altImageIds; // Null 대신 dynamic 사용
  List<dynamic>? documentIds; // Null 대신 dynamic 사용
  List<dynamic>? soundIds; // Null 대신 dynamic 사용
  List<dynamic>? videoIds; // Null 대신 dynamic 사용
  List<dynamic>? textIds; // Null 대신 dynamic 사용
  List<int>? sectionIds;
  List<String>? sectionTitles;
  List<dynamic>? siteIds; // Null 대신 dynamic 사용
  String? suggestAutocompleteBoosted;
  List<SuggestAutocompleteAll>? suggestAutocompleteAll;
  String? sourceUpdatedAt;
  String? updatedAt;
  String? timestamp;

  ArtworkModel(
      {this.id,
        this.apiModel,
        this.apiLink,
        this.isBoosted,
        this.title,
        this.altTitles,
        this.thumbnail,
        this.mainReferenceNumber,
        this.hasNotBeenViewedMuch,
        this.boostRank,
        this.dateStart,
        this.dateEnd,
        this.dateDisplay,
        this.dateQualifierTitle,
        this.dateQualifierId,
        this.artistDisplay,
        this.placeOfOrigin,
        this.description,
        this.shortDescription,
        this.dimensions,
        this.dimensionsDetail,
        this.mediumDisplay,
        this.inscriptions,
        this.creditLine,
        this.catalogueDisplay,
        this.publicationHistory,
        this.exhibitionHistory,
        this.provenanceText,
        this.edition,
        this.publishingVerificationLevel,
        this.internalDepartmentId,
        this.fiscalYear,
        this.fiscalYearDeaccession,
        this.isPublicDomain,
        this.isZoomable,
        this.maxZoomWindowSize,
        this.copyrightNotice,
        this.hasMultimediaResources,
        this.hasEducationalResources,
        this.hasAdvancedImaging,
        this.colorfulness,
        this.color,
        this.latitude,
        this.longitude,
        this.latlon,
        this.isOnView,
        this.onLoanDisplay,
        this.galleryTitle,
        this.galleryId,
        this.nomismaId,
        this.artworkTypeTitle,
        this.artworkTypeId,
        this.departmentTitle,
        this.departmentId,
        this.artistId,
        this.artistTitle,
        this.altArtistIds,
        this.artistIds,
        this.artistTitles,
        this.categoryIds,
        this.categoryTitles,
        this.termTitles,
        this.styleId,
        this.styleTitle,
        this.altStyleIds,
        this.styleIds,
        this.styleTitles,
        this.classificationId,
        this.classificationTitle,
        this.altClassificationIds,
        this.classificationIds,
        this.classificationTitles,
        this.subjectId,
        this.altSubjectIds,
        this.subjectIds,
        this.subjectTitles,
        this.materialId,
        this.altMaterialIds,
        this.materialIds,
        this.materialTitles,
        this.techniqueId,
        this.altTechniqueIds,
        this.techniqueIds,
        this.techniqueTitles,
        this.themeTitles,
        this.imageId,
        this.altImageIds,
        this.documentIds,
        this.soundIds,
        this.videoIds,
        this.textIds,
        this.sectionIds,
        this.sectionTitles,
        this.siteIds,
        this.suggestAutocompleteBoosted,
        this.suggestAutocompleteAll,
        this.sourceUpdatedAt,
        this.updatedAt,
        this.timestamp});

  ArtworkModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    apiModel = json['api_model'];
    apiLink = json['api_link'];
    isBoosted = json['is_boosted'];
    title = json['title'];
    altTitles = json['alt_titles'];
    thumbnail = json['thumbnail'] != null
        ? Thumbnail.fromJson(json['thumbnail'])
        : null;
    mainReferenceNumber = json['main_reference_number'];
    hasNotBeenViewedMuch = json['has_not_been_viewed_much'];
    boostRank = json['boost_rank'];
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    dateDisplay = json['date_display'];
    dateQualifierTitle = json['date_qualifier_title'];
    dateQualifierId = json['date_qualifier_id'];
    artistDisplay = json['artist_display'];
    placeOfOrigin = json['place_of_origin'];
    description = json['description'];
    shortDescription = json['short_description'];
    dimensions = json['dimensions'];
    if (json['dimensions_detail'] != null) {
      dimensionsDetail = <DimensionsDetail>[];
      json['dimensions_detail'].forEach((v) {
        dimensionsDetail!.add(DimensionsDetail.fromJson(v));
      });
    }
    mediumDisplay = json['medium_display'];
    inscriptions = json['inscriptions'];
    creditLine = json['credit_line'];
    catalogueDisplay = json['catalogue_display'];
    publicationHistory = json['publication_history'];
    exhibitionHistory = json['exhibition_history'];
    provenanceText = json['provenance_text'];
    edition = json['edition'];
    publishingVerificationLevel = json['publishing_verification_level'];
    internalDepartmentId = json['internal_department_id'];
    fiscalYear = json['fiscal_year'];
    fiscalYearDeaccession = json['fiscal_year_deaccession'];
    isPublicDomain = json['is_public_domain'];
    isZoomable = json['is_zoomable'];
    maxZoomWindowSize = json['max_zoom_window_size'];
    copyrightNotice = json['copyright_notice'];
    hasMultimediaResources = json['has_multimedia_resources'];
    hasEducationalResources = json['has_educational_resources'];
    hasAdvancedImaging = json['has_advanced_imaging'];
    colorfulness = json['colorfulness'];
    color = json['color'] != null ? Color.fromJson(json['color']) : null;
    latitude = json['latitude'];
    longitude = json['longitude'];
    latlon = json['latlon'];
    isOnView = json['is_on_view'];
    onLoanDisplay = json['on_loan_display'];
    galleryTitle = json['gallery_title'];
    galleryId = json['gallery_id'];
    nomismaId = json['nomisma_id'];
    artworkTypeTitle = json['artwork_type_title'];
    artworkTypeId = json['artwork_type_id'];
    departmentTitle = json['department_title'];
    departmentId = json['department_id'];
    artistId = json['artist_id'];
    artistTitle = json['artist_title'];

    if (json['alt_artist_ids'] != null) {
      altArtistIds = [];
      json['alt_artist_ids'].forEach((v) {
        altArtistIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    artistIds = json['artist_ids'].cast<int>();
    artistTitles = json['artist_titles'].cast<String>();
    categoryIds = json['category_ids'].cast<String>();
    categoryTitles = json['category_titles'].cast<String>();
    termTitles = json['term_titles'].cast<String>();
    styleId = json['style_id'];
    styleTitle = json['style_title'];

    if (json['alt_style_ids'] != null) {
      altStyleIds = [];
      json['alt_style_ids'].forEach((v) {
        altStyleIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    styleIds = json['style_ids'].cast<String>();
    styleTitles = json['style_titles'].cast<String>();
    classificationId = json['classification_id'];
    classificationTitle = json['classification_title'];
    altClassificationIds = json['alt_classification_ids'].cast<String>();
    classificationIds = json['classification_ids'].cast<String>();
    classificationTitles = json['classification_titles'].cast<String>();
    subjectId = json['subject_id'];
    altSubjectIds = json['alt_subject_ids'].cast<String>();
    subjectIds = json['subject_ids'].cast<String>();
    subjectTitles = json['subject_titles'].cast<String>();
    materialId = json['material_id'];

    if (json['alt_material_ids'] != null) {
      altMaterialIds = [];
      json['alt_material_ids'].forEach((v) {
        altMaterialIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    if (json['material_ids'] != null) {
      materialIds = [];
      json['material_ids'].forEach((v) {
        materialIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    if (json['material_titles'] != null) {
      materialTitles = [];
      json['material_titles'].forEach((v) {
        materialTitles!.add(v); // Null 대신 dynamic 사용
      });
    }

    techniqueId = json['technique_id'];

    if (json['alt_technique_ids'] != null) {
      altTechniqueIds = [];
      json['alt_technique_ids'].forEach((v) {
        altTechniqueIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    if (json['technique_ids'] != null) {
      techniqueIds = [];
      json['technique_ids'].forEach((v) {
        techniqueIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    if (json['technique_titles'] != null) {
      techniqueTitles = [];
      json['technique_titles'].forEach((v) {
        techniqueTitles!.add(v); // Null 대신 dynamic 사용
      });
    }

    if (json['theme_titles'] != null) {
      themeTitles = [];
      json['theme_titles'].forEach((v) {
        themeTitles!.add(v); // Null 대신 dynamic 사용
      });
    }

    imageId = json['image_id'];

    if (json['alt_image_ids'] != null) {
      altImageIds = [];
      json['alt_image_ids'].forEach((v) {
        altImageIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    if (json['document_ids'] != null) {
      documentIds = [];
      json['document_ids'].forEach((v) {
        documentIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    if (json['sound_ids'] != null) {
      soundIds = [];
      json['sound_ids'].forEach((v) {
        soundIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    if (json['video_ids'] != null) {
      videoIds = [];
      json['video_ids'].forEach((v) {
        videoIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    if (json['text_ids'] != null) {
      textIds = [];
      json['text_ids'].forEach((v) {
        textIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    sectionIds = json['section_ids'].cast<int>();
    sectionTitles = json['section_titles'].cast<String>();

    if (json['site_ids'] != null) {
      siteIds = [];
      json['site_ids'].forEach((v) {
        siteIds!.add(v); // Null 대신 dynamic 사용
      });
    }

    suggestAutocompleteBoosted = json['suggest_autocomplete_boosted'];

    if (json['suggest_autocomplete_all'] != null) {
      suggestAutocompleteAll = [];
      json['suggest_autocomplete_all'].forEach((v) {
        suggestAutocompleteAll!.add(SuggestAutocompleteAll.fromJson(v));
      });
    }

    sourceUpdatedAt = json['source_updated_at'];
    updatedAt = json['updated_at'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = this.id;
    data['api_model'] = this.apiModel;
    data['api_link'] = this.apiLink;
    data['is_boosted'] = this.isBoosted;
    data['title'] = this.title;
    data['alt_titles'] = this.altTitles;
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail!.toJson();
    }
    data['main_reference_number'] = this.mainReferenceNumber;
    data['has_not_been_viewed_much'] = this.hasNotBeenViewedMuch;
    data['boost_rank'] = this.boostRank;
    data['date_start'] = this.dateStart;
    data['date_end'] = this.dateEnd;
    data['date_display'] = this.dateDisplay;
    data['date_qualifier_title'] = this.dateQualifierTitle;
    data['date_qualifier_id'] = this.dateQualifierId;
    data['artist_display'] = this.artistDisplay;
    data['place_of_origin'] = this.placeOfOrigin;
    data['description'] = this.description;
    data['short_description'] = this.shortDescription;
    data['dimensions'] = this.dimensions;
    if (this.dimensionsDetail != null) {
      data['dimensions_detail'] = this.dimensionsDetail!.map((v) => v.toJson()).toList();
    }
    data['medium_display'] = this.mediumDisplay;
    data['inscriptions'] = this.inscriptions;
    data['credit_line'] = this.creditLine;
    data['catalogue_display'] = this.catalogueDisplay;
    data['publication_history'] = this.publicationHistory;
    data['exhibition_history'] = this.exhibitionHistory;
    data['provenance_text'] = this.provenanceText;
    data['edition'] = this.edition;
    data['publishing_verification_level'] = this.publishingVerificationLevel;
    data['internal_department_id'] = this.internalDepartmentId;
    data['fiscal_year'] = this.fiscalYear;
    data['fiscal_year_deaccession'] = this.fiscalYearDeaccession;
    data['is_public_domain'] = this.isPublicDomain;
    data['is_zoomable'] = this.isZoomable;
    data['max_zoom_window_size'] = this.maxZoomWindowSize;
    data['copyright_notice'] = this.copyrightNotice;
    data['has_multimedia_resources'] = this.hasMultimediaResources;
    data['has_educational_resources'] = this.hasEducationalResources;
    data['has_advanced_imaging'] = this.hasAdvancedImaging;
    data['colorfulness'] = this.colorfulness;
    if (this.color != null) {
      data['color'] = this.color!.toJson();
    }
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['latlon'] = this.latlon;
    data['is_on_view'] = this.isOnView;
    data['on_loan_display'] = this.onLoanDisplay;
    data['gallery_title'] = this.galleryTitle;
    data['gallery_id'] = this.galleryId;
    data['nomisma_id'] = this.nomismaId;
    data['artwork_type_title'] = this.artworkTypeTitle;
    data['artwork_type_id'] = this.artworkTypeId;
    data['department_title'] = this.departmentTitle;
    data['department_id'] = this.departmentId;
    data['artist_id'] = this.artistId;
    data['artist_title'] = this.artistTitle;
    if (this.altArtistIds != null) {
      data['alt_artist_ids'] = this.altArtistIds;
    }
    data['artist_ids'] = this.artistIds;
    data['artist_titles'] = this.artistTitles;
    data['category_ids'] = this.categoryIds;
    data['category_titles'] = this.categoryTitles;
    data['term_titles'] = this.termTitles;
    data['style_id'] = this.styleId;
    data['style_title'] = this.styleTitle;
    if (this.altStyleIds != null) {
      data['alt_style_ids'] = this.altStyleIds;
    }
    data['style_ids'] = this.styleIds;
    data['style_titles'] = this.styleTitles;
    data['classification_id'] = this.classificationId;
    data['classification_title'] = this.classificationTitle;
    data['alt_classification_ids'] = this.altClassificationIds;
    data['classification_ids'] = this.classificationIds;
    data['classification_titles'] = this.classificationTitles;
    data['subject_id'] = this.subjectId;
    data['alt_subject_ids'] = this.altSubjectIds;
    data['subject_ids'] = this.subjectIds;
    data['subject_titles'] = this.subjectTitles;
    data['material_id'] = this.materialId;
    if (this.altMaterialIds != null) {
      data['alt_material_ids'] = this.altMaterialIds;
    }
    if (this.materialIds != null) {
      data['material_ids'] = this.materialIds;
    }
    if (this.materialTitles != null) {
      data['material_titles'] = this.materialTitles;
    }
    data['technique_id'] = this.techniqueId;
    if (this.altTechniqueIds != null) {
      data['alt_technique_ids'] = this.altTechniqueIds;
    }
    if (this.techniqueIds != null) {
      data['technique_ids'] = this.techniqueIds;
    }
    if (this.techniqueTitles != null) {
      data['technique_titles'] = this.techniqueTitles;
    }
    if (this.themeTitles != null) {
      data['theme_titles'] = this.themeTitles;
    }
    data['image_id'] = this.imageId;
    if (this.altImageIds != null) {
      data['alt_image_ids'] = this.altImageIds;
    }
    if (this.documentIds != null) {
      data['document_ids'] = this.documentIds;
    }
    if (this.soundIds != null) {
      data['sound_ids'] = this.soundIds;
    }
    if (this.videoIds != null) {
      data['video_ids'] = this.videoIds;
    }
    if (this.textIds != null) {
      data['text_ids'] = this.textIds;
    }
    data['section_ids'] = this.sectionIds;
    data['section_titles'] = this.sectionTitles;
    if (this.siteIds != null) {
      data['site_ids'] = this.siteIds;
    }
    data['suggest_autocomplete_boosted'] = this.suggestAutocompleteBoosted;
    if (this.suggestAutocompleteAll != null) {
      data['suggest_autocomplete_all'] = this.suggestAutocompleteAll!.map((v) => v.toJson()).toList();
    }
    data['source_updated_at'] = this.sourceUpdatedAt;
    data['updated_at'] = this.updatedAt;
    data['timestamp'] = this.timestamp;
    return data;
  }
}

class Thumbnail {
  String? lqip;
  int? width;
  int? height;
  String? altText;

  Thumbnail({this.lqip, this.width, this.height, this.altText});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    lqip = json['lqip'];
    width = json['width'];
    height = json['height'];
    altText = json['alt_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['lqip'] = this.lqip;
    data['width'] = this.width;
    data['height'] = this.height;
    data['alt_text'] = this.altText;
    return data;
  }
}

class DimensionsDetail {
  dynamic depth; // Null 대신 dynamic 사용
  int? width;
  int? height;
  dynamic diameter; // Null 대신 dynamic 사용
  dynamic clarification; // Null 대신 dynamic 사용

  DimensionsDetail({this.depth, this.width, this.height, this.diameter, this.clarification});

  DimensionsDetail.fromJson(Map<String, dynamic> json) {
    depth = json['depth'];
    width = json['width'];
    height = json['height'];
    diameter = json['diameter'];
    clarification = json['clarification'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['depth'] = this.depth;
    data['width'] = this.width;
    data['height'] = this.height;
    data['diameter'] = this.diameter;
    data['clarification'] = this.clarification;
    return data;
  }
}

class Color {
  int? h;
  int? l;
  int? s;
  double? percentage;
  int? population;

  Color({this.h, this.l, this.s, this.percentage, this.population});

  Color.fromJson(Map<String, dynamic> json) {
    h = json['h'];
    l = json['l'];
    s = json['s'];
    percentage = json['percentage'];
    population = json['population'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['h'] = this.h;
    data['l'] = this.l;
    data['s'] = this.s;
    data['percentage'] = this.percentage;
    data['population'] = this.population;
    return data;
  }
}

class SuggestAutocompleteAll {
  List<String>? input;
  Contexts? contexts;
  int? weight;

  SuggestAutocompleteAll({this.input, this.contexts, this.weight});

  SuggestAutocompleteAll.fromJson(Map<String, dynamic> json) {
    input = json['input'].cast<String>();
    contexts = json['contexts'] != null ? Contexts.fromJson(json['contexts']) : null;
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['input'] = this.input;
    if (this.contexts != null) {
      data['contexts'] = this.contexts!.toJson();
    }
    data['weight'] = this.weight;
    return data;
  }
}

class Contexts {
  List<String>? groupings;

  Contexts({this.groupings});

  Contexts.fromJson(Map<String, dynamic> json) {
    groupings = json['groupings'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['groupings'] = this.groupings;
    return data;
  }
}


