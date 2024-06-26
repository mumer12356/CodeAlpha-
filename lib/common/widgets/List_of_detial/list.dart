
class Details{
  final String id;
  final String categoryNames;
  final String categoryImages;
  final String subCategoryNames;
  final String popularImages;
  final String brandName;
  final String popularName;
  final String popularPrice;
  final String salePrice;
  final String popularDiscountTag;
  final List<String> popularSubImages;
  final String rating;
  final String ratingNumbers;
  final String variationPrice;
  final String variationUnit;
  final String variationDescription;
  final String color1;
  final String color2;
  final String color3;
  final String size1;
  final String size2;
  final String size3;
  final String wholeDescription;




  Details({required this.id,required this.brandName,required this.categoryNames, required this.categoryImages,
    required this.subCategoryNames,required this.popularImages, required this.salePrice,
    required this.popularName,required this.popularDiscountTag,required this.rating,
    required this.popularPrice,required this.popularSubImages,required this.variationPrice,
  required this.variationUnit,required this.variationDescription,
    required this.ratingNumbers,required this.wholeDescription,required this.color1,
    required this.size1,required this.color2,required this.color3,required this.size2,required this.size3

  });
}




List<Details> details=[
  Details(
    id: '1',
    categoryNames: 'Sports',
    categoryImages: 'assets/icons/categories/sport.jpg',
    subCategoryNames: "Sports Shirts",
    popularImages: '',
    popularName: '',
    brandName: '',
    popularDiscountTag: '',
    popularPrice: '',
    salePrice: '',
    popularSubImages: [],
    rating: '',
    variationPrice: '',
    variationUnit: '',
    ratingNumbers: '',
    size1: '',
    size2: '',
    size3: '',
    color1: '',
    color2: '',
    color3: '',
    variationDescription: '',
    wholeDescription: '',
  ),
  Details(
    id: '2',
    categoryNames: 'Furniture',
    categoryImages: 'assets/icons/categories/furniture.png',
      subCategoryNames: "Furniture",
    popularImages: '',
    popularName: '',
    brandName: '',
      popularDiscountTag: '',
      popularPrice: '',
    salePrice: '',
    popularSubImages: [],
    rating: '',
    variationPrice: '',
    variationUnit: '',
    ratingNumbers: '',
    size1: '',
    size2: '',
    size3: '',
    color1: '',
    color2: '',
    color3: '',
    variationDescription: '',
    wholeDescription: '',

  ), Details(
    id: '3',
    categoryNames: 'Electronics',
    categoryImages: 'assets/icons/categories/Electronic.jpg',
    subCategoryNames: "Electrinics",
    popularImages: '',
    popularName: '',
    brandName: '',
      popularDiscountTag: '',
      popularPrice: '',
    salePrice: '',
    popularSubImages: [],
    rating: '',
    variationPrice: '',
    variationUnit: '',
    size1: '',
    size2: '',
    size3: '',
    color1: '',
    color2: '',
    color3: '',
    ratingNumbers: '',
    variationDescription: '',
    wholeDescription: '',
  ),Details(
    id: '4',
    categoryNames: 'Shoes',
    categoryImages: 'assets/icons/categories/Shoes.png',
    subCategoryNames: "Shoes",
    popularImages: '',
    popularName: '',
    brandName: '',
      popularDiscountTag: '',
      popularPrice: '',
    salePrice: '',
    popularSubImages: [],
    rating: '',
    variationPrice: '',
    variationUnit: '',
    ratingNumbers: '',
    size1: '',
    size2: '',
    size3: '',
    color1: '',
    color2: '',
    color3: '',
    variationDescription: '',
    wholeDescription: '',
  ),Details(
    id: '5',
    categoryNames: 'Animal',
    categoryImages: 'assets/icons/categories/animal.png',
    subCategoryNames: "Animal",
    popularImages: '',
    popularName: '',
    brandName: '',
      popularDiscountTag: '',
      popularPrice: '',
    salePrice: '',
    popularSubImages: [],
    rating: '',
    variationPrice: '',
    variationUnit: '',
    ratingNumbers: '',
    size1: '',
    size2: '',
    size3: '',
    color1: '',
    color2: '',
    color3: '',
    variationDescription: '',
    wholeDescription: '',
  ),

  /// After 5,  6 Starting popular details
  Details(
    id: '6',
      categoryNames: '',
      categoryImages: '',
      subCategoryNames: "",
      popularImages: 'assets/images/products/jackets1.jpg',
      popularName: 'Leathure Jacket with best quality',
      brandName: 'Nike',
      popularDiscountTag: '25%',
      popularPrice: '100',
    salePrice: '12',
    popularSubImages: [
      'https://firebasestorage.googleapis.com/v0/b/ecommerceapplication-9c706.appspot.com/o/assets%2Fimages%2Fproducts%2Fjackets1.jpg?alt=media&token=b85ceb64-3bc9-4dcc-bdf9-e3bb1c4e5ab5',
      'https://firebasestorage.googleapis.com/v0/b/ecommerceapplication-9c706.appspot.com/o/assets%2Fimages%2Fproducts%2Fjackets1.jpg?alt=media&token=b85ceb64-3bc9-4dcc-bdf9-e3bb1c4e5ab5',
      'https://firebasestorage.googleapis.com/v0/b/ecommerceapplication-9c706.appspot.com/o/assets%2Fimages%2Fproducts%2Fjackets1.jpg?alt=media&token=b85ceb64-3bc9-4dcc-bdf9-e3bb1c4e5ab5',
      'https://firebasestorage.googleapis.com/v0/b/ecommerceapplication-9c706.appspot.com/o/assets%2Fimages%2Fproducts%2Fjackets1.jpg?alt=media&token=b85ceb64-3bc9-4dcc-bdf9-e3bb1c4e5ab5',

    ],
    rating: '3.0',
    variationPrice: '\$25',
    variationUnit: '20',
    size1: 'EU 34',
    size2: 'EU 36',
    size3: 'EU 38',
    color1: 'Green',
    color2: 'Blue',
    color3: 'Pink',
    ratingNumbers: '(299)',
    variationDescription: 'This is the product of Nike',
    wholeDescription: 'This is a product description of Nike Jacket'
        'vest. There are more thing that can be added but i am just participating and nothing else',

  ),Details(
    id: '7',
      categoryNames: '',
      categoryImages: '',
      subCategoryNames: "",
      popularImages: 'assets/images/products/jackets2.jpeg',
      popularName: 'Jacket with highest quality product',
      brandName: 'Addidas',
      popularDiscountTag: '20%',
      popularPrice: '150',
    salePrice: '10',
    popularSubImages: [],
    rating: '3.5 ',
    variationPrice: '\$35',
    variationUnit: '',
    size1: 'EU 34',
    size2: 'EU 36',
    size3: 'EU 38',
    color1: 'Green',
    color2: 'Blue',
    color3: 'Pink',
    ratingNumbers: '(199)',
    variationDescription: 'This is the product of Addidas',
    wholeDescription: 'This is a product description of Nike Jacket'
        'vest. There are more thing that can be added but i am just participating and nothing else',


  ),Details(
    id: '8',
      categoryNames: '',
      categoryImages: '',
      subCategoryNames: "",
      popularImages: 'assets/images/products/smart phone.jpeg',
      popularName: 'Smart Android Phone',
      brandName: 'Android',
      popularDiscountTag: '10%',
      popularPrice: '55',
      salePrice: '100',
    popularSubImages: [
      'https://firebasestorage.googleapis.com/v0/b/ecommerceapplication-9c706.appspot.com/o/assets%2Fimages%2Fproducts%2Fsmart%20phone.jpeg?alt=media&token=b4cc8269-31cf-42e2-ba40-4d672c4524af',
      'https://firebasestorage.googleapis.com/v0/b/ecommerceapplication-9c706.appspot.com/o/assets%2Fimages%2Fproducts%2Fsmart%20phone.jpeg?alt=media&token=b4cc8269-31cf-42e2-ba40-4d672c4524af',
      'https://firebasestorage.googleapis.com/v0/b/ecommerceapplication-9c706.appspot.com/o/assets%2Fimages%2Fproducts%2Fsmart%20phone.jpeg?alt=media&token=b4cc8269-31cf-42e2-ba40-4d672c4524af',
      'https://firebasestorage.googleapis.com/v0/b/ecommerceapplication-9c706.appspot.com/o/assets%2Fimages%2Fproducts%2Fsmart%20phone.jpeg?alt=media&token=b4cc8269-31cf-42e2-ba40-4d672c4524af',
    ],
    rating: '',
    variationPrice: '\$95',
    variationUnit: '30',
    size1: 'EU 34',
    size2: 'EU 36',
    size3: 'EU 38',
    color1: 'Green',
    color2: 'Blue',
    color3: 'Pink',
    ratingNumbers: '(499)',
    variationDescription: 'This is the product of Android',
    wholeDescription: 'This is a product description of China Android Phone'
        '. There are more thing that can be added but i am just participating and nothing else',

  ),Details(
    id: '9',
      categoryNames: '',
      categoryImages: '',
      subCategoryNames: "",
      popularImages: 'assets/images/products/T-shirts.jpg',
      popularName: 'Nike T-shirt with good quality',
      brandName: 'Nike',
      popularDiscountTag: '40%',
      popularPrice: '12',
    salePrice: '30',
    popularSubImages: [],
    rating: '3.0 ',
    variationPrice: '\$25',
    variationUnit: '',
    ratingNumbers: '(699)',
    size1: 'EU 34',
    size2: 'EU 36',
    size3: 'EU 38',
    color1: 'Green',
    color2: 'Blue',
    color3: 'Pink',
    variationDescription: 'This is the product of Nike',
    wholeDescription: 'This is a product description of Nike Sleeve less'
        'vest. There are more thing that can be added but i am just participating and nothing else',


  ),


];