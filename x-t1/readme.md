# Extending the Incidents App

### 1. Start an extension project 

Download and extract this archive or 

```js
cds extend <your app url> -d ext
```

This will ask you to login → do so as a user with assigned role `cds.ExtensionDeveloper`. 

It will then create a new extension project in folder `./ext` and fill it with template content prepared by your SaaS provider. 

### 2. Add your extensions

For example, edit the provided template files  [`./app/schema.cds`](./app/schema.cds)  or  [`./app/fiori.cds`](./app/fiori.cds) , or add other `.cds` files to [`./app`](./app/) folder as appropriate. 

### 3. Build → deployable 

Generate a deployable `./gen/extension.tgz` archive:

```js
cds build extension
```

### 4. Deploy your extension

Deploy the `extension.tgz` archive to the subscribed application to activate it:

```js
cds push ./gen/extension.tgz --to <your app url>
```

### 5. Pull latest model 

In case of intermediate updates by your SaaS provider, run this to update downloaded models:

```js
cds pull --from <your app url> 
```
