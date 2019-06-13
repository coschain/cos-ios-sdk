#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import "Grpc.pbrpc.h"
#import "Grpc.pbobjc.h"
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

#import "prototype/Type.pbobjc.h"
#import "prototype/MultiId.pbobjc.h"
#import "prototype/Transaction.pbobjc.h"

@implementation ApiService

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"

// Designated initializer
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [super initWithHost:host
                 packageName:@"grpcpb"
                 serviceName:@"ApiService"
                 callOptions:callOptions];
}

- (instancetype)initWithHost:(NSString *)host {
  return [super initWithHost:host
                 packageName:@"grpcpb"
                 serviceName:@"ApiService"];
}

#pragma clang diagnostic pop

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName
                 callOptions:(GRPCCallOptions *)callOptions {
  return [self initWithHost:host callOptions:callOptions];
}

#pragma mark - Class Methods

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [[self alloc] initWithHost:host callOptions:callOptions];
}

#pragma mark - Method Implementations

#pragma mark QueryTableContent(GetTableContentRequest) returns (TableContentResponse)

// Deprecated methods.
- (void)queryTableContentWithRequest:(GetTableContentRequest *)request handler:(void(^)(TableContentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToQueryTableContentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToQueryTableContentWithRequest:(GetTableContentRequest *)request handler:(void(^)(TableContentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"QueryTableContent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[TableContentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)queryTableContentWithMessage:(GetTableContentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"QueryTableContent"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[TableContentResponse class]];
}

#pragma mark GetAccountByName(GetAccountByNameRequest) returns (AccountResponse)

// Deprecated methods.
- (void)getAccountByNameWithRequest:(GetAccountByNameRequest *)request handler:(void(^)(AccountResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccountByNameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccountByNameWithRequest:(GetAccountByNameRequest *)request handler:(void(^)(AccountResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccountByName"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[AccountResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getAccountByNameWithMessage:(GetAccountByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetAccountByName"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[AccountResponse class]];
}

#pragma mark GetAccountRewardByName(GetAccountRewardByNameRequest) returns (AccountRewardResponse)

// Deprecated methods.
- (void)getAccountRewardByNameWithRequest:(GetAccountRewardByNameRequest *)request handler:(void(^)(AccountRewardResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccountRewardByNameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccountRewardByNameWithRequest:(GetAccountRewardByNameRequest *)request handler:(void(^)(AccountRewardResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccountRewardByName"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[AccountRewardResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getAccountRewardByNameWithMessage:(GetAccountRewardByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetAccountRewardByName"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[AccountRewardResponse class]];
}

#pragma mark GetAccountCashout(GetAccountCashoutRequest) returns (AccountCashoutResponse)

// Deprecated methods.
- (void)getAccountCashoutWithRequest:(GetAccountCashoutRequest *)request handler:(void(^)(AccountCashoutResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccountCashoutWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccountCashoutWithRequest:(GetAccountCashoutRequest *)request handler:(void(^)(AccountCashoutResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccountCashout"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[AccountCashoutResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getAccountCashoutWithMessage:(GetAccountCashoutRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetAccountCashout"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[AccountCashoutResponse class]];
}

#pragma mark GetBlockCashout(GetBlockCashoutRequest) returns (BlockCashoutResponse)

// Deprecated methods.
- (void)getBlockCashoutWithRequest:(GetBlockCashoutRequest *)request handler:(void(^)(BlockCashoutResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetBlockCashoutWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetBlockCashoutWithRequest:(GetBlockCashoutRequest *)request handler:(void(^)(BlockCashoutResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetBlockCashout"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[BlockCashoutResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getBlockCashoutWithMessage:(GetBlockCashoutRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetBlockCashout"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[BlockCashoutResponse class]];
}

#pragma mark GetFollowerListByName(GetFollowerListByNameRequest) returns (GetFollowerListByNameResponse)

// Deprecated methods.
- (void)getFollowerListByNameWithRequest:(GetFollowerListByNameRequest *)request handler:(void(^)(GetFollowerListByNameResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetFollowerListByNameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetFollowerListByNameWithRequest:(GetFollowerListByNameRequest *)request handler:(void(^)(GetFollowerListByNameResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetFollowerListByName"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetFollowerListByNameResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getFollowerListByNameWithMessage:(GetFollowerListByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetFollowerListByName"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetFollowerListByNameResponse class]];
}

#pragma mark GetFollowingListByName(GetFollowingListByNameRequest) returns (GetFollowingListByNameResponse)

// Deprecated methods.
- (void)getFollowingListByNameWithRequest:(GetFollowingListByNameRequest *)request handler:(void(^)(GetFollowingListByNameResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetFollowingListByNameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetFollowingListByNameWithRequest:(GetFollowingListByNameRequest *)request handler:(void(^)(GetFollowingListByNameResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetFollowingListByName"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetFollowingListByNameResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getFollowingListByNameWithMessage:(GetFollowingListByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetFollowingListByName"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetFollowingListByNameResponse class]];
}

#pragma mark GetFollowCountByName(GetFollowCountByNameRequest) returns (GetFollowCountByNameResponse)

// Deprecated methods.
- (void)getFollowCountByNameWithRequest:(GetFollowCountByNameRequest *)request handler:(void(^)(GetFollowCountByNameResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetFollowCountByNameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetFollowCountByNameWithRequest:(GetFollowCountByNameRequest *)request handler:(void(^)(GetFollowCountByNameResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetFollowCountByName"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetFollowCountByNameResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getFollowCountByNameWithMessage:(GetFollowCountByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetFollowCountByName"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetFollowCountByNameResponse class]];
}

#pragma mark GetWitnessList(GetWitnessListRequest) returns (GetWitnessListResponse)

// Deprecated methods.
- (void)getWitnessListWithRequest:(GetWitnessListRequest *)request handler:(void(^)(GetWitnessListResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWitnessListWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWitnessListWithRequest:(GetWitnessListRequest *)request handler:(void(^)(GetWitnessListResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetWitnessList"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetWitnessListResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getWitnessListWithMessage:(GetWitnessListRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetWitnessList"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetWitnessListResponse class]];
}

#pragma mark GetPostListByCreated(GetPostListByCreatedRequest) returns (GetPostListByCreatedResponse)

// Deprecated methods.
- (void)getPostListByCreatedWithRequest:(GetPostListByCreatedRequest *)request handler:(void(^)(GetPostListByCreatedResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPostListByCreatedWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPostListByCreatedWithRequest:(GetPostListByCreatedRequest *)request handler:(void(^)(GetPostListByCreatedResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPostListByCreated"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetPostListByCreatedResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getPostListByCreatedWithMessage:(GetPostListByCreatedRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetPostListByCreated"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetPostListByCreatedResponse class]];
}

#pragma mark GetReplyListByPostId(GetReplyListByPostIdRequest) returns (GetReplyListByPostIdResponse)

// Deprecated methods.
- (void)getReplyListByPostIdWithRequest:(GetReplyListByPostIdRequest *)request handler:(void(^)(GetReplyListByPostIdResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetReplyListByPostIdWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetReplyListByPostIdWithRequest:(GetReplyListByPostIdRequest *)request handler:(void(^)(GetReplyListByPostIdResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetReplyListByPostId"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetReplyListByPostIdResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getReplyListByPostIdWithMessage:(GetReplyListByPostIdRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetReplyListByPostId"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetReplyListByPostIdResponse class]];
}

#pragma mark GetBlockTransactionsByNum(GetBlockTransactionsByNumRequest) returns (GetBlockTransactionsByNumResponse)

// Deprecated methods.
- (void)getBlockTransactionsByNumWithRequest:(GetBlockTransactionsByNumRequest *)request handler:(void(^)(GetBlockTransactionsByNumResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetBlockTransactionsByNumWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetBlockTransactionsByNumWithRequest:(GetBlockTransactionsByNumRequest *)request handler:(void(^)(GetBlockTransactionsByNumResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetBlockTransactionsByNum"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetBlockTransactionsByNumResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getBlockTransactionsByNumWithMessage:(GetBlockTransactionsByNumRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetBlockTransactionsByNum"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetBlockTransactionsByNumResponse class]];
}

#pragma mark GetChainState(NonParamsRequest) returns (GetChainStateResponse)

// Deprecated methods.
- (void)getChainStateWithRequest:(NonParamsRequest *)request handler:(void(^)(GetChainStateResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetChainStateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetChainStateWithRequest:(NonParamsRequest *)request handler:(void(^)(GetChainStateResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetChainState"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetChainStateResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getChainStateWithMessage:(NonParamsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetChainState"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetChainStateResponse class]];
}

#pragma mark GetStatisticsInfo(NonParamsRequest) returns (GetStatResponse)

// Deprecated methods.
- (void)getStatisticsInfoWithRequest:(NonParamsRequest *)request handler:(void(^)(GetStatResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetStatisticsInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetStatisticsInfoWithRequest:(NonParamsRequest *)request handler:(void(^)(GetStatResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetStatisticsInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetStatResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getStatisticsInfoWithMessage:(NonParamsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetStatisticsInfo"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetStatResponse class]];
}

#pragma mark BroadcastTrx(BroadcastTrxRequest) returns (BroadcastTrxResponse)

// Deprecated methods.
- (void)broadcastTrxWithRequest:(BroadcastTrxRequest *)request handler:(void(^)(BroadcastTrxResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBroadcastTrxWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBroadcastTrxWithRequest:(BroadcastTrxRequest *)request handler:(void(^)(BroadcastTrxResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"BroadcastTrx"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[BroadcastTrxResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)broadcastTrxWithMessage:(BroadcastTrxRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"BroadcastTrx"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[BroadcastTrxResponse class]];
}

#pragma mark GetBlockList(GetBlockListRequest) returns (GetBlockListResponse)

// Deprecated methods.
- (void)getBlockListWithRequest:(GetBlockListRequest *)request handler:(void(^)(GetBlockListResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetBlockListWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetBlockListWithRequest:(GetBlockListRequest *)request handler:(void(^)(GetBlockListResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetBlockList"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetBlockListResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getBlockListWithMessage:(GetBlockListRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetBlockList"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetBlockListResponse class]];
}

#pragma mark GetSignedBlock(GetSignedBlockRequest) returns (GetSignedBlockResponse)

// Deprecated methods.
- (void)getSignedBlockWithRequest:(GetSignedBlockRequest *)request handler:(void(^)(GetSignedBlockResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetSignedBlockWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetSignedBlockWithRequest:(GetSignedBlockRequest *)request handler:(void(^)(GetSignedBlockResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetSignedBlock"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetSignedBlockResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getSignedBlockWithMessage:(GetSignedBlockRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetSignedBlock"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetSignedBlockResponse class]];
}

#pragma mark GetAccountListByBalance(GetAccountListByBalanceRequest) returns (GetAccountListResponse)

// Deprecated methods.
- (void)getAccountListByBalanceWithRequest:(GetAccountListByBalanceRequest *)request handler:(void(^)(GetAccountListResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccountListByBalanceWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccountListByBalanceWithRequest:(GetAccountListByBalanceRequest *)request handler:(void(^)(GetAccountListResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccountListByBalance"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetAccountListResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getAccountListByBalanceWithMessage:(GetAccountListByBalanceRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetAccountListByBalance"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetAccountListResponse class]];
}

#pragma mark GetDailyTotalTrxInfo(GetDailyTotalTrxRequest) returns (GetDailyTotalTrxResponse)

// Deprecated methods.
- (void)getDailyTotalTrxInfoWithRequest:(GetDailyTotalTrxRequest *)request handler:(void(^)(GetDailyTotalTrxResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetDailyTotalTrxInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetDailyTotalTrxInfoWithRequest:(GetDailyTotalTrxRequest *)request handler:(void(^)(GetDailyTotalTrxResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetDailyTotalTrxInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetDailyTotalTrxResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getDailyTotalTrxInfoWithMessage:(GetDailyTotalTrxRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetDailyTotalTrxInfo"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetDailyTotalTrxResponse class]];
}

#pragma mark GetTrxInfoById(GetTrxInfoByIdRequest) returns (GetTrxInfoByIdResponse)

// Deprecated methods.
- (void)getTrxInfoByIdWithRequest:(GetTrxInfoByIdRequest *)request handler:(void(^)(GetTrxInfoByIdResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetTrxInfoByIdWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetTrxInfoByIdWithRequest:(GetTrxInfoByIdRequest *)request handler:(void(^)(GetTrxInfoByIdResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetTrxInfoById"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetTrxInfoByIdResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getTrxInfoByIdWithMessage:(GetTrxInfoByIdRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetTrxInfoById"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetTrxInfoByIdResponse class]];
}

#pragma mark GetTrxListByTime(GetTrxListByTimeRequest) returns (GetTrxListByTimeResponse)

// Deprecated methods.
- (void)getTrxListByTimeWithRequest:(GetTrxListByTimeRequest *)request handler:(void(^)(GetTrxListByTimeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetTrxListByTimeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetTrxListByTimeWithRequest:(GetTrxListByTimeRequest *)request handler:(void(^)(GetTrxListByTimeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetTrxListByTime"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetTrxListByTimeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getTrxListByTimeWithMessage:(GetTrxListByTimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetTrxListByTime"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetTrxListByTimeResponse class]];
}

#pragma mark GetPostListByCreateTime(GetPostListByCreateTimeRequest) returns (GetPostListByCreateTimeResponse)

// Deprecated methods.
- (void)getPostListByCreateTimeWithRequest:(GetPostListByCreateTimeRequest *)request handler:(void(^)(GetPostListByCreateTimeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPostListByCreateTimeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPostListByCreateTimeWithRequest:(GetPostListByCreateTimeRequest *)request handler:(void(^)(GetPostListByCreateTimeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPostListByCreateTime"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetPostListByCreateTimeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getPostListByCreateTimeWithMessage:(GetPostListByCreateTimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetPostListByCreateTime"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetPostListByCreateTimeResponse class]];
}

#pragma mark GetPostListByName(GetPostListByNameRequest) returns (GetPostListByCreateTimeResponse)

// Deprecated methods.
- (void)getPostListByNameWithRequest:(GetPostListByNameRequest *)request handler:(void(^)(GetPostListByCreateTimeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPostListByNameWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPostListByNameWithRequest:(GetPostListByNameRequest *)request handler:(void(^)(GetPostListByCreateTimeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPostListByName"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetPostListByCreateTimeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getPostListByNameWithMessage:(GetPostListByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetPostListByName"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetPostListByCreateTimeResponse class]];
}

#pragma mark TrxStatByHour(TrxStatByHourRequest) returns (TrxStatByHourResponse)

// Deprecated methods.
- (void)trxStatByHourWithRequest:(TrxStatByHourRequest *)request handler:(void(^)(TrxStatByHourResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToTrxStatByHourWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToTrxStatByHourWithRequest:(TrxStatByHourRequest *)request handler:(void(^)(TrxStatByHourResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"TrxStatByHour"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[TrxStatByHourResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)trxStatByHourWithMessage:(TrxStatByHourRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"TrxStatByHour"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[TrxStatByHourResponse class]];
}

#pragma mark GetUserTrxListByTime(GetUserTrxListByTimeRequest) returns (GetUserTrxListByTimeResponse)

// Deprecated methods.
- (void)getUserTrxListByTimeWithRequest:(GetUserTrxListByTimeRequest *)request handler:(void(^)(GetUserTrxListByTimeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetUserTrxListByTimeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetUserTrxListByTimeWithRequest:(GetUserTrxListByTimeRequest *)request handler:(void(^)(GetUserTrxListByTimeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetUserTrxListByTime"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetUserTrxListByTimeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getUserTrxListByTimeWithMessage:(GetUserTrxListByTimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetUserTrxListByTime"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetUserTrxListByTimeResponse class]];
}

#pragma mark GetPostInfoById(GetPostInfoByIdRequest) returns (GetPostInfoByIdResponse)

// Deprecated methods.
- (void)getPostInfoByIdWithRequest:(GetPostInfoByIdRequest *)request handler:(void(^)(GetPostInfoByIdResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPostInfoByIdWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPostInfoByIdWithRequest:(GetPostInfoByIdRequest *)request handler:(void(^)(GetPostInfoByIdResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPostInfoById"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetPostInfoByIdResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getPostInfoByIdWithMessage:(GetPostInfoByIdRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetPostInfoById"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetPostInfoByIdResponse class]];
}

#pragma mark GetContractInfo(GetContractInfoRequest) returns (GetContractInfoResponse)

// Deprecated methods.
- (void)getContractInfoWithRequest:(GetContractInfoRequest *)request handler:(void(^)(GetContractInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetContractInfoWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetContractInfoWithRequest:(GetContractInfoRequest *)request handler:(void(^)(GetContractInfoResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetContractInfo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetContractInfoResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getContractInfoWithMessage:(GetContractInfoRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetContractInfo"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetContractInfoResponse class]];
}

#pragma mark GetBlkIsIrreversibleByTxId(GetBlkIsIrreversibleByTxIdRequest) returns (GetBlkIsIrreversibleByTxIdResponse)

// Deprecated methods.
- (void)getBlkIsIrreversibleByTxIdWithRequest:(GetBlkIsIrreversibleByTxIdRequest *)request handler:(void(^)(GetBlkIsIrreversibleByTxIdResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetBlkIsIrreversibleByTxIdWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetBlkIsIrreversibleByTxIdWithRequest:(GetBlkIsIrreversibleByTxIdRequest *)request handler:(void(^)(GetBlkIsIrreversibleByTxIdResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetBlkIsIrreversibleByTxId"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetBlkIsIrreversibleByTxIdResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getBlkIsIrreversibleByTxIdWithMessage:(GetBlkIsIrreversibleByTxIdRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetBlkIsIrreversibleByTxId"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetBlkIsIrreversibleByTxIdResponse class]];
}

#pragma mark GetAccountListByCreTime(GetAccountListByCreTimeRequest) returns (GetAccountListResponse)

// Deprecated methods.
- (void)getAccountListByCreTimeWithRequest:(GetAccountListByCreTimeRequest *)request handler:(void(^)(GetAccountListResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccountListByCreTimeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccountListByCreTimeWithRequest:(GetAccountListByCreTimeRequest *)request handler:(void(^)(GetAccountListResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccountListByCreTime"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GetAccountListResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
- (GRPCUnaryProtoCall *)getAccountListByCreTimeWithMessage:(GetAccountListByCreTimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions {
  return [self RPCToMethod:@"GetAccountListByCreTime"
                   message:message
           responseHandler:handler
               callOptions:callOptions
             responseClass:[GetAccountListResponse class]];
}

@end
#endif
