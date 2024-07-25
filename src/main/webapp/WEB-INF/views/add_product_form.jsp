<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to E-Commerce</title>
    
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
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

        #addProduct {
            max-width: 400px;
            margin: 20px auto;
            background-color: #fff;
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
            background-color: #4caf50;
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
        <h1>Welcome to Our E-Commerce Store</h1>
        <p>Discover a world of amazing products just for you!</p>
    </header>

    <section id="addProduct">
       
        <h2>Fill the Product details</h2>
        
        <form action="add-product" method="post">
            <label for="productName">Product Name:</label>
            <input type="text" id="productName" name="name" required>

            <label for="productDescription">Product Description:</label>
            <textarea id="productDescription" name="description" required></textarea>

            <label for="productPrice">Product Price:</label>
            <input type="number" id="productPrice" name="price" required>

			<a href="${pageContext.request.contextPath }/" class="btn btn-info">back</a>
			
            <button type="submit">Add Product</button>
        </form>
    </section>
</body>

</html>
