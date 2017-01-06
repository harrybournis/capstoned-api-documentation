# Authentication

<p class="short-description">'Register, Sign In, Sign Out'</p>

Authentication is implemented using **JWT (JSON Web Tokens)**.

After successful authentication, a user is issued two JWT tokens which are stored in secure,
http-only cookies. Both tokens have an expiration date. The first token, the **access-token**
is used to authenticate the user on following requests. The second token, the **refresh-token**
is only sent to the /refresh path and is used to issue the user a new access-token.

To prevent CSRF Attacks, the access-token contains a csrf-token value, which is equal to the
XSRF-TOKEN header that the response contains upon successful authentication. The client must
send the token contained in the params on each request that requires authentication, is a header
called X-XSRF-TOKEN. The X-XSRF-TOKEN header and the csrf-token value in the access-token are
compared by the server.

<expand..........>

