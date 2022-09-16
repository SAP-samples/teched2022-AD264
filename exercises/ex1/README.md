# Exercise 1 - Build an Extension as SaaS Customer

In this exercise, you will create an extension to the _Incidents Management_ Application for your customer tenant.

## Run SaaS application locally

Let's simulate a running SaaS application by starting the cloned application locally.

> Normally, this would an already deployed and running application on SAP BTP, but for the sake of this exercise let's keep things simple.

## Subscribe to the application

## Copy the extension project template

## Add the extension model

<details open>
<summary>See the solution</summary>

https://github.tools.sap/cap/incidents-ext-solar/blob/main/app/schema.cds
</details>

## Add the UI annotations

<details open>
<summary>See the solution</summary>

https://github.tools.sap/cap/incidents-ext-solar/blob/main/app/fiori.cds
</details>

## Push the extension

```sh
cds build
cds push
```

## Test it

## Summary

You've now built an extension that is available in one SaaS tenant.

In the next [exercise 2](../ex2/README.md), you will see how such an extension can be build and made available for other customers of the same SaaS application.
