#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "Grpc.pbobjc.h"
#endif

#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>
#endif

@class AccountCashoutResponse;
@class AccountResponse;
@class AccountRewardResponse;
@class BlockCashoutResponse;
@class BroadcastTrxRequest;
@class BroadcastTrxResponse;
@class GetAccountByNameRequest;
@class GetAccountCashoutRequest;
@class GetAccountListByBalanceRequest;
@class GetAccountListByCreTimeRequest;
@class GetAccountListResponse;
@class GetAccountRewardByNameRequest;
@class GetBlkIsIrreversibleByTxIdRequest;
@class GetBlkIsIrreversibleByTxIdResponse;
@class GetBlockCashoutRequest;
@class GetBlockListRequest;
@class GetBlockListResponse;
@class GetBlockTransactionsByNumRequest;
@class GetBlockTransactionsByNumResponse;
@class GetChainStateResponse;
@class GetContractInfoRequest;
@class GetContractInfoResponse;
@class GetDailyTotalTrxRequest;
@class GetDailyTotalTrxResponse;
@class GetFollowCountByNameRequest;
@class GetFollowCountByNameResponse;
@class GetFollowerListByNameRequest;
@class GetFollowerListByNameResponse;
@class GetFollowingListByNameRequest;
@class GetFollowingListByNameResponse;
@class GetPostInfoByIdRequest;
@class GetPostInfoByIdResponse;
@class GetPostListByCreateTimeRequest;
@class GetPostListByCreateTimeResponse;
@class GetPostListByCreatedRequest;
@class GetPostListByCreatedResponse;
@class GetPostListByNameRequest;
@class GetReplyListByPostIdRequest;
@class GetReplyListByPostIdResponse;
@class GetSignedBlockRequest;
@class GetSignedBlockResponse;
@class GetStatResponse;
@class GetTableContentRequest;
@class GetTrxInfoByIdRequest;
@class GetTrxInfoByIdResponse;
@class GetTrxListByTimeRequest;
@class GetTrxListByTimeResponse;
@class GetUserTrxListByTimeRequest;
@class GetUserTrxListByTimeResponse;
@class GetWitnessListRequest;
@class GetWitnessListResponse;
@class NonParamsRequest;
@class TableContentResponse;
@class TrxStatByHourRequest;
@class TrxStatByHourResponse;

#if !defined(GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO) || !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  #import "prototype/Type.pbobjc.h"
  #import "prototype/MultiId.pbobjc.h"
  #import "prototype/Transaction.pbobjc.h"
#endif

@class GRPCProtoCall;
@class GRPCUnaryProtoCall;
@class GRPCStreamingProtoCall;
@class GRPCCallOptions;
@protocol GRPCProtoResponseHandler;


NS_ASSUME_NONNULL_BEGIN

@protocol ApiService2 <NSObject>

#pragma mark QueryTableContent(GetTableContentRequest) returns (TableContentResponse)

