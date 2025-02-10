# LaserWaitingList
LaserWaitingList is a Java desktop application developed for the Ophthalmology department at Kettering General. It allows consultants to seamlessly record patient appointment details and automatically send them off to the hospital's waiting list system.

## Problem
In the past, consultants in the department were required to fill out a paper form, scan it, and then email the scan to the waiting list system. After consultants' complaints of an outdated and wasteful system, a nurse from the department contacted me and asked if I could develop a solution for them.

## Solution
A portable desktop application written in Java that allows consultants to easily record and automatically send off patient details to be added to the waiting list system.

## Technologies Used
- [**JavaMail API**](https://docs.oracle.com/javaee/7/api/javax/mail/package-summary.html) for automated emailing of formatted patient details to KGH's system
- [**JavaBeans Activation Framework**](https://docs.oracle.com/javase/8/docs/api/javax/activation/package-summary.html) for managing MIME data
- [**Swing**](https://docs.oracle.com/javase/8/docs/api///?javax/swing/package-summary.html) for a dependency-free, cross-platform user interface

## Usage
The full release issued to the hospital is private, as it contains confidential internal emails. As such, the version in this repository contains placeholder email credentials that will prevent the email aspects from functioning.

If you wish to run this program with your own email credentials, replace all placeholder credentials in *src/Main.java* and compile the application using *compile.bat*. The instructions for this process are contained in *GUIDE.txt*.

Compilation will produce a click-to-run JAR file similar to the official one.
