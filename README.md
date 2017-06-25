# Office

This is a dummy Phoenix 1.3 app that uses contexts.
This app doesn't do anything, other than define some contexts, schemas and DB migrations.

It serves as a very hackish example of the following:

1. An app with two contexts with clear boundaries: one context for editing documents and a context to handle payments.
2. The `Office.Documents.User` and `Office.Payments.User` share the same DB table but expose different columns.
   This way, each context only has access to the data it cares about.
   The `Payments` context needs the User's billing address, while the `Documents` context doesn't.
   (Yes, in the real world the `Payments` context would need the user's name, but this is a hackish example to show a point!)
3. There are no relationships between contexts: each user's schema only needs foreign keys to tables relevant to the given context.

I am not a Phoenix developer and maybe I got this all wrong. This is not to be taken as gospel.
This app has no testing (how could it, if it barely does anything?) except for some veeery light manual integration testing.