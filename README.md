# Oncology Core FHIR Implementation Guide

This project contains the generated source code for the Oncology Core FHIR Implementation Guide.  This IG is served at:
[http://standardhealthrecord.org/oncocore-ig/](http://standardhealthrecord.org/oncocore-ig/)

Any changes to the files in `/doc` will be automatically reflected in the live website linked above.

# To Deploy a New Version of the IG

To deploy a new version of the IG, follow the steps below. The examples in these steps assume Mac OS and the following locations (which may differ from yours, especially if there is a newer version of SHR-CLI):

* Local clone of this repository: `~/dev/standardhealth/oncocore-ig`
* Local clone of shr_spec: `~/dev/standardhealth/shr_spec`
* Local version of SHR-CLI: `~/dev/standardhealth/releases/shr-cli-5.15.1`

Steps to deploy a new IG:

1. Build the IG using SHR-CLI and the IGPublisher jar, as described [here](https://github.com/standardhealth/shr-cli/blob/master/README.md#exporting-shr-to-json-and-fhir) and [here](https://github.com/standardhealth/shr-cli/blob/master/README.md#creating-the-fhir-implementation-guide)
   ```sh
   $ cd ~/dev/standardhealth/releases/shr-cli-5.15.1
   $ rm -r out
   $ node . -c ig-oncocore-config.json ~/dev/standardhealth/shr_spec/spec/
   $ java $JAVA_OPTS -Xms4g -Xmx8g -jar out/fhir/guide/org.hl7.fhir.igpublisher.jar -ig out/fhir/guide/ig.json
   ```
2. Do a git pull from the root of the oncocore-ig repository to ensure you're up to date
   ```sh
   $ cd ~/dev/standardhealth/oncocore-ig
   $ git pull
   ```
3. Delete the _docs_ folder since we want to fully replace it with the new one
   ```sh
   $ rm -r docs
   ```
4. Copy the _output_ folder of the built IG to the _docs_ folder
   ```sh
   $ cp -r ~/dev/standardhealth/releases/shr-cli-5.15.1/out/fhir/guide/output docs
   ```
5. Add all the changes to git and then commit (note: you may see warnings about line endings, but this is OK)
   ```sh
   $ git add docs
   $ git commit -m "Update oncocore-ig"
   ```
6. Push to GitHub
   ```sh
   $ git push
   ```
7. Wait a few minutes and then verify changes at: [http://standardhealthrecord.org/oncocore-ig/](http://standardhealthrecord.org/oncocore-ig/).  The easiest way to see if the changes were published is to look at the timestamp in the footer of the IG pages.

