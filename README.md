> [!WARNING]
> **Repository archived**
>
> This repository has been archived following the CAMARA **Lifecycle Clean-up Process** and is kept for reference / maintenance of previous releases only.
>
> - Decision record (API Backlog/TSC): [APIBacklog#285](https://github.com/camaraproject/APIBacklog/issues/285)
> - Lifecycle policy: [Unified Clean-up Process](https://github.com/camaraproject/Governance/blob/main/documentation/API-Onboarding-and-Lifecycle.md#unified-clean-up-process-for-inactive-onboarding-trackers-and-repositories)
> - Reason or Phase of the process: [Phase C – Repository With Partial Progress](https://github.com/camaraproject/Governance/blob/main/documentation/API-Onboarding-and-Lifecycle.md#archival-criteria-per-phase)
> - Request reactivation: submit a new issue in APIBacklog referencing this archived repository: [Reactivation of archived repositories](https://github.com/camaraproject/Governance/blob/main/documentation/API-Onboarding-and-Lifecycle.md#reactivation-of-archived-repositories)

<a href="https://github.com/camaraproject/ShortMessageService/commits/" title="Last Commit"><img src="https://img.shields.io/github/last-commit/camaraproject/ShortMessageService?style=plastic"></a>
<a href="https://github.com/camaraproject/ShortMessageService/issues" title="Open Issues"><img src="https://img.shields.io/github/issues/camaraproject/ShortMessageService?style=plastic"></a>
<a href="https://github.com/camaraproject/ShortMessageService/pulls" title="Open Pull Requests"><img src="https://img.shields.io/github/issues-pr/camaraproject/ShortMessageService?style=plastic"></a>
<a href="https://github.com/camaraproject/ShortMessageService/graphs/contributors" title="Contributors"><img src="https://img.shields.io/github/contributors/camaraproject/ShortMessageService?style=plastic"></a>
<a href="https://github.com/camaraproject/ShortMessageService" title="Repo Size"><img src="https://img.shields.io/github/repo-size/camaraproject/ShortMessageService?style=plastic"></a>
<a href="https://github.com/camaraproject/ShortMessageService/blob/main/LICENSE" title="License"><img src="https://img.shields.io/badge/License-Apache%202.0-green.svg?style=plastic"></a>
<a href="https://github.com/camaraproject/{{repo_name}}/releases/latest" title="Latest Release"><img src="https://img.shields.io/github/release/camaraproject/ShortMessageService?style=plastic"></a>
<a href="https://github.com/camaraproject/Governance/blob/main/ProjectStructureAndRoles.md" title="Sandbox API Repository"><img src="https://img.shields.io/badge/Sandbox%20API%20Repository-yellow?style=plastic"></a>

# ShortMessageService

Sandbox API Repository to describe, develop, document, and test the ShortMessageService Service API(s). The repository does not yet belong to a CAMARA Sub Project.

* API Repository [wiki page](https://lf-camaraproject.atlassian.net/wiki/x/wSne)

## Scope
* Service APIs for “Short Message Service” (see APIBacklog.md)  
* It provides the customer with the ability to:  
  * to send SMS to the destination address(es). There are 3 different categories of SMS i.e. Service, Promotional & Transactional. This API is used to send all categories of messages. Pre-requisite for using this API is that SMS Sender application / enterprise (or customer) needs to onboard itself with the access provider before using this API. This API has only single operation i.e. Send SMS - Provides the capability to deliver SMS to the recepient. In order to the receive delivery receipt separate API to be defined which is to be implemented by the API consumer for sending back the delivery receipt to the 'Send SMS' API consumer in a standardized callback API.
  * NOTE: The scope of these APIs should be limited (at least at a first stage) to 4G and 5G.  
* Describe, develop, document and test the APIs (with 1-2 Telcos)  
* Started: December 2023
* Location: virtually  

## Meetings
* Meetings are held virtually
* Schedule: tbd
* Meeting link: tbd

## Contributorship and mailing list
* To subscribe / unsubscribe to the mailing list of this Sub Project and thus be / resign as Contributor please visit <https://lists.camaraproject.org/g/sp-sms>.
* A message to all Contributors of this Sub Project can be sent using <sp-sms@lists.camaraproject.org>.
