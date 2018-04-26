
module AWS.CloudTrail.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Specifies the tags to add to a trail.</p>
newtype AddTagsRequest = AddTagsRequest 
  { "ResourceId" :: (String)
  , "TagsList" :: Maybe (TagsList)
  }
derive instance newtypeAddTagsRequest :: Newtype AddTagsRequest _
derive instance repGenericAddTagsRequest :: Generic AddTagsRequest _
instance showAddTagsRequest :: Show AddTagsRequest where show = genericShow
instance decodeAddTagsRequest :: Decode AddTagsRequest where decode = genericDecode options
instance encodeAddTagsRequest :: Encode AddTagsRequest where encode = genericEncode options

-- | Constructs AddTagsRequest from required parameters
newAddTagsRequest :: String -> AddTagsRequest
newAddTagsRequest _ResourceId = AddTagsRequest { "ResourceId": _ResourceId, "TagsList": Nothing }

-- | Constructs AddTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddTagsRequest' :: String -> ( { "ResourceId" :: (String) , "TagsList" :: Maybe (TagsList) } -> {"ResourceId" :: (String) , "TagsList" :: Maybe (TagsList) } ) -> AddTagsRequest
newAddTagsRequest' _ResourceId customize = (AddTagsRequest <<< customize) { "ResourceId": _ResourceId, "TagsList": Nothing }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype AddTagsResponse = AddTagsResponse Types.NoArguments
derive instance newtypeAddTagsResponse :: Newtype AddTagsResponse _
derive instance repGenericAddTagsResponse :: Generic AddTagsResponse _
instance showAddTagsResponse :: Show AddTagsResponse where show = genericShow
instance decodeAddTagsResponse :: Decode AddTagsResponse where decode = genericDecode options
instance encodeAddTagsResponse :: Encode AddTagsResponse where encode = genericEncode options



newtype ByteBuffer = ByteBuffer String
derive instance newtypeByteBuffer :: Newtype ByteBuffer _
derive instance repGenericByteBuffer :: Generic ByteBuffer _
instance showByteBuffer :: Show ByteBuffer where show = genericShow
instance decodeByteBuffer :: Decode ByteBuffer where decode = genericDecode options
instance encodeByteBuffer :: Encode ByteBuffer where encode = genericEncode options



-- | <p>This exception is thrown when an operation is called with an invalid trail ARN. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
newtype CloudTrailARNInvalidException = CloudTrailARNInvalidException Types.NoArguments
derive instance newtypeCloudTrailARNInvalidException :: Newtype CloudTrailARNInvalidException _
derive instance repGenericCloudTrailARNInvalidException :: Generic CloudTrailARNInvalidException _
instance showCloudTrailARNInvalidException :: Show CloudTrailARNInvalidException where show = genericShow
instance decodeCloudTrailARNInvalidException :: Decode CloudTrailARNInvalidException where decode = genericDecode options
instance encodeCloudTrailARNInvalidException :: Encode CloudTrailARNInvalidException where encode = genericEncode options



-- | <p>Cannot set a CloudWatch Logs delivery for this region.</p>
newtype CloudWatchLogsDeliveryUnavailableException = CloudWatchLogsDeliveryUnavailableException Types.NoArguments
derive instance newtypeCloudWatchLogsDeliveryUnavailableException :: Newtype CloudWatchLogsDeliveryUnavailableException _
derive instance repGenericCloudWatchLogsDeliveryUnavailableException :: Generic CloudWatchLogsDeliveryUnavailableException _
instance showCloudWatchLogsDeliveryUnavailableException :: Show CloudWatchLogsDeliveryUnavailableException where show = genericShow
instance decodeCloudWatchLogsDeliveryUnavailableException :: Decode CloudWatchLogsDeliveryUnavailableException where decode = genericDecode options
instance encodeCloudWatchLogsDeliveryUnavailableException :: Encode CloudWatchLogsDeliveryUnavailableException where encode = genericEncode options



-- | <p>Specifies the settings for each trail.</p>
newtype CreateTrailRequest = CreateTrailRequest 
  { "Name" :: (String)
  , "S3BucketName" :: (String)
  , "S3KeyPrefix" :: Maybe (String)
  , "SnsTopicName" :: Maybe (String)
  , "IncludeGlobalServiceEvents" :: Maybe (Boolean)
  , "IsMultiRegionTrail" :: Maybe (Boolean)
  , "EnableLogFileValidation" :: Maybe (Boolean)
  , "CloudWatchLogsLogGroupArn" :: Maybe (String)
  , "CloudWatchLogsRoleArn" :: Maybe (String)
  , "KmsKeyId" :: Maybe (String)
  }
derive instance newtypeCreateTrailRequest :: Newtype CreateTrailRequest _
derive instance repGenericCreateTrailRequest :: Generic CreateTrailRequest _
instance showCreateTrailRequest :: Show CreateTrailRequest where show = genericShow
instance decodeCreateTrailRequest :: Decode CreateTrailRequest where decode = genericDecode options
instance encodeCreateTrailRequest :: Encode CreateTrailRequest where encode = genericEncode options

-- | Constructs CreateTrailRequest from required parameters
newCreateTrailRequest :: String -> String -> CreateTrailRequest
newCreateTrailRequest _Name _S3BucketName = CreateTrailRequest { "Name": _Name, "S3BucketName": _S3BucketName, "CloudWatchLogsLogGroupArn": Nothing, "CloudWatchLogsRoleArn": Nothing, "EnableLogFileValidation": Nothing, "IncludeGlobalServiceEvents": Nothing, "IsMultiRegionTrail": Nothing, "KmsKeyId": Nothing, "S3KeyPrefix": Nothing, "SnsTopicName": Nothing }

-- | Constructs CreateTrailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTrailRequest' :: String -> String -> ( { "Name" :: (String) , "S3BucketName" :: (String) , "S3KeyPrefix" :: Maybe (String) , "SnsTopicName" :: Maybe (String) , "IncludeGlobalServiceEvents" :: Maybe (Boolean) , "IsMultiRegionTrail" :: Maybe (Boolean) , "EnableLogFileValidation" :: Maybe (Boolean) , "CloudWatchLogsLogGroupArn" :: Maybe (String) , "CloudWatchLogsRoleArn" :: Maybe (String) , "KmsKeyId" :: Maybe (String) } -> {"Name" :: (String) , "S3BucketName" :: (String) , "S3KeyPrefix" :: Maybe (String) , "SnsTopicName" :: Maybe (String) , "IncludeGlobalServiceEvents" :: Maybe (Boolean) , "IsMultiRegionTrail" :: Maybe (Boolean) , "EnableLogFileValidation" :: Maybe (Boolean) , "CloudWatchLogsLogGroupArn" :: Maybe (String) , "CloudWatchLogsRoleArn" :: Maybe (String) , "KmsKeyId" :: Maybe (String) } ) -> CreateTrailRequest
newCreateTrailRequest' _Name _S3BucketName customize = (CreateTrailRequest <<< customize) { "Name": _Name, "S3BucketName": _S3BucketName, "CloudWatchLogsLogGroupArn": Nothing, "CloudWatchLogsRoleArn": Nothing, "EnableLogFileValidation": Nothing, "IncludeGlobalServiceEvents": Nothing, "IsMultiRegionTrail": Nothing, "KmsKeyId": Nothing, "S3KeyPrefix": Nothing, "SnsTopicName": Nothing }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype CreateTrailResponse = CreateTrailResponse 
  { "Name" :: Maybe (String)
  , "S3BucketName" :: Maybe (String)
  , "S3KeyPrefix" :: Maybe (String)
  , "SnsTopicName" :: Maybe (String)
  , "SnsTopicARN" :: Maybe (String)
  , "IncludeGlobalServiceEvents" :: Maybe (Boolean)
  , "IsMultiRegionTrail" :: Maybe (Boolean)
  , "TrailARN" :: Maybe (String)
  , "LogFileValidationEnabled" :: Maybe (Boolean)
  , "CloudWatchLogsLogGroupArn" :: Maybe (String)
  , "CloudWatchLogsRoleArn" :: Maybe (String)
  , "KmsKeyId" :: Maybe (String)
  }
derive instance newtypeCreateTrailResponse :: Newtype CreateTrailResponse _
derive instance repGenericCreateTrailResponse :: Generic CreateTrailResponse _
instance showCreateTrailResponse :: Show CreateTrailResponse where show = genericShow
instance decodeCreateTrailResponse :: Decode CreateTrailResponse where decode = genericDecode options
instance encodeCreateTrailResponse :: Encode CreateTrailResponse where encode = genericEncode options

-- | Constructs CreateTrailResponse from required parameters
newCreateTrailResponse :: CreateTrailResponse
newCreateTrailResponse  = CreateTrailResponse { "CloudWatchLogsLogGroupArn": Nothing, "CloudWatchLogsRoleArn": Nothing, "IncludeGlobalServiceEvents": Nothing, "IsMultiRegionTrail": Nothing, "KmsKeyId": Nothing, "LogFileValidationEnabled": Nothing, "Name": Nothing, "S3BucketName": Nothing, "S3KeyPrefix": Nothing, "SnsTopicARN": Nothing, "SnsTopicName": Nothing, "TrailARN": Nothing }

-- | Constructs CreateTrailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateTrailResponse' :: ( { "Name" :: Maybe (String) , "S3BucketName" :: Maybe (String) , "S3KeyPrefix" :: Maybe (String) , "SnsTopicName" :: Maybe (String) , "SnsTopicARN" :: Maybe (String) , "IncludeGlobalServiceEvents" :: Maybe (Boolean) , "IsMultiRegionTrail" :: Maybe (Boolean) , "TrailARN" :: Maybe (String) , "LogFileValidationEnabled" :: Maybe (Boolean) , "CloudWatchLogsLogGroupArn" :: Maybe (String) , "CloudWatchLogsRoleArn" :: Maybe (String) , "KmsKeyId" :: Maybe (String) } -> {"Name" :: Maybe (String) , "S3BucketName" :: Maybe (String) , "S3KeyPrefix" :: Maybe (String) , "SnsTopicName" :: Maybe (String) , "SnsTopicARN" :: Maybe (String) , "IncludeGlobalServiceEvents" :: Maybe (Boolean) , "IsMultiRegionTrail" :: Maybe (Boolean) , "TrailARN" :: Maybe (String) , "LogFileValidationEnabled" :: Maybe (Boolean) , "CloudWatchLogsLogGroupArn" :: Maybe (String) , "CloudWatchLogsRoleArn" :: Maybe (String) , "KmsKeyId" :: Maybe (String) } ) -> CreateTrailResponse
newCreateTrailResponse'  customize = (CreateTrailResponse <<< customize) { "CloudWatchLogsLogGroupArn": Nothing, "CloudWatchLogsRoleArn": Nothing, "IncludeGlobalServiceEvents": Nothing, "IsMultiRegionTrail": Nothing, "KmsKeyId": Nothing, "LogFileValidationEnabled": Nothing, "Name": Nothing, "S3BucketName": Nothing, "S3KeyPrefix": Nothing, "SnsTopicARN": Nothing, "SnsTopicName": Nothing, "TrailARN": Nothing }



