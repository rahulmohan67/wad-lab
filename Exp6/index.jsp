<%-- 
    Document   : index
    Created on : 09-Jan-2022, 7:58:25 PM
    Author     : Rahul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Exam</title>
    </head>
    <body>
        <h1><b><u>Online Exam</u></b></h1>
        <form name="myform" method="post" action="result.jsp">
            <label for="q1">1.How can we describe an array in the best possible way?</label><br>
            
            <input type="radio" name="1" value="The Array shows a hierarchical structure" >
            <label for="1">a.The Array shows a hierarchical structure.</label><br>
            
            <input type="radio" name="1" value="Arrays are immutable" >
            <label for="1">b.Arrays are immutable.</label><br>
            
            <input type="radio" name="1" value="Container that stores the elements of similar types" >
            <label for="1">c.Container that stores the elements of similar types.</label><br>
            
            <input type="radio" name="1" value="The Array is not a data structure" >
            <label for="1">d.The Array is not a data structure</label><br><br>
            
            <label for="q2">2.Which of the following is the correct way of declaring an array?</label><br>
            
            <input type="radio" name="2" value="int javatpoint[10];" >
            <label for="2">a.int javatpoint[10];</label><br>
            
            <input type="radio" name="2" value="int javatpoint;" >
            <label for="2">b.int javatpoint;.</label><br>
            
            <input type="radio" name="2" value="javatpoint{20};" >
            <label for="2">c.javatpoint{20};</label><br>
            
            <input type="radio" name="2" value="array javatpoint[10];" >
            <label for="2">d.array javatpoint[10];</label><br><br>
            
            <label for="q3">3.How can we initialize an array in C language?</label><br>
            
            <input type="radio" name="3" value="int arr[2]=(10, 20)" >
            <label for="3">a.int arr[2]=(10, 20)</label><br>
            
            <input type="radio" name="3" value="int arr(2)={10, 20}" >
            <label for="3">b.int arr(2)={10, 20}</label><br>
            
            <input type="radio" name="3" value="int arr[2] = {10, 20}" >
            <label for="3">c.int arr[2] = {10, 20}</label><br>
            
            <input type="radio" name="3" value="int arr(2) = (10, 20)" >
            <label for="3">d.int arr(2) = (10, 20)</label><br><br>
            
            <label for="q4">4.Which of the following highly uses the concept of an array?</label><br>
            
            <input type="radio" name="" value="Binary Search tree" >
            <label for="4">a.Binary Search tree</label><br>
            
            <input type="radio" name="4" value="Caching" >
            <label for="4">b.Caching</label><br>
            
            <input type="radio" name="4" value="Spatial locality" >
            <label for="4">c.Spatial locality</label><br>
            
            <input type="radio" name="4" value="Scheduling of Processes" >
            <label for="4">d.Scheduling of Processes</label><br><br>
            
            <label for="q5">5.Which of the following is the advantage of the array data structure?</label><br>
            
            <input type="radio" name="5" value="Elements of mixed data types can be stored." >
            <label for="5">a.Elements of mixed data types can be stored.</label><br>
            
            <input type="radio" name="5" value="Easier to access the elements in an array" >
            <label for="5">b.Easier to access the elements in an array</label><br>
            
            <input type="radio" name="5" value="Index of the first element starts from 1." >
            <label for="5">c.Index of the first element starts from 1.</label><br>
            
            <input type="radio" name="5" value="Elements of an array cannot be sorted" >
            <label for="5">d.Elements of an array cannot be sorted</label><br><br>
            
            <input type="submit" value="submit">
        </form>
    </body>
</html>
