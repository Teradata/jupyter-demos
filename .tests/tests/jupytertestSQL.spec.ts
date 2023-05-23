import { test, expect, Page } from '@playwright/test';
import * as fs from 'fs';

const emailaddr = 'adam.tworkiewicz+jupyter.testing@teradata.com';
const password = 'wyiEwLP545sE5FY'; 
const demo_user_pw = 'wyiEwLP545sE5FY';
//const db_pw = 'dbc';

const sleep = (ms) => new Promise(r => setTimeout(r, ms));

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
    const page1Promise = page.waitForEvent('popup');
    await page.getByRole('button', { name: 'Run demos using Jupyter' }).click();
    const page1 = await page1Promise;
    // Wait for New Page/Tab to Load, Then jump over to new page (Done)
    await page1.waitForLoadState();                
    
    // Wait for content to appear before moving on.  Jupyter is slow to load (Done)
    //await page1.waitForSelector('text=ClearScape Analytics Demonstrations via Jupyter');
    await page1.waitForSelector('text=Demonstrations via Jupyter');

    // Run through Demos //
    // Note: To get a list of latest Demos, go to Jupyter Lab, Menu -> File -> New _> Terminal 
    // Then run the following command to get the list of Teradata SQL Kernel demos: 
    //      find . -name '*.ipynb' | grep -v checkpoint | grep -i _sql | grep -iEv py_sql    
    // To Copy results, use Ctrl+C to Copy, then Ctrl+V to paste
  
    var demos = await getDemos(page1,"!find . -name '*.ipynb' | grep -v checkpoint | grep -i _sql | grep -iEv py_sql");    
    
    // Parse scripts
    // Examples: 
    // ./UseCases/SurvivalAnalysis/SurvivalAnalysis_Python.ipynb
    // ./UseCases/Banking_Customer_Churn/Banking_Customer_Churn_Python.ipynb

    // find begining './' and end '.ipynb'
    var tempLine = ''
    var line_start = 0
    var line_end = 0
    var demo_count = 0
    var main_menu = ''
    var sub_menu = ''
    var notebook_name = ''
    while(demos.length > 0) {
        //Read first line
        line_start = demos.indexOf('./');
        line_end = demos.indexOf('.ipynb');
        if (line_start > 0 && line_end > 0) 
        {
            tempLine = demos.substring(line_start+2,line_end + 6)
            main_menu = tempLine.substring(0,tempLine.indexOf('/'));
            sub_menu = tempLine.substring(tempLine.indexOf('/')+1);
            notebook_name = sub_menu.substring(sub_menu.indexOf('/')+1);
            sub_menu = sub_menu.substring(0,sub_menu.indexOf('/'));  

            //fs.appendFileSync('./playwright-report/results.log', 'main_menu:'+main_menu + 'zZz sub_menu:'+sub_menu+'zZz notebook_name:'+notebook_name+'\r\n');
            await runDemo(page1,main_menu,sub_menu,notebook_name,"false"); 
            demos = demos.substring(line_end + 6);       
        }
        demo_count = demo_count + 1;

        if (demo_count > 999){
            demos = '';
        }
    }