-- | <p>The Amazon S3 objects that you specify in your event selectors for your trail to log data events. Data events are object-level API operations that access S3 objects, such as <code>GetObject</code>, <code>DeleteObject</code>, and <code>PutObject</code>. You can specify up to 250 S3 buckets and object prefixes for a trail. </p> <p>Example</p> <ol> <li> <p>You create an event selector for a trail and specify an S3 bucket and an empty prefix, such as <code>arn:aws:s3:::bucket-1/</code>.</p> </li> <li> <p>You upload an image file to <code>bucket-1</code>.</p> </li> <li> <p>The <code>PutObject</code> API operation occurs on an object in the S3 bucket that you specified in the event selector. The trail processes and logs the event.</p> </li> <li> <p>You upload another image file to a different S3 bucket named <code>arn:aws:s3:::bucket-2</code>.</p> </li> <li> <p>The event occurs on an object in an S3 bucket that you didn't specify in the event selector. The trail doesn’t log the event.</p> </li> </ol>
newtype DataResource = DataResource 
  { "Type" :: Maybe (String)
  , "Values" :: Maybe (DataResourceValues)
  }
derive instance newtypeDataResource :: Newtype DataResource _
derive instance repGenericDataResource :: Generic DataResource _
instance showDataResource :: Show DataResource where show = genericShow
instance decodeDataResource :: Decode DataResource where decode = genericDecode options
instance encodeDataResource :: Encode DataResource where encode = genericEncode options

-- | Constructs DataResource from required parameters
newDataResource :: DataResource
newDataResource  = DataResource { "Type": Nothing, "Values": Nothing }

-- | Constructs DataResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDataResource' :: ( { "Type" :: Maybe (String) , "Values" :: Maybe (DataResourceValues) } -> {"Type" :: Maybe (String) , "Values" :: Maybe (DataResourceValues) } ) -> DataResource
newDataResource'  customize = (DataResource <<< customize) { "Type": Nothing, "Values": Nothing }



newtype DataResourceValues = DataResourceValues (Array String)
derive instance newtypeDataResourceValues :: Newtype DataResourceValues _
derive instance repGenericDataResourceValues :: Generic DataResourceValues _
instance showDataResourceValues :: Show DataResourceValues where show = genericShow
instance decodeDataResourceValues :: Decode DataResourceValues where decode = genericDecode options
instance encodeDataResourceValues :: Encode DataResourceValues where encode = genericEncode options



newtype DataResources = DataResources (Array DataResource)
derive instance newtypeDataResources :: Newtype DataResources _
derive instance repGenericDataResources :: Generic DataResources _
instance showDataResources :: Show DataResources where show = genericShow
instance decodeDataResources :: Decode DataResources where decode = genericDecode options
instance encodeDataResources :: Encode DataResources where encode = genericEncode options



newtype Date = Date Types.Timestamp
derive instance newtypeDate :: Newtype Date _
derive instance repGenericDate :: Generic Date _
instance showDate :: Show Date where show = genericShow
instance decodeDate :: Decode Date where decode = genericDecode options
instance encodeDate :: Encode Date where encode = genericEncode options



-- | <p>The request that specifies the name of a trail to delete.</p>
newtype DeleteTrailRequest = DeleteTrailRequest 
  { "Name" :: (String)
  }
derive instance newtypeDeleteTrailRequest :: Newtype DeleteTrailRequest _
derive instance repGenericDeleteTrailRequest :: Generic DeleteTrailRequest _
instance showDeleteTrailRequest :: Show DeleteTrailRequest where show = genericShow
instance decodeDeleteTrailRequest :: Decode DeleteTrailRequest where decode = genericDecode options
instance encodeDeleteTrailRequest :: Encode DeleteTrailRequest where encode = genericEncode options

-- | Constructs DeleteTrailRequest from required parameters
newDeleteTrailRequest :: String -> DeleteTrailRequest
newDeleteTrailRequest _Name = DeleteTrailRequest { "Name": _Name }

-- | Constructs DeleteTrailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteTrailRequest' :: String -> ( { "Name" :: (String) } -> {"Name" :: (String) } ) -> DeleteTrailRequest
newDeleteTrailRequest' _Name customize = (DeleteTrailRequest <<< customize) { "Name": _Name }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype DeleteTrailResponse = DeleteTrailResponse Types.NoArguments
derive instance newtypeDeleteTrailResponse :: Newtype DeleteTrailResponse _
derive instance repGenericDeleteTrailResponse :: Generic DeleteTrailResponse _
instance showDeleteTrailResponse :: Show DeleteTrailResponse where show = genericShow
instance decodeDeleteTrailResponse :: Decode DeleteTrailResponse where decode = genericDecode options
instance encodeDeleteTrailResponse :: Encode DeleteTrailResponse where encode = genericEncode options



-- | <p>Returns information about the trail.</p>
newtype DescribeTrailsRequest = DescribeTrailsRequest 
  { "trailNameList" :: Maybe (TrailNameList)
  , "includeShadowTrails" :: Maybe (Boolean)
  }
derive instance newtypeDescribeTrailsRequest :: Newtype DescribeTrailsRequest _
derive instance repGenericDescribeTrailsRequest :: Generic DescribeTrailsRequest _
instance showDescribeTrailsRequest :: Show DescribeTrailsRequest where show = genericShow
instance decodeDescribeTrailsRequest :: Decode DescribeTrailsRequest where decode = genericDecode options
instance encodeDescribeTrailsRequest :: Encode DescribeTrailsRequest where encode = genericEncode options

-- | Constructs DescribeTrailsRequest from required parameters
newDescribeTrailsRequest :: DescribeTrailsRequest
newDescribeTrailsRequest  = DescribeTrailsRequest { "includeShadowTrails": Nothing, "trailNameList": Nothing }

-- | Constructs DescribeTrailsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTrailsRequest' :: ( { "trailNameList" :: Maybe (TrailNameList) , "includeShadowTrails" :: Maybe (Boolean) } -> {"trailNameList" :: Maybe (TrailNameList) , "includeShadowTrails" :: Maybe (Boolean) } ) -> DescribeTrailsRequest
newDescribeTrailsRequest'  customize = (DescribeTrailsRequest <<< customize) { "includeShadowTrails": Nothing, "trailNameList": Nothing }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype DescribeTrailsResponse = DescribeTrailsResponse 
  { "trailList" :: Maybe (TrailList)
  }
derive instance newtypeDescribeTrailsResponse :: Newtype DescribeTrailsResponse _
derive instance repGenericDescribeTrailsResponse :: Generic DescribeTrailsResponse _
instance showDescribeTrailsResponse :: Show DescribeTrailsResponse where show = genericShow
instance decodeDescribeTrailsResponse :: Decode DescribeTrailsResponse where decode = genericDecode options
instance encodeDescribeTrailsResponse :: Encode DescribeTrailsResponse where encode = genericEncode options

-- | Constructs DescribeTrailsResponse from required parameters
newDescribeTrailsResponse :: DescribeTrailsResponse
newDescribeTrailsResponse  = DescribeTrailsResponse { "trailList": Nothing }

-- | Constructs DescribeTrailsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeTrailsResponse' :: ( { "trailList" :: Maybe (TrailList) } -> {"trailList" :: Maybe (TrailList) } ) -> DescribeTrailsResponse
newDescribeTrailsResponse'  customize = (DescribeTrailsResponse <<< customize) { "trailList": Nothing }



-- | <p>Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.</p>
newtype Event = Event 
  { "EventId" :: Maybe (String)
  , "EventName" :: Maybe (String)
  , "EventTime" :: Maybe (Date)
  , "EventSource" :: Maybe (String)
  , "Username" :: Maybe (String)
  , "Resources" :: Maybe (ResourceList)
  , "CloudTrailEvent" :: Maybe (String)
  }
derive instance newtypeEvent :: Newtype Event _
derive instance repGenericEvent :: Generic Event _
instance showEvent :: Show Event where show = genericShow
instance decodeEvent :: Decode Event where decode = genericDecode options
instance encodeEvent :: Encode Event where encode = genericEncode options

-- | Constructs Event from required parameters
newEvent :: Event
newEvent  = Event { "CloudTrailEvent": Nothing, "EventId": Nothing, "EventName": Nothing, "EventSource": Nothing, "EventTime": Nothing, "Resources": Nothing, "Username": Nothing }

-- | Constructs Event's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEvent' :: ( { "EventId" :: Maybe (String) , "EventName" :: Maybe (String) , "EventTime" :: Maybe (Date) , "EventSource" :: Maybe (String) , "Username" :: Maybe (String) , "Resources" :: Maybe (ResourceList) , "CloudTrailEvent" :: Maybe (String) } -> {"EventId" :: Maybe (String) , "EventName" :: Maybe (String) , "EventTime" :: Maybe (Date) , "EventSource" :: Maybe (String) , "Username" :: Maybe (String) , "Resources" :: Maybe (ResourceList) , "CloudTrailEvent" :: Maybe (String) } ) -> Event
newEvent'  customize = (Event <<< customize) { "CloudTrailEvent": Nothing, "EventId": Nothing, "EventName": Nothing, "EventSource": Nothing, "EventTime": Nothing, "Resources": Nothing, "Username": Nothing }



-- | <p>Use event selectors to specify whether you want your trail to log management and/or data events. When an event occurs in your account, CloudTrail evaluates the event selector for all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.</p> <p>You can configure up to five event selectors for a trail.</p>
newtype EventSelector = EventSelector 
  { "ReadWriteType" :: Maybe (ReadWriteType)
  , "IncludeManagementEvents" :: Maybe (Boolean)
  , "DataResources" :: Maybe (DataResources)
  }
derive instance newtypeEventSelector :: Newtype EventSelector _
derive instance repGenericEventSelector :: Generic EventSelector _
instance showEventSelector :: Show EventSelector where show = genericShow
instance decodeEventSelector :: Decode EventSelector where decode = genericDecode options
instance encodeEventSelector :: Encode EventSelector where encode = genericEncode options

-- | Constructs EventSelector from required parameters
newEventSelector :: EventSelector
newEventSelector  = EventSelector { "DataResources": Nothing, "IncludeManagementEvents": Nothing, "ReadWriteType": Nothing }

-- | Constructs EventSelector's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEventSelector' :: ( { "ReadWriteType" :: Maybe (ReadWriteType) , "IncludeManagementEvents" :: Maybe (Boolean) , "DataResources" :: Maybe (DataResources) } -> {"ReadWriteType" :: Maybe (ReadWriteType) , "IncludeManagementEvents" :: Maybe (Boolean) , "DataResources" :: Maybe (DataResources) } ) -> EventSelector
newEventSelector'  customize = (EventSelector <<< customize) { "DataResources": Nothing, "IncludeManagementEvents": Nothing, "ReadWriteType": Nothing }



newtype EventSelectors = EventSelectors (Array EventSelector)
derive instance newtypeEventSelectors :: Newtype EventSelectors _
derive instance repGenericEventSelectors :: Generic EventSelectors _
instance showEventSelectors :: Show EventSelectors where show = genericShow
instance decodeEventSelectors :: Decode EventSelectors where decode = genericDecode options
instance encodeEventSelectors :: Encode EventSelectors where encode = genericEncode options



newtype EventsList = EventsList (Array Event)
derive instance newtypeEventsList :: Newtype EventsList _
derive instance repGenericEventsList :: Generic EventsList _
instance showEventsList :: Show EventsList where show = genericShow
instance decodeEventsList :: Decode EventsList where decode = genericDecode options
instance encodeEventsList :: Encode EventsList where encode = genericEncode options



newtype GetEventSelectorsRequest = GetEventSelectorsRequest 
  { "TrailName" :: (String)
  }
