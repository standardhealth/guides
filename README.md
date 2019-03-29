# Standard Health Record FHIR Implementation Guide

This project contains the generated source code for various FHIR implementation guides (IG).  These IGs are served under:
[http://standardhealthrecord.org/guides/](http://standardhealthrecord.org/guides/).

Any changes to the files in `/doc` will be automatically reflected in the live website linked above.

# To Deploy or Update an IG

To deploy a new IG or update an existing IG, follow the steps below. The examples in these steps assume Mac OS and the following locations (which may differ from yours):

* Local clone of this repository: `~/dev/standardhealth/guides`
* Local clone of shr_spec: `~/dev/standardhealth/shr_spec`
* Local release of SHR-CLI: `~/dev/standardhealth/releases/shr-cli`

For the purposes of this doc, the IG short name will be indicated as `${myIG}`, but you should replace that with the actual IG short name you want (e.g., `mcode`).  This will be part of the IG URL path.

Steps to deploy or update an IG:

1. Build the IG using SHR-CLI and the IGPublisher jar, as described [here](https://github.com/standardhealth/shr-cli/blob/master/README.md#exporting-shr-to-json-and-fhir) and [here](https://github.com/standardhealth/shr-cli/blob/master/README.md#creating-the-fhir-implementation-guide)
   ```sh
   $ cd ~/dev/standardhealth/releases/shr-cli
   $ rm -r out
   $ node . -c ig-${myIG}-config.json ~/dev/standardhealth/shr_spec/spec/
   $ java $JAVA_OPTS -Xms4g -Xmx8g -jar out/fhir/guide/org.hl7.fhir.igpublisher.jar -ig out/fhir/guide/ig.json
   ```
2. Do a git pull from the root of the _guides_ repository to ensure you're up to date
   ```sh
   $ cd ~/dev/standardhealth/guides
   $ git pull
   ```
3. **If updating an existing IG:** Delete the _docs/${myIG}/_ folder since we want to fully replace it with the new one
   ```sh
   $ rm -r docs/${myIG}
   ```
4. Copy the _output_ folder of the built IG to the _docs/${myIG}/_ folder
   ```sh
   $ cp -r ~/dev/standardhealth/releases/shr-cli/out/fhir/guide/output docs/${myIG}
   ```
5. **If creating a new IG:** Update the _docs/index.html_ file to add an entry for the new IG
6. Add all the changes to git and then commit (note: you may see warnings about line endings, but this is OK)
   ```sh
   $ git add docs
   $ git commit -m "Update ${myIG}"
   ```
7. Push to GitHub
   ```sh
   $ git push
   ```
8. Wait a few minutes and then verify changes at: [http://standardhealthrecord.org/guides/](http://standardhealthrecord.org/guides/).  The easiest way to see if the changes were published is to look at the timestamp in the footer of the specific IG pages.
