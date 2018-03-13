## Module AWS.CloudTrail

<fullname>AWS CloudTrail</fullname> <p>This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail.</p> <p>CloudTrail is a web service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. The recorded information includes the identity of the user, the start time of the AWS API call, the source IP address, the request parameters, and the response elements returned by the service.</p> <note> <p>As an alternative to the API, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a convenient way to create programmatic access to AWSCloudTrail. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For information about the AWS SDKs, including how to download and install them, see the <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services page</a>.</p> </note> <p>See the <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html">AWS CloudTrail User Guide</a> for information about the data that is included with each AWS API call listed in the log files.</p>

#### `addTags`

``` purescript
addTags :: forall eff. AddTagsRequest -> Aff (exception :: EXCEPTION | eff) AddTagsResponse
```

<p>Adds one or more tags to a trail, up to a limit of 50. Tags must be unique per trail. Overwrites an existing tag's value when a new value is specified for an existing tag key. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all regions only from the region in which the trail was created (that is, from its home region).</p>

#### `createTrail`

``` purescript
createTrail :: forall eff. CreateTrailRequest -> Aff (exception :: EXCEPTION | eff) CreateTrailResponse
```

<p>Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. A maximum of five trails can exist in a region, irrespective of the region in which they were created.</p>

#### `deleteTrail`

``` purescript
deleteTrail :: forall eff. DeleteTrailRequest -> Aff (exception :: EXCEPTION | eff) DeleteTrailResponse
```

<p>Deletes a trail. This operation must be called from the region in which the trail was created. <code>DeleteTrail</code> cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>

#### `describeTrails`

``` purescript
describeTrails :: forall eff. DescribeTrailsRequest -> Aff (exception :: EXCEPTION | eff) DescribeTrailsResponse
```

<p>Retrieves settings for the trail associated with the current region for your account.</p>

#### `getEventSelectors`

``` purescript
getEventSelectors :: forall eff. GetEventSelectorsRequest -> Aff (exception :: EXCEPTION | eff) GetEventSelectorsResponse
```

<p>Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:</p> <ul> <li> <p>The S3 objects that you are logging for data events.</p> </li> <li> <p>If your event selector includes management events.</p> </li> <li> <p>If your event selector includes read-only events, write-only events, or all. </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging Data and Management Events for Trails </a> in the <i>AWS CloudTrail User Guide</i>.</p>

#### `getTrailStatus`

``` purescript
getTrailStatus :: forall eff. GetTrailStatusRequest -> Aff (exception :: EXCEPTION | eff) GetTrailStatusResponse
```

<p>Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.</p>

#### `listPublicKeys`

``` purescript
listPublicKeys :: forall eff. ListPublicKeysRequest -> Aff (exception :: EXCEPTION | eff) ListPublicKeysResponse
```

<p>Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.</p> <note> <p>CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key.</p> </note>

#### `listTags`

``` purescript
listTags :: forall eff. ListTagsRequest -> Aff (exception :: EXCEPTION | eff) ListTagsResponse
```

<p>Lists the tags for the trail in the current region.</p>

#### `lookupEvents`

``` purescript
lookupEvents :: forall eff. LookupEventsRequest -> Aff (exception :: EXCEPTION | eff) LookupEventsResponse
```

<p>Looks up API activity events captured by CloudTrail that create, update, or delete resources in your account. Events for a region can be looked up for the times in which you had CloudTrail turned on in that region during the last seven days. Lookup supports the following attributes:</p> <ul> <li> <p>Event ID</p> </li> <li> <p>Event name</p> </li> <li> <p>Event source</p> </li> <li> <p>Resource name</p> </li> <li> <p>Resource type</p> </li> <li> <p>User name</p> </li> </ul> <p>All attributes are optional. The default number of results returned is 10, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.</p> <important> <p>The rate of lookup requests is limited to one per second per account. If this limit is exceeded, a throttling error occurs.</p> </important> <important> <p>Events that occurred during the selected time range will not be available for lookup if CloudTrail logging was not enabled when the events occurred.</p> </important>

#### `putEventSelectors`

``` purescript
putEventSelectors :: forall eff. PutEventSelectorsRequest -> Aff (exception :: EXCEPTION | eff) PutEventSelectorsResponse
```

<p>Configures an event selector for your trail. Use event selectors to specify whether you want your trail to log management and/or data events. When an event occurs in your account, CloudTrail evaluates the event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event. </p> <p>Example</p> <ol> <li> <p>You create an event selector for a trail and specify that you want write-only events.</p> </li> <li> <p>The EC2 <code>GetConsoleOutput</code> and <code>RunInstances</code> API operations occur in your account.</p> </li> <li> <p>CloudTrail evaluates whether the events match your event selectors.</p> </li> <li> <p>The <code>RunInstances</code> is a write-only event and it matches your event selector. The trail logs the event.</p> </li> <li> <p>The <code>GetConsoleOutput</code> is a read-only event but it doesn't match your event selector. The trail doesn't log the event. </p> </li> </ol> <p>The <code>PutEventSelectors</code> operation must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p> <p>You can configure up to five event selectors for each trail. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging Data and Management Events for Trails </a> in the <i>AWS CloudTrail User Guide</i>.</p>

#### `removeTags`

``` purescript
removeTags :: forall eff. RemoveTagsRequest -> Aff (exception :: EXCEPTION | eff) RemoveTagsResponse
```

<p>Removes the specified tags from a trail.</p>

#### `startLogging`

``` purescript
startLogging :: forall eff. StartLoggingRequest -> Aff (exception :: EXCEPTION | eff) StartLoggingResponse
```

<p>Starts the recording of AWS API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>

#### `stopLogging`

``` purescript
stopLogging :: forall eff. StopLoggingRequest -> Aff (exception :: EXCEPTION | eff) StopLoggingResponse
```

<p>Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an <code>InvalidHomeRegionException</code> will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.</p>

#### `updateTrail`

``` purescript
updateTrail :: forall eff. UpdateTrailRequest -> Aff (exception :: EXCEPTION | eff) UpdateTrailResponse
```

<p>Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. <code>UpdateTrail</code> must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p>

#### `AddTagsRequest`

``` purescript
newtype AddTagsRequest
  = AddTagsRequest { "ResourceId" :: String, "TagsList" :: NullOrUndefined (TagsList) }
```

<p>Specifies the tags to add to a trail.</p>

##### Instances
``` purescript
Newtype AddTagsRequest _
Generic AddTagsRequest _
Show AddTagsRequest
Decode AddTagsRequest
Encode AddTagsRequest
```

#### `newAddTagsRequest`

``` purescript
newAddTagsRequest :: String -> AddTagsRequest
```

Constructs AddTagsRequest from required parameters

#### `newAddTagsRequest'`

``` purescript
newAddTagsRequest' :: String -> ({ "ResourceId" :: String, "TagsList" :: NullOrUndefined (TagsList) } -> { "ResourceId" :: String, "TagsList" :: NullOrUndefined (TagsList) }) -> AddTagsRequest
```

Constructs AddTagsRequest's fields from required parameters

#### `AddTagsResponse`

``` purescript
newtype AddTagsResponse
  = AddTagsResponse NoArguments
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype AddTagsResponse _
Generic AddTagsResponse _
Show AddTagsResponse
Decode AddTagsResponse
Encode AddTagsResponse
```

#### `ByteBuffer`

``` purescript
newtype ByteBuffer
  = ByteBuffer String
```

##### Instances
``` purescript
Newtype ByteBuffer _
Generic ByteBuffer _
Show ByteBuffer
Decode ByteBuffer
Encode ByteBuffer
```

#### `CloudTrailARNInvalidException`

``` purescript
newtype CloudTrailARNInvalidException
  = CloudTrailARNInvalidException NoArguments
```

<p>This exception is thrown when an operation is called with an invalid trail ARN. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>

##### Instances
``` purescript
Newtype CloudTrailARNInvalidException _
Generic CloudTrailARNInvalidException _
Show CloudTrailARNInvalidException
Decode CloudTrailARNInvalidException
Encode CloudTrailARNInvalidException
```

#### `CloudWatchLogsDeliveryUnavailableException`

