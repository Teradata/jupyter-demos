import { test, expect, Page } from '@playwright/test';
const emailaddr = 'adam.tworkiewicz+jupyter.testing@teradata.com';
const password = 'wyiEwLP545sE5FY'; 
const demo_user_pw = 'wyiEwLP545sE5FY';
//const db_pw = 'dbc';

const sleep = (ms) => new Promise(r => setTimeout(r, ms));

test.describe('New Todo', () => {
    test('verify multiple tabs', async({page})=>{
        test.setTimeout(7200000);
        //const page = await context.newPage();

        // Login In  (Done!)
        await page.goto('https://clearscape.teradata.com/dashboard');
        await page.fill('input[id="email"]', emailaddr);
        await page.fill('input[id="password"]', password);
        await page.click('button >> text=LOG IN');

        // Check if Start Environment is disabled or not (Done)
        //
        //await page.waitForSelector('button:is([disabled]) >> text=RUN DEMOS USING JUPYTER');
        if (await page.locator('button >> text=RUN DEMOS USING JUPYTER').isDisabled()){   //await page.locator('button >> text=START ENVIRONMENT').isEnabled()){
            await page.locator('button >> text=START ENVIRONMENT').click();
            await page.waitForSelector('button:not([disabled]) >> text=RUN DEMOS USING JUPYTER');
        }
        
        // Click to Run Demos (Done)
        const pagePromise = context.waitForEvent('page');
        await page.getByText('open new tab').click();
        const newPage = await pagePromise;
        await newPage.waitForLoadState();
        /*
        const [newPage] = await Promise.all([
            page.waitForEvent(page),
            // This action triggers the new tab
            page.locator('button >> text=RUN DEMOS USING JUPYTER').click() 
        ])
            // Wait for New Page/Tab to Load, Then jump over to new page (Done)
            await newPage.waitForLoadState();                
            // title of new tab page
            //console.log(await newPage.title());       
            // title of existing page
            //console.log(await page.title());
            //const jupyter_url=await newPage.url(); //get the url of the current page
            //strip jupyter url 
            //const jUrl = jupyter_url.split("/lab/")[0]

            // Wait for content to appear before moving on.  Jupyter is slow to load (Done)
            await newPage.waitForSelector('text=ClearScape Analytics Demonstrations via Jupyter');

            // Run through Demos //

            // GettingStarted
            await runDemo(newPage,"GettingStarted","GettingStarted","GettingStarted.ipynb","false");
            await runDemo(newPage,"GettingStarted","GettingStarted_Charting","GettingStarted_Charting.ipynb","false");   // ?              
            await runDemo(newPage,"GettingStarted","GettingStarted_Jupyter_Pandas","GettingStarted_Jupyter_Pandas.ipynb","true");  // This python script has too many inputs
            
            // UseCases
            await runDemo(newPage,"UseCases","AirPassengersTimeSeriesForecasting","AirPassengersTimeSeriesForecasting.ipynb","false");
            await runDemo(newPage,"UseCases","AustinBikeShare","AustinBikeShare.ipynb","false");
            await runDemo(newPage,"UseCases","BI_Tools","Dataiku.ipynb","true");
            await runDemo(newPage,"UseCases","BrokenDigitalEvents","RetailBrokenDigitalJourneysPython.ipynb","true");
            await runDemo(newPage,"UseCases","Clustering_KMeans","Clustering_KMeans.ipynb","false");
            await runDemo(newPage,"UseCases","Consumption_Forecasting_BYOM","Energy_Consumption_Forecasting_BYOM.ipynb","true");
            await runDemo(newPage,"UseCases","CreditCardFraud","CreditCardFraud.ipynb","false");
            await runDemo(newPage,"UseCases","CustomerBehaviorAnalysis","BehavioralAnalysis.ipynb","true");
            //await runDemo(newPage,"UseCases","Data_Dictionary","Data_Dictionary_Legacy.ipynb","true");   // hung up on space allocation
            await runDemo(newPage,"UseCases","Data_Dictionary","Data_Dictionary.ipynb","true");  
            await runDemo(newPage,"UseCases","DataPrepAndDiscovery","DataPrepAndDiscovery.ipynb","true"); 
            await runDemo(newPage,"UseCases","DataScienceFlow","DataScienceFlow.ipynb","true"); 
            await runDemo(newPage,"UseCases","DeepHistory","DeepHistory.ipynb","false");
            await runDemo(newPage,"UseCases","ESG","ESG_pop.ipynb","true");
            await runDemo(newPage,"UseCases","ESG","ESG.ipynb","true");
            await runDemo(newPage,"UseCases","FourierTransform","FourierTransform.ipynb","false");
            await runDemo(newPage,"UseCases","FSCustomerJourney","FSCustomerJourney.ipynb","false");
            await runDemo(newPage,"UseCases","GLM_Fraud_Detection_BYOM","GLM_Fraud_Detection_BYOM.ipynb","true");
            await runDemo(newPage,"UseCases","GLM_Fraud_Detection_InDB","GLM_Fraud_Detection_InDB.ipynb","true");
            await runDemo(newPage,"UseCases","IndoorSensor","IndoorSensor.ipynb","true");
            await runDemo(newPage,"UseCases","InsurancePolicyClaims","InsurancePolicyClaims.ipynb","false");
            await runDemo(newPage,"UseCases","KneeReplacement","KneeReplacementAttributionAnalysis.ipynb","false");
            await runDemo(newPage,"UseCases","KneeReplacement","PathAnalysisforTotalKneeReplacement.ipynb","true");
            await runDemo(newPage,"UseCases","ManufacturingDefects","ManufacturingDefects.ipynb","true");
            await runDemo(newPage,"UseCases","NYC-taxi-4d","NYC-taxi-geospatial-visual.ipynb","true");
            await runDemo(newPage,"UseCases","NYC-taxi-4d","NYC-taxi-timeseries.ipynb","false");
            await runDemo(newPage,"UseCases","Outlier_Analysis_Transformation","Outlier_Analysis_Transformation.ipynb","false");
            await runDemo(newPage,"UseCases","SalesForecasting","SalesForecastARIMA.ipynb","true");
            await runDemo(newPage,"UseCases","SurvivalAnalysis","SurvivalAnalysis_Python.ipynb","true");
            await runDemo(newPage,"UseCases","Telco_4d_Analytics","telco_network_coverage.ipynb","true");
            await runDemo(newPage,"UseCases","TextProcessing_TF_IDF","TF_IDF_Workflow_Pythonista.ipynb","true");
            await runDemo(newPage,"UseCases","TextProcessing_TF_IDF","TF_IDF_Workflow_SQL.ipynb","false");
            await runDemo(newPage,"UseCases","TextProcessing_TF_IDF","TF_IDF_Workflow.ipynb","true");
            await runDemo(newPage,"UseCases","TimeSeriesAnalysis","TimeSeriesAnalysis.ipynb","false");
            await runDemo(newPage,"UseCases","VantageAnalyticLibrary","Overview_Vantage_Analytic_Library.ipynb","false");
            await runDemo(newPage,"UseCases","VantageAnalyticLibrary","VAL-Analytic_Algorithms_and_Scoring.ipynb","false");
            await runDemo(newPage,"UseCases","VantageAnalyticLibrary","VAL-Descriptive_Statistics_and_Transformation.ipynb","false");
            await runDemo(newPage,"UseCases","VantageAnalyticLibrary","VAL-Hypothesis_Tests.ipynb","false");
            await runDemo(newPage,"UseCases","VantageAnalyticLibrary","VAL-teradataml-Demo.ipynb","true");
            await runDemo(newPage,"UseCases","vertex_pipelines_housing_example-BYOM","vertex_pipelines_housing_example-BYOM.ipynb","true");

            return ''
        */
    });
});
 async function runDemo(page: Page, menu: string, submenu: string, demoFile: string, isPythonKernel: string){
    // Go to Main Folder
    await page.waitForSelector('span[title="~/JupyterLabRoot"]');
    await page.locator('span[title="~/JupyterLabRoot"]').click();
    await page.locator('span[title="~/JupyterLabRoot"]').click();  // redundant
    
    // Go to 1st Menu item
    //await sleep(500);
    await page.waitForSelector('li[class="jp-DirListing-item"] >> text='+menu);  
    await page.locator('li[class="jp-DirListing-item"] >> text='+menu).dblclick();

    // Go to 2nd Menu item
    //await sleep(500);
    await page.waitForSelector('li[class="jp-DirListing-item"] >> span[class="jp-DirListing-itemText"] >> span >> text="'+submenu+'"');  
    await page.locator('li[class="jp-DirListing-item"] >> text="'+submenu+'" >> nth=0').dblclick();

    // Go to final location of Jupyter NoteBook 
    //await sleep(500);
    //await page.waitForSelector('li[class="jp-DirListing-item jp-mod-running"] >> text="'+demoFile+'"');  // found
    //await page.locator('li[class="jp-DirListing-item jp-mod-running"] >> text="'+demoFile+'"').dblclick();
    await page.waitForSelector('span[class="jp-DirListing-itemText"] >> text="'+demoFile+'"');  // found
    await page.locator('span[class="jp-DirListing-itemText"] >> text="'+demoFile+'"').dblclick();

    await runNotebook(page, isPythonKernel);

 }
 async function runNotebook(page: Page, isPythonKernel: string ) {  // Works

    var setPw = 0;
    var dm = 200; // Default Number of iterations for each Notebook demo
    var nSteps = 0;

    // Check Idle state  (Hack job)
    var isIdle = 1; 
    var nIdle = 0;
    var IDLEREPEATS = 10;  // After N steps of consecutive idle steps... we realize the demo is basically over.  Note: 5 is too small due to processing through details and not just procedures
    
    //Check if Python Notebook or Teradata SQL Notebook
    var strKernelType = ''
    if (isPythonKernel == "false")
    {
        strKernelType = 'Teradata SQL ';
    }
    else
    {
        strKernelType = "Python 3 (ipykernel) ";
    }
    
    //Wait until page shows Kernel is ready(Idle, not connecting) to start running demo
    await page.waitForSelector('span[class="f1235lqo"] >> text="'+strKernelType+'| Idle"');


    for (let i = 1; i <= dm; i++) {
        
        await sleep(300);

        // Check the current status of the notebook: (Idle, Busy, Running)
        //if (await page.locator('span[class="f1235lqo"] >> text="Teradata SQL | Idle"').isVisible())
        if (await page.locator('span[class="f1235lqo"] >> text="'+strKernelType+'| Idle"').isVisible())
        {
            isIdle = 1;
            nIdle = nIdle + 1;

            // Go to next step by clicking Shift+Enter
            await page.keyboard.press('Shift+Enter');
            nSteps = nSteps + 1;
        }
        //else if (await page.locator('span[class="f1235lqo"] >> text="Teradata SQL | Busy"').isVisible())
        else if (await page.locator('span[class="f1235lqo"] >> text="'+strKernelType+'| Busy"').isVisible())
        {
            // Since Busy, reset idle watch settings
            isIdle = 0;
            nIdle = 0; 

            // Check if wating for Password Prompt 
            if (setPw == 0)
            {
                if (isPythonKernel == "false")
                {
                    //if (await page.locator('pre', { hasText: 'Password:'}).isVisible())
                    if (await page.locator('pre[class="jp-Stdin-prompt"]', { hasText: 'Password'}).isVisible())  //Password: or Re-enter Password
                    {
                        await page.fill('input[class="jp-Stdin-input"]', demo_user_pw);
                        await page.keyboard.press('Enter');
                        setPw = 1; // Don't check again  
                    }
                    await page.waitForSelector('span[class="f1235lqo"] >> text="'+strKernelType+'| Idle"');  
                }
                else  // Python Kernel
                {
                    //await sleep(2000); // Wait one sec... It's slow to load
                    //if (await page.locator('pre', { hasText: 'Enter password:'}).isVisible())
                    if (await page.locator('pre[class="jp-Stdin-prompt"]', { hasText: 'password'}).isVisible())
                    {
                        await page.fill('input[class="jp-Stdin-input"]', demo_user_pw);
                        await page.keyboard.press('Enter');
                        setPw = 1; // Don't check again       
                    }
                    // Don't wait on Python Kernel... not very responsive and sometimes the password prompt pops up later (i.e. 2nd step)
                    //await page.waitForSelector('span[class="f1235lqo"] >> text="'+strKernelType+'| Idle"');  
                }
            }
            else
            {
                await page.waitForSelector('span[class="f1235lqo"] >> text="'+strKernelType+'| Idle"');  
            }
            /*
            if (setPw == 0 && await page.locator('pre', { hasText: 'Password:'}).isVisible())  // || await page.locator('pre', { hasText: 'Enter password:'}).isVisible() || await page.locator('pre', { hasText: 'Re-enter Password:'}).isVisible()  ) {                
            {
                    //await newPage.fill('input[.jp-Stdin-input :type="password"]', db_pw);
                                                  
            } 
            else if (setPw == 0 && await page.locator('pre', { hasText: 'Enter password:'}).isVisible())  // || await page.locator('pre', { hasText: 'Enter password:'}).isVisible() || await page.locator('pre', { hasText: 'Re-enter Password:'}).isVisible()  ) {                
            {       //Python Scripts are taking too long to load to request for a password prompt
                    //await newPage.fill('input[.jp-Stdin-input :type="password"]', db_pw);
                    await page.fill('input[class="jp-Stdin-input"]', demo_user_pw);
                    await page.keyboard.press('Enter');
                    setPw = 1; // Don't check again                                
            } */

            //Wait for next step
            //await page.waitForSelector('span[class="f1235lqo"] >> text="Teradata SQL | Idle"');            
            //await page.waitForSelector('span[class="f1235lqo"] >> text="'+strKernelType+'| Idle"');            
        }
        
        //if (await page.locator('div', {hasText: '[ ]:'}).last().isVisible())
        if (await page.locator('div', {hasText: '[ ]:'}).first().isVisible())
        {
            if (isIdle > 0 && nIdle > IDLEREPEATS){
                i=dm+999999;  // Break out of loop and end demo
            }            
        }        
    }
 }
 async function clearOutputs(page: Page) {
    
    await page.click('li >> text=Edit');
    //await page.waitForSelector('text=Clear All Outputs');
    //await page.click('text=Clear All Outputs');   // Can't find element not showing up in page source, etc.   
    await page.hover('li >> text=Edit');
    for (let j = 1; j <= 20; j++) {
        await page.keyboard.press('ArrowDown');
    }
    await page.keyboard.press('Enter');   

  }

