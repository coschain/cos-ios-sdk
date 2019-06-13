// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: prototype/type.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "prototype/Type.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - TypeRoot

@implementation TypeRoot

// No extensions in the file and no imports, so no need to generate
// +extensionRegistry.

@end

#pragma mark - TypeRoot_FileDescriptor

static GPBFileDescriptor *TypeRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"prototype"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - account_name

@implementation account_name

@dynamic value;

typedef struct account_name__storage_ {
  uint32_t _has_storage_[1];
  NSString *value;
} account_name__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = account_name_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(account_name__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[account_name class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(account_name__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - chain_id

@implementation chain_id

@dynamic value;

typedef struct chain_id__storage_ {
  uint32_t _has_storage_[1];
  uint32_t value;
} chain_id__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = chain_id_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(chain_id__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[chain_id class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(chain_id__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - coin

@implementation coin

@dynamic value;

typedef struct coin__storage_ {
  uint32_t _has_storage_[1];
  uint64_t value;
} coin__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = coin_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(coin__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[coin class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(coin__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - vest

@implementation vest

@dynamic value;

typedef struct vest__storage_ {
  uint32_t _has_storage_[1];
  uint64_t value;
} vest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "value",
        .dataTypeSpecific.className = NULL,
        .number = vest_FieldNumber_Value,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(vest__storage_, value),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[vest class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(vest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - public_key_type

@implementation public_key_type

@dynamic data_p;

typedef struct public_key_type__storage_ {
  uint32_t _has_storage_[1];
  NSData *data_p;
} public_key_type__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "data_p",
        .dataTypeSpecific.className = NULL,
        .number = public_key_type_FieldNumber_Data_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(public_key_type__storage_, data_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[public_key_type class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(public_key_type__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - private_key_type

@implementation private_key_type

@dynamic data_p;

typedef struct private_key_type__storage_ {
  uint32_t _has_storage_[1];
  NSData *data_p;
} private_key_type__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "data_p",
        .dataTypeSpecific.className = NULL,
        .number = private_key_type_FieldNumber_Data_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(private_key_type__storage_, data_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[private_key_type class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(private_key_type__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - time_point_sec

@implementation time_point_sec

@dynamic utcSeconds;

typedef struct time_point_sec__storage_ {
  uint32_t _has_storage_[1];
  uint32_t utcSeconds;
} time_point_sec__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "utcSeconds",
        .dataTypeSpecific.className = NULL,
        .number = time_point_sec_FieldNumber_UtcSeconds,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(time_point_sec__storage_, utcSeconds),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[time_point_sec class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(time_point_sec__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - signature_type

@implementation signature_type

@dynamic sig;

typedef struct signature_type__storage_ {
  uint32_t _has_storage_[1];
  NSData *sig;
} signature_type__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "sig",
        .dataTypeSpecific.className = NULL,
        .number = signature_type_FieldNumber_Sig,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(signature_type__storage_, sig),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[signature_type class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(signature_type__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - sha256

@implementation sha256

@dynamic hash_p;

typedef struct sha256__storage_ {
  uint32_t _has_storage_[1];
  NSData *hash_p;
} sha256__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "hash_p",
        .dataTypeSpecific.className = NULL,
        .number = sha256_FieldNumber_Hash_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(sha256__storage_, hash_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBytes,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[sha256 class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(sha256__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - chain_properties

@implementation chain_properties

@dynamic hasAccountCreationFee, accountCreationFee;
@dynamic maximumBlockSize;

typedef struct chain_properties__storage_ {
  uint32_t _has_storage_[1];
  uint32_t maximumBlockSize;
  coin *accountCreationFee;
} chain_properties__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountCreationFee",
        .dataTypeSpecific.className = GPBStringifySymbol(coin),
        .number = chain_properties_FieldNumber_AccountCreationFee,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(chain_properties__storage_, accountCreationFee),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "maximumBlockSize",
        .dataTypeSpecific.className = NULL,
        .number = chain_properties_FieldNumber_MaximumBlockSize,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(chain_properties__storage_, maximumBlockSize),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[chain_properties class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(chain_properties__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - dynamic_properties

@implementation dynamic_properties

@dynamic id_p;
@dynamic hasHeadBlockId, headBlockId;
@dynamic headBlockNumber;
@dynamic maximumBlockSize;
@dynamic hasTotalCos, totalCos;
@dynamic hasTime, time;
@dynamic hasCurrentWitness, currentWitness;
@dynamic irreversibleBlockNum;
@dynamic tps;
@dynamic hasTotalVestingShares, totalVestingShares;
@dynamic hasCurrentSupply, currentSupply;
@dynamic currentAslot;
@dynamic postWeightedVps;
@dynamic hasPostRewards, postRewards;
@dynamic totalTrxCnt;
@dynamic totalPostCnt;
@dynamic totalUserCnt;
@dynamic maxTps;
@dynamic maxTpsBlockNum;
@dynamic headBlockPrefix;
@dynamic hasReportRewards, reportRewards;
@dynamic ithYear;
@dynamic hasAnnualBudget, annualBudget;
@dynamic hasAnnualMinted, annualMinted;
@dynamic hasPostDappRewards, postDappRewards;
@dynamic hasVoterRewards, voterRewards;
@dynamic hasReplyRewards, replyRewards;
@dynamic replyWeightedVps;
@dynamic hasReplyDappRewards, replyDappRewards;

typedef struct dynamic_properties__storage_ {
  uint32_t _has_storage_[1];
  int32_t id_p;
  uint32_t maximumBlockSize;
  uint32_t tps;
  uint32_t currentAslot;
  uint32_t maxTps;
  uint32_t headBlockPrefix;
  uint32_t ithYear;
  sha256 *headBlockId;
  coin *totalCos;
  time_point_sec *time;
  account_name *currentWitness;
  vest *totalVestingShares;
  coin *currentSupply;
  vest *postRewards;
  vest *reportRewards;
  vest *annualBudget;
  vest *annualMinted;
  vest *postDappRewards;
  vest *voterRewards;
  vest *replyRewards;
  vest *replyDappRewards;
  uint64_t headBlockNumber;
  uint64_t irreversibleBlockNum;
  uint64_t postWeightedVps;
  uint64_t totalTrxCnt;
  uint64_t totalPostCnt;
  uint64_t totalUserCnt;
  uint64_t maxTpsBlockNum;
  uint64_t replyWeightedVps;
} dynamic_properties__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "headBlockId",
        .dataTypeSpecific.className = GPBStringifySymbol(sha256),
        .number = dynamic_properties_FieldNumber_HeadBlockId,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, headBlockId),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "headBlockNumber",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_HeadBlockNumber,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, headBlockNumber),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "maximumBlockSize",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_MaximumBlockSize,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, maximumBlockSize),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "totalCos",
        .dataTypeSpecific.className = GPBStringifySymbol(coin),
        .number = dynamic_properties_FieldNumber_TotalCos,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, totalCos),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "time",
        .dataTypeSpecific.className = GPBStringifySymbol(time_point_sec),
        .number = dynamic_properties_FieldNumber_Time,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, time),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "currentWitness",
        .dataTypeSpecific.className = GPBStringifySymbol(account_name),
        .number = dynamic_properties_FieldNumber_CurrentWitness,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, currentWitness),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "irreversibleBlockNum",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_IrreversibleBlockNum,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, irreversibleBlockNum),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "tps",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_Tps,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, tps),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "totalVestingShares",
        .dataTypeSpecific.className = GPBStringifySymbol(vest),
        .number = dynamic_properties_FieldNumber_TotalVestingShares,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, totalVestingShares),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "currentSupply",
        .dataTypeSpecific.className = GPBStringifySymbol(coin),
        .number = dynamic_properties_FieldNumber_CurrentSupply,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, currentSupply),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "currentAslot",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_CurrentAslot,
        .hasIndex = 11,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, currentAslot),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "postWeightedVps",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_PostWeightedVps,
        .hasIndex = 12,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, postWeightedVps),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "postRewards",
        .dataTypeSpecific.className = GPBStringifySymbol(vest),
        .number = dynamic_properties_FieldNumber_PostRewards,
        .hasIndex = 13,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, postRewards),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "totalTrxCnt",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_TotalTrxCnt,
        .hasIndex = 14,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, totalTrxCnt),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "totalPostCnt",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_TotalPostCnt,
        .hasIndex = 15,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, totalPostCnt),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "totalUserCnt",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_TotalUserCnt,
        .hasIndex = 16,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, totalUserCnt),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "maxTps",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_MaxTps,
        .hasIndex = 17,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, maxTps),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "maxTpsBlockNum",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_MaxTpsBlockNum,
        .hasIndex = 18,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, maxTpsBlockNum),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "headBlockPrefix",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_HeadBlockPrefix,
        .hasIndex = 19,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, headBlockPrefix),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "reportRewards",
        .dataTypeSpecific.className = GPBStringifySymbol(vest),
        .number = dynamic_properties_FieldNumber_ReportRewards,
        .hasIndex = 20,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, reportRewards),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "ithYear",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_IthYear,
        .hasIndex = 21,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, ithYear),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
      {
        .name = "annualBudget",
        .dataTypeSpecific.className = GPBStringifySymbol(vest),
        .number = dynamic_properties_FieldNumber_AnnualBudget,
        .hasIndex = 22,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, annualBudget),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "annualMinted",
        .dataTypeSpecific.className = GPBStringifySymbol(vest),
        .number = dynamic_properties_FieldNumber_AnnualMinted,
        .hasIndex = 23,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, annualMinted),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "postDappRewards",
        .dataTypeSpecific.className = GPBStringifySymbol(vest),
        .number = dynamic_properties_FieldNumber_PostDappRewards,
        .hasIndex = 24,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, postDappRewards),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "voterRewards",
        .dataTypeSpecific.className = GPBStringifySymbol(vest),
        .number = dynamic_properties_FieldNumber_VoterRewards,
        .hasIndex = 25,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, voterRewards),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "replyRewards",
        .dataTypeSpecific.className = GPBStringifySymbol(vest),
        .number = dynamic_properties_FieldNumber_ReplyRewards,
        .hasIndex = 26,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, replyRewards),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "replyWeightedVps",
        .dataTypeSpecific.className = NULL,
        .number = dynamic_properties_FieldNumber_ReplyWeightedVps,
        .hasIndex = 27,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, replyWeightedVps),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt64,
      },
      {
        .name = "replyDappRewards",
        .dataTypeSpecific.className = GPBStringifySymbol(vest),
        .number = dynamic_properties_FieldNumber_ReplyDappRewards,
        .hasIndex = 28,
        .offset = (uint32_t)offsetof(dynamic_properties__storage_, replyDappRewards),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[dynamic_properties class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(dynamic_properties__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - internal_rewards_keeper

@implementation internal_rewards_keeper

@dynamic id_p;
@dynamic rewards, rewards_Count;

typedef struct internal_rewards_keeper__storage_ {
  uint32_t _has_storage_[1];
  int32_t id_p;
  NSMutableDictionary *rewards;
} internal_rewards_keeper__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "id_p",
        .dataTypeSpecific.className = NULL,
        .number = internal_rewards_keeper_FieldNumber_Id_p,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(internal_rewards_keeper__storage_, id_p),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "rewards",
        .dataTypeSpecific.className = GPBStringifySymbol(vest),
        .number = internal_rewards_keeper_FieldNumber_Rewards,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(internal_rewards_keeper__storage_, rewards),
        .flags = GPBFieldMapKeyString,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[internal_rewards_keeper class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(internal_rewards_keeper__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - beneficiary_route_type

@implementation beneficiary_route_type

@dynamic hasName, name;
@dynamic weight;

typedef struct beneficiary_route_type__storage_ {
  uint32_t _has_storage_[1];
  uint32_t weight;
  account_name *name;
} beneficiary_route_type__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = GPBStringifySymbol(account_name),
        .number = beneficiary_route_type_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(beneficiary_route_type__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "weight",
        .dataTypeSpecific.className = NULL,
        .number = beneficiary_route_type_FieldNumber_Weight,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(beneficiary_route_type__storage_, weight),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeUInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[beneficiary_route_type class]
                                     rootClass:[TypeRoot class]
                                          file:TypeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(beneficiary_route_type__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