``` purescript
newtype CloudWatchLogsDeliveryUnavailableException
  = CloudWatchLogsDeliveryUnavailableException NoArguments
```

<p>Cannot set a CloudWatch Logs delivery for this region.</p>

##### Instances
``` purescript
Newtype CloudWatchLogsDeliveryUnavailableException _
Generic CloudWatchLogsDeliveryUnavailableException _
Show CloudWatchLogsDeliveryUnavailableException
Decode CloudWatchLogsDeliveryUnavailableException
Encode CloudWatchLogsDeliveryUnavailableException
```

#### `CreateTrailRequest`

``` purescript
newtype CreateTrailRequest
  = CreateTrailRequest { "Name" :: String, "S3BucketName" :: String, "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "EnableLogFileValidation" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) }
```

<p>Specifies the settings for each trail.</p>

##### Instances
``` purescript
Newtype CreateTrailRequest _
Generic CreateTrailRequest _
Show CreateTrailRequest
Decode CreateTrailRequest
Encode CreateTrailRequest
```

#### `newCreateTrailRequest`

``` purescript
newCreateTrailRequest :: String -> String -> CreateTrailRequest
```

Constructs CreateTrailRequest from required parameters

#### `newCreateTrailRequest'`

``` purescript
newCreateTrailRequest' :: String -> String -> ({ "Name" :: String, "S3BucketName" :: String, "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "EnableLogFileValidation" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) } -> { "Name" :: String, "S3BucketName" :: String, "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "EnableLogFileValidation" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) }) -> CreateTrailRequest
```

Constructs CreateTrailRequest's fields from required parameters

#### `CreateTrailResponse`

``` purescript
newtype CreateTrailResponse
  = CreateTrailResponse { "Name" :: NullOrUndefined (String), "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "SnsTopicARN" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "TrailARN" :: NullOrUndefined (String), "LogFileValidationEnabled" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) }
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype CreateTrailResponse _
Generic CreateTrailResponse _
Show CreateTrailResponse
Decode CreateTrailResponse
Encode CreateTrailResponse
```

#### `newCreateTrailResponse`

``` purescript
newCreateTrailResponse :: CreateTrailResponse
```

Constructs CreateTrailResponse from required parameters

#### `newCreateTrailResponse'`

``` purescript
newCreateTrailResponse' :: ({ "Name" :: NullOrUndefined (String), "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "SnsTopicARN" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "TrailARN" :: NullOrUndefined (String), "LogFileValidationEnabled" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "SnsTopicARN" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "TrailARN" :: NullOrUndefined (String), "LogFileValidationEnabled" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) }) -> CreateTrailResponse
```

Constructs CreateTrailResponse's fields from required parameters

#### `DataResource`

``` purescript
newtype DataResource
  = DataResource { "Type" :: NullOrUndefined (String), "Values" :: NullOrUndefined (DataResourceValues) }
```

<p>The Amazon S3 objects that you specify in your event selectors for your trail to log data events. Data events are object-level API operations that access S3 objects, such as <code>GetObject</code>, <code>DeleteObject</code>, and <code>PutObject</code>. You can specify up to 250 S3 buckets and object prefixes for a trail. </p> <p>Example</p> <ol> <li> <p>You create an event selector for a trail and specify an S3 bucket and an empty prefix, such as <code>arn:aws:s3:::bucket-1/</code>.</p> </li> <li> <p>You upload an image file to <code>bucket-1</code>.</p> </li> <li> <p>The <code>PutObject</code> API operation occurs on an object in the S3 bucket that you specified in the event selector. The trail processes and logs the event.</p> </li> <li> <p>You upload another image file to a different S3 bucket named <code>arn:aws:s3:::bucket-2</code>.</p> </li> <li> <p>The event occurs on an object in an S3 bucket that you didn't specify in the event selector. The trail doesn’t log the event.</p> </li> </ol>

##### Instances
``` purescript
Newtype DataResource _
Generic DataResource _
Show DataResource
Decode DataResource
Encode DataResource
```

#### `newDataResource`

``` purescript
newDataResource :: DataResource
```

Constructs DataResource from required parameters

#### `newDataResource'`

``` purescript
newDataResource' :: ({ "Type" :: NullOrUndefined (String), "Values" :: NullOrUndefined (DataResourceValues) } -> { "Type" :: NullOrUndefined (String), "Values" :: NullOrUndefined (DataResourceValues) }) -> DataResource
```

Constructs DataResource's fields from required parameters

#### `DataResourceValues`

``` purescript
newtype DataResourceValues
  = DataResourceValues (Array String)
```

##### Instances
``` purescript
Newtype DataResourceValues _
Generic DataResourceValues _
Show DataResourceValues
Decode DataResourceValues
Encode DataResourceValues
```

#### `DataResources`

``` purescript
newtype DataResources
  = DataResources (Array DataResource)
```

##### Instances
``` purescript
Newtype DataResources _
Generic DataResources _
Show DataResources
Decode DataResources
Encode DataResources
```

#### `Date`

``` purescript
newtype Date
  = Date Timestamp
```

##### Instances
``` purescript
Newtype Date _
Generic Date _
Show Date
Decode Date
Encode Date
```

#### `DeleteTrailRequest`

``` purescript
newtype DeleteTrailRequest
  = DeleteTrailRequest { "Name" :: String }
```

<p>The request that specifies the name of a trail to delete.</p>

##### Instances
``` purescript
Newtype DeleteTrailRequest _
Generic DeleteTrailRequest _
Show DeleteTrailRequest
Decode DeleteTrailRequest
Encode DeleteTrailRequest
```

#### `newDeleteTrailRequest`

``` purescript
newDeleteTrailRequest :: String -> DeleteTrailRequest
```

Constructs DeleteTrailRequest from required parameters

#### `newDeleteTrailRequest'`

``` purescript
newDeleteTrailRequest' :: String -> ({ "Name" :: String } -> { "Name" :: String }) -> DeleteTrailRequest
```

Constructs DeleteTrailRequest's fields from required parameters

#### `DeleteTrailResponse`

``` purescript
newtype DeleteTrailResponse
  = DeleteTrailResponse NoArguments
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype DeleteTrailResponse _
Generic DeleteTrailResponse _
Show DeleteTrailResponse
Decode DeleteTrailResponse
Encode DeleteTrailResponse
```

#### `DescribeTrailsRequest`

``` purescript
newtype DescribeTrailsRequest
  = DescribeTrailsRequest { trailNameList :: NullOrUndefined (TrailNameList), includeShadowTrails :: NullOrUndefined (Boolean) }
```

<p>Returns information about the trail.</p>

##### Instances
``` purescript
Newtype DescribeTrailsRequest _
Generic DescribeTrailsRequest _
Show DescribeTrailsRequest
Decode DescribeTrailsRequest
Encode DescribeTrailsRequest
```

#### `newDescribeTrailsRequest`

``` purescript
newDescribeTrailsRequest :: DescribeTrailsRequest
```

Constructs DescribeTrailsRequest from required parameters

#### `newDescribeTrailsRequest'`

``` purescript
newDescribeTrailsRequest' :: ({ trailNameList :: NullOrUndefined (TrailNameList), includeShadowTrails :: NullOrUndefined (Boolean) } -> { trailNameList :: NullOrUndefined (TrailNameList), includeShadowTrails :: NullOrUndefined (Boolean) }) -> DescribeTrailsRequest
```

Constructs DescribeTrailsRequest's fields from required parameters

#### `DescribeTrailsResponse`

``` purescript
newtype DescribeTrailsResponse
  = DescribeTrailsResponse { trailList :: NullOrUndefined (TrailList) }
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype DescribeTrailsResponse _
Generic DescribeTrailsResponse _
Show DescribeTrailsResponse
Decode DescribeTrailsResponse
Encode DescribeTrailsResponse
```

#### `newDescribeTrailsResponse`

``` purescript
newDescribeTrailsResponse :: DescribeTrailsResponse
```

Constructs DescribeTrailsResponse from required parameters

#### `newDescribeTrailsResponse'`

``` purescript
newDescribeTrailsResponse' :: ({ trailList :: NullOrUndefined (TrailList) } -> { trailList :: NullOrUndefined (TrailList) }) -> DescribeTrailsResponse
```

