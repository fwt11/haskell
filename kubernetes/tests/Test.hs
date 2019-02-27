{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE PartialTypeSignatures #-}

module Main where

import Data.Typeable (Proxy(..))
import Test.Hspec
import Test.Hspec.QuickCheck

import PropMime
import Instances ()

import Kubernetes.OpenAPI.Model
import Kubernetes.OpenAPI.MimeTypes

main :: IO ()
main =
  hspec $ modifyMaxSize (const 5) $ do
    describe "JSON instances" $ do
      pure ()
      propMimeEq MimeJSON (Proxy :: Proxy AdmissionregistrationV1beta1ServiceReference)
      propMimeEq MimeJSON (Proxy :: Proxy ApiregistrationV1beta1ServiceReference)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1Deployment)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1DeploymentCondition)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1DeploymentList)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1DeploymentRollback)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1DeploymentSpec)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1DeploymentStatus)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1DeploymentStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1RollbackConfig)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1RollingUpdateDeployment)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1Scale)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1ScaleSpec)
      propMimeEq MimeJSON (Proxy :: Proxy AppsV1beta1ScaleStatus)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1Deployment)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1DeploymentCondition)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1DeploymentList)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1DeploymentRollback)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1DeploymentSpec)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1DeploymentStatus)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1DeploymentStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1RollbackConfig)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1RollingUpdateDeployment)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1Scale)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1ScaleSpec)
      propMimeEq MimeJSON (Proxy :: Proxy ExtensionsV1beta1ScaleStatus)
      propMimeEq MimeJSON (Proxy :: Proxy RuntimeRawExtension)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIGroup)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIGroupList)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIResource)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIResourceList)
      propMimeEq MimeJSON (Proxy :: Proxy V1APIVersions)
      propMimeEq MimeJSON (Proxy :: Proxy V1AWSElasticBlockStoreVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Affinity)
      propMimeEq MimeJSON (Proxy :: Proxy V1AggregationRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1AttachedVolume)
      propMimeEq MimeJSON (Proxy :: Proxy V1AzureDiskVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1AzureFilePersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1AzureFileVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Binding)
      propMimeEq MimeJSON (Proxy :: Proxy V1CSIPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Capabilities)
      propMimeEq MimeJSON (Proxy :: Proxy V1CephFSPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1CephFSVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1CinderVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ClientIPConfig)
      propMimeEq MimeJSON (Proxy :: Proxy V1ClusterRole)
      propMimeEq MimeJSON (Proxy :: Proxy V1ClusterRoleBinding)
      propMimeEq MimeJSON (Proxy :: Proxy V1ClusterRoleBindingList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ClusterRoleList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ComponentCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1ComponentStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1ComponentStatusList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMap)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapEnvSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapKeySelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapProjection)
      propMimeEq MimeJSON (Proxy :: Proxy V1ConfigMapVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Container)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerImage)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerPort)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerState)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerStateRunning)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerStateTerminated)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerStateWaiting)
      propMimeEq MimeJSON (Proxy :: Proxy V1ContainerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1ControllerRevision)
      propMimeEq MimeJSON (Proxy :: Proxy V1ControllerRevisionList)
      propMimeEq MimeJSON (Proxy :: Proxy V1CrossVersionObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonEndpoint)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1DaemonSetUpdateStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeleteOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1Deployment)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeploymentCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeploymentList)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeploymentSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeploymentStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1DeploymentStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1DownwardAPIProjection)
      propMimeEq MimeJSON (Proxy :: Proxy V1DownwardAPIVolumeFile)
      propMimeEq MimeJSON (Proxy :: Proxy V1DownwardAPIVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1EmptyDirVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointAddress)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointPort)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointSubset)
      propMimeEq MimeJSON (Proxy :: Proxy V1Endpoints)
      propMimeEq MimeJSON (Proxy :: Proxy V1EndpointsList)
      propMimeEq MimeJSON (Proxy :: Proxy V1EnvFromSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1EnvVar)
      propMimeEq MimeJSON (Proxy :: Proxy V1EnvVarSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Event)
      propMimeEq MimeJSON (Proxy :: Proxy V1EventList)
      propMimeEq MimeJSON (Proxy :: Proxy V1EventSeries)
      propMimeEq MimeJSON (Proxy :: Proxy V1EventSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ExecAction)
      propMimeEq MimeJSON (Proxy :: Proxy V1FCVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1FlexVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1FlockerVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1GCEPersistentDiskVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1GitRepoVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1GlusterfsVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1GroupVersionForDiscovery)
      propMimeEq MimeJSON (Proxy :: Proxy V1HTTPGetAction)
      propMimeEq MimeJSON (Proxy :: Proxy V1HTTPHeader)
      propMimeEq MimeJSON (Proxy :: Proxy V1Handler)
      propMimeEq MimeJSON (Proxy :: Proxy V1HorizontalPodAutoscaler)
      propMimeEq MimeJSON (Proxy :: Proxy V1HorizontalPodAutoscalerList)
      propMimeEq MimeJSON (Proxy :: Proxy V1HorizontalPodAutoscalerSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1HorizontalPodAutoscalerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1HostAlias)
      propMimeEq MimeJSON (Proxy :: Proxy V1HostPathVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1IPBlock)
      propMimeEq MimeJSON (Proxy :: Proxy V1ISCSIPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ISCSIVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Initializer)
      propMimeEq MimeJSON (Proxy :: Proxy V1Initializers)
      propMimeEq MimeJSON (Proxy :: Proxy V1Job)
      propMimeEq MimeJSON (Proxy :: Proxy V1JobCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1JobList)
      propMimeEq MimeJSON (Proxy :: Proxy V1JobSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1JobStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1KeyToPath)
      propMimeEq MimeJSON (Proxy :: Proxy V1LabelSelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1LabelSelectorRequirement)
      propMimeEq MimeJSON (Proxy :: Proxy V1Lifecycle)
      propMimeEq MimeJSON (Proxy :: Proxy V1LimitRange)
      propMimeEq MimeJSON (Proxy :: Proxy V1LimitRangeItem)
      propMimeEq MimeJSON (Proxy :: Proxy V1LimitRangeList)
      propMimeEq MimeJSON (Proxy :: Proxy V1LimitRangeSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ListMeta)
      propMimeEq MimeJSON (Proxy :: Proxy V1LoadBalancerIngress)
      propMimeEq MimeJSON (Proxy :: Proxy V1LoadBalancerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1LocalObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1LocalSubjectAccessReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1LocalVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1NFSVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Namespace)
      propMimeEq MimeJSON (Proxy :: Proxy V1NamespaceList)
      propMimeEq MimeJSON (Proxy :: Proxy V1NamespaceSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1NamespaceStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicy)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicyEgressRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicyIngressRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicyList)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicyPeer)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicyPort)
      propMimeEq MimeJSON (Proxy :: Proxy V1NetworkPolicySpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1Node)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeAddress)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeAffinity)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeConfigSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeDaemonEndpoints)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeList)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeSelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeSelectorRequirement)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeSelectorTerm)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1NodeSystemInfo)
      propMimeEq MimeJSON (Proxy :: Proxy V1NonResourceAttributes)
      propMimeEq MimeJSON (Proxy :: Proxy V1NonResourceRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1ObjectFieldSelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1ObjectMeta)
      propMimeEq MimeJSON (Proxy :: Proxy V1ObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1OwnerReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolume)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaim)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimList)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeClaimVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeList)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1PersistentVolumeStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1PhotonPersistentDiskVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Pod)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodAffinity)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodAffinityTerm)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodAntiAffinity)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodDNSConfig)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodDNSConfigOption)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodList)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodSecurityContext)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodTemplate)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodTemplateList)
      propMimeEq MimeJSON (Proxy :: Proxy V1PodTemplateSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1PolicyRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1PortworxVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Preconditions)
      propMimeEq MimeJSON (Proxy :: Proxy V1PreferredSchedulingTerm)
      propMimeEq MimeJSON (Proxy :: Proxy V1Probe)
      propMimeEq MimeJSON (Proxy :: Proxy V1ProjectedVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1QuobyteVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1RBDPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1RBDVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicaSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicaSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicaSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicaSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicaSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicationController)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicationControllerCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicationControllerList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicationControllerSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ReplicationControllerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceAttributes)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceFieldSelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceQuota)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceQuotaList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceQuotaSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceQuotaStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceRequirements)
      propMimeEq MimeJSON (Proxy :: Proxy V1ResourceRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1Role)
      propMimeEq MimeJSON (Proxy :: Proxy V1RoleBinding)
      propMimeEq MimeJSON (Proxy :: Proxy V1RoleBindingList)
      propMimeEq MimeJSON (Proxy :: Proxy V1RoleList)
      propMimeEq MimeJSON (Proxy :: Proxy V1RoleRef)
      propMimeEq MimeJSON (Proxy :: Proxy V1RollingUpdateDaemonSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1RollingUpdateDeployment)
      propMimeEq MimeJSON (Proxy :: Proxy V1RollingUpdateStatefulSetStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1SELinuxOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1Scale)
      propMimeEq MimeJSON (Proxy :: Proxy V1ScaleIOPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ScaleIOVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1ScaleSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ScaleStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1Secret)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretEnvSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretKeySelector)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretList)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretProjection)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretReference)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecretVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1SecurityContext)
      propMimeEq MimeJSON (Proxy :: Proxy V1SelfSubjectAccessReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1SelfSubjectAccessReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1SelfSubjectRulesReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1SelfSubjectRulesReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServerAddressByClientCIDR)
      propMimeEq MimeJSON (Proxy :: Proxy V1Service)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceAccount)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceAccountList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceList)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServicePort)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1ServiceStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1SessionAffinityConfig)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatefulSetUpdateStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1Status)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatusCause)
      propMimeEq MimeJSON (Proxy :: Proxy V1StatusDetails)
      propMimeEq MimeJSON (Proxy :: Proxy V1StorageClass)
      propMimeEq MimeJSON (Proxy :: Proxy V1StorageClassList)
      propMimeEq MimeJSON (Proxy :: Proxy V1StorageOSPersistentVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1StorageOSVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1Subject)
      propMimeEq MimeJSON (Proxy :: Proxy V1SubjectAccessReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1SubjectAccessReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1SubjectAccessReviewStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1SubjectRulesReviewStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1TCPSocketAction)
      propMimeEq MimeJSON (Proxy :: Proxy V1Taint)
      propMimeEq MimeJSON (Proxy :: Proxy V1TokenReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1TokenReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1TokenReviewStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1Toleration)
      propMimeEq MimeJSON (Proxy :: Proxy V1UserInfo)
      propMimeEq MimeJSON (Proxy :: Proxy V1Volume)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeDevice)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeMount)
      propMimeEq MimeJSON (Proxy :: Proxy V1VolumeProjection)
      propMimeEq MimeJSON (Proxy :: Proxy V1VsphereVirtualDiskVolumeSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1WatchEvent)
      propMimeEq MimeJSON (Proxy :: Proxy V1WeightedPodAffinityTerm)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1AggregationRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1ClusterRole)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1ClusterRoleBinding)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1ClusterRoleBindingList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1ClusterRoleList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1Initializer)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1InitializerConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1InitializerConfigurationList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1PodPreset)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1PodPresetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1PodPresetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1PolicyRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1PriorityClass)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1PriorityClassList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1Role)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1RoleBinding)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1RoleBindingList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1RoleList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1RoleRef)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1Rule)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1Subject)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1VolumeAttachment)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1VolumeAttachmentList)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1VolumeAttachmentSource)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1VolumeAttachmentSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1VolumeAttachmentStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1alpha1VolumeError)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1APIService)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1APIServiceCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1APIServiceList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1APIServiceSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1APIServiceStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1AggregationRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1AllowedFlexVolume)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1AllowedHostPath)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CertificateSigningRequest)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CertificateSigningRequestCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CertificateSigningRequestList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CertificateSigningRequestSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CertificateSigningRequestStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ClusterRole)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ClusterRoleBinding)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ClusterRoleBindingList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ClusterRoleList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ControllerRevision)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ControllerRevisionList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CronJob)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CronJobList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CronJobSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CronJobStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CustomResourceDefinition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CustomResourceDefinitionCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CustomResourceDefinitionList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CustomResourceDefinitionNames)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CustomResourceDefinitionSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CustomResourceDefinitionStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1CustomResourceValidation)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1DaemonSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1DaemonSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1DaemonSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1DaemonSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1DaemonSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1DaemonSetUpdateStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Event)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1EventList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1EventSeries)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Eviction)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ExternalDocumentation)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1FSGroupStrategyOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1HTTPIngressPath)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1HTTPIngressRuleValue)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1HostPortRange)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1IDRange)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1IPBlock)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Ingress)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1IngressBackend)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1IngressList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1IngressRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1IngressSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1IngressStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1IngressTLS)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1JSON)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1JSONSchemaProps)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1JSONSchemaPropsOrArray)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1JSONSchemaPropsOrBool)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1JSONSchemaPropsOrStringArray)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1JobTemplateSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1LocalSubjectAccessReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1MutatingWebhookConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1MutatingWebhookConfigurationList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1NetworkPolicy)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1NetworkPolicyEgressRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1NetworkPolicyIngressRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1NetworkPolicyList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1NetworkPolicyPeer)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1NetworkPolicyPort)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1NetworkPolicySpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1NonResourceAttributes)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1NonResourceRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodDisruptionBudget)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodDisruptionBudgetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodDisruptionBudgetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodDisruptionBudgetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodSecurityPolicy)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodSecurityPolicyList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PodSecurityPolicySpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1PolicyRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ReplicaSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ReplicaSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ReplicaSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ReplicaSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ReplicaSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ResourceAttributes)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ResourceRule)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Role)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RoleBinding)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RoleBindingList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RoleList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RoleRef)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RollingUpdateDaemonSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RollingUpdateStatefulSetStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RuleWithOperations)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1RunAsUserStrategyOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SELinuxStrategyOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SelfSubjectAccessReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SelfSubjectAccessReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SelfSubjectRulesReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SelfSubjectRulesReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1StatefulSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1StatefulSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1StatefulSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1StatefulSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1StatefulSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1StatefulSetUpdateStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1StorageClass)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1StorageClassList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Subject)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SubjectAccessReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SubjectAccessReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SubjectAccessReviewStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SubjectRulesReviewStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1SupplementalGroupsStrategyOptions)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1TokenReview)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1TokenReviewSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1TokenReviewStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1UserInfo)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ValidatingWebhookConfiguration)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1ValidatingWebhookConfigurationList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1Webhook)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta1WebhookClientConfig)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ControllerRevision)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ControllerRevisionList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DaemonSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DaemonSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DaemonSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DaemonSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DaemonSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DaemonSetUpdateStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2Deployment)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DeploymentCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DeploymentList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DeploymentSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DeploymentStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2DeploymentStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ReplicaSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ReplicaSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ReplicaSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ReplicaSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ReplicaSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2RollingUpdateDaemonSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2RollingUpdateDeployment)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2RollingUpdateStatefulSetStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2Scale)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ScaleSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2ScaleStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2StatefulSet)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2StatefulSetCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2StatefulSetList)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2StatefulSetSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2StatefulSetStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V1beta2StatefulSetUpdateStrategy)
      propMimeEq MimeJSON (Proxy :: Proxy V2alpha1CronJob)
      propMimeEq MimeJSON (Proxy :: Proxy V2alpha1CronJobList)
      propMimeEq MimeJSON (Proxy :: Proxy V2alpha1CronJobSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V2alpha1CronJobStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2alpha1JobTemplateSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1CrossVersionObjectReference)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1HorizontalPodAutoscaler)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1HorizontalPodAutoscalerCondition)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1HorizontalPodAutoscalerList)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1HorizontalPodAutoscalerSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1HorizontalPodAutoscalerStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1MetricSpec)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1MetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ObjectMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ObjectMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1PodsMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1PodsMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ResourceMetricSource)
      propMimeEq MimeJSON (Proxy :: Proxy V2beta1ResourceMetricStatus)
      propMimeEq MimeJSON (Proxy :: Proxy VersionInfo)
      
