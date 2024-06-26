

/// Main App Imports
library;
// App
export 'package:e_commerce_app/app.dart';

// Main
export 'package:e_commerce_app/main.dart';

// Navigation Menu
export 'package:e_commerce_app/navigation_menu.dart';

export 'package:flutter/material.dart';

export 'package:iconsax/iconsax.dart';


/// Firebase Exports
export 'package:firebase_storage/firebase_storage.dart'  ;
export 'package:get_storage/get_storage.dart';
export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:shimmer/shimmer.dart';
export 'package:get/get.dart';
export 'package:cached_network_image/cached_network_image.dart';
export 'package:lottie/lottie.dart';
export 'package:logger/logger.dart';
export 'package:flutter_rating_bar/flutter_rating_bar.dart';
export 'package:firebase_auth/firebase_auth.dart';
export 'package:firebase_core/firebase_core.dart';
export 'package:e_commerce_app/firebase_options.dart';


/// Custom Exports
export 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
export 'package:image_picker/image_picker.dart';
export 'package:google_sign_in/google_sign_in.dart';
export 'package:flutter_native_splash/flutter_native_splash.dart';
export 'package:flutter/foundation.dart';
export 'package:smooth_page_indicator/smooth_page_indicator.dart';
export 'package:shared_preferences/shared_preferences.dart';
export 'package:carousel_slider/carousel_slider.dart';
export 'package:readmore/readmore.dart';
export 'package:url_launcher/url_launcher_string.dart';
export 'package:flutter/services.dart';
export 'package:connectivity_plus/connectivity_plus.dart';



/// Binding
export '../../bindings/general_bindings.dart';

/// Common
// Styles
export '../../common/styles/shadows.dart';
export '../../common/styles/spacing_styles.dart';

/// Widgets
// AppBar
export '../../common/widgets/appbar/appbar.dart';
export '../../common/widgets/appbar/tabbar.dart';

// Brands
export '../../common/widgets/brands/brand_cards.dart';
export '../../common/widgets/brands/brand_show_case.dart';

// Chips
export '../../common/widgets/chips/choice_chip.dart';

/// Custom Shapes
// Containers
export '../../common/widgets/custom_shapes/containers/circular_container.dart';
export '../../common/widgets/custom_shapes/containers/primary_header_container.dart';
export '../../common/widgets/custom_shapes/containers/rounded_container.dart';
export '../../common/widgets/custom_shapes/containers/search_container.dart';

// Curved Edges
export '../../common/widgets/custom_shapes/curved_edges/curved_edges.dart';
export '../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';

// Icons
export '../../common/widgets/icons/c_circular_icon.dart';

// Image Text Widgets
export '../../common/widgets/image_text_widgets/vertical_image_text.dart';

// Images
export '../../common/widgets/images/c_circular_image.dart';
export '../../common/widgets/images/C_rounded_image.dart';

// Layouts
export '../../common/widgets/layouts/grid_layout.dart';

// List of Detail
export '../../common/widgets/List_of_detial/list.dart';

// List Tiles
export '../../common/widgets/list_tiles/settings_menu_tile.dart';
export '../../common/widgets/list_tiles/user_profile_tile.dart';

// Loaders
export '../../common/widgets/loaders/animation_loader.dart';
export '../../common/widgets/loaders/c_loader.dart';

// Login Signup
export '../../common/widgets/login_signup/form_divider.dart';
export '../../common/widgets/login_signup/social_buttons.dart';

/// Products
// Cart
export '../../common/widgets/products/cart/add_remove_button.dart';
export '../../common/widgets/products/cart/cart_item.dart';
export '../../common/widgets/products/cart/cart_menu_icon.dart';
export '../../common/widgets/products/cart/coupon_widget.dart';

// Product Cards
export '../../common/widgets/products/product_cards/product_card_horizontal.dart';
export '../../common/widgets/products/product_cards/product_card_vertical.dart';

// Ratings
export '../../common/widgets/products/ratings/rating_indicator.dart';

// Sortable
export '../../common/widgets/products/sortable/sortable_products.dart';

// Shimmer
export '../../common/widgets/shimmer/category_shimmer.dart';
export '../../common/widgets/shimmer/shimmer.dart';
export '../../common/widgets/shimmer/vertival_product_shimmer.dart';

// Success Screen
export '../../common/widgets/success_screen/success_screen.dart';

// Texts
export '../../common/widgets/texts/c_brand_title_text.dart';
export '../../common/widgets/texts/c_brand_title_text_with_verified_icon.dart';
export '../../common/widgets/texts/product_price_text.dart';
export '../../common/widgets/texts/product_title_text.dart';
export '../../common/widgets/texts/section_heading.dart';

/// Data
// Repositories
export '../../data/repositories/authentication/authentication_repository.dart';
export '../../data/repositories/authentication/user/user_repository.dart';

/// Features
/// Authentication
/// Controller
// Forgot Password
export '../../features/authentication/controllers/forget_password/forget_password_controller.dart';

// Login controller
export '../../features/authentication/controllers/login/login_controller.dart';

// Onboarding controller
export '../../features/authentication/controllers/onboarding/onboarding_controller.dart';

// Signup
export '../../features/authentication/controllers/signup/signup_controller.dart';
export '../../features/authentication/controllers/signup/verify_email_controller.dart';

/// Models
// User
export '../../features/authentication/models/user/user_model.dart';

/// Screens
// Login Page
export '../../features/authentication/screens/login/widgets/login.dart';
export '../../features/authentication/screens/login/widgets/login_form.dart';
export '../../features/authentication/screens/login/widgets/login_header.dart';

