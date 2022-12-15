package com.gk.test.framework.helpers;

import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.remote.AndroidMobileCapabilityType;
import io.appium.java_client.remote.MobileCapabilityType;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.events.EventFiringWebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;

public class AndroidHelper extends EventFiringWebDriver {
    private static final Logger LOG = LoggerFactory
            .getLogger(AndroidHelper.class);
    private static final String RUN_CONFIG_PROPERTIES = "/environment.properties";
    private static AndroidDriver<WebElement> ANDROID_DRIVER;
    URL url;
    private static final Thread CLOSE_THREAD = new Thread() {

        @Override
        public void run() {
            ANDROID_DRIVER.quit();
        }
    };

   static {
        Props.loadRunConfigProps(RUN_CONFIG_PROPERTIES);
        ANDROID_DRIVER = startAppiumDriver();
        Runtime.getRuntime().addShutdownHook(CLOSE_THREAD);
    }
    
    private AndroidHelper() {
        super(ANDROID_DRIVER);
    }

    public static AndroidDriver<WebElement> startAppiumDriver() {
    	
        DesiredCapabilities capabilities = getAppiumDesiredCapabilities();
        try {
           // ANDROID_DRIVER = new AndroidDriver<>(new URL("http://127.0.0.1:"+PortNumber+"/wd/hub"), capabilities);
        	
        	ANDROID_DRIVER = new AndroidDriver<>(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
        	//ANDROID_DRIVER = new AndroidDriver<>(new URL("http://127.0.0.1:4725/wd/hub"), capabilities);
        	
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        return ANDROID_DRIVER;
    }
   // @parameter({"PortNumber"})
  //  private static DesiredCapabilities getAppiumDesiredCapabilities(String PortNumber) {
    private static DesiredCapabilities getAppiumDesiredCapabilities( ) {
        DesiredCapabilities capabilities = new DesiredCapabilities();
       // capabilities.setCapability("PortNumber",PortNumber );
        capabilities.setCapability("app", "C:\\Users\\User\\Desktop\\Onloop Project\\OnLoop_MobileAutomation\\tools\\OnLoop_base.apk");
        capabilities.setCapability(AndroidMobileCapabilityType.APP_PACKAGE, "io.onloop.onloop");
        capabilities.setCapability(AndroidMobileCapabilityType.APP_ACTIVITY, "io.onloop.onloop.MainActivity");
        capabilities.setCapability("deviceName", "4tyljv4df6tgzxyx");
        capabilities.setCapability("noReset", false);
        capabilities.setCapability(MobileCapabilityType.AUTOMATION_NAME, "Appium");
        //capabilities.setCapability(" autoGrantPermissions", true);
        return capabilities;       
    }

    public static AndroidDriver<WebElement> getAndroidWebDriver() {
        return ANDROID_DRIVER;
    }

    @Override
    public void close() {
        if (Thread.currentThread() != CLOSE_THREAD) {
            throw new UnsupportedOperationException(
                    "You shouldn't close this WebDriver. It's shared and will close when the JVM exits.");
        }
        super.close();
    }
}
