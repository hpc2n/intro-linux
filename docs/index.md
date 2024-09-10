# Welcome to the course: Introduction to Linux

!!! note "This material"
   
    Here you will find the content of the workshop "Introduction to Linux". 
   
    - Documentation about Linux at some of the Swedish HPC centres 
        - HPC2N: <a href="https://docs.hpc2n.umu.se/tutorials/linuxguide/" target="_blank">https://docs.hpc2n.umu.se/tutorials/linuxguide/</a>
        - UPPMAX: <a href="https://docs.uppmax.uu.se/getting_started/linux/" target="_blank">https://docs.uppmax.uu.se/getting_started/linux/</a>
        - LUNARC: <a href="https://lunarc-documentation.readthedocs.io/en/latest/guides/linux/linux_basics_intro/" target="_blank">https://lunarc-documentation.readthedocs.io/en/latest/guides/linux/linux_basics_intro/</a>
        - PDC: <a href="https://www.pdc.kth.se/support/documents/basics/introduction.html#basic-linux-for-new-hpc-users" target="_blank">https://www.pdc.kth.se/support/documents/basics/introduction.html#basic-linux-for-new-hpc-users</a> 

!!! note "Prerequisites"

    - You need access to a Linux system. 
    - The course project will be on Tetralith, but you can use your own computer or any other computer you have access to that runs Linux. 
        - For those using Tetralith, there is a <a href="https://www.nsc.liu.se/support/getting-started/" target="_blank">Get started guide for NSC here</a>. 
        - The login node for Tetralith is ``tetralith.nsc.liu.se``. 
        - It looks like this when I login the first time from my computer "defiant":
        ```bash
        bbrydsoe@defiant:~$ ssh x_bibr@tetralith.nsc.liu.se
        The authenticity of host 'tetralith.nsc.liu.se (2001:6b0:17:140::1:10)' can't be established.
        ECDSA key fingerprint is SHA256:dwFmOFzy59e+OdZmMLAW3fj+GeMGACYwjPgc7LKZgSU.
        Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
        Warning: Permanently added 'tetralith.nsc.liu.se,2001:6b0:17:140::1:10' (ECDSA) to the list of known hosts.
        Password: 
        Verification code: 
        ```
        - The verification code it askes about is a 2FA that you need to set. See here: <a href="https://www.nsc.liu.se/support/2fa/" target="_blank">https://www.nsc.liu.se/support/2fa/</a>. 

!!! note "Content"

   - This NAISS course aims to give a brief, but comprehensive introduction to the Linux operating system.
   - You will learn about
      - Linux terminology
      - the command line
      - navigating the file system
      - editors on the Linux system 
      - data handling
      - some handy hints and tricks 
   - This course will consist of lectures and type-alongs, as well as a few exercises where you get to try out what you have just learned.    
   - It is the first instance of this course, so we will be grateful if you will fill the evaluation survey so we can improve the course: <a href="https://forms.office.com/e/n2ss7F4h3C" target="_blank">https://forms.office.com/e/n2ss7F4h3C</a>. 

!!! admonition "Cluster-specific approaches"

    The course is given by HPC2N (Kebnekaise), but will be done under NAISS on the NAISS system "Tetralith". There is a <a href="https://www.nsc.liu.se/support/getting-started/" target="_blank">Get started guide for NSC here</a>.   

## Preliminary schedule


| Time | Topic | Activity | 
| ---- | ----- | -------- |
| 9:00 | Welcome+Syllabus | |
| 9:05 | Introduction to Linux | Lecture | 
| 9:15 | Linux terminology | Lecture | 
| 9:25 | The command line (CLI) | Lecture+code along | 
| 9:35 | The file system | Lecture+code along |
| 10:05 | Editors | Lecture+code along|  
| 10:15 | Data handling | Lecture+code along | 
| 10:40 | Hints and tricks | Lecture+code along | 
| 10:50 | Exercises | |
| 10:55 | Summary   | | 
| 11:00 | END | |  
