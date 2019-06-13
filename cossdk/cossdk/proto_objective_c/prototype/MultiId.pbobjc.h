// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: prototype/multi_id.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class account_name;
@class time_point_sec;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - MultiIdRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface MultiIdRoot : GPBRootObject
@end

#pragma mark - follower_relation

typedef GPB_ENUM(follower_relation_FieldNumber) {
  follower_relation_FieldNumber_Account = 1,
  follower_relation_FieldNumber_Follower = 2,
};

@interface follower_relation : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *account;
/** Test to see if @c account has been set. */
@property(nonatomic, readwrite) BOOL hasAccount;

@property(nonatomic, readwrite, strong, null_resettable) account_name *follower;
/** Test to see if @c follower has been set. */
@property(nonatomic, readwrite) BOOL hasFollower;

@end

#pragma mark - following_relation

typedef GPB_ENUM(following_relation_FieldNumber) {
  following_relation_FieldNumber_Account = 1,
  following_relation_FieldNumber_Following = 2,
};

@interface following_relation : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *account;
/** Test to see if @c account has been set. */
@property(nonatomic, readwrite) BOOL hasAccount;

@property(nonatomic, readwrite, strong, null_resettable) account_name *following;
/** Test to see if @c following has been set. */
@property(nonatomic, readwrite) BOOL hasFollowing;

@end

#pragma mark - follower_created_order

typedef GPB_ENUM(follower_created_order_FieldNumber) {
  follower_created_order_FieldNumber_Account = 1,
  follower_created_order_FieldNumber_CreatedTime = 2,
  follower_created_order_FieldNumber_Follower = 3,
};

@interface follower_created_order : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *account;
/** Test to see if @c account has been set. */
@property(nonatomic, readwrite) BOOL hasAccount;

@property(nonatomic, readwrite, strong, null_resettable) time_point_sec *createdTime;
/** Test to see if @c createdTime has been set. */
@property(nonatomic, readwrite) BOOL hasCreatedTime;

@property(nonatomic, readwrite, strong, null_resettable) account_name *follower;
/** Test to see if @c follower has been set. */
@property(nonatomic, readwrite) BOOL hasFollower;

@end

#pragma mark - following_created_order

typedef GPB_ENUM(following_created_order_FieldNumber) {
  following_created_order_FieldNumber_Account = 1,
  following_created_order_FieldNumber_CreatedTime = 2,
  following_created_order_FieldNumber_Following = 3,
};

@interface following_created_order : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *account;
/** Test to see if @c account has been set. */
@property(nonatomic, readwrite) BOOL hasAccount;

@property(nonatomic, readwrite, strong, null_resettable) time_point_sec *createdTime;
/** Test to see if @c createdTime has been set. */
@property(nonatomic, readwrite) BOOL hasCreatedTime;

@property(nonatomic, readwrite, strong, null_resettable) account_name *following;
/** Test to see if @c following has been set. */
@property(nonatomic, readwrite) BOOL hasFollowing;

@end

#pragma mark - post_created_order

typedef GPB_ENUM(post_created_order_FieldNumber) {
  post_created_order_FieldNumber_Created = 1,
  post_created_order_FieldNumber_ParentId = 2,
};

@interface post_created_order : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) time_point_sec *created;
/** Test to see if @c created has been set. */
@property(nonatomic, readwrite) BOOL hasCreated;

@property(nonatomic, readwrite) uint64_t parentId;

@end

#pragma mark - voter_id

typedef GPB_ENUM(voter_id_FieldNumber) {
  voter_id_FieldNumber_Voter = 1,
  voter_id_FieldNumber_PostId = 2,
};

@interface voter_id : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *voter;
/** Test to see if @c voter has been set. */
@property(nonatomic, readwrite) BOOL hasVoter;

@property(nonatomic, readwrite) uint64_t postId;

@end

#pragma mark - bp_voter_id

typedef GPB_ENUM(bp_voter_id_FieldNumber) {
  bp_voter_id_FieldNumber_Voter = 1,
  bp_voter_id_FieldNumber_Witness = 2,
};

