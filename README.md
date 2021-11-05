<h1>Advancted Mathematics Laboratory 2</h1>

<h2>Part A: Data Input & Error Detection</h2>
<ul>
  <li>
    Task 1: Prompt the user to enter a simulation start time, increment, and stop time.<br>
    You will need to:<br>
    <ol>
      <li>Create a title for the dialog box.</li>
      <li>Create a variable called 'prompt' to ask the user to enter the start, increment, and stop times.</li>
      <li>You may need to adjust the dimensions of your dialog box using the 'dims' command so the user can see the title properly.</li>
      <li>Create a variable called 'answer' which will store the three items of data the user enters. Use the 'inputdlg' command to collect this data.</li>
      <li>Extract the three entered data from the 'answer' variable and convert it from a string to a number. Use the 'str2num' command to do this. Although when you type something into a dialog box it looks like a number, in fact it is not, it is a string and so we must convert the strings to numbers.</li>
    </ol>
  </li>
  <br>
  <li>
    Task 2: The data the user entered has to be checked to ensure that it is valid. If it is valid, the program will proceed, if it is not valid, the program will display an erorr message to the user and give them the opportunity to re-enter the data.<br>
    You will need to:<br>
    <ol>
      <li>Investigate logical OR and AND functions in MATLAB.</li>
      <li>Investigate the IF and ELSEIF commands, you will need these to enable your program to make 'decisions'.</li>
      <li>Investigate the 'msgbox' command, you will need this to display an error message to the user in case of an invalid condition.</li>
      <li>Investigate the 'uiwait' command, you need this to wait for the user to acknowledge your error message before your program proceeds.</li>
      <li>Investigate the phrase 'data type identification', you will need to look at the commands you can use to check what type of data the user has entered. For example, if we wanted to check if the data entered by the user was an integer, we could use the command 'isinteger' to check to see if the data is needed an integer. If the data is an integer, the 'isinteger' command will return a 1 (true), if the data is not an integer it will return 0 (false). We can use the 'true' and 'false' conditions to enable our programme to make 'decisions'.</li>
      <li>Think carefully about all of the possible ways a user could enter incorrect data and modify your code to identify them and display error messages when encountered.</li>
    </ol>
  </li>
</ul>

<h2>Part B: Aliasing</h2>

<h3>Deadline: 15th of November 2021</h3>