/*
    await runDemo(page1,"UseCases","Outlier_Analysis","Outlier_Analysis_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Credit_Card_Data_Preparation","Credit_Card_Data_Preparation_SQL.ipynb","false");
    await runDemo(page1,"UseCases","K-Means_Clustering_and_ML_model","K-Means_Clustering_and_ML_model_SQL.ipynb","false");
    await runDemo(page1,"UseCases","NYC_Taxi","NYC_Taxi_Temporal_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Text_Term_Frequency","Text_Term_Frequency_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Knee_Replacement","Knee_Replacement_Attribution_SQL.ipynb","false");
    //await runDemo(page1,"UseCases","Air_Passenger_Forecasting","Air_Passenger_Forecasting_SQL.ipynb","false");    // Not finding it.... odd!!!
    await runDemo(page1,"UseCases","Fourier_Transforms","Fourier_Transforms_SQL.ipynb","false");    
    await runDemo(page1,"UseCases","Insurance_Policy_Temporal","Insurance_Policy_Temporal_SQL.ipynb","false");
    await runDemo(page1,"UseCases","4D_Analytics_on_bike_sharing","4D_Analytics_on_bike_sharing_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Consumer_Complaints","Consumer_Complaints_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Vantage_Analytics_Library","VAL_Descriptive_Statistics_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Vantage_Analytics_Library","VAL_Analytics_and_ML_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Vantage_Analytics_Library","VAL_Overview_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Vantage_Analytics_Library","VAL_Hypothesis_Tests_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Financial_Customer_Journey","Financial_Customer_Journey_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Vantage_Query_Log_Analysis","Vantage_Query_Log_Analysis_SQL.ipynb","false");
    await runDemo(page1,"UseCases","Deep_History_via_Object_Store","Deep_History_via_Object_Store_SQL.ipynb","false");
    //await runDemo(page1,"Getting_Started","Charting_and_Visualization","Charting_and__Visualization_SQL.ipynb","false");   // Not finding it.... odd!!!                                                                    
    await runDemo(page1,"Getting_Started","SQL_Basics_in_Jupyter","SQL_Basics_in_Jupyter_SQL.ipynb","false");
    await runDemo(page1,"Getting_Started","Introduction_Video","Introduction_Video_SQL.ipynb","false");
    await runDemo(page1,"Getting_Started","Basic_Jupyter_Navigation","Basic_Jupyter_Navigation_SQL.ipynb","false");   
*/      
 });
 async function getDemos(page: Page, cmd: string){
    const date = new Date();
    
    const strText = date.toDateString() + ' ' + date.toTimeString() + ' Getting SQL Demos: Start \r\n';
    //fs.writeFileSync('./playwright-report/results.log', strText);
    fs.appendFileSync('./playwright-report/results.log', strText);

    // Go to Main Folder
    await page.waitForSelector('span[title="~/JupyterLabRoot"]');
    await page.locator('span[title="~/JupyterLabRoot"]').click();
    await page.locator('span[title="~/JupyterLabRoot"]').click();  // redundant

    //Open a new Notebook
    await page.getByText('File', { exact: true }).click();
    await page.getByText('New', { exact: true }).click();
    await page.getByText('Notebook', { exact: true }).click();
    await page.getByRole('button', { name: 'Select', exact: true }).click();
    await page.getByRole('region', { name: 'notebook content' }).locator('pre').click();
    //await page.getByRole('region', { name: 'notebook content' }).getByRole('textbox').fill('!find . -name \'*ipynb\' | grep -v checkpoint | grep -i python');
    await page.getByRole('region', { name: 'notebook content' }).getByRole('textbox').fill(cmd);    
    await page.waitForSelector('span[class="f1235lqo"] >> text="Python 3 (ipykernel) | Idle"');
    await page.keyboard.press('Shift+Enter');

    //var demos = await page.locator('div#slide-7-layer-1').textContent()
    var demos = await page.locator('div[class="lm-Widget p-Widget jp-RenderedText jp-mod-trusted jp-OutputArea-output"] >> pre').textContent()
    //demos = 'Demos:\r\n' + demos + '\r\n'
    fs.appendFileSync('./playwright-report/results.log', 'Demos:\r\n' + demos + '\r\n');
    return demos
 }
 async function runDemo(page: Page, menu: string, submenu: string, demoFile: string, isPythonKernel: string){
    if (submenu.indexOf('.') == 0){
        fs.appendFileSync('./playwright-report/results.log', "Skipping Invalid Demo: " + demoFile + '\r\n' );
        return ''
    }
    const date = new Date();    
    const strText = date.toDateString() + ' ' + date.toTimeString() + ' Start:' + demoFile + '\r\n';
    //fs.writeFileSync('./playwright-report/results.log', strText);
    fs.appendFileSync('./playwright-report/results.log', strText);

    // Go to Main Folder
    await page.waitForSelector('span[title="~/JupyterLabRoot"]');
    await page.locator('span[title="~/JupyterLabRoot"]').click();
    await page.locator('span[title="~/JupyterLabRoot"]').click();  // redundant
    fs.appendFileSync('./playwright-report/results.log', 'Main ->');

    // Go to 1st Menu item
    //await sleep(500);
    await page.waitForSelector('li[class="jp-DirListing-item"] >> text='+menu);  
    await page.locator('li[class="jp-DirListing-item"] >> text='+menu).dblclick();
    fs.appendFileSync('./playwright-report/results.log', ' 1st Menu ->');

    // Go to 2nd Menu item
    //await sleep(500);
    await page.waitForSelector('li[class="jp-DirListing-item"] >> span[class="jp-DirListing-itemText"] >> span >> text="'+submenu+'"');  
    await page.locator('li[class="jp-DirListing-item"] >> text="'+submenu+'" >> nth=0').dblclick();
    fs.appendFileSync('./playwright-report/results.log', ' 2nd Menu -> ');

    // Go to final location of Jupyter NoteBook 
    //await sleep(500);
    //await page.waitForSelector('li[class="jp-DirListing-item jp-mod-running"] >> text="'+demoFile+'"');  // found
    //await page.locator('li[class="jp-DirListing-item jp-mod-running"] >> text="'+demoFile+'"').dblclick();
    await page.waitForSelector('span[class="jp-DirListing-itemText"] >> text="'+demoFile+'"');  // found
    await page.locator('span[class="jp-DirListing-itemText"] >> text="'+demoFile+'"').dblclick();
    
    fs.appendFileSync('./playwright-report/results.log', 'Found! Running Notebook'+'\r\n');
    await runNotebook(page, isPythonKernel);

    const date2 = new Date();    
    const strText2 = date2.toDateString() + ' ' + date2.toTimeString() + ' End:' + demoFile + '\r\n';    
    fs.appendFileSync('./playwright-report/results.log', strText2);

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
