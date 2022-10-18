# Verticalization, Customization, Composition with SAP Cloud Application Programming Model

Welcome to the Hand-On Session at TechEd 2022. This repository provides both, 
the session and exercises guide, as well as sample content used in the session.

### Session Details

| Session ID | Title                                                             |
|------------|-------------------------------------------------------------------|
| AD264      | Boost Application Verticalization, Customization, and Composition |

**Description** - Learn how to verticalize and customize SaaS applications using 
intrinsic extensibility capabilities of SAP Cloud Application Programming Model. 
Offer feature-toggled verticalizations as a SaaS provider, and see how to create 
and share prebuilt extension packages as an SAP partner customer, which customers 
can reuse to compose tailored solutions.


### Exercises

- [Introduction](https://github.com/SAP-samples/teched2022-AD264/wiki)
- [Getting Started](https://github.com/SAP-samples/teched2022-AD264/wiki/0.-Getting-Started)
- [Exercise 1 - Building a CAP-based application (quick recap)](https://github.com/SAP-samples/teched2022-AD264/wiki/1.-Build-a-CAP-Application)
- [Exercise 2 - Deploy as extensible SaaS app (by SaaS Provider)](https://github.com/SAP-samples/teched2022-AD264/wiki/2.-Deploy-as-SaaS)
- [Exercise 3 - Adding custom extensions (by SaaS Customers)](https://github.com/SAP-samples/teched2022-AD264/wiki/3.-Custom-Extensions)
- [Exercise 4 - Providing pre-built extensions  (by SAP Partners)](https://github.com/SAP-samples/teched2022-AD264/wiki/4.-Pre-built-Extensions)
- [Exercise 5 - Providing feature-toggled extensions (by SaaS Provider)](https://github.com/SAP-samples/teched2022-AD264/wiki/5.-Feature-Toggled-Extensions)
- [Summary](https://github.com/SAP-samples/teched2022-AD264/wiki/6.-Summary)


### Content 

This content in this repo is a so-called monorepo using npm workspaces technique. 
It contains: 

| Folder / File                                                                          | Description                                           |
|----------------------------------------------------------------------------------------|-------------------------------------------------------|
| [base-app/](https://github.com/SAP-samples/teched2022-AD264/tree/main/base-app)        | The Incidents Management SaaS application             |
| [ext-solar/](https://github.com/SAP-samples/teched2022-AD264/tree/main/ext-solar)      | Pre-built verticalization for vendors of solar panels |
| [ext-t1/](https://github.com/SAP-samples/teched2022-AD264/tree/main/ext-t1)            | Individual extension for SaaS customer _t1_           |
| [wiki/](https://github.com/SAP-samples/teched2022-AD264/wiki)                          | A git submodule link to the repo's wiki content       |
| [package.json](https://github.com/SAP-samples/teched2022-AD264/tree/main/package.json) | Npm workspace setup                                   |


### License

Copyright (c) 2022 SAP SE or an SAP affiliate company. All rights reserved. 
This project is licensed under the Apache Software License, version 2.0 except as 
noted otherwise in the [LICENSE](LICENSES/Apache-2.0.txt) file.

### Obtaining Support

Support for the content in this repository is available during the actual time of 
the online session for which this content has been designed. Otherwise, you may 
request support via the [Issues](../../issues) tab.
