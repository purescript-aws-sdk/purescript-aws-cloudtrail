
module AWS.CloudTrail.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.CloudTrail as CloudTrail
import AWS.CloudTrail.Types as CloudTrailTypes


-- | <p>Adds one or more tags to a trail, up to a limit of 50. Tags must be unique per trail. Overwrites an existing tag's value when a new value is specified for an existing tag key. If you specify a key without a value, the tag will be created with the specified key and a value of null. You can tag a trail that applies to all regions only from the region in which the trail was created (that is, from its home region).</p>
addTags :: forall eff. CloudTrail.Service -> CloudTrailTypes.AddTagsRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.AddTagsResponse
addTags (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addTags"


-- | <p>Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket. A maximum of five trails can exist in a region, irrespective of the region in which they were created.</p>
createTrail :: forall eff. CloudTrail.Service -> CloudTrailTypes.CreateTrailRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.CreateTrailResponse
createTrail (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createTrail"


-- | <p>Deletes a trail. This operation must be called from the region in which the trail was created. <code>DeleteTrail</code> cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>
deleteTrail :: forall eff. CloudTrail.Service -> CloudTrailTypes.DeleteTrailRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.DeleteTrailResponse
deleteTrail (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTrail"


-- | <p>Retrieves settings for the trail associated with the current region for your account.</p>
describeTrails :: forall eff. CloudTrail.Service -> CloudTrailTypes.DescribeTrailsRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.DescribeTrailsResponse
describeTrails (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTrails"


-- | <p>Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:</p> <ul> <li> <p>The S3 objects that you are logging for data events.</p> </li> <li> <p>If your event selector includes management events.</p> </li> <li> <p>If your event selector includes read-only events, write-only events, or all. </p> </li> </ul> <p>For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging Data and Management Events for Trails </a> in the <i>AWS CloudTrail User Guide</i>.</p>
getEventSelectors :: forall eff. CloudTrail.Service -> CloudTrailTypes.GetEventSelectorsRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.GetEventSelectorsResponse
getEventSelectors (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getEventSelectors"


-- | <p>Returns a JSON-formatted list of information about the specified trail. Fields include information on delivery errors, Amazon SNS and Amazon S3 errors, and start and stop logging times for each trail. This operation returns trail status from a single region. To return trail status from all regions, you must call the operation on each region.</p>
getTrailStatus :: forall eff. CloudTrail.Service -> CloudTrailTypes.GetTrailStatusRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.GetTrailStatusResponse
getTrailStatus (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getTrailStatus"


-- | <p>Returns all public keys whose private keys were used to sign the digest files within the specified time range. The public key is needed to validate digest files that were signed with its corresponding private key.</p> <note> <p>CloudTrail uses different private/public key pairs per region. Each digest file is signed with a private key unique to its region. Therefore, when you validate a digest file from a particular region, you must look in the same region for its corresponding public key.</p> </note>
listPublicKeys :: forall eff. CloudTrail.Service -> CloudTrailTypes.ListPublicKeysRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.ListPublicKeysResponse
listPublicKeys (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPublicKeys"


-- | <p>Lists the tags for the trail in the current region.</p>
listTags :: forall eff. CloudTrail.Service -> CloudTrailTypes.ListTagsRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.ListTagsResponse
listTags (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTags"


-- | <p>Looks up API activity events captured by CloudTrail that create, update, or delete resources in your account. Events for a region can be looked up for the times in which you had CloudTrail turned on in that region during the last seven days. Lookup supports the following attributes:</p> <ul> <li> <p>Event ID</p> </li> <li> <p>Event name</p> </li> <li> <p>Event source</p> </li> <li> <p>Resource name</p> </li> <li> <p>Resource type</p> </li> <li> <p>User name</p> </li> </ul> <p>All attributes are optional. The default number of results returned is 10, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.</p> <important> <p>The rate of lookup requests is limited to one per second per account. If this limit is exceeded, a throttling error occurs.</p> </important> <important> <p>Events that occurred during the selected time range will not be available for lookup if CloudTrail logging was not enabled when the events occurred.</p> </important>
lookupEvents :: forall eff. CloudTrail.Service -> CloudTrailTypes.LookupEventsRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.LookupEventsResponse
lookupEvents (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "lookupEvents"


-- | <p>Configures an event selector for your trail. Use event selectors to specify whether you want your trail to log management and/or data events. When an event occurs in your account, CloudTrail evaluates the event selectors in all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event. </p> <p>Example</p> <ol> <li> <p>You create an event selector for a trail and specify that you want write-only events.</p> </li> <li> <p>The EC2 <code>GetConsoleOutput</code> and <code>RunInstances</code> API operations occur in your account.</p> </li> <li> <p>CloudTrail evaluates whether the events match your event selectors.</p> </li> <li> <p>The <code>RunInstances</code> is a write-only event and it matches your event selector. The trail logs the event.</p> </li> <li> <p>The <code>GetConsoleOutput</code> is a read-only event but it doesn't match your event selector. The trail doesn't log the event. </p> </li> </ol> <p>The <code>PutEventSelectors</code> operation must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p> <p>You can configure up to five event selectors for each trail. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html">Logging Data and Management Events for Trails </a> in the <i>AWS CloudTrail User Guide</i>.</p>
putEventSelectors :: forall eff. CloudTrail.Service -> CloudTrailTypes.PutEventSelectorsRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.PutEventSelectorsResponse
putEventSelectors (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putEventSelectors"


-- | <p>Removes the specified tags from a trail.</p>
removeTags :: forall eff. CloudTrail.Service -> CloudTrailTypes.RemoveTagsRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.RemoveTagsResponse
removeTags (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeTags"


-- | <p>Starts the recording of AWS API calls and log file delivery for a trail. For a trail that is enabled in all regions, this operation must be called from the region in which the trail was created. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail that is enabled in all regions.</p>
startLogging :: forall eff. CloudTrail.Service -> CloudTrailTypes.StartLoggingRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.StartLoggingResponse
startLogging (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "startLogging"


-- | <p>Suspends the recording of AWS API calls and log file delivery for the specified trail. Under most circumstances, there is no need to use this action. You can update a trail without stopping it first. This action is the only way to stop recording. For a trail enabled in all regions, this operation must be called from the region in which the trail was created, or an <code>InvalidHomeRegionException</code> will occur. This operation cannot be called on the shadow trails (replicated trails in other regions) of a trail enabled in all regions.</p>
stopLogging :: forall eff. CloudTrail.Service -> CloudTrailTypes.StopLoggingRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.StopLoggingResponse
stopLogging (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "stopLogging"


-- | <p>Updates the settings that specify delivery of log files. Changes to a trail do not require stopping the CloudTrail service. Use this action to designate an existing bucket for log delivery. If the existing bucket has previously been a target for CloudTrail log files, an IAM policy exists for the bucket. <code>UpdateTrail</code> must be called from the region in which the trail was created; otherwise, an <code>InvalidHomeRegionException</code> is thrown.</p>
updateTrail :: forall eff. CloudTrail.Service -> CloudTrailTypes.UpdateTrailRequest -> Aff (exception :: EXCEPTION | eff) CloudTrailTypes.UpdateTrailResponse
updateTrail (CloudTrail.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateTrail"