- (GRPCUnaryProtoCall *)queryTableContentWithMessage:(GetTableContentRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccountByName(GetAccountByNameRequest) returns (AccountResponse)

- (GRPCUnaryProtoCall *)getAccountByNameWithMessage:(GetAccountByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccountRewardByName(GetAccountRewardByNameRequest) returns (AccountRewardResponse)

- (GRPCUnaryProtoCall *)getAccountRewardByNameWithMessage:(GetAccountRewardByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccountCashout(GetAccountCashoutRequest) returns (AccountCashoutResponse)

- (GRPCUnaryProtoCall *)getAccountCashoutWithMessage:(GetAccountCashoutRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetBlockCashout(GetBlockCashoutRequest) returns (BlockCashoutResponse)

- (GRPCUnaryProtoCall *)getBlockCashoutWithMessage:(GetBlockCashoutRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetFollowerListByName(GetFollowerListByNameRequest) returns (GetFollowerListByNameResponse)

- (GRPCUnaryProtoCall *)getFollowerListByNameWithMessage:(GetFollowerListByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetFollowingListByName(GetFollowingListByNameRequest) returns (GetFollowingListByNameResponse)

- (GRPCUnaryProtoCall *)getFollowingListByNameWithMessage:(GetFollowingListByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetFollowCountByName(GetFollowCountByNameRequest) returns (GetFollowCountByNameResponse)

- (GRPCUnaryProtoCall *)getFollowCountByNameWithMessage:(GetFollowCountByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetWitnessList(GetWitnessListRequest) returns (GetWitnessListResponse)

- (GRPCUnaryProtoCall *)getWitnessListWithMessage:(GetWitnessListRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetPostListByCreated(GetPostListByCreatedRequest) returns (GetPostListByCreatedResponse)

- (GRPCUnaryProtoCall *)getPostListByCreatedWithMessage:(GetPostListByCreatedRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetReplyListByPostId(GetReplyListByPostIdRequest) returns (GetReplyListByPostIdResponse)

- (GRPCUnaryProtoCall *)getReplyListByPostIdWithMessage:(GetReplyListByPostIdRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetBlockTransactionsByNum(GetBlockTransactionsByNumRequest) returns (GetBlockTransactionsByNumResponse)

- (GRPCUnaryProtoCall *)getBlockTransactionsByNumWithMessage:(GetBlockTransactionsByNumRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetChainState(NonParamsRequest) returns (GetChainStateResponse)

- (GRPCUnaryProtoCall *)getChainStateWithMessage:(NonParamsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetStatisticsInfo(NonParamsRequest) returns (GetStatResponse)

- (GRPCUnaryProtoCall *)getStatisticsInfoWithMessage:(NonParamsRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark BroadcastTrx(BroadcastTrxRequest) returns (BroadcastTrxResponse)

- (GRPCUnaryProtoCall *)broadcastTrxWithMessage:(BroadcastTrxRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetBlockList(GetBlockListRequest) returns (GetBlockListResponse)

- (GRPCUnaryProtoCall *)getBlockListWithMessage:(GetBlockListRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetSignedBlock(GetSignedBlockRequest) returns (GetSignedBlockResponse)

- (GRPCUnaryProtoCall *)getSignedBlockWithMessage:(GetSignedBlockRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccountListByBalance(GetAccountListByBalanceRequest) returns (GetAccountListResponse)

- (GRPCUnaryProtoCall *)getAccountListByBalanceWithMessage:(GetAccountListByBalanceRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetDailyTotalTrxInfo(GetDailyTotalTrxRequest) returns (GetDailyTotalTrxResponse)

- (GRPCUnaryProtoCall *)getDailyTotalTrxInfoWithMessage:(GetDailyTotalTrxRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetTrxInfoById(GetTrxInfoByIdRequest) returns (GetTrxInfoByIdResponse)

- (GRPCUnaryProtoCall *)getTrxInfoByIdWithMessage:(GetTrxInfoByIdRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetTrxListByTime(GetTrxListByTimeRequest) returns (GetTrxListByTimeResponse)

- (GRPCUnaryProtoCall *)getTrxListByTimeWithMessage:(GetTrxListByTimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetPostListByCreateTime(GetPostListByCreateTimeRequest) returns (GetPostListByCreateTimeResponse)

- (GRPCUnaryProtoCall *)getPostListByCreateTimeWithMessage:(GetPostListByCreateTimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetPostListByName(GetPostListByNameRequest) returns (GetPostListByCreateTimeResponse)

- (GRPCUnaryProtoCall *)getPostListByNameWithMessage:(GetPostListByNameRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark TrxStatByHour(TrxStatByHourRequest) returns (TrxStatByHourResponse)

- (GRPCUnaryProtoCall *)trxStatByHourWithMessage:(TrxStatByHourRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetUserTrxListByTime(GetUserTrxListByTimeRequest) returns (GetUserTrxListByTimeResponse)

- (GRPCUnaryProtoCall *)getUserTrxListByTimeWithMessage:(GetUserTrxListByTimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetPostInfoById(GetPostInfoByIdRequest) returns (GetPostInfoByIdResponse)

- (GRPCUnaryProtoCall *)getPostInfoByIdWithMessage:(GetPostInfoByIdRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetContractInfo(GetContractInfoRequest) returns (GetContractInfoResponse)

- (GRPCUnaryProtoCall *)getContractInfoWithMessage:(GetContractInfoRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetBlkIsIrreversibleByTxId(GetBlkIsIrreversibleByTxIdRequest) returns (GetBlkIsIrreversibleByTxIdResponse)

- (GRPCUnaryProtoCall *)getBlkIsIrreversibleByTxIdWithMessage:(GetBlkIsIrreversibleByTxIdRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

#pragma mark GetAccountListByCreTime(GetAccountListByCreTimeRequest) returns (GetAccountListResponse)

- (GRPCUnaryProtoCall *)getAccountListByCreTimeWithMessage:(GetAccountListByCreTimeRequest *)message responseHandler:(id<GRPCProtoResponseHandler>)handler callOptions:(GRPCCallOptions *_Nullable)callOptions;

@end

/**
 * The methods in this protocol belong to a set of old APIs that have been deprecated. They do not
 * recognize call options provided in the initializer. Using the v2 protocol is recommended.
 */
@protocol ApiService <NSObject>

#pragma mark QueryTableContent(GetTableContentRequest) returns (TableContentResponse)

- (void)queryTableContentWithRequest:(GetTableContentRequest *)request handler:(void(^)(TableContentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToQueryTableContentWithRequest:(GetTableContentRequest *)request handler:(void(^)(TableContentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccountByName(GetAccountByNameRequest) returns (AccountResponse)

- (void)getAccountByNameWithRequest:(GetAccountByNameRequest *)request handler:(void(^)(AccountResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAccountByNameWithRequest:(GetAccountByNameRequest *)request handler:(void(^)(AccountResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccountRewardByName(GetAccountRewardByNameRequest) returns (AccountRewardResponse)

- (void)getAccountRewardByNameWithRequest:(GetAccountRewardByNameRequest *)request handler:(void(^)(AccountRewardResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAccountRewardByNameWithRequest:(GetAccountRewardByNameRequest *)request handler:(void(^)(AccountRewardResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccountCashout(GetAccountCashoutRequest) returns (AccountCashoutResponse)

- (void)getAccountCashoutWithRequest:(GetAccountCashoutRequest *)request handler:(void(^)(AccountCashoutResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAccountCashoutWithRequest:(GetAccountCashoutRequest *)request handler:(void(^)(AccountCashoutResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetBlockCashout(GetBlockCashoutRequest) returns (BlockCashoutResponse)

- (void)getBlockCashoutWithRequest:(GetBlockCashoutRequest *)request handler:(void(^)(BlockCashoutResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetBlockCashoutWithRequest:(GetBlockCashoutRequest *)request handler:(void(^)(BlockCashoutResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetFollowerListByName(GetFollowerListByNameRequest) returns (GetFollowerListByNameResponse)

- (void)getFollowerListByNameWithRequest:(GetFollowerListByNameRequest *)request handler:(void(^)(GetFollowerListByNameResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetFollowerListByNameWithRequest:(GetFollowerListByNameRequest *)request handler:(void(^)(GetFollowerListByNameResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetFollowingListByName(GetFollowingListByNameRequest) returns (GetFollowingListByNameResponse)

- (void)getFollowingListByNameWithRequest:(GetFollowingListByNameRequest *)request handler:(void(^)(GetFollowingListByNameResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetFollowingListByNameWithRequest:(GetFollowingListByNameRequest *)request handler:(void(^)(GetFollowingListByNameResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetFollowCountByName(GetFollowCountByNameRequest) returns (GetFollowCountByNameResponse)

- (void)getFollowCountByNameWithRequest:(GetFollowCountByNameRequest *)request handler:(void(^)(GetFollowCountByNameResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetFollowCountByNameWithRequest:(GetFollowCountByNameRequest *)request handler:(void(^)(GetFollowCountByNameResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetWitnessList(GetWitnessListRequest) returns (GetWitnessListResponse)

- (void)getWitnessListWithRequest:(GetWitnessListRequest *)request handler:(void(^)(GetWitnessListResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWitnessListWithRequest:(GetWitnessListRequest *)request handler:(void(^)(GetWitnessListResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetPostListByCreated(GetPostListByCreatedRequest) returns (GetPostListByCreatedResponse)

- (void)getPostListByCreatedWithRequest:(GetPostListByCreatedRequest *)request handler:(void(^)(GetPostListByCreatedResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPostListByCreatedWithRequest:(GetPostListByCreatedRequest *)request handler:(void(^)(GetPostListByCreatedResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetReplyListByPostId(GetReplyListByPostIdRequest) returns (GetReplyListByPostIdResponse)

- (void)getReplyListByPostIdWithRequest:(GetReplyListByPostIdRequest *)request handler:(void(^)(GetReplyListByPostIdResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetReplyListByPostIdWithRequest:(GetReplyListByPostIdRequest *)request handler:(void(^)(GetReplyListByPostIdResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetBlockTransactionsByNum(GetBlockTransactionsByNumRequest) returns (GetBlockTransactionsByNumResponse)

- (void)getBlockTransactionsByNumWithRequest:(GetBlockTransactionsByNumRequest *)request handler:(void(^)(GetBlockTransactionsByNumResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetBlockTransactionsByNumWithRequest:(GetBlockTransactionsByNumRequest *)request handler:(void(^)(GetBlockTransactionsByNumResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetChainState(NonParamsRequest) returns (GetChainStateResponse)

- (void)getChainStateWithRequest:(NonParamsRequest *)request handler:(void(^)(GetChainStateResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetChainStateWithRequest:(NonParamsRequest *)request handler:(void(^)(GetChainStateResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetStatisticsInfo(NonParamsRequest) returns (GetStatResponse)

- (void)getStatisticsInfoWithRequest:(NonParamsRequest *)request handler:(void(^)(GetStatResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetStatisticsInfoWithRequest:(NonParamsRequest *)request handler:(void(^)(GetStatResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark BroadcastTrx(BroadcastTrxRequest) returns (BroadcastTrxResponse)

- (void)broadcastTrxWithRequest:(BroadcastTrxRequest *)request handler:(void(^)(BroadcastTrxResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBroadcastTrxWithRequest:(BroadcastTrxRequest *)request handler:(void(^)(BroadcastTrxResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetBlockList(GetBlockListRequest) returns (GetBlockListResponse)

- (void)getBlockListWithRequest:(GetBlockListRequest *)request handler:(void(^)(GetBlockListResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetBlockListWithRequest:(GetBlockListRequest *)request handler:(void(^)(GetBlockListResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetSignedBlock(GetSignedBlockRequest) returns (GetSignedBlockResponse)

- (void)getSignedBlockWithRequest:(GetSignedBlockRequest *)request handler:(void(^)(GetSignedBlockResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetSignedBlockWithRequest:(GetSignedBlockRequest *)request handler:(void(^)(GetSignedBlockResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccountListByBalance(GetAccountListByBalanceRequest) returns (GetAccountListResponse)

- (void)getAccountListByBalanceWithRequest:(GetAccountListByBalanceRequest *)request handler:(void(^)(GetAccountListResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAccountListByBalanceWithRequest:(GetAccountListByBalanceRequest *)request handler:(void(^)(GetAccountListResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetDailyTotalTrxInfo(GetDailyTotalTrxRequest) returns (GetDailyTotalTrxResponse)

- (void)getDailyTotalTrxInfoWithRequest:(GetDailyTotalTrxRequest *)request handler:(void(^)(GetDailyTotalTrxResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetDailyTotalTrxInfoWithRequest:(GetDailyTotalTrxRequest *)request handler:(void(^)(GetDailyTotalTrxResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetTrxInfoById(GetTrxInfoByIdRequest) returns (GetTrxInfoByIdResponse)

- (void)getTrxInfoByIdWithRequest:(GetTrxInfoByIdRequest *)request handler:(void(^)(GetTrxInfoByIdResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetTrxInfoByIdWithRequest:(GetTrxInfoByIdRequest *)request handler:(void(^)(GetTrxInfoByIdResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetTrxListByTime(GetTrxListByTimeRequest) returns (GetTrxListByTimeResponse)

- (void)getTrxListByTimeWithRequest:(GetTrxListByTimeRequest *)request handler:(void(^)(GetTrxListByTimeResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetTrxListByTimeWithRequest:(GetTrxListByTimeRequest *)request handler:(void(^)(GetTrxListByTimeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetPostListByCreateTime(GetPostListByCreateTimeRequest) returns (GetPostListByCreateTimeResponse)

- (void)getPostListByCreateTimeWithRequest:(GetPostListByCreateTimeRequest *)request handler:(void(^)(GetPostListByCreateTimeResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPostListByCreateTimeWithRequest:(GetPostListByCreateTimeRequest *)request handler:(void(^)(GetPostListByCreateTimeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetPostListByName(GetPostListByNameRequest) returns (GetPostListByCreateTimeResponse)

- (void)getPostListByNameWithRequest:(GetPostListByNameRequest *)request handler:(void(^)(GetPostListByCreateTimeResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPostListByNameWithRequest:(GetPostListByNameRequest *)request handler:(void(^)(GetPostListByCreateTimeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark TrxStatByHour(TrxStatByHourRequest) returns (TrxStatByHourResponse)

- (void)trxStatByHourWithRequest:(TrxStatByHourRequest *)request handler:(void(^)(TrxStatByHourResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToTrxStatByHourWithRequest:(TrxStatByHourRequest *)request handler:(void(^)(TrxStatByHourResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetUserTrxListByTime(GetUserTrxListByTimeRequest) returns (GetUserTrxListByTimeResponse)

- (void)getUserTrxListByTimeWithRequest:(GetUserTrxListByTimeRequest *)request handler:(void(^)(GetUserTrxListByTimeResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetUserTrxListByTimeWithRequest:(GetUserTrxListByTimeRequest *)request handler:(void(^)(GetUserTrxListByTimeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetPostInfoById(GetPostInfoByIdRequest) returns (GetPostInfoByIdResponse)

- (void)getPostInfoByIdWithRequest:(GetPostInfoByIdRequest *)request handler:(void(^)(GetPostInfoByIdResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPostInfoByIdWithRequest:(GetPostInfoByIdRequest *)request handler:(void(^)(GetPostInfoByIdResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetContractInfo(GetContractInfoRequest) returns (GetContractInfoResponse)

- (void)getContractInfoWithRequest:(GetContractInfoRequest *)request handler:(void(^)(GetContractInfoResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetContractInfoWithRequest:(GetContractInfoRequest *)request handler:(void(^)(GetContractInfoResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetBlkIsIrreversibleByTxId(GetBlkIsIrreversibleByTxIdRequest) returns (GetBlkIsIrreversibleByTxIdResponse)

- (void)getBlkIsIrreversibleByTxIdWithRequest:(GetBlkIsIrreversibleByTxIdRequest *)request handler:(void(^)(GetBlkIsIrreversibleByTxIdResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetBlkIsIrreversibleByTxIdWithRequest:(GetBlkIsIrreversibleByTxIdRequest *)request handler:(void(^)(GetBlkIsIrreversibleByTxIdResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetAccountListByCreTime(GetAccountListByCreTimeRequest) returns (GetAccountListResponse)

- (void)getAccountListByCreTimeWithRequest:(GetAccountListByCreTimeRequest *)request handler:(void(^)(GetAccountListResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAccountListByCreTimeWithRequest:(GetAccountListByCreTimeRequest *)request handler:(void(^)(GetAccountListResponse *_Nullable response, NSError *_Nullable error))handler;


@end


#if !defined(GPB_GRPC_PROTOCOL_ONLY) || !GPB_GRPC_PROTOCOL_ONLY
/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ApiService : GRPCProtoService<ApiService, ApiService2>
- (instancetype)initWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host callOptions:(GRPCCallOptions *_Nullable)callOptions;
// The following methods belong to a set of old APIs that have been deprecated.
- (instancetype)initWithHost:(NSString *)host;
+ (instancetype)serviceWithHost:(NSString *)host;
@end
#endif

NS_ASSUME_NONNULL_END

