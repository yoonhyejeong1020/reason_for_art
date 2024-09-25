class MuseumObjectModel {
  final int objectId;
  final String accessionYear;
  final String primaryImage;
  final String primaryImageSmall;
  final List<String> additionalImages;
  final List<Constituent> constituents;
  final String department;
  final String objectName;
  final String title;
  final String culture;
  final String artistRole;
  final String artistPrefix;
  final String artistDisplayName;
  final String artistDisplayBio;
  final String artistBeginDate;
  final String artistEndDate;
  final String artistWikidataUrl;
  final String artistUlanUrl;
  final String objectDate;
  final int objectBeginDate;
  final int objectEndDate;
  final String medium;
  final String dimensions;
  final List<Measurement> measurements;
  final String creditLine;
  final String city;
  final String classification;
  final String rightsAndReproduction;
  final String linkResource;
  final DateTime metadataDate;
  final String repository;
  final String objectUrl;
  final List<Tag> tags;
  final String objectWikidataUrl;
  final String galleryNumber;

  MuseumObjectModel({
    required this.objectId,
    required this.accessionYear,
    required this.primaryImage,
    required this.primaryImageSmall,
    required this.additionalImages,
    required this.constituents,
    required this.department,
    required this.objectName,
    required this.title,
    required this.culture,
    required this.artistRole,
    required this.artistPrefix,
    required this.artistDisplayName,
    required this.artistDisplayBio,
    required this.artistBeginDate,
    required this.artistEndDate,
    required this.artistWikidataUrl,
    required this.artistUlanUrl,
    required this.objectDate,
    required this.objectBeginDate,
    required this.objectEndDate,
    required this.medium,
    required this.dimensions,
    required this.measurements,
    required this.creditLine,
    required this.city,
    required this.classification,
    required this.rightsAndReproduction,
    required this.linkResource,
    required this.metadataDate,
    required this.repository,
    required this.objectUrl,
    required this.tags,
    required this.objectWikidataUrl,
    required this.galleryNumber,
  });

  factory MuseumObjectModel.fromJson(Map<String, dynamic> json) => MuseumObjectModel(
    objectId: json["objectID"],
    accessionYear: json["accessionYear"],
    primaryImage: json["primaryImage"],
    primaryImageSmall: json["primaryImageSmall"],
    additionalImages: json["additionalImages"] != null ? List<String>.from(json["additionalImages"].map((x) => x)) : [],
    constituents: json["constituents"] != null ? List<Constituent>.from(json["constituents"].map((x) => Constituent.fromJson(x))) : [],
    department: json["department"],
    objectName: json["objectName"],
    title: json["title"],
    culture: json["culture"],
    artistRole: json["artistRole"],
    artistPrefix: json["artistPrefix"],
    artistDisplayName: json["artistDisplayName"],
    artistDisplayBio: json["artistDisplayBio"],
    artistBeginDate: json["artistBeginDate"],
    artistEndDate: json["artistEndDate"],
    artistWikidataUrl: json["artistWikidata_URL"],
    artistUlanUrl: json["artistULAN_URL"],
    objectDate: json["objectDate"],
    objectBeginDate: json["objectBeginDate"],
    objectEndDate: json["objectEndDate"],
    medium: json["medium"],
    dimensions: json["dimensions"],
    measurements: json["measurements"] != null ? List<Measurement>.from(json["measurements"].map((x) => Measurement.fromJson(x))) : [],
    creditLine: json["creditLine"],
    city: json["city"],
    classification: json["classification"],
    rightsAndReproduction: json["rightsAndReproduction"],
    linkResource: json["linkResource"],
    metadataDate: DateTime.parse(json["metadataDate"]),
    repository: json["repository"],
    objectUrl: json["objectURL"],
    tags: json["tags"] != null ? List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))) : [],
    objectWikidataUrl: json["objectWikidata_URL"],
    galleryNumber: json["GalleryNumber"],
  );

}

class Constituent {
  final int constituentId;
  final String role;
  final String name;
  final String constituentUlanUrl;
  final String constituentWikidataUrl;
  final String gender;

  Constituent({
    required this.constituentId,
    required this.role,
    required this.name,
    required this.constituentUlanUrl,
    required this.constituentWikidataUrl,
    required this.gender,
  });

  factory Constituent.fromJson(Map<String, dynamic> json) => Constituent(
    constituentId: json["constituentID"],
    role: json["role"],
    name: json["name"],
    constituentUlanUrl: json["constituentULAN_URL"],
    constituentWikidataUrl: json["constituentWikidata_URL"],
    gender: json["gender"],
  );
}

class Measurement {
  final String elementName;
  final dynamic elementDescription;
  final ElementMeasurements elementMeasurements;

  Measurement({
    required this.elementName,
    required this.elementDescription,
    required this.elementMeasurements,
  });

  factory Measurement.fromJson(Map<String, dynamic> json) => Measurement(
    elementName: json["elementName"],
    elementDescription: json["elementDescription"],
    elementMeasurements: ElementMeasurements.fromJson(json["elementMeasurements"]),
  );
}

class ElementMeasurements {
  final double? height;
  final double? width;

  ElementMeasurements({
    required this.height,
    required this.width,
  });

  factory ElementMeasurements.fromJson(Map<String, dynamic> json) => ElementMeasurements(
    height: json["Height"]?.toDouble(),
    width: json["Width"]?.toDouble(),
  );
}

class Tag {
  final String term;
  final String aatUrl;
  final String wikidataUrl;

  Tag({
    required this.term,
    required this.aatUrl,
    required this.wikidataUrl,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
    term: json["term"],
    aatUrl: json["AAT_URL"],
    wikidataUrl: json["Wikidata_URL"],
  );
}
