<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Product Home </title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
  
    th 
    {
      background-color: #f2f2f2;
    }

    /* Add margin to the buttons for better spacing */
    .btn-margin {
      margin-right: 5px;
    }
  </style>
</head>
<body>

<div class="container mt-5">
  <h2>Product Table</h2>
  <table class="table">
    <thead>
      <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Description</th>
        <th>Price</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <!-- Sample data, you can replace it with dynamic data from your backend -->
      <c:forEach var="products"  items="${list}">
      <tr>
         
        <td>${products.id}</td>
        <td>${products.name}</td>
        <td>${products.description}</td>
        <td>${products.price}</td>
        <td>
          <!-- Add update and delete buttons -->
          <a href="update/${products.id}" class="btn btn-warning" role="button">Update</a>
          <a href="delete/${products.id}" class="btn btn-danger" role="button">Delete</a>
         
        </td>
      </tr>
    </c:forEach>
   
    </tbody>
  </table>
  <div class="container text-center">
  <a href="add_product_home" class="btn btn-outline-success">Add product</a>
  
  <a href="${pageContext.request.contextPath }/" class="btn btn-primary">back</a>
  <a href="${pageContext.request.contextPath }/RefreshData" class="btn btn-primary">View Product Details</a>
  </div>
</div>

<!-- Bootstrap JS  -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