derive instance newtypeGetEventSelectorsRequest :: Newtype GetEventSelectorsRequest _
derive instance repGenericGetEventSelectorsRequest :: Generic GetEventSelectorsRequest _
instance showGetEventSelectorsRequest :: Show GetEventSelectorsRequest where show = genericShow
instance decodeGetEventSelectorsRequest :: Decode GetEventSelectorsRequest where decode = genericDecode options
instance encodeGetEventSelectorsRequest :: Encode GetEventSelectorsRequest where encode = genericEncode options

-- | Constructs GetEventSelectorsRequest from required parameters
newGetEventSelectorsRequest :: String -> GetEventSelectorsRequest
newGetEventSelectorsRequest _TrailName = GetEventSelectorsRequest { "TrailName": _TrailName }

-- | Constructs GetEventSelectorsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEventSelectorsRequest' :: String -> ( { "TrailName" :: (String) } -> {"TrailName" :: (String) } ) -> GetEventSelectorsRequest
newGetEventSelectorsRequest' _TrailName customize = (GetEventSelectorsRequest <<< customize) { "TrailName": _TrailName }



newtype GetEventSelectorsResponse = GetEventSelectorsResponse 
  { "TrailARN" :: Maybe (String)
  , "EventSelectors" :: Maybe (EventSelectors)
  }
derive instance newtypeGetEventSelectorsResponse :: Newtype GetEventSelectorsResponse _
derive instance repGenericGetEventSelectorsResponse :: Generic GetEventSelectorsResponse _
instance showGetEventSelectorsResponse :: Show GetEventSelectorsResponse where show = genericShow
instance decodeGetEventSelectorsResponse :: Decode GetEventSelectorsResponse where decode = genericDecode options
instance encodeGetEventSelectorsResponse :: Encode GetEventSelectorsResponse where encode = genericEncode options

-- | Constructs GetEventSelectorsResponse from required parameters
newGetEventSelectorsResponse :: GetEventSelectorsResponse
newGetEventSelectorsResponse  = GetEventSelectorsResponse { "EventSelectors": Nothing, "TrailARN": Nothing }

-- | Constructs GetEventSelectorsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetEventSelectorsResponse' :: ( { "TrailARN" :: Maybe (String) , "EventSelectors" :: Maybe (EventSelectors) } -> {"TrailARN" :: Maybe (String) , "EventSelectors" :: Maybe (EventSelectors) } ) -> GetEventSelectorsResponse
newGetEventSelectorsResponse'  customize = (GetEventSelectorsResponse <<< customize) { "EventSelectors": Nothing, "TrailARN": Nothing }



-- | <p>The name of a trail about which you want the current status.</p>
newtype GetTrailStatusRequest = GetTrailStatusRequest 
  { "Name" :: (String)
  }
derive instance newtypeGetTrailStatusRequest :: Newtype GetTrailStatusRequest _
derive instance repGenericGetTrailStatusRequest :: Generic GetTrailStatusRequest _
instance showGetTrailStatusRequest :: Show GetTrailStatusRequest where show = genericShow
instance decodeGetTrailStatusRequest :: Decode GetTrailStatusRequest where decode = genericDecode options
instance encodeGetTrailStatusRequest :: Encode GetTrailStatusRequest where encode = genericEncode options

-- | Constructs GetTrailStatusRequest from required parameters
newGetTrailStatusRequest :: String -> GetTrailStatusRequest
newGetTrailStatusRequest _Name = GetTrailStatusRequest { "Name": _Name }

-- | Constructs GetTrailStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTrailStatusRequest' :: String -> ( { "Name" :: (String) } -> {"Name" :: (String) } ) -> GetTrailStatusRequest
newGetTrailStatusRequest' _Name customize = (GetTrailStatusRequest <<< customize) { "Name": _Name }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype GetTrailStatusResponse = GetTrailStatusResponse 
  { "IsLogging" :: Maybe (Boolean)
  , "LatestDeliveryError" :: Maybe (String)
  , "LatestNotificationError" :: Maybe (String)
  , "LatestDeliveryTime" :: Maybe (Date)
  , "LatestNotificationTime" :: Maybe (Date)
  , "StartLoggingTime" :: Maybe (Date)
  , "StopLoggingTime" :: Maybe (Date)
  , "LatestCloudWatchLogsDeliveryError" :: Maybe (String)
  , "LatestCloudWatchLogsDeliveryTime" :: Maybe (Date)
  , "LatestDigestDeliveryTime" :: Maybe (Date)
  , "LatestDigestDeliveryError" :: Maybe (String)
  , "LatestDeliveryAttemptTime" :: Maybe (String)
  , "LatestNotificationAttemptTime" :: Maybe (String)
  , "LatestNotificationAttemptSucceeded" :: Maybe (String)
  , "LatestDeliveryAttemptSucceeded" :: Maybe (String)
  , "TimeLoggingStarted" :: Maybe (String)
  , "TimeLoggingStopped" :: Maybe (String)
  }
derive instance newtypeGetTrailStatusResponse :: Newtype GetTrailStatusResponse _
derive instance repGenericGetTrailStatusResponse :: Generic GetTrailStatusResponse _
instance showGetTrailStatusResponse :: Show GetTrailStatusResponse where show = genericShow
instance decodeGetTrailStatusResponse :: Decode GetTrailStatusResponse where decode = genericDecode options
instance encodeGetTrailStatusResponse :: Encode GetTrailStatusResponse where encode = genericEncode options

-- | Constructs GetTrailStatusResponse from required parameters
newGetTrailStatusResponse :: GetTrailStatusResponse
newGetTrailStatusResponse  = GetTrailStatusResponse { "IsLogging": Nothing, "LatestCloudWatchLogsDeliveryError": Nothing, "LatestCloudWatchLogsDeliveryTime": Nothing, "LatestDeliveryAttemptSucceeded": Nothing, "LatestDeliveryAttemptTime": Nothing, "LatestDeliveryError": Nothing, "LatestDeliveryTime": Nothing, "LatestDigestDeliveryError": Nothing, "LatestDigestDeliveryTime": Nothing, "LatestNotificationAttemptSucceeded": Nothing, "LatestNotificationAttemptTime": Nothing, "LatestNotificationError": Nothing, "LatestNotificationTime": Nothing, "StartLoggingTime": Nothing, "StopLoggingTime": Nothing, "TimeLoggingStarted": Nothing, "TimeLoggingStopped": Nothing }

-- | Constructs GetTrailStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newGetTrailStatusResponse' :: ( { "IsLogging" :: Maybe (Boolean) , "LatestDeliveryError" :: Maybe (String) , "LatestNotificationError" :: Maybe (String) , "LatestDeliveryTime" :: Maybe (Date) , "LatestNotificationTime" :: Maybe (Date) , "StartLoggingTime" :: Maybe (Date) , "StopLoggingTime" :: Maybe (Date) , "LatestCloudWatchLogsDeliveryError" :: Maybe (String) , "LatestCloudWatchLogsDeliveryTime" :: Maybe (Date) , "LatestDigestDeliveryTime" :: Maybe (Date) , "LatestDigestDeliveryError" :: Maybe (String) , "LatestDeliveryAttemptTime" :: Maybe (String) , "LatestNotificationAttemptTime" :: Maybe (String) , "LatestNotificationAttemptSucceeded" :: Maybe (String) , "LatestDeliveryAttemptSucceeded" :: Maybe (String) , "TimeLoggingStarted" :: Maybe (String) , "TimeLoggingStopped" :: Maybe (String) } -> {"IsLogging" :: Maybe (Boolean) , "LatestDeliveryError" :: Maybe (String) , "LatestNotificationError" :: Maybe (String) , "LatestDeliveryTime" :: Maybe (Date) , "LatestNotificationTime" :: Maybe (Date) , "StartLoggingTime" :: Maybe (Date) , "StopLoggingTime" :: Maybe (Date) , "LatestCloudWatchLogsDeliveryError" :: Maybe (String) , "LatestCloudWatchLogsDeliveryTime" :: Maybe (Date) , "LatestDigestDeliveryTime" :: Maybe (Date) , "LatestDigestDeliveryError" :: Maybe (String) , "LatestDeliveryAttemptTime" :: Maybe (String) , "LatestNotificationAttemptTime" :: Maybe (String) , "LatestNotificationAttemptSucceeded" :: Maybe (String) , "LatestDeliveryAttemptSucceeded" :: Maybe (String) , "TimeLoggingStarted" :: Maybe (String) , "TimeLoggingStopped" :: Maybe (String) } ) -> GetTrailStatusResponse
newGetTrailStatusResponse'  customize = (GetTrailStatusResponse <<< customize) { "IsLogging": Nothing, "LatestCloudWatchLogsDeliveryError": Nothing, "LatestCloudWatchLogsDeliveryTime": Nothing, "LatestDeliveryAttemptSucceeded": Nothing, "LatestDeliveryAttemptTime": Nothing, "LatestDeliveryError": Nothing, "LatestDeliveryTime": Nothing, "LatestDigestDeliveryError": Nothing, "LatestDigestDeliveryTime": Nothing, "LatestNotificationAttemptSucceeded": Nothing, "LatestNotificationAttemptTime": Nothing, "LatestNotificationError": Nothing, "LatestNotificationTime": Nothing, "StartLoggingTime": Nothing, "StopLoggingTime": Nothing, "TimeLoggingStarted": Nothing, "TimeLoggingStopped": Nothing }



-- | <p>This exception is thrown when the policy on the S3 bucket or KMS key is not sufficient.</p>
newtype InsufficientEncryptionPolicyException = InsufficientEncryptionPolicyException Types.NoArguments
derive instance newtypeInsufficientEncryptionPolicyException :: Newtype InsufficientEncryptionPolicyException _
derive instance repGenericInsufficientEncryptionPolicyException :: Generic InsufficientEncryptionPolicyException _
instance showInsufficientEncryptionPolicyException :: Show InsufficientEncryptionPolicyException where show = genericShow
instance decodeInsufficientEncryptionPolicyException :: Decode InsufficientEncryptionPolicyException where decode = genericDecode options
instance encodeInsufficientEncryptionPolicyException :: Encode InsufficientEncryptionPolicyException where encode = genericEncode options



-- | <p>This exception is thrown when the policy on the S3 bucket is not sufficient.</p>
newtype InsufficientS3BucketPolicyException = InsufficientS3BucketPolicyException Types.NoArguments
derive instance newtypeInsufficientS3BucketPolicyException :: Newtype InsufficientS3BucketPolicyException _
derive instance repGenericInsufficientS3BucketPolicyException :: Generic InsufficientS3BucketPolicyException _
instance showInsufficientS3BucketPolicyException :: Show InsufficientS3BucketPolicyException where show = genericShow
instance decodeInsufficientS3BucketPolicyException :: Decode InsufficientS3BucketPolicyException where decode = genericDecode options
instance encodeInsufficientS3BucketPolicyException :: Encode InsufficientS3BucketPolicyException where encode = genericEncode options



-- | <p>This exception is thrown when the policy on the SNS topic is not sufficient.</p>
newtype InsufficientSnsTopicPolicyException = InsufficientSnsTopicPolicyException Types.NoArguments
derive instance newtypeInsufficientSnsTopicPolicyException :: Newtype InsufficientSnsTopicPolicyException _
derive instance repGenericInsufficientSnsTopicPolicyException :: Generic InsufficientSnsTopicPolicyException _
instance showInsufficientSnsTopicPolicyException :: Show InsufficientSnsTopicPolicyException where show = genericShow
instance decodeInsufficientSnsTopicPolicyException :: Decode InsufficientSnsTopicPolicyException where decode = genericDecode options
instance encodeInsufficientSnsTopicPolicyException :: Encode InsufficientSnsTopicPolicyException where encode = genericEncode options