Constructs DescribeTrailsResponse's fields from required parameters

#### `Event`

``` purescript
newtype Event
  = Event { "EventId" :: NullOrUndefined (String), "EventName" :: NullOrUndefined (String), "EventTime" :: NullOrUndefined (Date), "EventSource" :: NullOrUndefined (String), "Username" :: NullOrUndefined (String), "Resources" :: NullOrUndefined (ResourceList), "CloudTrailEvent" :: NullOrUndefined (String) }
```

<p>Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.</p>

##### Instances
``` purescript
Newtype Event _
Generic Event _
Show Event
Decode Event
Encode Event
```

#### `newEvent`

``` purescript
newEvent :: Event
```

Constructs Event from required parameters

#### `newEvent'`

``` purescript
newEvent' :: ({ "EventId" :: NullOrUndefined (String), "EventName" :: NullOrUndefined (String), "EventTime" :: NullOrUndefined (Date), "EventSource" :: NullOrUndefined (String), "Username" :: NullOrUndefined (String), "Resources" :: NullOrUndefined (ResourceList), "CloudTrailEvent" :: NullOrUndefined (String) } -> { "EventId" :: NullOrUndefined (String), "EventName" :: NullOrUndefined (String), "EventTime" :: NullOrUndefined (Date), "EventSource" :: NullOrUndefined (String), "Username" :: NullOrUndefined (String), "Resources" :: NullOrUndefined (ResourceList), "CloudTrailEvent" :: NullOrUndefined (String) }) -> Event
```

Constructs Event's fields from required parameters

#### `EventSelector`

``` purescript
newtype EventSelector
  = EventSelector { "ReadWriteType" :: NullOrUndefined (ReadWriteType), "IncludeManagementEvents" :: NullOrUndefined (Boolean), "DataResources" :: NullOrUndefined (DataResources) }
```

<p>Use event selectors to specify whether you want your trail to log management and/or data events. When an event occurs in your account, CloudTrail evaluates the event selector for all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.</p> <p>You can configure up to five event selectors for a trail.</p>

##### Instances
``` purescript
Newtype EventSelector _
Generic EventSelector _
Show EventSelector
Decode EventSelector
Encode EventSelector
```

#### `newEventSelector`

``` purescript
newEventSelector :: EventSelector
```

Constructs EventSelector from required parameters

#### `newEventSelector'`

``` purescript
newEventSelector' :: ({ "ReadWriteType" :: NullOrUndefined (ReadWriteType), "IncludeManagementEvents" :: NullOrUndefined (Boolean), "DataResources" :: NullOrUndefined (DataResources) } -> { "ReadWriteType" :: NullOrUndefined (ReadWriteType), "IncludeManagementEvents" :: NullOrUndefined (Boolean), "DataResources" :: NullOrUndefined (DataResources) }) -> EventSelector
```

Constructs EventSelector's fields from required parameters

#### `EventSelectors`

``` purescript
newtype EventSelectors
  = EventSelectors (Array EventSelector)
```

##### Instances
``` purescript
Newtype EventSelectors _
Generic EventSelectors _
Show EventSelectors
Decode EventSelectors
Encode EventSelectors
```

#### `EventsList`

``` purescript
newtype EventsList
  = EventsList (Array Event)
```

##### Instances
``` purescript
Newtype EventsList _
Generic EventsList _
Show EventsList
Decode EventsList
Encode EventsList
```

#### `GetEventSelectorsRequest`

``` purescript
newtype GetEventSelectorsRequest
  = GetEventSelectorsRequest { "TrailName" :: String }
```

##### Instances
``` purescript
Newtype GetEventSelectorsRequest _
Generic GetEventSelectorsRequest _
Show GetEventSelectorsRequest
Decode GetEventSelectorsRequest
Encode GetEventSelectorsRequest
```

#### `newGetEventSelectorsRequest`

``` purescript
newGetEventSelectorsRequest :: String -> GetEventSelectorsRequest
```

Constructs GetEventSelectorsRequest from required parameters

#### `newGetEventSelectorsRequest'`

``` purescript
newGetEventSelectorsRequest' :: String -> ({ "TrailName" :: String } -> { "TrailName" :: String }) -> GetEventSelectorsRequest
```

Constructs GetEventSelectorsRequest's fields from required parameters

#### `GetEventSelectorsResponse`

``` purescript
newtype GetEventSelectorsResponse
  = GetEventSelectorsResponse { "TrailARN" :: NullOrUndefined (String), "EventSelectors" :: NullOrUndefined (EventSelectors) }
```

##### Instances
``` purescript
Newtype GetEventSelectorsResponse _
Generic GetEventSelectorsResponse _
Show GetEventSelectorsResponse
Decode GetEventSelectorsResponse
Encode GetEventSelectorsResponse
```

#### `newGetEventSelectorsResponse`

``` purescript
newGetEventSelectorsResponse :: GetEventSelectorsResponse
```

Constructs GetEventSelectorsResponse from required parameters

#### `newGetEventSelectorsResponse'`

``` purescript
newGetEventSelectorsResponse' :: ({ "TrailARN" :: NullOrUndefined (String), "EventSelectors" :: NullOrUndefined (EventSelectors) } -> { "TrailARN" :: NullOrUndefined (String), "EventSelectors" :: NullOrUndefined (EventSelectors) }) -> GetEventSelectorsResponse
```

Constructs GetEventSelectorsResponse's fields from required parameters

#### `GetTrailStatusRequest`

``` purescript
newtype GetTrailStatusRequest
  = GetTrailStatusRequest { "Name" :: String }
```

<p>The name of a trail about which you want the current status.</p>

##### Instances
``` purescript
Newtype GetTrailStatusRequest _
Generic GetTrailStatusRequest _
Show GetTrailStatusRequest
Decode GetTrailStatusRequest
Encode GetTrailStatusRequest
```

#### `newGetTrailStatusRequest`

``` purescript
newGetTrailStatusRequest :: String -> GetTrailStatusRequest
```

Constructs GetTrailStatusRequest from required parameters

#### `newGetTrailStatusRequest'`

``` purescript
newGetTrailStatusRequest' :: String -> ({ "Name" :: String } -> { "Name" :: String }) -> GetTrailStatusRequest
```

Constructs GetTrailStatusRequest's fields from required parameters

#### `GetTrailStatusResponse`

``` purescript
newtype GetTrailStatusResponse
  = GetTrailStatusResponse { "IsLogging" :: NullOrUndefined (Boolean), "LatestDeliveryError" :: NullOrUndefined (String), "LatestNotificationError" :: NullOrUndefined (String), "LatestDeliveryTime" :: NullOrUndefined (Date), "LatestNotificationTime" :: NullOrUndefined (Date), "StartLoggingTime" :: NullOrUndefined (Date), "StopLoggingTime" :: NullOrUndefined (Date), "LatestCloudWatchLogsDeliveryError" :: NullOrUndefined (String), "LatestCloudWatchLogsDeliveryTime" :: NullOrUndefined (Date), "LatestDigestDeliveryTime" :: NullOrUndefined (Date), "LatestDigestDeliveryError" :: NullOrUndefined (String), "LatestDeliveryAttemptTime" :: NullOrUndefined (String), "LatestNotificationAttemptTime" :: NullOrUndefined (String), "LatestNotificationAttemptSucceeded" :: NullOrUndefined (String), "LatestDeliveryAttemptSucceeded" :: NullOrUndefined (String), "TimeLoggingStarted" :: NullOrUndefined (String), "TimeLoggingStopped" :: NullOrUndefined (String) }
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype GetTrailStatusResponse _
Generic GetTrailStatusResponse _
Show GetTrailStatusResponse
Decode GetTrailStatusResponse
Encode GetTrailStatusResponse
```

#### `newGetTrailStatusResponse`

``` purescript
newGetTrailStatusResponse :: GetTrailStatusResponse
```

Constructs GetTrailStatusResponse from required parameters

#### `newGetTrailStatusResponse'`

