**User Story: Send Text SMS from channels/applications to the destination address(es) via network operator. **
<br>

| **Item** | **Details** |
| ---- | ------- |
| ***Summary*** | As an application developer belonging to an enterprise, I want to send SMS from channels/applications to the destination address(es) via network operator. There are 3 different categories of SMS i.e. Service, Promotional & Transactional. This API is used to send all categories of messages. |
| ***Roles, Actors and Scope*** | **Roles:** Application Server (of developer) <br>**Actors:** SMS API Consumer (Application Server, Mobile App, Machine), SMS API Provider (Mobile Network Operator or MNO, Hyperscalers), SMS Destination (Machine, Mobile Device)<br> **Scope:** To send text SMS to the destination address(s) |
| ***Pre-conditions*** |Pre-requisite for using this API are: <br><ol><li>SMS Sender application / enterprise (or customer) is onboarded itself with the access provider before using this API </li><li> SMS Sender application / enterprise (or customer) has the API credentials.</li></ol> |
| ***Activities/Steps*** | **Starts when:** The customer application server makes a request to the SMS API to send text SMS to the destination address.<br>**Ends when:** The destination receives the text SMS.<br> |
| ***Post-conditions*** | The SMS is successfully delivered to the destination address.|
| ***Exceptions*** | Several exceptions might occur during the SMS API operations:<br><ul><li>Unauthorized: Not valid credentials (e.g. use of already expired access token).</li><li>Not Found: The number provided is not managed by the MNO</li><li>Invalid input: Not all mandatory  input data to invoke operation (e.g. format not as expected).</li><li>Conflict: Internal configuration policies didn’t allow for operations.</li><li>Not Allowed: Message sending restricted (DND).</li></ul>|

<br><br>