// On-Boarding Page
export '../../features/authentication/screens/onboarding/onboarding.dart';
export '../../features/authentication/screens/onboarding/onboarding_dot_navigation.dart';
export '../../features/authentication/screens/onboarding/onboarding_next_navigation.dart';
export '../../features/authentication/screens/onboarding/onboarding_page.dart';
export '../../features/authentication/screens/onboarding/onboarding_skip.dart';

// Password Configuration
export '../../features/authentication/screens/password_configuration/reset_password.dart';
export '../../features/authentication/screens/password_configuration/forget_password.dart';

// Signup
export '../../features/authentication/screens/signup/signup.dart';
export '../../features/authentication/screens/signup/widgets/signup_form.dart';
export '../../features/authentication/screens/signup/widgets/signup_header.dart';
export '../../features/authentication/screens/signup/widgets/verify_email.dart';
export '../../features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';

/// Personalization
// Controller
export '../../features/personalization/controllers/update_name_controller.dart';
export '../../features/personalization/controllers/user_controller.dart';

/// Screens
// Address
export '../../features/personalization/screens/address/add_new_address.dart';
export '../../features/personalization/screens/address/address.dart';
export '../../features/personalization/screens/address/widgets/single_address.dart';

/// Profile
// Change Profile
export '../../features/personalization/screens/profile/change_profile_info/change_fullname.dart';
export '../../features/personalization/screens/profile/change_profile_info/re_authenticate-user_login_form.dart';

// Widgets
export '../../features/personalization/screens/profile/widgets/profile.dart';
export '../../features/personalization/screens/profile/widgets/profile_menu.dart';


export '../../features/personalization/screens/settings/setting.dart';

/// Shop
/// Controller
export '../../features/shop/controllers/banner_controller.dart';
export '../../features/shop/controllers/cart_controller.dart';
export '../../features/shop/controllers/category_controller.dart';
export '../../features/shop/controllers/home_controller.dart';
export '../../features/shop/controllers/image_controller.dart';
export '../../features/shop/controllers/product_controller.dart';

// Models
export '../../features/shop/models/banner_model.dart';
export '../../features/shop/models/category_model.dart';

/// Screens
// All Product
export '../../features/shop/screens/all_product/all_products.dart';

// Brand
export '../../features/shop/screens/brand/all_brands.dart';
export '../../features/shop/screens/brand/brand_products.dart';

// Cart
export '../../features/shop/screens/cart/cart.dart';
export '../../features/shop/screens/cart/widgets/cart_item.dart';

// Checkout
export '../../features/shop/screens/checkout/checkout.dart';
export '../../features/shop/screens/checkout/widgets/billing_address_section.dart';
export '../../features/shop/screens/checkout/widgets/billing_amount_section.dart';
export '../../features/shop/screens/checkout/widgets/billing_payment_section.dart';

// Home
export '../../features/shop/screens/home/home.dart';
export '../../features/shop/screens/home/widgets/home_appbar.dart';
export '../../features/shop/screens/home/widgets/home_categories.dart';
export '../../features/shop/screens/home/widgets/promo_slider.dart';

// Order
export '../../features/shop/screens/order/order.dart';
export '../../features/shop/screens/order/widgets/order_list.dart';

// Product Details
export '../../features/shop/screens/product_details/product_detail.dart';
export '../../features/shop/screens/product_details/widgets/botom_add_to_cart.dart';
export '../../features/shop/screens/product_details/widgets/product_attribute.dart';
export '../../features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
export '../../features/shop/screens/product_details/widgets/product_meta_data.dart';
export '../../features/shop/screens/product_details/widgets/rating_share.dart';

// Product Review
export '../../features/shop/screens/product_review/product_reviews.dart';
export '../../features/shop/screens/product_review/widgets/user_review_card.dart';
export '../../features/shop/screens/product_review/widgets/progress_indicator_and_rating.dart';
export '../../features/shop/screens/product_review/widgets/rating_progress_indicator.dart';

// Store
export '../../features/shop/screens/store/store.dart';
export '../../features/shop/screens/store/widgets/category_tab.dart';

// Sub-Categories
export '../../features/shop/screens/sub_categories/sub_categories.dart';

// Wishlist
export '../../features/shop/screens/wishlist/wishlist.dart';

/// Utils
// Constants
export '../../utils/constants/colors.dart';
export '../../utils/constants/api_constant.dart';
export '../../utils/constants/enums.dart';
export '../../utils/constants/image_strings.dart';
export '../../utils/constants/sizes.dart';
export '../../utils/constants/text_strings.dart';

// Device
export '../../utils/device/device_utility.dart';

// Exception
export '../../utils/exception/firebase_auth_exception.dart';
export '../../utils/exception/firebase_exception.dart';
export '../../utils/exception/format_exception.dart';

// Formatters
export '../../utils/formatters/formatters.dart';

// Helpers
export '../../utils/helpers/helper_function.dart';
export '../../utils/helpers/pricing_calculator.dart';

// Local Storage
export '../../utils/local_storage/storage_utility.dart';

// Logging
export '../../utils/logging/logger.dart';

// Network Manager
export '../../utils/network_manager/network_manager.dart';

// Popups
export '../../utils/popups/full_screen_loader.dart';

/// Theme
// Custom Theme
export '../../utils/theme/theme.dart';
export '../../utils/theme/custom_theme/appbar_theme.dart';
export '../../utils/theme/custom_theme/bottom_sheet_theme.dart';
export '../../utils/theme/custom_theme/checkbox_theme.dart';
export '../../utils/theme/custom_theme/chip_theme.dart';
export '../../utils/theme/custom_theme/elevated_button_theme.dart';
export '../../utils/theme/custom_theme/outline_button_theme.dart';
export '../../utils/theme/custom_theme/text_field_theme.dart';
export '../../utils/theme/custom_theme/text_theme.dart';

// Validations
export '../../utils/validators/validations.dart';
