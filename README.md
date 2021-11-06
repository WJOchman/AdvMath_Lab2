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
      <li>Investigate the IF and ELSIF commands, you will need these to enable your program to make 'decisions'.</li>
      <li>Investigate the 'msgbox' command, you will need this to display an error message to the user in case of an invalid condition.</li>
      <li>Investigate the 'uiwait' command, you need this to wait for the user to acknowledge your error message before your program proceeds.</li>
      <li>Investigate the phrase 'data type identification', you will need to look at the commands you can use to check what type of data the user has entered. For example, if we wanted to check if the data entered by the user was an integer, we could use the command 'isinteger' to check to see if the data is needed an integer. If the data is an integer, the 'isinteger' command will return a 1 (true), if the data is not an integer it will return 0 (false). We can use the 'true' and 'false' conditions to enable our programme to make 'decisions'.</li>
      <li>Think carefully about all of the possible ways a user could enter incorrect data and modify your code to identify them and display error messages when encountered.</li>
    </ol>
  </li>
</ul>

<h2>Part B: Aliasing</h2>
<ul>
  <li>
    Task 1: Proving the concept of infinite aliases.<br>
    You will need to:<br>
    <ol>
      <li>Construct a time base that spans from t = 0s to t = 1.8s in increments of 0.001s.</li>
      <li>Construct a continuous time signal which contains a 1Hz sinusoid and a 6Hz sinusoid (add two sinewaves of different frequency together to form one signal).</li>
      <li>Use periodic sampling to convert the continuous time signal to a discrete time signal. Use a sampling frequency of 5 times the Nyquist rate.</li>
      <li>Plot the continous time signal and the discrete time signal on a single plot.</li>
      <li>Reduce the sampling frequency from Fs = 5Fn = 30Hz to Fs = 5Hz. Sample the continuous time signal again using the new sampling frequency.</li>
      <li>Create a subplot (a plot which contains multiple plots) which has three rows and one column.</li>
      <li>Construct a new discrete time signal with a frequency of 11Hz (which is an integer multiple of the sampling frequency). Plot this discrete signal along with the continuous time signal in position 2 of the subplot. Create a third discrete signal with a frequency of 5001Hz (which is an integer multiple of the sampling frequency). Plot this discrete signal along with the continuous time signal in position 3 of the subplot.</li>
    </ol>
  </li>
  <br>
  <li>
    Task 2: Continuous time envelopes and the Nyquist frequency range (NFR)
  </li>

<h3>Deadline: Monday, 15th of November 2021</h3>
