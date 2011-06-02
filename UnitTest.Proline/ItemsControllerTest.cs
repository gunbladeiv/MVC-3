﻿using Proline.Controllers;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Microsoft.VisualStudio.TestTools.UnitTesting.Web;

namespace UnitTest.Proline
{
    
    
    /// <summary>
    ///This is a test class for ItemsControllerTest and is intended
    ///to contain all ItemsControllerTest Unit Tests
    ///</summary>
    [TestClass()]
    public class ItemsControllerTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///Gets or sets the test context which provides
        ///information about and functionality for the current test run.
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        #region Additional test attributes
        // 
        //You can use the following additional attributes as you write your tests:
        //
        //Use ClassInitialize to run code before running the first test in the class
        //[ClassInitialize()]
        //public static void MyClassInitialize(TestContext testContext)
        //{
        //}
        //
        //Use ClassCleanup to run code after all tests in a class have run
        //[ClassCleanup()]
        //public static void MyClassCleanup()
        //{
        //}
        //
        //Use TestInitialize to run code before running each test
        //[TestInitialize()]
        //public void MyTestInitialize()
        //{
        //}
        //
        //Use TestCleanup to run code after each test has run
        //[TestCleanup()]
        //public void MyTestCleanup()
        //{
        //}
        //
        #endregion


        /// <summary>
        ///A test for convertToJson
        ///</summary>
        // TODO: Ensure that the UrlToTest attribute specifies a URL to an ASP.NET page (for example,
        // http://.../Default.aspx). This is necessary for the unit test to be executed on the web server,
        // whether you are testing a page, web service, or a WCF service.
        [TestMethod()]
        [HostType("ASP.NET")]
        [AspNetDevelopmentServerHost("C:\\Users\\GunBladeIV\\Documents\\Visual Studio 2010\\Projects\\Proline\\Proline", "/")]
        [UrlToTest("http://localhost:51162/")]
        public void convertToJsonTest()
        {
            ItemsController target = new ItemsController(); // TODO: Initialize to an appropriate value
            object y = null; // TODO: Initialize to an appropriate value
            target.convertToJson(y);
            Assert.Inconclusive("A method that does not return a value cannot be verified.");
        }
    }
}
