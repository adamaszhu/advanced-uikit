// Generated by Apple Swift version 3.1 (swiftlang-802.0.53 clang-802.0.42)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if defined(__has_include) && __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if defined(__has_attribute) && __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if defined(__has_attribute) && __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
# if defined(__has_feature) && __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if defined(__has_feature) && __has_feature(modules)
@import Foundation;
@import ObjectiveC;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"

/// PathHelper is used to perform path related action.
/// author:
/// Adamas
/// version:
/// 1.1.0
/// date:
/// 12/07/2017
SWIFT_CLASS("_TtC18AdvancedFoundation10PathHelper")
@interface PathHelper : NSFileManager
/// Whether the file or a directory exists or not.
@property (nonatomic, readonly) BOOL isExisted;
/// The path of the file.
@property (nonatomic, readonly, copy) NSString * _Nonnull path;
/// Initialize the helper.
/// \param path The path that the helper should hold.
///
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end


/// DiretoryHelper provides actions for an directory.
/// author:
/// Adamas
/// version:
/// 1.1.0
/// date:
/// 12/07/2017
SWIFT_CLASS("_TtC18AdvancedFoundation15DirectoryHelper")
@interface DirectoryHelper : PathHelper
/// The path list of all contents in a directory. Nil if the data doesn’t exist or there is an error.
@property (nonatomic, readonly, copy) NSArray<NSString *> * _Nullable content;
/// Whether the directory exists or not.
@property (nonatomic, readonly) BOOL isExisted;
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path OBJC_DESIGNATED_INITIALIZER;
@end


/// FileHelper is used to perform file related action.
/// author:
/// Adamas
/// version:
/// 1.1.0
/// date:
/// 12/07/2017
SWIFT_CLASS("_TtC18AdvancedFoundation10FileHelper")
@interface FileHelper : PathHelper
/// The data of a file. Nil if the file doesn’t exists or there is an error.
@property (nonatomic, readonly, copy) NSData * _Nullable content;
/// Whether the file exists or not.
@property (nonatomic, readonly) BOOL isExisted;
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path OBJC_DESIGNATED_INITIALIZER;
@end


@interface NSNumber (SWIFT_EXTENSION(AdvancedFoundation))
/// Read a long number string.
/// \param longNumber The string to be rendered.
///
///
/// returns:
/// The number.
+ (NSNumber * _Nullable)numberFromLongNumber:(NSString * _Nonnull)longNumber SWIFT_WARN_UNUSED_RESULT;
@end


@interface NSNumber (SWIFT_EXTENSION(AdvancedFoundation))
@end


@interface NSNumber (SWIFT_EXTENSION(AdvancedFoundation))
/// Read a percent string.
/// \param percentage The string to be rendered.
///
///
/// returns:
/// The string.
+ (NSNumber * _Nullable)numberFromPercentage:(NSString * _Nonnull)percentage SWIFT_WARN_UNUSED_RESULT;
@end


@interface NSNumber (SWIFT_EXTENSION(AdvancedFoundation))
/// Print the number as a string using money format. For example, $1,000,000.00.
/// \param shouldDisplayCent Whether the cent should be displayed or not.
///
///
/// returns:
/// The formatted string.
- (NSString * _Nullable)moneyStringWithCent:(BOOL)shouldDisplayCent withCurrencySymbol:(NSString * _Nonnull)currencySymbol SWIFT_WARN_UNUSED_RESULT;
@end

@class NSURLCache;

/// NetowrkHelper is used to perform basic level internet connection.
/// author:
/// Adamas
/// version:
/// 1.1.0
/// date:
/// 13/07/2017
SWIFT_CLASS("_TtC18AdvancedFoundation13NetworkHelper")
@interface NetworkHelper : NSObject
/// Whether the network is available or not. This method is referenced from http://stackoverflow.com/questions/39558868/check-internet-connection-ios-10
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly) BOOL isNetworkAvailable;)
+ (BOOL)isNetworkAvailable SWIFT_WARN_UNUSED_RESULT;
/// The default helper.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, strong) NetworkHelper * _Nullable standard;)
+ (NetworkHelper * _Nullable)standard SWIFT_WARN_UNUSED_RESULT;
/// Initialize the object.
/// <ul>
///   <li>
///     Parameter:
///     <ul>
///       <li>
///         identifier: The identifier used to identify the URL session running in the background.
///       </li>
///       <li>
///         cache: The cache to cache all request. Nil means use the default one.
///       </li>
///     </ul>
///   </li>
/// </ul>
- (nonnull instancetype)initWithIdentifier:(NSString * _Nonnull)identifier cache:(NSURLCache * _Nonnull)cache OBJC_DESIGNATED_INITIALIZER;
/// Reset the internet, which will cancel all the current internet connections.
- (void)reset;
/// Clear all cache data.
- (void)clearCache;
- (void)clearCacheForURL:(NSString * _Nonnull)url;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end

@class NSURLSession;
@class NSURLSessionTask;

@interface NetworkHelper (SWIFT_EXTENSION(AdvancedFoundation)) <NSURLSessionTaskDelegate>
- (void)URLSession:(NSURLSession * _Nonnull)session task:(NSURLSessionTask * _Nonnull)task didCompleteWithError:(NSError * _Nullable)error;
@end

@class NSURLSessionDownloadTask;

@interface NetworkHelper (SWIFT_EXTENSION(AdvancedFoundation)) <NSURLSessionDownloadDelegate>
- (void)URLSession:(NSURLSession * _Nonnull)session downloadTask:(NSURLSessionDownloadTask * _Nonnull)downloadTask didFinishDownloadingToURL:(NSURL * _Nonnull)location;
- (void)URLSession:(NSURLSession * _Nonnull)session downloadTask:(NSURLSessionDownloadTask * _Nonnull)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite;
@end

@class NSURLSessionDataTask;
@class NSURLResponse;

@interface NetworkHelper (SWIFT_EXTENSION(AdvancedFoundation)) <NSURLSessionDataDelegate>
- (void)URLSession:(NSURLSession * _Nonnull)session dataTask:(NSURLSessionDataTask * _Nonnull)dataTask didReceiveData:(NSData * _Nonnull)data;
- (void)URLSession:(NSURLSession * _Nonnull)session dataTask:(NSURLSessionDataTask * _Nonnull)dataTask didReceiveResponse:(NSURLResponse * _Nonnull)response completionHandler:(void (^ _Nonnull)(NSURLSessionResponseDisposition))completionHandler;
@end


#pragma clang diagnostic pop
