<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to E-Commerce</title>
    
    <style>
    
    
 
  
        body 
        {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
         	background-color: blue;
        }

        header {
            background-color: #789461;
            color: #fff;
            text-align: center;
            padding: 1em 0;
        }

        header h1 {
            margin: 0;
        }

        header p {
            font-style: italic;
        }

        #UpdateProduct {
            max-width: 400px;
            margin: 20px auto;
            background-color: #789461;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 8px;
        }

        input,
        textarea {
            margin-bottom: 16px;
            padding: 8px;
        }

        button {
            background-color: blue;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <header>
        <h1>Update form</h1>
       
    </header>

    <section id="UpdateProduct">
       
        <h2>Fill the Product details</h2>
        
        <form action="${pageContext.request.contextPath}/add-product" method=post>
          
            <input type="text" value="${command.id}" name="id" hidden="hidden">
               
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="name" value="${command.name}" >

            <label for="productDescription">Product Description:</label>    
            <textarea id="productDescription" name="description">
          			  ${command.description}
            </textarea>

            <label for="productPrice">Product Price:</label>
            <input type="number" id="productPrice" name="price" value="${command.price}" >


		
			<button type="button" class="btn btn-warning" onclick=" window.location.href='${pageContext.request.contextPath }/add-product' ">
			Back
			</button><br />
            <button type="submit">Update Product</button>
        </form>
    </section>
    
    
    
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
</body>

</html>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