-- | <p>This exception is thrown when the provided CloudWatch log group is not valid.</p>
newtype InvalidCloudWatchLogsLogGroupArnException = InvalidCloudWatchLogsLogGroupArnException Types.NoArguments
derive instance newtypeInvalidCloudWatchLogsLogGroupArnException :: Newtype InvalidCloudWatchLogsLogGroupArnException _
derive instance repGenericInvalidCloudWatchLogsLogGroupArnException :: Generic InvalidCloudWatchLogsLogGroupArnException _
instance showInvalidCloudWatchLogsLogGroupArnException :: Show InvalidCloudWatchLogsLogGroupArnException where show = genericShow
instance decodeInvalidCloudWatchLogsLogGroupArnException :: Decode InvalidCloudWatchLogsLogGroupArnException where decode = genericDecode options
instance encodeInvalidCloudWatchLogsLogGroupArnException :: Encode InvalidCloudWatchLogsLogGroupArnException where encode = genericEncode options



-- | <p>This exception is thrown when the provided role is not valid.</p>
newtype InvalidCloudWatchLogsRoleArnException = InvalidCloudWatchLogsRoleArnException Types.NoArguments
derive instance newtypeInvalidCloudWatchLogsRoleArnException :: Newtype InvalidCloudWatchLogsRoleArnException _
derive instance repGenericInvalidCloudWatchLogsRoleArnException :: Generic InvalidCloudWatchLogsRoleArnException _
instance showInvalidCloudWatchLogsRoleArnException :: Show InvalidCloudWatchLogsRoleArnException where show = genericShow
instance decodeInvalidCloudWatchLogsRoleArnException :: Decode InvalidCloudWatchLogsRoleArnException where decode = genericDecode options
instance encodeInvalidCloudWatchLogsRoleArnException :: Encode InvalidCloudWatchLogsRoleArnException where encode = genericEncode options



-- | <p>This exception is thrown when the <code>PutEventSelectors</code> operation is called with an invalid number of event selectors, data resources, or an invalid value for a parameter:</p> <ul> <li> <p>Specify a valid number of event selectors (1 to 5) for a trail.</p> </li> <li> <p>Specify a valid number of data resources (1 to 250) for an event selector.</p> </li> <li> <p>Specify a valid value for a parameter. For example, specifying the <code>ReadWriteType</code> parameter with a value of <code>read-only</code> is invalid.</p> </li> </ul>
newtype InvalidEventSelectorsException = InvalidEventSelectorsException Types.NoArguments
derive instance newtypeInvalidEventSelectorsException :: Newtype InvalidEventSelectorsException _
derive instance repGenericInvalidEventSelectorsException :: Generic InvalidEventSelectorsException _
instance showInvalidEventSelectorsException :: Show InvalidEventSelectorsException where show = genericShow
instance decodeInvalidEventSelectorsException :: Decode InvalidEventSelectorsException where decode = genericDecode options
instance encodeInvalidEventSelectorsException :: Encode InvalidEventSelectorsException where encode = genericEncode options



-- | <p>This exception is thrown when an operation is called on a trail from a region other than the region in which the trail was created.</p>
newtype InvalidHomeRegionException = InvalidHomeRegionException Types.NoArguments
derive instance newtypeInvalidHomeRegionException :: Newtype InvalidHomeRegionException _
derive instance repGenericInvalidHomeRegionException :: Generic InvalidHomeRegionException _
instance showInvalidHomeRegionException :: Show InvalidHomeRegionException where show = genericShow
instance decodeInvalidHomeRegionException :: Decode InvalidHomeRegionException where decode = genericDecode options
instance encodeInvalidHomeRegionException :: Encode InvalidHomeRegionException where encode = genericEncode options



-- | <p>This exception is thrown when the KMS key ARN is invalid.</p>
newtype InvalidKmsKeyIdException = InvalidKmsKeyIdException Types.NoArguments
derive instance newtypeInvalidKmsKeyIdException :: Newtype InvalidKmsKeyIdException _
derive instance repGenericInvalidKmsKeyIdException :: Generic InvalidKmsKeyIdException _
instance showInvalidKmsKeyIdException :: Show InvalidKmsKeyIdException where show = genericShow
instance decodeInvalidKmsKeyIdException :: Decode InvalidKmsKeyIdException where decode = genericDecode options
instance encodeInvalidKmsKeyIdException :: Encode InvalidKmsKeyIdException where encode = genericEncode options



-- | <p>Occurs when an invalid lookup attribute is specified.</p>
newtype InvalidLookupAttributesException = InvalidLookupAttributesException Types.NoArguments
derive instance newtypeInvalidLookupAttributesException :: Newtype InvalidLookupAttributesException _
derive instance repGenericInvalidLookupAttributesException :: Generic InvalidLookupAttributesException _
instance showInvalidLookupAttributesException :: Show InvalidLookupAttributesException where show = genericShow
instance decodeInvalidLookupAttributesException :: Decode InvalidLookupAttributesException where decode = genericDecode options
instance encodeInvalidLookupAttributesException :: Encode InvalidLookupAttributesException where encode = genericEncode options



-- | <p>This exception is thrown if the limit specified is invalid.</p>
newtype InvalidMaxResultsException = InvalidMaxResultsException Types.NoArguments
derive instance newtypeInvalidMaxResultsException :: Newtype InvalidMaxResultsException _
derive instance repGenericInvalidMaxResultsException :: Generic InvalidMaxResultsException _
instance showInvalidMaxResultsException :: Show InvalidMaxResultsException where show = genericShow
instance decodeInvalidMaxResultsException :: Decode InvalidMaxResultsException where decode = genericDecode options
instance encodeInvalidMaxResultsException :: Encode InvalidMaxResultsException where encode = genericEncode options



-- | <p>Invalid token or token that was previously used in a request with different parameters. This exception is thrown if the token is invalid.</p>
newtype InvalidNextTokenException = InvalidNextTokenException Types.NoArguments
derive instance newtypeInvalidNextTokenException :: Newtype InvalidNextTokenException _
derive instance repGenericInvalidNextTokenException :: Generic InvalidNextTokenException _
instance showInvalidNextTokenException :: Show InvalidNextTokenException where show = genericShow
instance decodeInvalidNextTokenException :: Decode InvalidNextTokenException where decode = genericDecode options
instance encodeInvalidNextTokenException :: Encode InvalidNextTokenException where encode = genericEncode options



-- | <p>This exception is thrown when the combination of parameters provided is not valid.</p>
newtype InvalidParameterCombinationException = InvalidParameterCombinationException Types.NoArguments
derive instance newtypeInvalidParameterCombinationException :: Newtype InvalidParameterCombinationException _
derive instance repGenericInvalidParameterCombinationException :: Generic InvalidParameterCombinationException _
instance showInvalidParameterCombinationException :: Show InvalidParameterCombinationException where show = genericShow
instance decodeInvalidParameterCombinationException :: Decode InvalidParameterCombinationException where decode = genericDecode options
instance encodeInvalidParameterCombinationException :: Encode InvalidParameterCombinationException where encode = genericEncode options



-- | <p>This exception is thrown when the provided S3 bucket name is not valid.</p>
newtype InvalidS3BucketNameException = InvalidS3BucketNameException Types.NoArguments
derive instance newtypeInvalidS3BucketNameException :: Newtype InvalidS3BucketNameException _
derive instance repGenericInvalidS3BucketNameException :: Generic InvalidS3BucketNameException _
instance showInvalidS3BucketNameException :: Show InvalidS3BucketNameException where show = genericShow
instance decodeInvalidS3BucketNameException :: Decode InvalidS3BucketNameException where decode = genericDecode options
instance encodeInvalidS3BucketNameException :: Encode InvalidS3BucketNameException where encode = genericEncode options



-- | <p>This exception is thrown when the provided S3 prefix is not valid.</p>
newtype InvalidS3PrefixException = InvalidS3PrefixException Types.NoArguments
derive instance newtypeInvalidS3PrefixException :: Newtype InvalidS3PrefixException _
derive instance repGenericInvalidS3PrefixException :: Generic InvalidS3PrefixException _
instance showInvalidS3PrefixException :: Show InvalidS3PrefixException where show = genericShow
instance decodeInvalidS3PrefixException :: Decode InvalidS3PrefixException where decode = genericDecode options
instance encodeInvalidS3PrefixException :: Encode InvalidS3PrefixException where encode = genericEncode options



-- | <p>This exception is thrown when the provided SNS topic name is not valid.</p>
newtype InvalidSnsTopicNameException = InvalidSnsTopicNameException Types.NoArguments
derive instance newtypeInvalidSnsTopicNameException :: Newtype InvalidSnsTopicNameException _
derive instance repGenericInvalidSnsTopicNameException :: Generic InvalidSnsTopicNameException _
instance showInvalidSnsTopicNameException :: Show InvalidSnsTopicNameException where show = genericShow
instance decodeInvalidSnsTopicNameException :: Decode InvalidSnsTopicNameException where decode = genericDecode options
instance encodeInvalidSnsTopicNameException :: Encode InvalidSnsTopicNameException where encode = genericEncode options



-- | <p>This exception is thrown when the key or value specified for the tag does not match the regular expression <code>^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$</code>.</p>
newtype InvalidTagParameterException = InvalidTagParameterException Types.NoArguments
derive instance newtypeInvalidTagParameterException :: Newtype InvalidTagParameterException _
derive instance repGenericInvalidTagParameterException :: Generic InvalidTagParameterException _
instance showInvalidTagParameterException :: Show InvalidTagParameterException where show = genericShow
instance decodeInvalidTagParameterException :: Decode InvalidTagParameterException where decode = genericDecode options
instance encodeInvalidTagParameterException :: Encode InvalidTagParameterException where encode = genericEncode options



-- | <p>Occurs if the timestamp values are invalid. Either the start time occurs after the end time or the time range is outside the range of possible values.</p>
newtype InvalidTimeRangeException = InvalidTimeRangeException Types.NoArguments
derive instance newtypeInvalidTimeRangeException :: Newtype InvalidTimeRangeException _
derive instance repGenericInvalidTimeRangeException :: Generic InvalidTimeRangeException _
instance showInvalidTimeRangeException :: Show InvalidTimeRangeException where show = genericShow
instance decodeInvalidTimeRangeException :: Decode InvalidTimeRangeException where decode = genericDecode options
instance encodeInvalidTimeRangeException :: Encode InvalidTimeRangeException where encode = genericEncode options



-- | <p>Reserved for future use.</p>
newtype InvalidTokenException = InvalidTokenException Types.NoArguments
derive instance newtypeInvalidTokenException :: Newtype InvalidTokenException _
derive instance repGenericInvalidTokenException :: Generic InvalidTokenException _
instance showInvalidTokenException :: Show InvalidTokenException where show = genericShow
instance decodeInvalidTokenException :: Decode InvalidTokenException where decode = genericDecode options
instance encodeInvalidTokenException :: Encode InvalidTokenException where encode = genericEncode options



-- | <p>This exception is thrown when the provided trail name is not valid. Trail names must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul>
newtype InvalidTrailNameException = InvalidTrailNameException Types.NoArguments
derive instance newtypeInvalidTrailNameException :: Newtype InvalidTrailNameException _
derive instance repGenericInvalidTrailNameException :: Generic InvalidTrailNameException _
instance showInvalidTrailNameException :: Show InvalidTrailNameException where show = genericShow
instance decodeInvalidTrailNameException :: Decode InvalidTrailNameException where decode = genericDecode options
instance encodeInvalidTrailNameException :: Encode InvalidTrailNameException where encode = genericEncode options