``` purescript
newGetTrailStatusResponse' :: ({ "IsLogging" :: NullOrUndefined (Boolean), "LatestDeliveryError" :: NullOrUndefined (String), "LatestNotificationError" :: NullOrUndefined (String), "LatestDeliveryTime" :: NullOrUndefined (Date), "LatestNotificationTime" :: NullOrUndefined (Date), "StartLoggingTime" :: NullOrUndefined (Date), "StopLoggingTime" :: NullOrUndefined (Date), "LatestCloudWatchLogsDeliveryError" :: NullOrUndefined (String), "LatestCloudWatchLogsDeliveryTime" :: NullOrUndefined (Date), "LatestDigestDeliveryTime" :: NullOrUndefined (Date), "LatestDigestDeliveryError" :: NullOrUndefined (String), "LatestDeliveryAttemptTime" :: NullOrUndefined (String), "LatestNotificationAttemptTime" :: NullOrUndefined (String), "LatestNotificationAttemptSucceeded" :: NullOrUndefined (String), "LatestDeliveryAttemptSucceeded" :: NullOrUndefined (String), "TimeLoggingStarted" :: NullOrUndefined (String), "TimeLoggingStopped" :: NullOrUndefined (String) } -> { "IsLogging" :: NullOrUndefined (Boolean), "LatestDeliveryError" :: NullOrUndefined (String), "LatestNotificationError" :: NullOrUndefined (String), "LatestDeliveryTime" :: NullOrUndefined (Date), "LatestNotificationTime" :: NullOrUndefined (Date), "StartLoggingTime" :: NullOrUndefined (Date), "StopLoggingTime" :: NullOrUndefined (Date), "LatestCloudWatchLogsDeliveryError" :: NullOrUndefined (String), "LatestCloudWatchLogsDeliveryTime" :: NullOrUndefined (Date), "LatestDigestDeliveryTime" :: NullOrUndefined (Date), "LatestDigestDeliveryError" :: NullOrUndefined (String), "LatestDeliveryAttemptTime" :: NullOrUndefined (String), "LatestNotificationAttemptTime" :: NullOrUndefined (String), "LatestNotificationAttemptSucceeded" :: NullOrUndefined (String), "LatestDeliveryAttemptSucceeded" :: NullOrUndefined (String), "TimeLoggingStarted" :: NullOrUndefined (String), "TimeLoggingStopped" :: NullOrUndefined (String) }) -> GetTrailStatusResponse
```

Constructs GetTrailStatusResponse's fields from required parameters

#### `InsufficientEncryptionPolicyException`

``` purescript
newtype InsufficientEncryptionPolicyException
  = InsufficientEncryptionPolicyException NoArguments
```

<p>This exception is thrown when the policy on the S3 bucket or KMS key is not sufficient.</p>

##### Instances
``` purescript
Newtype InsufficientEncryptionPolicyException _
Generic InsufficientEncryptionPolicyException _
Show InsufficientEncryptionPolicyException
Decode InsufficientEncryptionPolicyException
Encode InsufficientEncryptionPolicyException
```

#### `InsufficientS3BucketPolicyException`

``` purescript
newtype InsufficientS3BucketPolicyException
  = InsufficientS3BucketPolicyException NoArguments
```

<p>This exception is thrown when the policy on the S3 bucket is not sufficient.</p>

##### Instances
``` purescript
Newtype InsufficientS3BucketPolicyException _
Generic InsufficientS3BucketPolicyException _
Show InsufficientS3BucketPolicyException
Decode InsufficientS3BucketPolicyException
Encode InsufficientS3BucketPolicyException
```

#### `InsufficientSnsTopicPolicyException`

``` purescript
newtype InsufficientSnsTopicPolicyException
  = InsufficientSnsTopicPolicyException NoArguments
```

<p>This exception is thrown when the policy on the SNS topic is not sufficient.</p>

##### Instances
``` purescript
Newtype InsufficientSnsTopicPolicyException _
Generic InsufficientSnsTopicPolicyException _
Show InsufficientSnsTopicPolicyException
Decode InsufficientSnsTopicPolicyException
Encode InsufficientSnsTopicPolicyException
```

#### `InvalidCloudWatchLogsLogGroupArnException`

``` purescript
newtype InvalidCloudWatchLogsLogGroupArnException
  = InvalidCloudWatchLogsLogGroupArnException NoArguments
```

<p>This exception is thrown when the provided CloudWatch log group is not valid.</p>

##### Instances
``` purescript
Newtype InvalidCloudWatchLogsLogGroupArnException _
Generic InvalidCloudWatchLogsLogGroupArnException _
Show InvalidCloudWatchLogsLogGroupArnException
Decode InvalidCloudWatchLogsLogGroupArnException
Encode InvalidCloudWatchLogsLogGroupArnException
```

#### `InvalidCloudWatchLogsRoleArnException`

``` purescript
newtype InvalidCloudWatchLogsRoleArnException
  = InvalidCloudWatchLogsRoleArnException NoArguments
```

<p>This exception is thrown when the provided role is not valid.</p>

##### Instances
``` purescript
Newtype InvalidCloudWatchLogsRoleArnException _
Generic InvalidCloudWatchLogsRoleArnException _
Show InvalidCloudWatchLogsRoleArnException
Decode InvalidCloudWatchLogsRoleArnException
Encode InvalidCloudWatchLogsRoleArnException
```

#### `InvalidEventSelectorsException`

``` purescript
newtype InvalidEventSelectorsException
  = InvalidEventSelectorsException NoArguments
```

<p>This exception is thrown when the <code>PutEventSelectors</code> operation is called with an invalid number of event selectors, data resources, or an invalid value for a parameter:</p> <ul> <li> <p>Specify a valid number of event selectors (1 to 5) for a trail.</p> </li> <li> <p>Specify a valid number of data resources (1 to 250) for an event selector.</p> </li> <li> <p>Specify a valid value for a parameter. For example, specifying the <code>ReadWriteType</code> parameter with a value of <code>read-only</code> is invalid.</p> </li> </ul>

##### Instances
``` purescript
Newtype InvalidEventSelectorsException _
Generic InvalidEventSelectorsException _
Show InvalidEventSelectorsException
Decode InvalidEventSelectorsException
Encode InvalidEventSelectorsException
```

#### `InvalidHomeRegionException`

``` purescript
newtype InvalidHomeRegionException
  = InvalidHomeRegionException NoArguments
```

<p>This exception is thrown when an operation is called on a trail from a region other than the region in which the trail was created.</p>

##### Instances
``` purescript
Newtype InvalidHomeRegionException _
Generic InvalidHomeRegionException _
Show InvalidHomeRegionException
Decode InvalidHomeRegionException
Encode InvalidHomeRegionException
```

#### `InvalidKmsKeyIdException`

``` purescript
newtype InvalidKmsKeyIdException
  = InvalidKmsKeyIdException NoArguments
```

<p>This exception is thrown when the KMS key ARN is invalid.</p>

##### Instances
``` purescript
Newtype InvalidKmsKeyIdException _
Generic InvalidKmsKeyIdException _
Show InvalidKmsKeyIdException
Decode InvalidKmsKeyIdException
Encode InvalidKmsKeyIdException
```

#### `InvalidLookupAttributesException`

``` purescript
newtype InvalidLookupAttributesException
  = InvalidLookupAttributesException NoArguments
```

<p>Occurs when an invalid lookup attribute is specified.</p>

##### Instances
``` purescript
Newtype InvalidLookupAttributesException _
Generic InvalidLookupAttributesException _
Show InvalidLookupAttributesException
Decode InvalidLookupAttributesException
Encode InvalidLookupAttributesException
```

#### `InvalidMaxResultsException`

``` purescript
newtype InvalidMaxResultsException
  = InvalidMaxResultsException NoArguments
```

<p>This exception is thrown if the limit specified is invalid.</p>

##### Instances
``` purescript
Newtype InvalidMaxResultsException _
Generic InvalidMaxResultsException _
Show InvalidMaxResultsException
Decode InvalidMaxResultsException
Encode InvalidMaxResultsException
```

#### `InvalidNextTokenException`

``` purescript
newtype InvalidNextTokenException
  = InvalidNextTokenException NoArguments
```

<p>Invalid token or token that was previously used in a request with different parameters. This exception is thrown if the token is invalid.</p>

