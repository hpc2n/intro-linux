# Welcome to the course: Introduction to Linux

!!! note "This material"
   
    Here you will find the content of the workshop "Introduction to Linux". 
   
    - Documentation about Linux at some of the Swedish HPC centres 
        - HPC2N: <a href="https://docs.hpc2n.umu.se/tutorials/linuxguide/" target="_blank">https://docs.hpc2n.umu.se/tutorials/linuxguide/</a>
        - UPPMAX: <a href="https://docs.uppmax.uu.se/getting_started/linux/" target="_blank">https://docs.uppmax.uu.se/getting_started/linux/</a>
        - LUNARC: <a href="https://lunarc-documentation.readthedocs.io/en/latest/guides/linux/linux_basics_intro/" target="_blank">https://lunarc-documentation.readthedocs.io/en/latest/guides/linux/linux_basics_intro/</a>
        - PDC: <a href="https://support.pdc.kth.se/doc/support-docs/basics/introduction/#basic-linux-for-new-hpc-users" target="_blank">https://support.pdc.kth.se/doc/support-docs/basics/introduction/#basic-linux-for-new-hpc-users</a> 
    - Documentation from Software Carpentry: <a href="https://swcarpentry.github.io/shell-novice/" target="_blank">https://swcarpentry.github.io/shell-novice/</a> 

!!! note "Prerequisites"

    - You need access to a Linux system. 
    - You will use your own computer or any other computer (including computing access at computing centers) you have access to and that runs Linux. 
    - The course project will be on Tetralith, for those that do not have other access to a computer that runs Linux.  
        - For those using Tetralith, there is a <a href="https://www.nsc.liu.se/support/getting-started/" target="_blank">Get started guide for NSC here</a>. 

!!! note "Content"

   - This NAISS course aims to give a brief, but comprehensive introduction to the Linux operating system.
   - You will learn about
      - the command line
      - navigating the file system
      - editors on the Linux system 
      - pipes, sorting, filters
      - patterns, scripting
      - data handling
      - some handy hints and tricks 
   - This course will consist of lectures and type-alongs, as well as a few exercises where you get to try out what you have just learned.    
   - It is the second instance of this course, and it has been somewhat reworked based on previous participant input. We would be grateful if you will fill the evaluation survey so we can further improve the course: <a href="https://forms.office.com/e/0a97qf9A3t" target="_blank">https://forms.office.com/e/0a97qf9A3t</a> 

!!! admonition "Cluster-specific approaches"

    The course is given by HPC2N (Kebnekaise), but will be done under NAISS on the NAISS system "Tetralith". There is a <a href="https://www.nsc.liu.se/support/getting-started/" target="_blank">Get started guide for NSC here</a>.   

    - The login node for Tetralith is ``tetralith.nsc.liu.se``.
    - It looks like this when I (``x_birbr`` on "Tetralith") login the first time from my computer "defiant":
    ```bash
    bbrydsoe@defiant:~$ ssh x_bibr@tetralith.nsc.liu.se
    The authenticity of host 'tetralith.nsc.liu.se (2001:6b0:17:140::1:10)' can't be established.
    ECDSA key fingerprint is SHA256:dwFmOFzy59e+OdZmMLAW3fj+GeMGACYwjPgc7LKZgSU.
    Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
    Warning: Permanently added 'tetralith.nsc.liu.se,2001:6b0:17:140::1:10' (ECDSA) to the list of known hosts.
    Password:
    Verification code:
    ```
    - The verification code it asks about is a 2FA that you need to set. See here: <a href="https://www.nsc.liu.se/support/2fa/" target="_blank">https://www.nsc.liu.se/support/2fa/</a>.
    - You will probably not need it for the course, but the compute project ID is: naiss2024-22-1676 
    - The project storage for the course project is in ``/proj/linux-intro/users/YOUR-USERNAME`` 
        - Example, for the user ``x_birbr``, this would be: ``/proj/linux-intro/users/x_birbr``

## Important info

- There is an "important info" page for this course, containing info on the course project, login info for Tetralith, etc. It can be found here: <a href="https://umeauniversity.sharepoint.com/:w:/s/HPC2N630/EVoQLj_qpDROmwcJiy-ZmBYBrsS4etjGAsJawMuGsgjAwQ?e=prrP8f" target="_blank">https://umeauniversity.sharepoint.com/:w:/s/HPC2N630/EVoQLj_qpDROmwcJiy-ZmBYBrsS4etjGAsJawMuGsgjAwQ?e=prrP8f</a>
- There is a Q/A page for use during the lectures. Since the lectures are recorded, you may get recorded if you ask questions in the Zoom, but you can always write questions on the Q/A and get answers there. It also has the advantage that you can go back and look at the answers later. The Q/A page can be found here: <a href="https://umeauniversity.sharepoint.com/:w:/s/HPC2N630/EfQFzUvKVelJgDl213GEO9MBOU6Vx_aWRbbygwzkDzkt7w?e=M4H6fz" target="_blank">https://umeauniversity.sharepoint.com/:w:/s/HPC2N630/EfQFzUvKVelJgDl213GEO9MBOU6Vx_aWRbbygwzkDzkt7w?e=M4H6fz</a> 

## Preliminary schedule

| Time | Topic | Activity | 
| ---- | ----- | -------- |
| 9:00 | Welcome+Syllabus | |
| 9:10 | Introduction to Linux, motivation | Lecture | 
| 9:25 | The command line (CLI) | Lecture+code along | 
| 9:45 | The file system | Lecture+code along+exercise |
| 10:15 | BREAK | | 
| 10:30 | Editors | Lecture+code along |  
| 10:50 | Data handling | Lecture+code along | 
| 11:20 | Hints and tricks | Lecture+code along | 
| 11:35 | More time for exercises | | 
| 11:55 | Summary   | | 
| 12:00 | END | |  

## Preparations 

In order to type along and do the exercises, please prepare your course environment now: 

1. Login to the system you are using (Tetralith, your own computer, other system)
2. Create a directory to work in (``mkdir intro-linux``) and then switch to it (``cd intro-linux``)  
    - **NOTE** If you are working on Tetralith, first switch to your working directory: ``cd /proj/linux-intro/users/YOUR-USERNAME``
3. Download the exercises with ``wget https://github.com/hpc2n/intro-linux/raw/refs/heads/main/exercises.tar.gz`` 
4. Extract the exercises with ``tar zxvf exercises.tar.gz``
5. Enter the directory that was created: ``cd exercises``