-- | <p>This exception is thrown when there is an issue with the specified KMS key and the trail can’t be updated.</p>
newtype KmsException = KmsException Types.NoArguments
derive instance newtypeKmsException :: Newtype KmsException _
derive instance repGenericKmsException :: Generic KmsException _
instance showKmsException :: Show KmsException where show = genericShow
instance decodeKmsException :: Decode KmsException where decode = genericDecode options
instance encodeKmsException :: Encode KmsException where encode = genericEncode options



-- | <p>This exception is deprecated.</p>
newtype KmsKeyDisabledException = KmsKeyDisabledException Types.NoArguments
derive instance newtypeKmsKeyDisabledException :: Newtype KmsKeyDisabledException _
derive instance repGenericKmsKeyDisabledException :: Generic KmsKeyDisabledException _
instance showKmsKeyDisabledException :: Show KmsKeyDisabledException where show = genericShow
instance decodeKmsKeyDisabledException :: Decode KmsKeyDisabledException where decode = genericDecode options
instance encodeKmsKeyDisabledException :: Encode KmsKeyDisabledException where encode = genericEncode options



-- | <p>This exception is thrown when the KMS key does not exist, or when the S3 bucket and the KMS key are not in the same region.</p>
newtype KmsKeyNotFoundException = KmsKeyNotFoundException Types.NoArguments
derive instance newtypeKmsKeyNotFoundException :: Newtype KmsKeyNotFoundException _
derive instance repGenericKmsKeyNotFoundException :: Generic KmsKeyNotFoundException _
instance showKmsKeyNotFoundException :: Show KmsKeyNotFoundException where show = genericShow
instance decodeKmsKeyNotFoundException :: Decode KmsKeyNotFoundException where decode = genericDecode options
instance encodeKmsKeyNotFoundException :: Encode KmsKeyNotFoundException where encode = genericEncode options