##### Instances
``` purescript
Newtype InvalidNextTokenException _
Generic InvalidNextTokenException _
Show InvalidNextTokenException
Decode InvalidNextTokenException
Encode InvalidNextTokenException
```

#### `InvalidParameterCombinationException`

``` purescript
newtype InvalidParameterCombinationException
  = InvalidParameterCombinationException NoArguments
```

<p>This exception is thrown when the combination of parameters provided is not valid.</p>

##### Instances
``` purescript
Newtype InvalidParameterCombinationException _
Generic InvalidParameterCombinationException _
Show InvalidParameterCombinationException
Decode InvalidParameterCombinationException
Encode InvalidParameterCombinationException
```

#### `InvalidS3BucketNameException`

``` purescript
newtype InvalidS3BucketNameException
  = InvalidS3BucketNameException NoArguments
```

<p>This exception is thrown when the provided S3 bucket name is not valid.</p>

##### Instances
``` purescript
Newtype InvalidS3BucketNameException _
Generic InvalidS3BucketNameException _
Show InvalidS3BucketNameException
Decode InvalidS3BucketNameException
Encode InvalidS3BucketNameException
```

#### `InvalidS3PrefixException`

``` purescript
newtype InvalidS3PrefixException
  = InvalidS3PrefixException NoArguments
```

<p>This exception is thrown when the provided S3 prefix is not valid.</p>

##### Instances
``` purescript
Newtype InvalidS3PrefixException _
Generic InvalidS3PrefixException _
Show InvalidS3PrefixException
Decode InvalidS3PrefixException
Encode InvalidS3PrefixException
```

#### `InvalidSnsTopicNameException`

``` purescript
newtype InvalidSnsTopicNameException
  = InvalidSnsTopicNameException NoArguments
```

<p>This exception is thrown when the provided SNS topic name is not valid.</p>

##### Instances
``` purescript
Newtype InvalidSnsTopicNameException _
Generic InvalidSnsTopicNameException _
Show InvalidSnsTopicNameException
Decode InvalidSnsTopicNameException
Encode InvalidSnsTopicNameException
```

#### `InvalidTagParameterException`

``` purescript
newtype InvalidTagParameterException
  = InvalidTagParameterException NoArguments
```

<p>This exception is thrown when the key or value specified for the tag does not match the regular expression <code>^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$</code>.</p>

##### Instances
``` purescript
Newtype InvalidTagParameterException _
Generic InvalidTagParameterException _
Show InvalidTagParameterException
Decode InvalidTagParameterException
Encode InvalidTagParameterException
```

#### `InvalidTimeRangeException`

``` purescript
newtype InvalidTimeRangeException
  = InvalidTimeRangeException NoArguments
```

<p>Occurs if the timestamp values are invalid. Either the start time occurs after the end time or the time range is outside the range of possible values.</p>

##### Instances
``` purescript
Newtype InvalidTimeRangeException _
Generic InvalidTimeRangeException _
Show InvalidTimeRangeException
Decode InvalidTimeRangeException
Encode InvalidTimeRangeException
```

#### `InvalidTokenException`

``` purescript
newtype InvalidTokenException
  = InvalidTokenException NoArguments
```

<p>Reserved for future use.</p>

##### Instances
``` purescript
Newtype InvalidTokenException _
Generic InvalidTokenException _
Show InvalidTokenException
Decode InvalidTokenException
Encode InvalidTokenException
```

#### `InvalidTrailNameException`

``` purescript
newtype InvalidTrailNameException
  = InvalidTrailNameException NoArguments
```

<p>This exception is thrown when the provided trail name is not valid. Trail names must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul>

##### Instances
``` purescript
Newtype InvalidTrailNameException _
Generic InvalidTrailNameException _
Show InvalidTrailNameException
Decode InvalidTrailNameException
Encode InvalidTrailNameException
```

#### `KmsException`

``` purescript
newtype KmsException
  = KmsException NoArguments
```

<p>This exception is thrown when there is an issue with the specified KMS key and the trail can’t be updated.</p>

##### Instances
``` purescript
Newtype KmsException _
Generic KmsException _
Show KmsException
Decode KmsException
Encode KmsException
```

#### `KmsKeyDisabledException`

``` purescript
newtype KmsKeyDisabledException
  = KmsKeyDisabledException NoArguments
```

<p>This exception is deprecated.</p>

##### Instances
``` purescript
Newtype KmsKeyDisabledException _
Generic KmsKeyDisabledException _
Show KmsKeyDisabledException
Decode KmsKeyDisabledException
Encode KmsKeyDisabledException
```

#### `KmsKeyNotFoundException`

``` purescript
newtype KmsKeyNotFoundException
  = KmsKeyNotFoundException NoArguments
```

<p>This exception is thrown when the KMS key does not exist, or when the S3 bucket and the KMS key are not in the same region.</p>

##### Instances
``` purescript
Newtype KmsKeyNotFoundException _
Generic KmsKeyNotFoundException _
Show KmsKeyNotFoundException
Decode KmsKeyNotFoundException
Encode KmsKeyNotFoundException
```

#### `ListPublicKeysRequest`

``` purescript
newtype ListPublicKeysRequest
  = ListPublicKeysRequest { "StartTime" :: NullOrUndefined (Date), "EndTime" :: NullOrUndefined (Date), "NextToken" :: NullOrUndefined (String) }
```

<p>Requests the public keys for a specified time range.</p>

##### Instances
``` purescript
Newtype ListPublicKeysRequest _
Generic ListPublicKeysRequest _
Show ListPublicKeysRequest
Decode ListPublicKeysRequest
Encode ListPublicKeysRequest
```

#### `newListPublicKeysRequest`

``` purescript
newListPublicKeysRequest :: ListPublicKeysRequest
```

Constructs ListPublicKeysRequest from required parameters

#### `newListPublicKeysRequest'`

``` purescript
newListPublicKeysRequest' :: ({ "StartTime" :: NullOrUndefined (Date), "EndTime" :: NullOrUndefined (Date), "NextToken" :: NullOrUndefined (String) } -> { "StartTime" :: NullOrUndefined (Date), "EndTime" :: NullOrUndefined (Date), "NextToken" :: NullOrUndefined (String) }) -> ListPublicKeysRequest
```

Constructs ListPublicKeysRequest's fields from required parameters

#### `ListPublicKeysResponse`

``` purescript
newtype ListPublicKeysResponse
  = ListPublicKeysResponse { "PublicKeyList" :: NullOrUndefined (PublicKeyList), "NextToken" :: NullOrUndefined (String) }
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype ListPublicKeysResponse _
Generic ListPublicKeysResponse _
Show ListPublicKeysResponse
Decode ListPublicKeysResponse
Encode ListPublicKeysResponse
```

#### `newListPublicKeysResponse`

``` purescript
newListPublicKeysResponse :: ListPublicKeysResponse
```

Constructs ListPublicKeysResponse from required parameters

#### `newListPublicKeysResponse'`

``` purescript
newListPublicKeysResponse' :: ({ "PublicKeyList" :: NullOrUndefined (PublicKeyList), "NextToken" :: NullOrUndefined (String) } -> { "PublicKeyList" :: NullOrUndefined (PublicKeyList), "NextToken" :: NullOrUndefined (String) }) -> ListPublicKeysResponse
```

Constructs ListPublicKeysResponse's fields from required parameters

#### `ListTagsRequest`

``` purescript
newtype ListTagsRequest
  = ListTagsRequest { "ResourceIdList" :: ResourceIdList, "NextToken" :: NullOrUndefined (String) }
```

<p>Specifies a list of trail tags to return.</p>

##### Instances
``` purescript
Newtype ListTagsRequest _
Generic ListTagsRequest _
Show ListTagsRequest
Decode ListTagsRequest
Encode ListTagsRequest
```

#### `newListTagsRequest`

``` purescript
newListTagsRequest :: ResourceIdList -> ListTagsRequest
```

Constructs ListTagsRequest from required parameters

#### `newListTagsRequest'`

``` purescript
newListTagsRequest' :: ResourceIdList -> ({ "ResourceIdList" :: ResourceIdList, "NextToken" :: NullOrUndefined (String) } -> { "ResourceIdList" :: ResourceIdList, "NextToken" :: NullOrUndefined (String) }) -> ListTagsRequest
```

