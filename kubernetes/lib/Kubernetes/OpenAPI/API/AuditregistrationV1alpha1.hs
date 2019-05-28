{-
   Kubernetes

   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI Version: 3.0.1
   Kubernetes API version: v1.14.2
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : Kubernetes.OpenAPI.API.AuditregistrationV1alpha1
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.OpenAPI.API.AuditregistrationV1alpha1 where

import Kubernetes.OpenAPI.Core
import Kubernetes.OpenAPI.MimeTypes
import Kubernetes.OpenAPI.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** AuditregistrationV1alpha1

-- *** createAuditSink

-- | @POST \/apis\/auditregistration.k8s.io\/v1alpha1\/auditsinks@
-- 
-- create an AuditSink
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createAuditSink 
  :: (Consumes CreateAuditSink contentType, MimeRender contentType V1alpha1AuditSink)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1alpha1AuditSink -- ^ "body"
  -> KubernetesRequest CreateAuditSink contentType V1alpha1AuditSink accept
createAuditSink _  _ body =
  _mkRequest "POST" ["/apis/auditregistration.k8s.io/v1alpha1/auditsinks"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateAuditSink 
instance HasBodyParam CreateAuditSink V1alpha1AuditSink 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreateAuditSink Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam CreateAuditSink DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam CreateAuditSink FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `setQuery` toQuery ("fieldManager", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes CreateAuditSink mtype

-- | @application/json@
instance Produces CreateAuditSink MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateAuditSink MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces CreateAuditSink MimeYaml


-- *** deleteAuditSink

-- | @DELETE \/apis\/auditregistration.k8s.io\/v1alpha1\/auditsinks\/{name}@
-- 
-- delete an AuditSink
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteAuditSink 
  :: (Consumes DeleteAuditSink contentType)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the AuditSink
  -> KubernetesRequest DeleteAuditSink contentType V1Status accept
deleteAuditSink _  _ (Name name) =
  _mkRequest "DELETE" ["/apis/auditregistration.k8s.io/v1alpha1/auditsinks/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteAuditSink 
instance HasBodyParam DeleteAuditSink V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteAuditSink Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam DeleteAuditSink DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeleteAuditSink GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `setQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeleteAuditSink OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `setQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeleteAuditSink PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `setQuery` toQuery ("propagationPolicy", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes DeleteAuditSink mtype

-- | @application/json@
instance Produces DeleteAuditSink MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteAuditSink MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces DeleteAuditSink MimeYaml


-- *** deleteCollectionAuditSink

-- | @DELETE \/apis\/auditregistration.k8s.io\/v1alpha1\/auditsinks@
-- 
-- delete collection of AuditSink
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteCollectionAuditSink 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest DeleteCollectionAuditSink MimeNoContent V1Status accept
deleteCollectionAuditSink  _ =
  _mkRequest "DELETE" ["/apis/auditregistration.k8s.io/v1alpha1/auditsinks"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteCollectionAuditSink  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteCollectionAuditSink Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam DeleteCollectionAuditSink Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam DeleteCollectionAuditSink FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam DeleteCollectionAuditSink LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam DeleteCollectionAuditSink Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam DeleteCollectionAuditSink ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam DeleteCollectionAuditSink TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam DeleteCollectionAuditSink Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)
-- | @application/json@
instance Produces DeleteCollectionAuditSink MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteCollectionAuditSink MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces DeleteCollectionAuditSink MimeYaml


-- *** getAPIResources

-- | @GET \/apis\/auditregistration.k8s.io\/v1alpha1\/@
-- 
-- get available resources
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIResources 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIResources MimeNoContent V1APIResourceList accept
getAPIResources  _ =
  _mkRequest "GET" ["/apis/auditregistration.k8s.io/v1alpha1/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIResources  
-- | @application/json@
instance Produces GetAPIResources MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIResources MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces GetAPIResources MimeYaml


-- *** listAuditSink

-- | @GET \/apis\/auditregistration.k8s.io\/v1alpha1\/auditsinks@
-- 
-- list or watch objects of kind AuditSink
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
listAuditSink 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest ListAuditSink MimeNoContent V1alpha1AuditSinkList accept
listAuditSink  _ =
  _mkRequest "GET" ["/apis/auditregistration.k8s.io/v1alpha1/auditsinks"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ListAuditSink  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ListAuditSink Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server, the server will respond with a 410 ResourceExpired error together with a continue token. If the client needs a consistent list, it must restart their list without the continue field. Otherwise, the client may send another list request with the token received with the 410 error, the server will respond with a list starting from the next key, but from the latest snapshot, which is inconsistent from the previous list results - objects that are created, modified, or deleted after the first list request will be included in the response, as long as their keys are after the \"next key\".  This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam ListAuditSink Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam ListAuditSink FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam ListAuditSink LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam ListAuditSink Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam ListAuditSink ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call. This limits the duration of the call, regardless of any activity or inactivity.
instance HasOptionalParam ListAuditSink TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam ListAuditSink Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)
-- | @application/json@
instance Produces ListAuditSink MimeJSON
-- | @application/json;stream=watch@
instance Produces ListAuditSink MimeJsonstreamwatch
-- | @application/vnd.kubernetes.protobuf@
instance Produces ListAuditSink MimeVndKubernetesProtobuf
-- | @application/vnd.kubernetes.protobuf;stream=watch@
instance Produces ListAuditSink MimeVndKubernetesProtobufstreamwatch
-- | @application/yaml@
instance Produces ListAuditSink MimeYaml


-- *** patchAuditSink

-- | @PATCH \/apis\/auditregistration.k8s.io\/v1alpha1\/auditsinks\/{name}@
-- 
-- partially update the specified AuditSink
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
patchAuditSink 
  :: (Consumes PatchAuditSink contentType, MimeRender contentType Body)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Body -- ^ "body"
  -> Name -- ^ "name" -  name of the AuditSink
  -> KubernetesRequest PatchAuditSink contentType V1alpha1AuditSink accept
patchAuditSink _  _ body (Name name) =
  _mkRequest "PATCH" ["/apis/auditregistration.k8s.io/v1alpha1/auditsinks/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data PatchAuditSink 
instance HasBodyParam PatchAuditSink Body 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam PatchAuditSink Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam PatchAuditSink DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint. This field is required for apply requests (application/apply-patch) but optional for non-apply patch types (JsonPatch, MergePatch, StrategicMergePatch).
instance HasOptionalParam PatchAuditSink FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `setQuery` toQuery ("fieldManager", Just xs)

-- | /Optional Param/ "force" - Force is going to \"force\" Apply requests. It means user will re-acquire conflicting fields owned by other people. Force flag must be unset for non-apply patch requests.
instance HasOptionalParam PatchAuditSink Force where
  applyOptionalParam req (Force xs) =
    req `setQuery` toQuery ("force", Just xs)

-- | @application/json-patch+json@
instance Consumes PatchAuditSink MimeJsonPatchjson
-- | @application/merge-patch+json@
instance Consumes PatchAuditSink MimeMergePatchjson
-- | @application/strategic-merge-patch+json@
instance Consumes PatchAuditSink MimeStrategicMergePatchjson

-- | @application/json@
instance Produces PatchAuditSink MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces PatchAuditSink MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces PatchAuditSink MimeYaml


-- *** readAuditSink

-- | @GET \/apis\/auditregistration.k8s.io\/v1alpha1\/auditsinks\/{name}@
-- 
-- read the specified AuditSink
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
readAuditSink 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the AuditSink
  -> KubernetesRequest ReadAuditSink MimeNoContent V1alpha1AuditSink accept
readAuditSink  _ (Name name) =
  _mkRequest "GET" ["/apis/auditregistration.k8s.io/v1alpha1/auditsinks/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ReadAuditSink  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReadAuditSink Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "exact" - Should the export be exact.  Exact export maintains cluster-specific fields like 'Namespace'. Deprecated. Planned for removal in 1.18.
instance HasOptionalParam ReadAuditSink Exact where
  applyOptionalParam req (Exact xs) =
    req `setQuery` toQuery ("exact", Just xs)

-- | /Optional Param/ "export" - Should this value be exported.  Export strips fields that a user can not specify. Deprecated. Planned for removal in 1.18.
instance HasOptionalParam ReadAuditSink Export where
  applyOptionalParam req (Export xs) =
    req `setQuery` toQuery ("export", Just xs)
-- | @application/json@
instance Produces ReadAuditSink MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReadAuditSink MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReadAuditSink MimeYaml


-- *** replaceAuditSink

-- | @PUT \/apis\/auditregistration.k8s.io\/v1alpha1\/auditsinks\/{name}@
-- 
-- replace the specified AuditSink
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replaceAuditSink 
  :: (Consumes ReplaceAuditSink contentType, MimeRender contentType V1alpha1AuditSink)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1alpha1AuditSink -- ^ "body"
  -> Name -- ^ "name" -  name of the AuditSink
  -> KubernetesRequest ReplaceAuditSink contentType V1alpha1AuditSink accept
replaceAuditSink _  _ body (Name name) =
  _mkRequest "PUT" ["/apis/auditregistration.k8s.io/v1alpha1/auditsinks/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplaceAuditSink 
instance HasBodyParam ReplaceAuditSink V1alpha1AuditSink 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReplaceAuditSink Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "dryRun" - When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed
instance HasOptionalParam ReplaceAuditSink DryRun where
  applyOptionalParam req (DryRun xs) =
    req `setQuery` toQuery ("dryRun", Just xs)

-- | /Optional Param/ "fieldManager" - fieldManager is a name associated with the actor or entity that is making these changes. The value must be less than or 128 characters long, and only contain printable characters, as defined by https://golang.org/pkg/unicode/#IsPrint.
instance HasOptionalParam ReplaceAuditSink FieldManager where
  applyOptionalParam req (FieldManager xs) =
    req `setQuery` toQuery ("fieldManager", Just xs)
    
-- | @*/*@
instance MimeType mtype => Consumes ReplaceAuditSink mtype

-- | @application/json@
instance Produces ReplaceAuditSink MimeJSON
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplaceAuditSink MimeVndKubernetesProtobuf
-- | @application/yaml@
instance Produces ReplaceAuditSink MimeYaml

