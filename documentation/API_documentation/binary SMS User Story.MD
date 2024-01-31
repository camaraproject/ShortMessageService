**User Story: Send binary SMS message to communication module**
<br>

| **Item** | **Details** |
| ---- | ------- |
| ***Summary*** | As an application developer belonging to an enterprise, I want to remotely control a product equipped with a communication module, so I want to send a binary SMS message of control commands to it. |
| ***Roles, Actors and Scope*** | **Roles:** Customer:User<br> **Actors:** Mobile Network Operators (MNO), hyperscalers, application developers, enterprise. <br> **Scope:** To send binary SMS message to the destination address of the communication module |
| ***Pre-conditions*** |The preconditions are listed below:<br><ol><li>Application developer has onboarded to MNO API</li><li>Application developer has API credentials</li></ol>|
| ***Activities/Steps*** | **Starts when:** The customer application server makes a request to the SMS API to send binary SMS message to the destination address of the communication module.<br>**Ends when:** The communication module receives the binary SMS message.<br> |
| ***Post-conditions*** | The comand in the binay SMS message works on the application of the product equipped with the communication module.|
| ***Exceptions*** | Several exceptions might occur during the SMS API operations:<br><ul><li>Unauthorized: Not valid credentials (e.g. use of already expired access token).</li><li>Not Found: The number provided is not managed by the MNO</li><li>Invalid input: Not all mandatory  input data to invoke operation (e.g. format not as expected).</li><li>Conflict: Internal configuration policies didn’t allow for operations.</li></ul>|

<br><br>