Constructs ListTagsRequest's fields from required parameters

#### `ListTagsResponse`

``` purescript
newtype ListTagsResponse
  = ListTagsResponse { "ResourceTagList" :: NullOrUndefined (ResourceTagList), "NextToken" :: NullOrUndefined (String) }
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype ListTagsResponse _
Generic ListTagsResponse _
Show ListTagsResponse
Decode ListTagsResponse
Encode ListTagsResponse
```

#### `newListTagsResponse`

``` purescript
newListTagsResponse :: ListTagsResponse
```

Constructs ListTagsResponse from required parameters

#### `newListTagsResponse'`

``` purescript
newListTagsResponse' :: ({ "ResourceTagList" :: NullOrUndefined (ResourceTagList), "NextToken" :: NullOrUndefined (String) } -> { "ResourceTagList" :: NullOrUndefined (ResourceTagList), "NextToken" :: NullOrUndefined (String) }) -> ListTagsResponse
```

Constructs ListTagsResponse's fields from required parameters

#### `LookupAttribute`

``` purescript
newtype LookupAttribute
  = LookupAttribute { "AttributeKey" :: LookupAttributeKey, "AttributeValue" :: String }
```

<p>Specifies an attribute and value that filter the events returned.</p>

##### Instances
``` purescript
Newtype LookupAttribute _
Generic LookupAttribute _
Show LookupAttribute
Decode LookupAttribute
Encode LookupAttribute
```

#### `newLookupAttribute`

``` purescript
newLookupAttribute :: LookupAttributeKey -> String -> LookupAttribute
```

Constructs LookupAttribute from required parameters

#### `newLookupAttribute'`

``` purescript
newLookupAttribute' :: LookupAttributeKey -> String -> ({ "AttributeKey" :: LookupAttributeKey, "AttributeValue" :: String } -> { "AttributeKey" :: LookupAttributeKey, "AttributeValue" :: String }) -> LookupAttribute
```

Constructs LookupAttribute's fields from required parameters

#### `LookupAttributeKey`

``` purescript
newtype LookupAttributeKey
  = LookupAttributeKey String
```

##### Instances
``` purescript
Newtype LookupAttributeKey _
Generic LookupAttributeKey _
Show LookupAttributeKey
Decode LookupAttributeKey
Encode LookupAttributeKey
```

#### `LookupAttributesList`

``` purescript
newtype LookupAttributesList
  = LookupAttributesList (Array LookupAttribute)
```

##### Instances
``` purescript
Newtype LookupAttributesList _
Generic LookupAttributesList _
Show LookupAttributesList
Decode LookupAttributesList
Encode LookupAttributesList
```

#### `LookupEventsRequest`

``` purescript
newtype LookupEventsRequest
  = LookupEventsRequest { "LookupAttributes" :: NullOrUndefined (LookupAttributesList), "StartTime" :: NullOrUndefined (Date), "EndTime" :: NullOrUndefined (Date), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }
```

<p>Contains a request for LookupEvents.</p>

##### Instances
``` purescript
Newtype LookupEventsRequest _
Generic LookupEventsRequest _
Show LookupEventsRequest
Decode LookupEventsRequest
Encode LookupEventsRequest
```

#### `newLookupEventsRequest`

``` purescript
newLookupEventsRequest :: LookupEventsRequest
```

Constructs LookupEventsRequest from required parameters

#### `newLookupEventsRequest'`

``` purescript
newLookupEventsRequest' :: ({ "LookupAttributes" :: NullOrUndefined (LookupAttributesList), "StartTime" :: NullOrUndefined (Date), "EndTime" :: NullOrUndefined (Date), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) } -> { "LookupAttributes" :: NullOrUndefined (LookupAttributesList), "StartTime" :: NullOrUndefined (Date), "EndTime" :: NullOrUndefined (Date), "MaxResults" :: NullOrUndefined (MaxResults), "NextToken" :: NullOrUndefined (NextToken) }) -> LookupEventsRequest
```

Constructs LookupEventsRequest's fields from required parameters

#### `LookupEventsResponse`

``` purescript
newtype LookupEventsResponse
  = LookupEventsResponse { "Events" :: NullOrUndefined (EventsList), "NextToken" :: NullOrUndefined (NextToken) }
```

<p>Contains a response to a LookupEvents action.</p>

##### Instances
``` purescript
Newtype LookupEventsResponse _
Generic LookupEventsResponse _
Show LookupEventsResponse
Decode LookupEventsResponse
Encode LookupEventsResponse
```

#### `newLookupEventsResponse`

``` purescript
newLookupEventsResponse :: LookupEventsResponse
```

Constructs LookupEventsResponse from required parameters

#### `newLookupEventsResponse'`

``` purescript
newLookupEventsResponse' :: ({ "Events" :: NullOrUndefined (EventsList), "NextToken" :: NullOrUndefined (NextToken) } -> { "Events" :: NullOrUndefined (EventsList), "NextToken" :: NullOrUndefined (NextToken) }) -> LookupEventsResponse
```

Constructs LookupEventsResponse's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MaximumNumberOfTrailsExceededException`

``` purescript
newtype MaximumNumberOfTrailsExceededException
  = MaximumNumberOfTrailsExceededException NoArguments
```

<p>This exception is thrown when the maximum number of trails is reached.</p>

##### Instances
``` purescript
Newtype MaximumNumberOfTrailsExceededException _
Generic MaximumNumberOfTrailsExceededException _
Show MaximumNumberOfTrailsExceededException
Decode MaximumNumberOfTrailsExceededException
Encode MaximumNumberOfTrailsExceededException
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `OperationNotPermittedException`

``` purescript
newtype OperationNotPermittedException
  = OperationNotPermittedException NoArguments
```

<p>This exception is thrown when the requested operation is not permitted.</p>

##### Instances
``` purescript
Newtype OperationNotPermittedException _
Generic OperationNotPermittedException _
Show OperationNotPermittedException
Decode OperationNotPermittedException
Encode OperationNotPermittedException
```

#### `PublicKey`

``` purescript
newtype PublicKey
  = PublicKey { "Value" :: NullOrUndefined (ByteBuffer), "ValidityStartTime" :: NullOrUndefined (Date), "ValidityEndTime" :: NullOrUndefined (Date), "Fingerprint" :: NullOrUndefined (String) }
```

<p>Contains information about a returned public key.</p>

##### Instances
``` purescript
Newtype PublicKey _
Generic PublicKey _
Show PublicKey
Decode PublicKey
Encode PublicKey
```

#### `newPublicKey`

``` purescript
newPublicKey :: PublicKey
```

Constructs PublicKey from required parameters

#### `newPublicKey'`

``` purescript
newPublicKey' :: ({ "Value" :: NullOrUndefined (ByteBuffer), "ValidityStartTime" :: NullOrUndefined (Date), "ValidityEndTime" :: NullOrUndefined (Date), "Fingerprint" :: NullOrUndefined (String) } -> { "Value" :: NullOrUndefined (ByteBuffer), "ValidityStartTime" :: NullOrUndefined (Date), "ValidityEndTime" :: NullOrUndefined (Date), "Fingerprint" :: NullOrUndefined (String) }) -> PublicKey
```

Constructs PublicKey's fields from required parameters

#### `PublicKeyList`

``` purescript
newtype PublicKeyList
  = PublicKeyList (Array PublicKey)
```

##### Instances
``` purescript
Newtype PublicKeyList _
Generic PublicKeyList _
Show PublicKeyList
Decode PublicKeyList
Encode PublicKeyList
```

#### `PutEventSelectorsRequest`

``` purescript
newtype PutEventSelectorsRequest
  = PutEventSelectorsRequest { "TrailName" :: String, "EventSelectors" :: EventSelectors }
```

##### Instances
``` purescript
Newtype PutEventSelectorsRequest _
Generic PutEventSelectorsRequest _
Show PutEventSelectorsRequest
Decode PutEventSelectorsRequest
Encode PutEventSelectorsRequest
```

#### `newPutEventSelectorsRequest`

``` purescript
newPutEventSelectorsRequest :: EventSelectors -> String -> PutEventSelectorsRequest
```