@interface bp_voter_id : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *voter;
/** Test to see if @c voter has been set. */
@property(nonatomic, readwrite) BOOL hasVoter;

@property(nonatomic, readwrite, strong, null_resettable) account_name *witness;
/** Test to see if @c witness has been set. */
@property(nonatomic, readwrite) BOOL hasWitness;

@end

#pragma mark - bp_witness_id

typedef GPB_ENUM(bp_witness_id_FieldNumber) {
  bp_witness_id_FieldNumber_Voter = 1,
  bp_witness_id_FieldNumber_Witness = 2,
};

@interface bp_witness_id : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *voter;
/** Test to see if @c voter has been set. */
@property(nonatomic, readwrite) BOOL hasVoter;

@property(nonatomic, readwrite, strong, null_resettable) account_name *witness;
/** Test to see if @c witness has been set. */
@property(nonatomic, readwrite) BOOL hasWitness;

@end

#pragma mark - contract_id

typedef GPB_ENUM(contract_id_FieldNumber) {
  contract_id_FieldNumber_Owner = 1,
  contract_id_FieldNumber_Cname = 2,
};

@interface contract_id : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *owner;
/** Test to see if @c owner has been set. */
@property(nonatomic, readwrite) BOOL hasOwner;

@property(nonatomic, readwrite, copy, null_resettable) NSString *cname;

@end

#pragma mark - contract_data_id

typedef GPB_ENUM(contract_data_id_FieldNumber) {
  contract_data_id_FieldNumber_Owner = 1,
  contract_data_id_FieldNumber_Cname = 2,
  contract_data_id_FieldNumber_Pos = 3,
};

@interface contract_data_id : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *owner;
/** Test to see if @c owner has been set. */
@property(nonatomic, readwrite) BOOL hasOwner;

@property(nonatomic, readwrite, copy, null_resettable) NSString *cname;

/** crc-value of data */
@property(nonatomic, readwrite) int32_t pos;

@end

#pragma mark - reply_created_order

typedef GPB_ENUM(reply_created_order_FieldNumber) {
  reply_created_order_FieldNumber_ParentId = 1,
  reply_created_order_FieldNumber_Created = 2,
};

@interface reply_created_order : GPBMessage

@property(nonatomic, readwrite) uint64_t parentId;

@property(nonatomic, readwrite, strong, null_resettable) time_point_sec *created;
/** Test to see if @c created has been set. */
@property(nonatomic, readwrite) BOOL hasCreated;

@end

#pragma mark - user_post_create_order

typedef GPB_ENUM(user_post_create_order_FieldNumber) {
  user_post_create_order_FieldNumber_Author = 1,
  user_post_create_order_FieldNumber_Create = 2,
};

@interface user_post_create_order : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *author;
/** Test to see if @c author has been set. */
@property(nonatomic, readwrite) BOOL hasAuthor;

@property(nonatomic, readwrite, strong, null_resettable) time_point_sec *create;
/** Test to see if @c create has been set. */
@property(nonatomic, readwrite) BOOL hasCreate;

@end

#pragma mark - reward_cashout_id

typedef GPB_ENUM(reward_cashout_id_FieldNumber) {
  reward_cashout_id_FieldNumber_Account = 1,
  reward_cashout_id_FieldNumber_PostId = 2,
};

@interface reward_cashout_id : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *account;
/** Test to see if @c account has been set. */
@property(nonatomic, readwrite) BOOL hasAccount;

@property(nonatomic, readwrite) uint64_t postId;

@end

#pragma mark - user_trx_create_order

typedef GPB_ENUM(user_trx_create_order_FieldNumber) {
  user_trx_create_order_FieldNumber_Creator = 1,
  user_trx_create_order_FieldNumber_CreateTime = 2,
};

@interface user_trx_create_order : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) account_name *creator;
/** Test to see if @c creator has been set. */
@property(nonatomic, readwrite) BOOL hasCreator;

@property(nonatomic, readwrite, strong, null_resettable) time_point_sec *createTime;
/** Test to see if @c createTime has been set. */
@property(nonatomic, readwrite) BOOL hasCreateTime;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)