## Module AWS.CloudTrail.Requests

#### `addTags`

``` purescript
addTags :: forall eff. Service -> AddTagsRequest -> Aff (exception :: EXCEPTION | eff) AddTagsResponse
```

<p>Adds one or more tags to a trail, up to a limit of 50. Tags must be unique per trail. Overwrites an existing tag's value when a new value is specified for an existing tag key. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all regions only from the region in which the trail was created (that is, from its home region).</p>

#### `createTrail`

``` purescript
createTrail :: forall eff. Service -> CreateTrailRequest -> Aff (exception :: EXCEPTION | eff) CreateTrailResponse
```

<p>Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. A maximum of five trails can exist in a region, irrespective of the region in which they were created.</p>

#### `deleteTrail`

``` purescript
deleteTrail :: forall eff. Service -> DeleteTrailRequest -> Aff (exception :: EXCEPTION | eff) DeleteTrailResponse
```

<p>Deletes a trail. This operation must be called from the region in which the trail was created. <code>DeleteTrail</code> cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>

#### `describeTrails`

``` purescript
describeTrails :: forall eff. Service -> DescribeTrailsRequest -> Aff (exception :: EXCEPTION | eff) DescribeTrailsResponse
```

<p>Retrieves settings for the trail associated with the current region for your account.</p>

#### `getEventSelectors`

``` purescript
getEventSelectors :: forall eff. Service -> GetEventSelectorsRequest -> Aff (exception :: EXCEPTION | eff) GetEventSelectorsResponse
```

<p>Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:</p> <ul> <li> <p>The S3 objects that you are logging for data events.</p> </li> <li> <p>If your event selector includes management events.</p> </li> <li> <p>If your event selector includes read-only events, write-only events, or all. </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging Data and Management Events for Trails </a> in the <i>AWS CloudTrail User Guide</i>.</p>

#### `getTrailStatus`

``` purescript
getTrailStatus :: forall eff. Service -> GetTrailStatusRequest -> Aff (exception :: EXCEPTION | eff) GetTrailStatusResponse
```

<p>Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.</p>

#### `listPublicKeys`

``` purescript
listPublicKeys :: forall eff. Service -> ListPublicKeysRequest -> Aff (exception :: EXCEPTION | eff) ListPublicKeysResponse
```

<p>Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.</p> <note> <p>CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key.</p> </note>

#### `listTags`

``` purescript
listTags :: forall eff. Service -> ListTagsRequest -> Aff (exception :: EXCEPTION | eff) ListTagsResponse
```

<p>Lists the tags for the trail in the current region.</p>

#### `lookupEvents`

``` purescript
lookupEvents :: forall eff. Service -> LookupEventsRequest -> Aff (exception :: EXCEPTION | eff) LookupEventsResponse
```

<p>Looks up API activity events captured by CloudTrail that create, update, or delete resources in your account. Events for a region can be looked up for the times in which you had CloudTrail turned on in that region during the last seven days. Lookup supports the following attributes:</p> <ul> <li> <p>Event ID</p> </li> <li> <p>Event name</p> </li> <li> <p>Event source</p> </li> <li> <p>Resource name</p> </li> <li> <p>Resource type</p> </li> <li> <p>User name</p> </li> </ul> <p>All attributes are optional. The default number of results returned is 10, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.</p> <important> <p>The rate of lookup requests is limited to one per second per account. If this limit is exceeded, a throttling error occurs.</p> </important> <important> <p>Events that occurred during the selected time range will not be available for lookup if CloudTrail logging was not enabled when the events occurred.</p> </important>

#### `putEventSelectors`

``` purescript
putEventSelectors :: forall eff. Service -> PutEventSelectorsRequest -> Aff (exception :: EXCEPTION | eff) PutEventSelectorsResponse
```

<p>Configures an event selector for your trail. Use event selectors to specify whether you want your trail to log management and/or data events. When an event occurs in your account, CloudTrail evaluates the event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event. </p> <p>Example</p> <ol> <li> <p>You create an event selector for a trail and specify that you want write-only events.</p> </li> <li> <p>The EC2 <code>GetConsoleOutput</code> and <code>RunInstances</code> API operations occur in your account.</p> </li> <li> <p>CloudTrail evaluates whether the events match your event selectors.</p> </li> <li> <p>The <code>RunInstances</code> is a write-only event and it matches your event selector. The trail logs the event.</p> </li> <li> <p>The <code>GetConsoleOutput</code> is a read-only event but it doesn't match your event selector. The trail doesn't log the event. </p> </li> </ol> <p>The <code>PutEventSelectors</code> operation must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p> <p>You can configure up to five event selectors for each trail. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging Data and Management Events for Trails </a> in the <i>AWS CloudTrail User Guide</i>.</p>

#### `removeTags`

``` purescript
removeTags :: forall eff. Service -> RemoveTagsRequest -> Aff (exception :: EXCEPTION | eff) RemoveTagsResponse
```

<p>Removes the specified tags from a trail.</p>

#### `startLogging`

``` purescript
startLogging :: forall eff. Service -> StartLoggingRequest -> Aff (exception :: EXCEPTION | eff) StartLoggingResponse
```

<p>Starts the recording of AWS API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>

#### `stopLogging`

``` purescript
stopLogging :: forall eff. Service -> StopLoggingRequest -> Aff (exception :: EXCEPTION | eff) StopLoggingResponse
```

<p>Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an <code>InvalidHomeRegionException</code> will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.</p>

#### `updateTrail`

``` purescript
updateTrail :: forall eff. Service -> UpdateTrailRequest -> Aff (exception :: EXCEPTION | eff) UpdateTrailResponse
```

<p>Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. <code>UpdateTrail</code> must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p>