Constructs PutEventSelectorsRequest from required parameters

#### `newPutEventSelectorsRequest'`

``` purescript
newPutEventSelectorsRequest' :: EventSelectors -> String -> ({ "TrailName" :: String, "EventSelectors" :: EventSelectors } -> { "TrailName" :: String, "EventSelectors" :: EventSelectors }) -> PutEventSelectorsRequest
```

Constructs PutEventSelectorsRequest's fields from required parameters

#### `PutEventSelectorsResponse`

``` purescript
newtype PutEventSelectorsResponse
  = PutEventSelectorsResponse { "TrailARN" :: NullOrUndefined (String), "EventSelectors" :: NullOrUndefined (EventSelectors) }
```

##### Instances
``` purescript
Newtype PutEventSelectorsResponse _
Generic PutEventSelectorsResponse _
Show PutEventSelectorsResponse
Decode PutEventSelectorsResponse
Encode PutEventSelectorsResponse
```

#### `newPutEventSelectorsResponse`

``` purescript
newPutEventSelectorsResponse :: PutEventSelectorsResponse
```

Constructs PutEventSelectorsResponse from required parameters

#### `newPutEventSelectorsResponse'`

``` purescript
newPutEventSelectorsResponse' :: ({ "TrailARN" :: NullOrUndefined (String), "EventSelectors" :: NullOrUndefined (EventSelectors) } -> { "TrailARN" :: NullOrUndefined (String), "EventSelectors" :: NullOrUndefined (EventSelectors) }) -> PutEventSelectorsResponse
```

Constructs PutEventSelectorsResponse's fields from required parameters

#### `ReadWriteType`

``` purescript
newtype ReadWriteType
  = ReadWriteType String
```

##### Instances
``` purescript
Newtype ReadWriteType _
Generic ReadWriteType _
Show ReadWriteType
Decode ReadWriteType
Encode ReadWriteType
```

#### `RemoveTagsRequest`

``` purescript
newtype RemoveTagsRequest
  = RemoveTagsRequest { "ResourceId" :: String, "TagsList" :: NullOrUndefined (TagsList) }
```

<p>Specifies the tags to remove from a trail.</p>

##### Instances
``` purescript
Newtype RemoveTagsRequest _
Generic RemoveTagsRequest _
Show RemoveTagsRequest
Decode RemoveTagsRequest
Encode RemoveTagsRequest
```

#### `newRemoveTagsRequest`

``` purescript
newRemoveTagsRequest :: String -> RemoveTagsRequest
```

Constructs RemoveTagsRequest from required parameters

#### `newRemoveTagsRequest'`

``` purescript
newRemoveTagsRequest' :: String -> ({ "ResourceId" :: String, "TagsList" :: NullOrUndefined (TagsList) } -> { "ResourceId" :: String, "TagsList" :: NullOrUndefined (TagsList) }) -> RemoveTagsRequest
```

Constructs RemoveTagsRequest's fields from required parameters

#### `RemoveTagsResponse`

``` purescript
newtype RemoveTagsResponse
  = RemoveTagsResponse NoArguments
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype RemoveTagsResponse _
Generic RemoveTagsResponse _
Show RemoveTagsResponse
Decode RemoveTagsResponse
Encode RemoveTagsResponse
```

#### `Resource`

``` purescript
newtype Resource
  = Resource { "ResourceType" :: NullOrUndefined (String), "ResourceName" :: NullOrUndefined (String) }
```

<p>Specifies the type and name of a resource referenced by an event.</p>

##### Instances
``` purescript
Newtype Resource _
Generic Resource _
Show Resource
Decode Resource
Encode Resource
```

#### `newResource`

``` purescript
newResource :: Resource
```

Constructs Resource from required parameters

#### `newResource'`

``` purescript
newResource' :: ({ "ResourceType" :: NullOrUndefined (String), "ResourceName" :: NullOrUndefined (String) } -> { "ResourceType" :: NullOrUndefined (String), "ResourceName" :: NullOrUndefined (String) }) -> Resource
```

Constructs Resource's fields from required parameters

#### `ResourceIdList`

``` purescript
newtype ResourceIdList
  = ResourceIdList (Array String)
```

##### Instances
``` purescript
Newtype ResourceIdList _
Generic ResourceIdList _
Show ResourceIdList
Decode ResourceIdList
Encode ResourceIdList
```

#### `ResourceList`

``` purescript
newtype ResourceList
  = ResourceList (Array Resource)
```

<p>A list of resources referenced by the event returned.</p>

##### Instances
``` purescript
Newtype ResourceList _
Generic ResourceList _
Show ResourceList
Decode ResourceList
Encode ResourceList
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException NoArguments
```

<p>This exception is thrown when the specified resource is not found.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `ResourceTag`

``` purescript
newtype ResourceTag
  = ResourceTag { "ResourceId" :: NullOrUndefined (String), "TagsList" :: NullOrUndefined (TagsList) }
```

<p>A resource tag.</p>

##### Instances
``` purescript
Newtype ResourceTag _
Generic ResourceTag _
Show ResourceTag
Decode ResourceTag
Encode ResourceTag
```

#### `newResourceTag`

``` purescript
newResourceTag :: ResourceTag
```

Constructs ResourceTag from required parameters

#### `newResourceTag'`

``` purescript
newResourceTag' :: ({ "ResourceId" :: NullOrUndefined (String), "TagsList" :: NullOrUndefined (TagsList) } -> { "ResourceId" :: NullOrUndefined (String), "TagsList" :: NullOrUndefined (TagsList) }) -> ResourceTag
```

Constructs ResourceTag's fields from required parameters

#### `ResourceTagList`

``` purescript
newtype ResourceTagList
  = ResourceTagList (Array ResourceTag)
```

##### Instances
``` purescript
Newtype ResourceTagList _
Generic ResourceTagList _
Show ResourceTagList
Decode ResourceTagList
Encode ResourceTagList
```

#### `ResourceTypeNotSupportedException`

``` purescript
newtype ResourceTypeNotSupportedException
  = ResourceTypeNotSupportedException NoArguments
```

<p>This exception is thrown when the specified resource type is not supported by CloudTrail.</p>

##### Instances
``` purescript
Newtype ResourceTypeNotSupportedException _
Generic ResourceTypeNotSupportedException _
Show ResourceTypeNotSupportedException
Decode ResourceTypeNotSupportedException
Encode ResourceTypeNotSupportedException
```

#### `S3BucketDoesNotExistException`

``` purescript
newtype S3BucketDoesNotExistException
  = S3BucketDoesNotExistException NoArguments
```

<p>This exception is thrown when the specified S3 bucket does not exist.</p>

##### Instances
``` purescript
Newtype S3BucketDoesNotExistException _
Generic S3BucketDoesNotExistException _
Show S3BucketDoesNotExistException
Decode S3BucketDoesNotExistException
Encode S3BucketDoesNotExistException
```

#### `StartLoggingRequest`

``` purescript
newtype StartLoggingRequest
  = StartLoggingRequest { "Name" :: String }
```

<p>The request to CloudTrail to start logging AWS API calls for an account.</p>

##### Instances
``` purescript
Newtype StartLoggingRequest _
Generic StartLoggingRequest _
Show StartLoggingRequest
Decode StartLoggingRequest
Encode StartLoggingRequest
```

#### `newStartLoggingRequest`

``` purescript
newStartLoggingRequest :: String -> StartLoggingRequest
```

Constructs StartLoggingRequest from required parameters

#### `newStartLoggingRequest'`

``` purescript
newStartLoggingRequest' :: String -> ({ "Name" :: String } -> { "Name" :: String }) -> StartLoggingRequest
```

Constructs StartLoggingRequest's fields from required parameters

#### `StartLoggingResponse`

``` purescript
newtype StartLoggingResponse
  = StartLoggingResponse NoArguments
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype StartLoggingResponse _
Generic StartLoggingResponse _
Show StartLoggingResponse
Decode StartLoggingResponse
Encode StartLoggingResponse
```

#### `StopLoggingRequest`

``` purescript
newtype StopLoggingRequest
  = StopLoggingRequest { "Name" :: String }
```

<p>Passes the request to CloudTrail to stop logging AWS API calls for the specified account.</p>

