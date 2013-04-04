# A Sample Project for native iOS Compilation of a Sencha Touch App

This project is a sample project that illustrates how a Sencha Touch 
app can be bundled into a native iOS Application using a UIWebView. 

This is usefull if you want to combine the Sencha Touch app with native
iOS functions. 

For more information check my blogpost:
**TODO: Add link to blog post**

## Production Build-Phase

The Production build phase runs a sencha command to generate the production build of the webapp. 
To run this script on your machine, you have to adjust the path to the sencha tools location:

* Go to the 'Build Settings' tab for the *MyWebAppProduction* Target
* Find the User-Definded variable **SENCHA_CMD**
* Adjust the path according to your sencha tools installation