-- | <p>Requests the public keys for a specified time range.</p>
newtype ListPublicKeysRequest = ListPublicKeysRequest 
  { "StartTime" :: Maybe (Date)
  , "EndTime" :: Maybe (Date)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListPublicKeysRequest :: Newtype ListPublicKeysRequest _
derive instance repGenericListPublicKeysRequest :: Generic ListPublicKeysRequest _
instance showListPublicKeysRequest :: Show ListPublicKeysRequest where show = genericShow
instance decodeListPublicKeysRequest :: Decode ListPublicKeysRequest where decode = genericDecode options
instance encodeListPublicKeysRequest :: Encode ListPublicKeysRequest where encode = genericEncode options

-- | Constructs ListPublicKeysRequest from required parameters
newListPublicKeysRequest :: ListPublicKeysRequest
newListPublicKeysRequest  = ListPublicKeysRequest { "EndTime": Nothing, "NextToken": Nothing, "StartTime": Nothing }

-- | Constructs ListPublicKeysRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPublicKeysRequest' :: ( { "StartTime" :: Maybe (Date) , "EndTime" :: Maybe (Date) , "NextToken" :: Maybe (String) } -> {"StartTime" :: Maybe (Date) , "EndTime" :: Maybe (Date) , "NextToken" :: Maybe (String) } ) -> ListPublicKeysRequest
newListPublicKeysRequest'  customize = (ListPublicKeysRequest <<< customize) { "EndTime": Nothing, "NextToken": Nothing, "StartTime": Nothing }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype ListPublicKeysResponse = ListPublicKeysResponse 
  { "PublicKeyList" :: Maybe (PublicKeyList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListPublicKeysResponse :: Newtype ListPublicKeysResponse _
derive instance repGenericListPublicKeysResponse :: Generic ListPublicKeysResponse _
instance showListPublicKeysResponse :: Show ListPublicKeysResponse where show = genericShow
instance decodeListPublicKeysResponse :: Decode ListPublicKeysResponse where decode = genericDecode options
instance encodeListPublicKeysResponse :: Encode ListPublicKeysResponse where encode = genericEncode options

-- | Constructs ListPublicKeysResponse from required parameters
newListPublicKeysResponse :: ListPublicKeysResponse
newListPublicKeysResponse  = ListPublicKeysResponse { "NextToken": Nothing, "PublicKeyList": Nothing }

-- | Constructs ListPublicKeysResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPublicKeysResponse' :: ( { "PublicKeyList" :: Maybe (PublicKeyList) , "NextToken" :: Maybe (String) } -> {"PublicKeyList" :: Maybe (PublicKeyList) , "NextToken" :: Maybe (String) } ) -> ListPublicKeysResponse
newListPublicKeysResponse'  customize = (ListPublicKeysResponse <<< customize) { "NextToken": Nothing, "PublicKeyList": Nothing }



-- | <p>Specifies a list of trail tags to return.</p>
newtype ListTagsRequest = ListTagsRequest 
  { "ResourceIdList" :: (ResourceIdList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListTagsRequest :: Newtype ListTagsRequest _
derive instance repGenericListTagsRequest :: Generic ListTagsRequest _
instance showListTagsRequest :: Show ListTagsRequest where show = genericShow
instance decodeListTagsRequest :: Decode ListTagsRequest where decode = genericDecode options
instance encodeListTagsRequest :: Encode ListTagsRequest where encode = genericEncode options

-- | Constructs ListTagsRequest from required parameters
newListTagsRequest :: ResourceIdList -> ListTagsRequest
newListTagsRequest _ResourceIdList = ListTagsRequest { "ResourceIdList": _ResourceIdList, "NextToken": Nothing }

-- | Constructs ListTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsRequest' :: ResourceIdList -> ( { "ResourceIdList" :: (ResourceIdList) , "NextToken" :: Maybe (String) } -> {"ResourceIdList" :: (ResourceIdList) , "NextToken" :: Maybe (String) } ) -> ListTagsRequest
newListTagsRequest' _ResourceIdList customize = (ListTagsRequest <<< customize) { "ResourceIdList": _ResourceIdList, "NextToken": Nothing }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype ListTagsResponse = ListTagsResponse 
  { "ResourceTagList" :: Maybe (ResourceTagList)
  , "NextToken" :: Maybe (String)
  }
derive instance newtypeListTagsResponse :: Newtype ListTagsResponse _
derive instance repGenericListTagsResponse :: Generic ListTagsResponse _
instance showListTagsResponse :: Show ListTagsResponse where show = genericShow
instance decodeListTagsResponse :: Decode ListTagsResponse where decode = genericDecode options
instance encodeListTagsResponse :: Encode ListTagsResponse where encode = genericEncode options

-- | Constructs ListTagsResponse from required parameters
newListTagsResponse :: ListTagsResponse
newListTagsResponse  = ListTagsResponse { "NextToken": Nothing, "ResourceTagList": Nothing }

-- | Constructs ListTagsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsResponse' :: ( { "ResourceTagList" :: Maybe (ResourceTagList) , "NextToken" :: Maybe (String) } -> {"ResourceTagList" :: Maybe (ResourceTagList) , "NextToken" :: Maybe (String) } ) -> ListTagsResponse
newListTagsResponse'  customize = (ListTagsResponse <<< customize) { "NextToken": Nothing, "ResourceTagList": Nothing }



-- | <p>Specifies an attribute and value that filter the events returned.</p>
newtype LookupAttribute = LookupAttribute 
  { "AttributeKey" :: (LookupAttributeKey)
  , "AttributeValue" :: (String)
  }
derive instance newtypeLookupAttribute :: Newtype LookupAttribute _
derive instance repGenericLookupAttribute :: Generic LookupAttribute _
instance showLookupAttribute :: Show LookupAttribute where show = genericShow
instance decodeLookupAttribute :: Decode LookupAttribute where decode = genericDecode options
instance encodeLookupAttribute :: Encode LookupAttribute where encode = genericEncode options

-- | Constructs LookupAttribute from required parameters
newLookupAttribute :: LookupAttributeKey -> String -> LookupAttribute
newLookupAttribute _AttributeKey _AttributeValue = LookupAttribute { "AttributeKey": _AttributeKey, "AttributeValue": _AttributeValue }

-- | Constructs LookupAttribute's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLookupAttribute' :: LookupAttributeKey -> String -> ( { "AttributeKey" :: (LookupAttributeKey) , "AttributeValue" :: (String) } -> {"AttributeKey" :: (LookupAttributeKey) , "AttributeValue" :: (String) } ) -> LookupAttribute
newLookupAttribute' _AttributeKey _AttributeValue customize = (LookupAttribute <<< customize) { "AttributeKey": _AttributeKey, "AttributeValue": _AttributeValue }



newtype LookupAttributeKey = LookupAttributeKey String
derive instance newtypeLookupAttributeKey :: Newtype LookupAttributeKey _
derive instance repGenericLookupAttributeKey :: Generic LookupAttributeKey _
instance showLookupAttributeKey :: Show LookupAttributeKey where show = genericShow
instance decodeLookupAttributeKey :: Decode LookupAttributeKey where decode = genericDecode options
instance encodeLookupAttributeKey :: Encode LookupAttributeKey where encode = genericEncode options



newtype LookupAttributesList = LookupAttributesList (Array LookupAttribute)
derive instance newtypeLookupAttributesList :: Newtype LookupAttributesList _
derive instance repGenericLookupAttributesList :: Generic LookupAttributesList _
instance showLookupAttributesList :: Show LookupAttributesList where show = genericShow
instance decodeLookupAttributesList :: Decode LookupAttributesList where decode = genericDecode options
instance encodeLookupAttributesList :: Encode LookupAttributesList where encode = genericEncode options



-- | <p>Contains a request for LookupEvents.</p>
newtype LookupEventsRequest = LookupEventsRequest 
  { "LookupAttributes" :: Maybe (LookupAttributesList)
  , "StartTime" :: Maybe (Date)
  , "EndTime" :: Maybe (Date)
  , "MaxResults" :: Maybe (MaxResults)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeLookupEventsRequest :: Newtype LookupEventsRequest _
derive instance repGenericLookupEventsRequest :: Generic LookupEventsRequest _
instance showLookupEventsRequest :: Show LookupEventsRequest where show = genericShow
instance decodeLookupEventsRequest :: Decode LookupEventsRequest where decode = genericDecode options
instance encodeLookupEventsRequest :: Encode LookupEventsRequest where encode = genericEncode options

-- | Constructs LookupEventsRequest from required parameters
newLookupEventsRequest :: LookupEventsRequest
newLookupEventsRequest  = LookupEventsRequest { "EndTime": Nothing, "LookupAttributes": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "StartTime": Nothing }

-- | Constructs LookupEventsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLookupEventsRequest' :: ( { "LookupAttributes" :: Maybe (LookupAttributesList) , "StartTime" :: Maybe (Date) , "EndTime" :: Maybe (Date) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } -> {"LookupAttributes" :: Maybe (LookupAttributesList) , "StartTime" :: Maybe (Date) , "EndTime" :: Maybe (Date) , "MaxResults" :: Maybe (MaxResults) , "NextToken" :: Maybe (NextToken) } ) -> LookupEventsRequest
newLookupEventsRequest'  customize = (LookupEventsRequest <<< customize) { "EndTime": Nothing, "LookupAttributes": Nothing, "MaxResults": Nothing, "NextToken": Nothing, "StartTime": Nothing }



-- | <p>Contains a response to a LookupEvents action.</p>
newtype LookupEventsResponse = LookupEventsResponse 
  { "Events" :: Maybe (EventsList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeLookupEventsResponse :: Newtype LookupEventsResponse _
derive instance repGenericLookupEventsResponse :: Generic LookupEventsResponse _
instance showLookupEventsResponse :: Show LookupEventsResponse where show = genericShow
instance decodeLookupEventsResponse :: Decode LookupEventsResponse where decode = genericDecode options
instance encodeLookupEventsResponse :: Encode LookupEventsResponse where encode = genericEncode options

-- | Constructs LookupEventsResponse from required parameters
newLookupEventsResponse :: LookupEventsResponse
newLookupEventsResponse  = LookupEventsResponse { "Events": Nothing, "NextToken": Nothing }

-- | Constructs LookupEventsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newLookupEventsResponse' :: ( { "Events" :: Maybe (EventsList) , "NextToken" :: Maybe (NextToken) } -> {"Events" :: Maybe (EventsList) , "NextToken" :: Maybe (NextToken) } ) -> LookupEventsResponse
newLookupEventsResponse'  customize = (LookupEventsResponse <<< customize) { "Events": Nothing, "NextToken": Nothing }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



-- | <p>This exception is thrown when the maximum number of trails is reached.</p>
newtype MaximumNumberOfTrailsExceededException = MaximumNumberOfTrailsExceededException Types.NoArguments
derive instance newtypeMaximumNumberOfTrailsExceededException :: Newtype MaximumNumberOfTrailsExceededException _
derive instance repGenericMaximumNumberOfTrailsExceededException :: Generic MaximumNumberOfTrailsExceededException _
instance showMaximumNumberOfTrailsExceededException :: Show MaximumNumberOfTrailsExceededException where show = genericShow
instance decodeMaximumNumberOfTrailsExceededException :: Decode MaximumNumberOfTrailsExceededException where decode = genericDecode options
instance encodeMaximumNumberOfTrailsExceededException :: Encode MaximumNumberOfTrailsExceededException where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>This exception is thrown when the requested operation is not permitted.</p>
newtype OperationNotPermittedException = OperationNotPermittedException Types.NoArguments
derive instance newtypeOperationNotPermittedException :: Newtype OperationNotPermittedException _
derive instance repGenericOperationNotPermittedException :: Generic OperationNotPermittedException _
instance showOperationNotPermittedException :: Show OperationNotPermittedException where show = genericShow
instance decodeOperationNotPermittedException :: Decode OperationNotPermittedException where decode = genericDecode options
instance encodeOperationNotPermittedException :: Encode OperationNotPermittedException where encode = genericEncode options



-- | <p>Contains information about a returned public key.</p>
newtype PublicKey = PublicKey 
  { "Value" :: Maybe (ByteBuffer)
  , "ValidityStartTime" :: Maybe (Date)
  , "ValidityEndTime" :: Maybe (Date)
  , "Fingerprint" :: Maybe (String)
  }
derive instance newtypePublicKey :: Newtype PublicKey _
derive instance repGenericPublicKey :: Generic PublicKey _
instance showPublicKey :: Show PublicKey where show = genericShow
instance decodePublicKey :: Decode PublicKey where decode = genericDecode options
instance encodePublicKey :: Encode PublicKey where encode = genericEncode options

-- | Constructs PublicKey from required parameters
newPublicKey :: PublicKey
newPublicKey  = PublicKey { "Fingerprint": Nothing, "ValidityEndTime": Nothing, "ValidityStartTime": Nothing, "Value": Nothing }

-- | Constructs PublicKey's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPublicKey' :: ( { "Value" :: Maybe (ByteBuffer) , "ValidityStartTime" :: Maybe (Date) , "ValidityEndTime" :: Maybe (Date) , "Fingerprint" :: Maybe (String) } -> {"Value" :: Maybe (ByteBuffer) , "ValidityStartTime" :: Maybe (Date) , "ValidityEndTime" :: Maybe (Date) , "Fingerprint" :: Maybe (String) } ) -> PublicKey
newPublicKey'  customize = (PublicKey <<< customize) { "Fingerprint": Nothing, "ValidityEndTime": Nothing, "ValidityStartTime": Nothing, "Value": Nothing }



newtype PublicKeyList = PublicKeyList (Array PublicKey)
derive instance newtypePublicKeyList :: Newtype PublicKeyList _
derive instance repGenericPublicKeyList :: Generic PublicKeyList _
instance showPublicKeyList :: Show PublicKeyList where show = genericShow
instance decodePublicKeyList :: Decode PublicKeyList where decode = genericDecode options
instance encodePublicKeyList :: Encode PublicKeyList where encode = genericEncode options



newtype PutEventSelectorsRequest = PutEventSelectorsRequest 
  { "TrailName" :: (String)
  , "EventSelectors" :: (EventSelectors)
  }
derive instance newtypePutEventSelectorsRequest :: Newtype PutEventSelectorsRequest _
derive instance repGenericPutEventSelectorsRequest :: Generic PutEventSelectorsRequest _
instance showPutEventSelectorsRequest :: Show PutEventSelectorsRequest where show = genericShow
instance decodePutEventSelectorsRequest :: Decode PutEventSelectorsRequest where decode = genericDecode options
instance encodePutEventSelectorsRequest :: Encode PutEventSelectorsRequest where encode = genericEncode options

-- | Constructs PutEventSelectorsRequest from required parameters
newPutEventSelectorsRequest :: EventSelectors -> String -> PutEventSelectorsRequest
newPutEventSelectorsRequest _EventSelectors _TrailName = PutEventSelectorsRequest { "EventSelectors": _EventSelectors, "TrailName": _TrailName }

-- | Constructs PutEventSelectorsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutEventSelectorsRequest' :: EventSelectors -> String -> ( { "TrailName" :: (String) , "EventSelectors" :: (EventSelectors) } -> {"TrailName" :: (String) , "EventSelectors" :: (EventSelectors) } ) -> PutEventSelectorsRequest
newPutEventSelectorsRequest' _EventSelectors _TrailName customize = (PutEventSelectorsRequest <<< customize) { "EventSelectors": _EventSelectors, "TrailName": _TrailName }



newtype PutEventSelectorsResponse = PutEventSelectorsResponse 
  { "TrailARN" :: Maybe (String)
  , "EventSelectors" :: Maybe (EventSelectors)
  }
derive instance newtypePutEventSelectorsResponse :: Newtype PutEventSelectorsResponse _
derive instance repGenericPutEventSelectorsResponse :: Generic PutEventSelectorsResponse _
instance showPutEventSelectorsResponse :: Show PutEventSelectorsResponse where show = genericShow
instance decodePutEventSelectorsResponse :: Decode PutEventSelectorsResponse where decode = genericDecode options
instance encodePutEventSelectorsResponse :: Encode PutEventSelectorsResponse where encode = genericEncode options

-- | Constructs PutEventSelectorsResponse from required parameters
newPutEventSelectorsResponse :: PutEventSelectorsResponse
newPutEventSelectorsResponse  = PutEventSelectorsResponse { "EventSelectors": Nothing, "TrailARN": Nothing }

-- | Constructs PutEventSelectorsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutEventSelectorsResponse' :: ( { "TrailARN" :: Maybe (String) , "EventSelectors" :: Maybe (EventSelectors) } -> {"TrailARN" :: Maybe (String) , "EventSelectors" :: Maybe (EventSelectors) } ) -> PutEventSelectorsResponse
newPutEventSelectorsResponse'  customize = (PutEventSelectorsResponse <<< customize) { "EventSelectors": Nothing, "TrailARN": Nothing }



newtype ReadWriteType = ReadWriteType String
derive instance newtypeReadWriteType :: Newtype ReadWriteType _
derive instance repGenericReadWriteType :: Generic ReadWriteType _
instance showReadWriteType :: Show ReadWriteType where show = genericShow
instance decodeReadWriteType :: Decode ReadWriteType where decode = genericDecode options
instance encodeReadWriteType :: Encode ReadWriteType where encode = genericEncode options



-- | <p>Specifies the tags to remove from a trail.</p>
newtype RemoveTagsRequest = RemoveTagsRequest 
  { "ResourceId" :: (String)
  , "TagsList" :: Maybe (TagsList)
  }
derive instance newtypeRemoveTagsRequest :: Newtype RemoveTagsRequest _
derive instance repGenericRemoveTagsRequest :: Generic RemoveTagsRequest _
instance showRemoveTagsRequest :: Show RemoveTagsRequest where show = genericShow
instance decodeRemoveTagsRequest :: Decode RemoveTagsRequest where decode = genericDecode options
instance encodeRemoveTagsRequest :: Encode RemoveTagsRequest where encode = genericEncode options

-- | Constructs RemoveTagsRequest from required parameters
newRemoveTagsRequest :: String -> RemoveTagsRequest
newRemoveTagsRequest _ResourceId = RemoveTagsRequest { "ResourceId": _ResourceId, "TagsList": Nothing }

-- | Constructs RemoveTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveTagsRequest' :: String -> ( { "ResourceId" :: (String) , "TagsList" :: Maybe (TagsList) } -> {"ResourceId" :: (String) , "TagsList" :: Maybe (TagsList) } ) -> RemoveTagsRequest
newRemoveTagsRequest' _ResourceId customize = (RemoveTagsRequest <<< customize) { "ResourceId": _ResourceId, "TagsList": Nothing }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype RemoveTagsResponse = RemoveTagsResponse Types.NoArguments
derive instance newtypeRemoveTagsResponse :: Newtype RemoveTagsResponse _
derive instance repGenericRemoveTagsResponse :: Generic RemoveTagsResponse _
instance showRemoveTagsResponse :: Show RemoveTagsResponse where show = genericShow
instance decodeRemoveTagsResponse :: Decode RemoveTagsResponse where decode = genericDecode options
instance encodeRemoveTagsResponse :: Encode RemoveTagsResponse where encode = genericEncode options



-- | <p>Specifies the type and name of a resource referenced by an event.</p>
newtype Resource = Resource 
  { "ResourceType" :: Maybe (String)
  , "ResourceName" :: Maybe (String)
  }
derive instance newtypeResource :: Newtype Resource _
derive instance repGenericResource :: Generic Resource _
instance showResource :: Show Resource where show = genericShow
instance decodeResource :: Decode Resource where decode = genericDecode options
instance encodeResource :: Encode Resource where encode = genericEncode options

-- | Constructs Resource from required parameters
newResource :: Resource
newResource  = Resource { "ResourceName": Nothing, "ResourceType": Nothing }

-- | Constructs Resource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResource' :: ( { "ResourceType" :: Maybe (String) , "ResourceName" :: Maybe (String) } -> {"ResourceType" :: Maybe (String) , "ResourceName" :: Maybe (String) } ) -> Resource
newResource'  customize = (Resource <<< customize) { "ResourceName": Nothing, "ResourceType": Nothing }



newtype ResourceIdList = ResourceIdList (Array String)
derive instance newtypeResourceIdList :: Newtype ResourceIdList _
derive instance repGenericResourceIdList :: Generic ResourceIdList _
instance showResourceIdList :: Show ResourceIdList where show = genericShow
instance decodeResourceIdList :: Decode ResourceIdList where decode = genericDecode options
instance encodeResourceIdList :: Encode ResourceIdList where encode = genericEncode options



-- | <p>A list of resources referenced by the event returned.</p>
newtype ResourceList = ResourceList (Array Resource)
derive instance newtypeResourceList :: Newtype ResourceList _
derive instance repGenericResourceList :: Generic ResourceList _
instance showResourceList :: Show ResourceList where show = genericShow
instance decodeResourceList :: Decode ResourceList where decode = genericDecode options
instance encodeResourceList :: Encode ResourceList where encode = genericEncode options



-- | <p>This exception is thrown when the specified resource is not found.</p>
newtype ResourceNotFoundException = ResourceNotFoundException Types.NoArguments
derive instance newtypeResourceNotFoundException :: Newtype ResourceNotFoundException _
derive instance repGenericResourceNotFoundException :: Generic ResourceNotFoundException _
instance showResourceNotFoundException :: Show ResourceNotFoundException where show = genericShow
instance decodeResourceNotFoundException :: Decode ResourceNotFoundException where decode = genericDecode options
instance encodeResourceNotFoundException :: Encode ResourceNotFoundException where encode = genericEncode options



-- | <p>A resource tag.</p>
newtype ResourceTag = ResourceTag 
  { "ResourceId" :: Maybe (String)
  , "TagsList" :: Maybe (TagsList)
  }
derive instance newtypeResourceTag :: Newtype ResourceTag _
derive instance repGenericResourceTag :: Generic ResourceTag _
instance showResourceTag :: Show ResourceTag where show = genericShow
instance decodeResourceTag :: Decode ResourceTag where decode = genericDecode options
instance encodeResourceTag :: Encode ResourceTag where encode = genericEncode options

-- | Constructs ResourceTag from required parameters
newResourceTag :: ResourceTag
newResourceTag  = ResourceTag { "ResourceId": Nothing, "TagsList": Nothing }

-- | Constructs ResourceTag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newResourceTag' :: ( { "ResourceId" :: Maybe (String) , "TagsList" :: Maybe (TagsList) } -> {"ResourceId" :: Maybe (String) , "TagsList" :: Maybe (TagsList) } ) -> ResourceTag
newResourceTag'  customize = (ResourceTag <<< customize) { "ResourceId": Nothing, "TagsList": Nothing }



newtype ResourceTagList = ResourceTagList (Array ResourceTag)
derive instance newtypeResourceTagList :: Newtype ResourceTagList _
derive instance repGenericResourceTagList :: Generic ResourceTagList _
instance showResourceTagList :: Show ResourceTagList where show = genericShow
instance decodeResourceTagList :: Decode ResourceTagList where decode = genericDecode options
instance encodeResourceTagList :: Encode ResourceTagList where encode = genericEncode options



-- | <p>This exception is thrown when the specified resource type is not supported by CloudTrail.</p>
newtype ResourceTypeNotSupportedException = ResourceTypeNotSupportedException Types.NoArguments
derive instance newtypeResourceTypeNotSupportedException :: Newtype ResourceTypeNotSupportedException _
derive instance repGenericResourceTypeNotSupportedException :: Generic ResourceTypeNotSupportedException _
instance showResourceTypeNotSupportedException :: Show ResourceTypeNotSupportedException where show = genericShow
instance decodeResourceTypeNotSupportedException :: Decode ResourceTypeNotSupportedException where decode = genericDecode options
instance encodeResourceTypeNotSupportedException :: Encode ResourceTypeNotSupportedException where encode = genericEncode options



-- | <p>This exception is thrown when the specified S3 bucket does not exist.</p>
newtype S3BucketDoesNotExistException = S3BucketDoesNotExistException Types.NoArguments
derive instance newtypeS3BucketDoesNotExistException :: Newtype S3BucketDoesNotExistException _
derive instance repGenericS3BucketDoesNotExistException :: Generic S3BucketDoesNotExistException _
instance showS3BucketDoesNotExistException :: Show S3BucketDoesNotExistException where show = genericShow
instance decodeS3BucketDoesNotExistException :: Decode S3BucketDoesNotExistException where decode = genericDecode options
instance encodeS3BucketDoesNotExistException :: Encode S3BucketDoesNotExistException where encode = genericEncode options



-- | <p>The request to CloudTrail to start logging AWS API calls for an account.</p>
newtype StartLoggingRequest = StartLoggingRequest 
  { "Name" :: (String)
  }
derive instance newtypeStartLoggingRequest :: Newtype StartLoggingRequest _
derive instance repGenericStartLoggingRequest :: Generic StartLoggingRequest _
instance showStartLoggingRequest :: Show StartLoggingRequest where show = genericShow
instance decodeStartLoggingRequest :: Decode StartLoggingRequest where decode = genericDecode options
instance encodeStartLoggingRequest :: Encode StartLoggingRequest where encode = genericEncode options

-- | Constructs StartLoggingRequest from required parameters
newStartLoggingRequest :: String -> StartLoggingRequest
newStartLoggingRequest _Name = StartLoggingRequest { "Name": _Name }

-- | Constructs StartLoggingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStartLoggingRequest' :: String -> ( { "Name" :: (String) } -> {"Name" :: (String) } ) -> StartLoggingRequest
newStartLoggingRequest' _Name customize = (StartLoggingRequest <<< customize) { "Name": _Name }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype StartLoggingResponse = StartLoggingResponse Types.NoArguments
derive instance newtypeStartLoggingResponse :: Newtype StartLoggingResponse _
derive instance repGenericStartLoggingResponse :: Generic StartLoggingResponse _
instance showStartLoggingResponse :: Show StartLoggingResponse where show = genericShow
instance decodeStartLoggingResponse :: Decode StartLoggingResponse where decode = genericDecode options
instance encodeStartLoggingResponse :: Encode StartLoggingResponse where encode = genericEncode options



-- | <p>Passes the request to CloudTrail to stop logging AWS API calls for the specified account.</p>
newtype StopLoggingRequest = StopLoggingRequest 
  { "Name" :: (String)
  }
derive instance newtypeStopLoggingRequest :: Newtype StopLoggingRequest _
derive instance repGenericStopLoggingRequest :: Generic StopLoggingRequest _
instance showStopLoggingRequest :: Show StopLoggingRequest where show = genericShow
instance decodeStopLoggingRequest :: Decode StopLoggingRequest where decode = genericDecode options
instance encodeStopLoggingRequest :: Encode StopLoggingRequest where encode = genericEncode options

-- | Constructs StopLoggingRequest from required parameters
newStopLoggingRequest :: String -> StopLoggingRequest
newStopLoggingRequest _Name = StopLoggingRequest { "Name": _Name }

-- | Constructs StopLoggingRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStopLoggingRequest' :: String -> ( { "Name" :: (String) } -> {"Name" :: (String) } ) -> StopLoggingRequest
newStopLoggingRequest' _Name customize = (StopLoggingRequest <<< customize) { "Name": _Name }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype StopLoggingResponse = StopLoggingResponse Types.NoArguments
derive instance newtypeStopLoggingResponse :: Newtype StopLoggingResponse _
derive instance repGenericStopLoggingResponse :: Generic StopLoggingResponse _
instance showStopLoggingResponse :: Show StopLoggingResponse where show = genericShow
instance decodeStopLoggingResponse :: Decode StopLoggingResponse where decode = genericDecode options
instance encodeStopLoggingResponse :: Encode StopLoggingResponse where encode = genericEncode options



-- | <p>A custom key-value pair associated with a resource such as a CloudTrail trail.</p>
newtype Tag = Tag 
  { "Key" :: (String)
  , "Value" :: Maybe (String)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: String -> Tag
newTag _Key = Tag { "Key": _Key, "Value": Nothing }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: String -> ( { "Key" :: (String) , "Value" :: Maybe (String) } -> {"Key" :: (String) , "Value" :: Maybe (String) } ) -> Tag
newTag' _Key customize = (Tag <<< customize) { "Key": _Key, "Value": Nothing }



-- | <p>The number of tags per trail has exceeded the permitted amount. Currently, the limit is 50.</p>
newtype TagsLimitExceededException = TagsLimitExceededException Types.NoArguments
derive instance newtypeTagsLimitExceededException :: Newtype TagsLimitExceededException _
derive instance repGenericTagsLimitExceededException :: Generic TagsLimitExceededException _
instance showTagsLimitExceededException :: Show TagsLimitExceededException where show = genericShow
instance decodeTagsLimitExceededException :: Decode TagsLimitExceededException where decode = genericDecode options
instance encodeTagsLimitExceededException :: Encode TagsLimitExceededException where encode = genericEncode options



-- | <p>A list of tags.</p>
newtype TagsList = TagsList (Array Tag)
derive instance newtypeTagsList :: Newtype TagsList _
derive instance repGenericTagsList :: Generic TagsList _
instance showTagsList :: Show TagsList where show = genericShow
instance decodeTagsList :: Decode TagsList where decode = genericDecode options
instance encodeTagsList :: Encode TagsList where encode = genericEncode options



-- | <p>The settings for a trail.</p>
newtype Trail = Trail 
  { "Name" :: Maybe (String)
  , "S3BucketName" :: Maybe (String)
  , "S3KeyPrefix" :: Maybe (String)
  , "SnsTopicName" :: Maybe (String)
  , "SnsTopicARN" :: Maybe (String)
  , "IncludeGlobalServiceEvents" :: Maybe (Boolean)
  , "IsMultiRegionTrail" :: Maybe (Boolean)
  , "HomeRegion" :: Maybe (String)
  , "TrailARN" :: Maybe (String)
  , "LogFileValidationEnabled" :: Maybe (Boolean)
  , "CloudWatchLogsLogGroupArn" :: Maybe (String)
  , "CloudWatchLogsRoleArn" :: Maybe (String)
  , "KmsKeyId" :: Maybe (String)
  , "HasCustomEventSelectors" :: Maybe (Boolean)
  }
derive instance newtypeTrail :: Newtype Trail _
derive instance repGenericTrail :: Generic Trail _
instance showTrail :: Show Trail where show = genericShow
instance decodeTrail :: Decode Trail where decode = genericDecode options
instance encodeTrail :: Encode Trail where encode = genericEncode options

-- | Constructs Trail from required parameters
newTrail :: Trail
newTrail  = Trail { "CloudWatchLogsLogGroupArn": Nothing, "CloudWatchLogsRoleArn": Nothing, "HasCustomEventSelectors": Nothing, "HomeRegion": Nothing, "IncludeGlobalServiceEvents": Nothing, "IsMultiRegionTrail": Nothing, "KmsKeyId": Nothing, "LogFileValidationEnabled": Nothing, "Name": Nothing, "S3BucketName": Nothing, "S3KeyPrefix": Nothing, "SnsTopicARN": Nothing, "SnsTopicName": Nothing, "TrailARN": Nothing }

-- | Constructs Trail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTrail' :: ( { "Name" :: Maybe (String) , "S3BucketName" :: Maybe (String) , "S3KeyPrefix" :: Maybe (String) , "SnsTopicName" :: Maybe (String) , "SnsTopicARN" :: Maybe (String) , "IncludeGlobalServiceEvents" :: Maybe (Boolean) , "IsMultiRegionTrail" :: Maybe (Boolean) , "HomeRegion" :: Maybe (String) , "TrailARN" :: Maybe (String) , "LogFileValidationEnabled" :: Maybe (Boolean) , "CloudWatchLogsLogGroupArn" :: Maybe (String) , "CloudWatchLogsRoleArn" :: Maybe (String) , "KmsKeyId" :: Maybe (String) , "HasCustomEventSelectors" :: Maybe (Boolean) } -> {"Name" :: Maybe (String) , "S3BucketName" :: Maybe (String) , "S3KeyPrefix" :: Maybe (String) , "SnsTopicName" :: Maybe (String) , "SnsTopicARN" :: Maybe (String) , "IncludeGlobalServiceEvents" :: Maybe (Boolean) , "IsMultiRegionTrail" :: Maybe (Boolean) , "HomeRegion" :: Maybe (String) , "TrailARN" :: Maybe (String) , "LogFileValidationEnabled" :: Maybe (Boolean) , "CloudWatchLogsLogGroupArn" :: Maybe (String) , "CloudWatchLogsRoleArn" :: Maybe (String) , "KmsKeyId" :: Maybe (String) , "HasCustomEventSelectors" :: Maybe (Boolean) } ) -> Trail
newTrail'  customize = (Trail <<< customize) { "CloudWatchLogsLogGroupArn": Nothing, "CloudWatchLogsRoleArn": Nothing, "HasCustomEventSelectors": Nothing, "HomeRegion": Nothing, "IncludeGlobalServiceEvents": Nothing, "IsMultiRegionTrail": Nothing, "KmsKeyId": Nothing, "LogFileValidationEnabled": Nothing, "Name": Nothing, "S3BucketName": Nothing, "S3KeyPrefix": Nothing, "SnsTopicARN": Nothing, "SnsTopicName": Nothing, "TrailARN": Nothing }



-- | <p>This exception is thrown when the specified trail already exists.</p>
newtype TrailAlreadyExistsException = TrailAlreadyExistsException Types.NoArguments
derive instance newtypeTrailAlreadyExistsException :: Newtype TrailAlreadyExistsException _
derive instance repGenericTrailAlreadyExistsException :: Generic TrailAlreadyExistsException _
instance showTrailAlreadyExistsException :: Show TrailAlreadyExistsException where show = genericShow
instance decodeTrailAlreadyExistsException :: Decode TrailAlreadyExistsException where decode = genericDecode options
instance encodeTrailAlreadyExistsException :: Encode TrailAlreadyExistsException where encode = genericEncode options



newtype TrailList = TrailList (Array Trail)
derive instance newtypeTrailList :: Newtype TrailList _
derive instance repGenericTrailList :: Generic TrailList _
instance showTrailList :: Show TrailList where show = genericShow
instance decodeTrailList :: Decode TrailList where decode = genericDecode options
instance encodeTrailList :: Encode TrailList where encode = genericEncode options



newtype TrailNameList = TrailNameList (Array String)
derive instance newtypeTrailNameList :: Newtype TrailNameList _
derive instance repGenericTrailNameList :: Generic TrailNameList _
instance showTrailNameList :: Show TrailNameList where show = genericShow
instance decodeTrailNameList :: Decode TrailNameList where decode = genericDecode options
instance encodeTrailNameList :: Encode TrailNameList where encode = genericEncode options



-- | <p>This exception is thrown when the trail with the given name is not found.</p>
newtype TrailNotFoundException = TrailNotFoundException Types.NoArguments
derive instance newtypeTrailNotFoundException :: Newtype TrailNotFoundException _
derive instance repGenericTrailNotFoundException :: Generic TrailNotFoundException _
instance showTrailNotFoundException :: Show TrailNotFoundException where show = genericShow
instance decodeTrailNotFoundException :: Decode TrailNotFoundException where decode = genericDecode options
instance encodeTrailNotFoundException :: Encode TrailNotFoundException where encode = genericEncode options



-- | <p>This exception is deprecated.</p>
newtype TrailNotProvidedException = TrailNotProvidedException Types.NoArguments
derive instance newtypeTrailNotProvidedException :: Newtype TrailNotProvidedException _
derive instance repGenericTrailNotProvidedException :: Generic TrailNotProvidedException _
instance showTrailNotProvidedException :: Show TrailNotProvidedException where show = genericShow
instance decodeTrailNotProvidedException :: Decode TrailNotProvidedException where decode = genericDecode options
instance encodeTrailNotProvidedException :: Encode TrailNotProvidedException where encode = genericEncode options



-- | <p>This exception is thrown when the requested operation is not supported.</p>
newtype UnsupportedOperationException = UnsupportedOperationException Types.NoArguments
derive instance newtypeUnsupportedOperationException :: Newtype UnsupportedOperationException _
derive instance repGenericUnsupportedOperationException :: Generic UnsupportedOperationException _
instance showUnsupportedOperationException :: Show UnsupportedOperationException where show = genericShow
instance decodeUnsupportedOperationException :: Decode UnsupportedOperationException where decode = genericDecode options
instance encodeUnsupportedOperationException :: Encode UnsupportedOperationException where encode = genericEncode options



-- | <p>Specifies settings to update for the trail.</p>
newtype UpdateTrailRequest = UpdateTrailRequest 
  { "Name" :: (String)
  , "S3BucketName" :: Maybe (String)
  , "S3KeyPrefix" :: Maybe (String)
  , "SnsTopicName" :: Maybe (String)
  , "IncludeGlobalServiceEvents" :: Maybe (Boolean)
  , "IsMultiRegionTrail" :: Maybe (Boolean)
  , "EnableLogFileValidation" :: Maybe (Boolean)
  , "CloudWatchLogsLogGroupArn" :: Maybe (String)
  , "CloudWatchLogsRoleArn" :: Maybe (String)
  , "KmsKeyId" :: Maybe (String)
  }
derive instance newtypeUpdateTrailRequest :: Newtype UpdateTrailRequest _
derive instance repGenericUpdateTrailRequest :: Generic UpdateTrailRequest _
instance showUpdateTrailRequest :: Show UpdateTrailRequest where show = genericShow
instance decodeUpdateTrailRequest :: Decode UpdateTrailRequest where decode = genericDecode options
instance encodeUpdateTrailRequest :: Encode UpdateTrailRequest where encode = genericEncode options

-- | Constructs UpdateTrailRequest from required parameters
newUpdateTrailRequest :: String -> UpdateTrailRequest
newUpdateTrailRequest _Name = UpdateTrailRequest { "Name": _Name, "CloudWatchLogsLogGroupArn": Nothing, "CloudWatchLogsRoleArn": Nothing, "EnableLogFileValidation": Nothing, "IncludeGlobalServiceEvents": Nothing, "IsMultiRegionTrail": Nothing, "KmsKeyId": Nothing, "S3BucketName": Nothing, "S3KeyPrefix": Nothing, "SnsTopicName": Nothing }

-- | Constructs UpdateTrailRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTrailRequest' :: String -> ( { "Name" :: (String) , "S3BucketName" :: Maybe (String) , "S3KeyPrefix" :: Maybe (String) , "SnsTopicName" :: Maybe (String) , "IncludeGlobalServiceEvents" :: Maybe (Boolean) , "IsMultiRegionTrail" :: Maybe (Boolean) , "EnableLogFileValidation" :: Maybe (Boolean) , "CloudWatchLogsLogGroupArn" :: Maybe (String) , "CloudWatchLogsRoleArn" :: Maybe (String) , "KmsKeyId" :: Maybe (String) } -> {"Name" :: (String) , "S3BucketName" :: Maybe (String) , "S3KeyPrefix" :: Maybe (String) , "SnsTopicName" :: Maybe (String) , "IncludeGlobalServiceEvents" :: Maybe (Boolean) , "IsMultiRegionTrail" :: Maybe (Boolean) , "EnableLogFileValidation" :: Maybe (Boolean) , "CloudWatchLogsLogGroupArn" :: Maybe (String) , "CloudWatchLogsRoleArn" :: Maybe (String) , "KmsKeyId" :: Maybe (String) } ) -> UpdateTrailRequest
newUpdateTrailRequest' _Name customize = (UpdateTrailRequest <<< customize) { "Name": _Name, "CloudWatchLogsLogGroupArn": Nothing, "CloudWatchLogsRoleArn": Nothing, "EnableLogFileValidation": Nothing, "IncludeGlobalServiceEvents": Nothing, "IsMultiRegionTrail": Nothing, "KmsKeyId": Nothing, "S3BucketName": Nothing, "S3KeyPrefix": Nothing, "SnsTopicName": Nothing }



-- | <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
newtype UpdateTrailResponse = UpdateTrailResponse 
  { "Name" :: Maybe (String)
  , "S3BucketName" :: Maybe (String)
  , "S3KeyPrefix" :: Maybe (String)
  , "SnsTopicName" :: Maybe (String)
  , "SnsTopicARN" :: Maybe (String)
  , "IncludeGlobalServiceEvents" :: Maybe (Boolean)
  , "IsMultiRegionTrail" :: Maybe (Boolean)
  , "TrailARN" :: Maybe (String)
  , "LogFileValidationEnabled" :: Maybe (Boolean)
  , "CloudWatchLogsLogGroupArn" :: Maybe (String)
  , "CloudWatchLogsRoleArn" :: Maybe (String)
  , "KmsKeyId" :: Maybe (String)
  }
derive instance newtypeUpdateTrailResponse :: Newtype UpdateTrailResponse _
derive instance repGenericUpdateTrailResponse :: Generic UpdateTrailResponse _
instance showUpdateTrailResponse :: Show UpdateTrailResponse where show = genericShow
instance decodeUpdateTrailResponse :: Decode UpdateTrailResponse where decode = genericDecode options
instance encodeUpdateTrailResponse :: Encode UpdateTrailResponse where encode = genericEncode options

-- | Constructs UpdateTrailResponse from required parameters
newUpdateTrailResponse :: UpdateTrailResponse
newUpdateTrailResponse  = UpdateTrailResponse { "CloudWatchLogsLogGroupArn": Nothing, "CloudWatchLogsRoleArn": Nothing, "IncludeGlobalServiceEvents": Nothing, "IsMultiRegionTrail": Nothing, "KmsKeyId": Nothing, "LogFileValidationEnabled": Nothing, "Name": Nothing, "S3BucketName": Nothing, "S3KeyPrefix": Nothing, "SnsTopicARN": Nothing, "SnsTopicName": Nothing, "TrailARN": Nothing }

-- | Constructs UpdateTrailResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateTrailResponse' :: ( { "Name" :: Maybe (String) , "S3BucketName" :: Maybe (String) , "S3KeyPrefix" :: Maybe (String) , "SnsTopicName" :: Maybe (String) , "SnsTopicARN" :: Maybe (String) , "IncludeGlobalServiceEvents" :: Maybe (Boolean) , "IsMultiRegionTrail" :: Maybe (Boolean) , "TrailARN" :: Maybe (String) , "LogFileValidationEnabled" :: Maybe (Boolean) , "CloudWatchLogsLogGroupArn" :: Maybe (String) , "CloudWatchLogsRoleArn" :: Maybe (String) , "KmsKeyId" :: Maybe (String) } -> {"Name" :: Maybe (String) , "S3BucketName" :: Maybe (String) , "S3KeyPrefix" :: Maybe (String) , "SnsTopicName" :: Maybe (String) , "SnsTopicARN" :: Maybe (String) , "IncludeGlobalServiceEvents" :: Maybe (Boolean) , "IsMultiRegionTrail" :: Maybe (Boolean) , "TrailARN" :: Maybe (String) , "LogFileValidationEnabled" :: Maybe (Boolean) , "CloudWatchLogsLogGroupArn" :: Maybe (String) , "CloudWatchLogsRoleArn" :: Maybe (String) , "KmsKeyId" :: Maybe (String) } ) -> UpdateTrailResponse
newUpdateTrailResponse'  customize = (UpdateTrailResponse <<< customize) { "CloudWatchLogsLogGroupArn": Nothing, "CloudWatchLogsRoleArn": Nothing, "IncludeGlobalServiceEvents": Nothing, "IsMultiRegionTrail": Nothing, "KmsKeyId": Nothing, "LogFileValidationEnabled": Nothing, "Name": Nothing, "S3BucketName": Nothing, "S3KeyPrefix": Nothing, "SnsTopicARN": Nothing, "SnsTopicName": Nothing, "TrailARN": Nothing }