##### Instances
``` purescript
Newtype StopLoggingRequest _
Generic StopLoggingRequest _
Show StopLoggingRequest
Decode StopLoggingRequest
Encode StopLoggingRequest
```

#### `newStopLoggingRequest`

``` purescript
newStopLoggingRequest :: String -> StopLoggingRequest
```

Constructs StopLoggingRequest from required parameters

#### `newStopLoggingRequest'`

``` purescript
newStopLoggingRequest' :: String -> ({ "Name" :: String } -> { "Name" :: String }) -> StopLoggingRequest
```

Constructs StopLoggingRequest's fields from required parameters

#### `StopLoggingResponse`

``` purescript
newtype StopLoggingResponse
  = StopLoggingResponse NoArguments
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype StopLoggingResponse _
Generic StopLoggingResponse _
Show StopLoggingResponse
Decode StopLoggingResponse
Encode StopLoggingResponse
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: String, "Value" :: NullOrUndefined (String) }
```

<p>A custom key-value pair associated with a resource such as a CloudTrail trail.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: String -> Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: String -> ({ "Key" :: String, "Value" :: NullOrUndefined (String) } -> { "Key" :: String, "Value" :: NullOrUndefined (String) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagsLimitExceededException`

``` purescript
newtype TagsLimitExceededException
  = TagsLimitExceededException NoArguments
```

<p>The number of tags per trail has exceeded the permitted amount. Currently, the limit is 50.</p>

##### Instances
``` purescript
Newtype TagsLimitExceededException _
Generic TagsLimitExceededException _
Show TagsLimitExceededException
Decode TagsLimitExceededException
Encode TagsLimitExceededException
```

#### `TagsList`

``` purescript
newtype TagsList
  = TagsList (Array Tag)
```

<p>A list of tags.</p>

##### Instances
``` purescript
Newtype TagsList _
Generic TagsList _
Show TagsList
Decode TagsList
Encode TagsList
```

#### `Trail`

``` purescript
newtype Trail
  = Trail { "Name" :: NullOrUndefined (String), "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "SnsTopicARN" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "HomeRegion" :: NullOrUndefined (String), "TrailARN" :: NullOrUndefined (String), "LogFileValidationEnabled" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String), "HasCustomEventSelectors" :: NullOrUndefined (Boolean) }
```

<p>The settings for a trail.</p>

##### Instances
``` purescript
Newtype Trail _
Generic Trail _
Show Trail
Decode Trail
Encode Trail
```

#### `newTrail`

``` purescript
newTrail :: Trail
```

Constructs Trail from required parameters

#### `newTrail'`

``` purescript
newTrail' :: ({ "Name" :: NullOrUndefined (String), "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "SnsTopicARN" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "HomeRegion" :: NullOrUndefined (String), "TrailARN" :: NullOrUndefined (String), "LogFileValidationEnabled" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String), "HasCustomEventSelectors" :: NullOrUndefined (Boolean) } -> { "Name" :: NullOrUndefined (String), "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "SnsTopicARN" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "HomeRegion" :: NullOrUndefined (String), "TrailARN" :: NullOrUndefined (String), "LogFileValidationEnabled" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String), "HasCustomEventSelectors" :: NullOrUndefined (Boolean) }) -> Trail
```

Constructs Trail's fields from required parameters

#### `TrailAlreadyExistsException`

``` purescript
newtype TrailAlreadyExistsException
  = TrailAlreadyExistsException NoArguments
```

<p>This exception is thrown when the specified trail already exists.</p>

##### Instances
``` purescript
Newtype TrailAlreadyExistsException _
Generic TrailAlreadyExistsException _
Show TrailAlreadyExistsException
Decode TrailAlreadyExistsException
Encode TrailAlreadyExistsException
```

#### `TrailList`

``` purescript
newtype TrailList
  = TrailList (Array Trail)
```

##### Instances
``` purescript
Newtype TrailList _
Generic TrailList _
Show TrailList
Decode TrailList
Encode TrailList
```

#### `TrailNameList`

``` purescript
newtype TrailNameList
  = TrailNameList (Array String)
```

##### Instances
``` purescript
Newtype TrailNameList _
Generic TrailNameList _
Show TrailNameList
Decode TrailNameList
Encode TrailNameList
```

#### `TrailNotFoundException`

``` purescript
newtype TrailNotFoundException
  = TrailNotFoundException NoArguments
```

<p>This exception is thrown when the trail with the given name is not found.</p>

##### Instances
``` purescript
Newtype TrailNotFoundException _
Generic TrailNotFoundException _
Show TrailNotFoundException
Decode TrailNotFoundException
Encode TrailNotFoundException
```

#### `TrailNotProvidedException`

``` purescript
newtype TrailNotProvidedException
  = TrailNotProvidedException NoArguments
```

<p>This exception is deprecated.</p>

##### Instances
``` purescript
Newtype TrailNotProvidedException _
Generic TrailNotProvidedException _
Show TrailNotProvidedException
Decode TrailNotProvidedException
Encode TrailNotProvidedException
```

#### `UnsupportedOperationException`

``` purescript
newtype UnsupportedOperationException
  = UnsupportedOperationException NoArguments
```

<p>This exception is thrown when the requested operation is not supported.</p>

##### Instances
``` purescript
Newtype UnsupportedOperationException _
Generic UnsupportedOperationException _
Show UnsupportedOperationException
Decode UnsupportedOperationException
Encode UnsupportedOperationException
```

#### `UpdateTrailRequest`

``` purescript
newtype UpdateTrailRequest
  = UpdateTrailRequest { "Name" :: String, "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "EnableLogFileValidation" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) }
```

<p>Specifies settings to update for the trail.</p>

##### Instances
``` purescript
Newtype UpdateTrailRequest _
Generic UpdateTrailRequest _
Show UpdateTrailRequest
Decode UpdateTrailRequest
Encode UpdateTrailRequest
```

#### `newUpdateTrailRequest`

``` purescript
newUpdateTrailRequest :: String -> UpdateTrailRequest
```

Constructs UpdateTrailRequest from required parameters

#### `newUpdateTrailRequest'`

``` purescript
newUpdateTrailRequest' :: String -> ({ "Name" :: String, "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "EnableLogFileValidation" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) } -> { "Name" :: String, "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "EnableLogFileValidation" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) }) -> UpdateTrailRequest
```

Constructs UpdateTrailRequest's fields from required parameters

#### `UpdateTrailResponse`

``` purescript
newtype UpdateTrailResponse
  = UpdateTrailResponse { "Name" :: NullOrUndefined (String), "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "SnsTopicARN" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "TrailARN" :: NullOrUndefined (String), "LogFileValidationEnabled" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) }
```

<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>

##### Instances
``` purescript
Newtype UpdateTrailResponse _
Generic UpdateTrailResponse _
Show UpdateTrailResponse
Decode UpdateTrailResponse
Encode UpdateTrailResponse
```

#### `newUpdateTrailResponse`

``` purescript
newUpdateTrailResponse :: UpdateTrailResponse
```

Constructs UpdateTrailResponse from required parameters

#### `newUpdateTrailResponse'`

``` purescript
newUpdateTrailResponse' :: ({ "Name" :: NullOrUndefined (String), "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "SnsTopicARN" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "TrailARN" :: NullOrUndefined (String), "LogFileValidationEnabled" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) } -> { "Name" :: NullOrUndefined (String), "S3BucketName" :: NullOrUndefined (String), "S3KeyPrefix" :: NullOrUndefined (String), "SnsTopicName" :: NullOrUndefined (String), "SnsTopicARN" :: NullOrUndefined (String), "IncludeGlobalServiceEvents" :: NullOrUndefined (Boolean), "IsMultiRegionTrail" :: NullOrUndefined (Boolean), "TrailARN" :: NullOrUndefined (String), "LogFileValidationEnabled" :: NullOrUndefined (Boolean), "CloudWatchLogsLogGroupArn" :: NullOrUndefined (String), "CloudWatchLogsRoleArn" :: NullOrUndefined (String), "KmsKeyId" :: NullOrUndefined (String) }) -> UpdateTrailResponse
```

Constructs UpdateTrailResponse's fields from required parameters


