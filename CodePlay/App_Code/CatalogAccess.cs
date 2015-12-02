using System;
using System.Data;
using System.Data.Common;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;
using System.Text.RegularExpressions;
/// <summary>
/// Wraps department details data
/// </summary>
public struct DepartmentDetails
{
    public string Name;
    public string Description;
}

/// <summary>
/// Wraps category details data
/// </summary>
public struct CategoryDetails
{
    public int DepartmentId;
    public string Name;
    public string Description;
}

/// <summary>
/// Wraps product details data
/// </summary>


public struct ProductDetails
{
    public string Name;
    public string Description;
    public decimal Price;
    public string Image1FileName;
    public string Image2FileName;
    public bool OnDepartmentPromotion;
    public bool OnCatalogPromotion;
}

/// <summary>
/// Product catalog business tier component
/// </summary>
public static class CatalogAccess
{
    static CatalogAccess()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    // Retrieve the list of departments 
    public static DataTable GetDepartments()
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetDepartments";
        comm.CommandType = CommandType.StoredProcedure;
        OracleParameter p2 =
       comm.Parameters.Add("cat_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // get department details
    public static DepartmentDetails GetDepartmentDetails(string departmentId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetDepartmentDetails";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("dept_ID", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(departmentId);
        comm.CommandType = CommandType.StoredProcedure;
        OracleParameter p2 =
       comm.Parameters.Add("cat_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
        // execute the stored procedure
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        // wrap retrieved data into a DepartmentDetails object
        DepartmentDetails details = new DepartmentDetails();
        if (table.Rows.Count > 0)
        {
            details.Name = table.Rows[0]["Name"].ToString();
            details.Description = table.Rows[0]["Description"].ToString();
        }
        // return department details
        return details;
    }

    // Get category details
    public static CategoryDetails GetCategoryDetails(string categoryId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetCategoryDetails";
      
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("CategoryID", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(categoryId);
        comm.CommandType = CommandType.StoredProcedure;
        OracleParameter p2 =
       comm.Parameters.Add("cat_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
       
        // execute the stored procedure
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        // wrap retrieved data into a CategoryDetails object
        CategoryDetails details = new CategoryDetails();
        if (table.Rows.Count > 0)
        {
            details.DepartmentId = Int32.Parse(table.Rows[0]["DepartmentID"].ToString());
            details.Name = table.Rows[0]["Name"].ToString();
            details.Description = table.Rows[0]["Description"].ToString();
        }
        // return department details
        return details;
    }

    // Get product details
    public static ProductDetails GetProductDetails(string productId)
    {
        // get a configured OracleCommand object
      OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetProductDetails";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("Prod_ID", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(productId);
        OracleParameter p2 =
       comm.Parameters.Add("prod_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
        // execute the stored procedure
        comm.CommandType = CommandType.StoredProcedure;
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        // wrap retrieved data into a ProductDetails object
        ProductDetails details = new ProductDetails();
        if (table.Rows.Count > 0)
        {
            // get the first table row
            DataRow dr = table.Rows[0];
            // get product details
            details.Name = dr["Name"].ToString();
            details.Description = dr["Description"].ToString();
            details.Price = Decimal.Parse(dr["Price"].ToString());
            details.Image1FileName = dr["Thumbnail"].ToString();
            details.Image2FileName = dr["Image"].ToString();
            details.OnDepartmentPromotion = Convert.ToBoolean(dr["PromoDept"]);
            details.OnCatalogPromotion = Convert.ToBoolean(dr["PromoFront"]);
          
        }
        // return department details
        return details;
    }

    // retrieve the list of categories in a department
    public static DataTable GetCategoriesInDepartment(string departmentId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "GetCategoriesInDepartment";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("DepartmentID", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(departmentId);
        comm.CommandType = CommandType.StoredProcedure;
        OracleParameter p2 =
       comm.Parameters.Add("deptcat_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
        // execute the stored procedure
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // Retrieve the list of products on catalog promotion
    public static DataTable GetProductsOnFrontPromo(string pageNumber, out int howManyPages)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetProductsOnFrontPromo";
        // create a new parameter
        OracleParameter param = comm.CreateParameter();
        param = comm.Parameters.Add("DescriptionLength", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = BalloonShopConfiguration.ProductDescriptionLength;
       
        // create a new parameter
        OracleParameter param1 = comm.CreateParameter();
        param1 = comm.Parameters.Add("PageNumber", OracleDbType.Int32);
        param1.Direction = ParameterDirection.Input;
        param1.Value = Int32.Parse(pageNumber);
        
        // create a new parameter
        OracleParameter param2 = comm.CreateParameter();
        param2 = comm.Parameters.Add("ProductsPerPage", OracleDbType.Int32);
        param2.Direction = ParameterDirection.Input;
        param2.Value = BalloonShopConfiguration.ProductsPerPage;
             
        // create a new parameter

        OracleParameter param3 = comm.CreateParameter();
        param3 = comm.Parameters.Add("HowManyProducts", OracleDbType.Int32);
        param3.Direction = ParameterDirection.Output;

        comm.CommandType = CommandType.StoredProcedure;
        OracleParameter p2 =
       comm.Parameters.Add("cat_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
        // execute the stored procedure and save the results in a DataTable
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        // calculate how many pages of products and set the out parameter
        int howManyProducts = Int32.Parse(comm.Parameters
      ["HowManyProducts"].Value.ToString());
        howManyPages = (int)Math.Ceiling((double)howManyProducts / (double)BalloonShopConfiguration.ProductsPerPage);
        // return the page of products
        return table;
    }
    public static DataTable GetProductsOnCatalogPromotion(string pageNumber, out int howManyPages)
    {
        // get a configured DbCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetProductsOnCatPromo";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("descriptionlength", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = BalloonShopConfiguration.ProductDescriptionLength;
               // create a new parameter
        OracleParameter param1 = comm.Parameters.Add("pagenumber", OracleDbType.Int32);
        param1.Direction = ParameterDirection.Input;
        param1.Value = Int32.Parse(pageNumber);
        
        // create a new parameter
        OracleParameter param2 = comm.Parameters.Add("productsperpage", OracleDbType.Int32);
        param2.Direction = ParameterDirection.Input;
        param2.Value = BalloonShopConfiguration.ProductsPerPage;
        
        // create a new parameter
        OracleParameter param3 = comm.Parameters.Add("howmanyproducts", OracleDbType.Int32);
        param3.Direction = ParameterDirection.Output;
        OracleParameter p2 = comm.Parameters.Add("all_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
        comm.CommandType = CommandType.StoredProcedure;
        // execute the stored procedure and save the results in a DataTable
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        // calculate how many pages of products and set the out parameter
        int howManyProducts = Int32.Parse(comm.Parameters["HowManyProducts"].Value.ToString());
        howManyPages = (int)Math.Ceiling((double)howManyProducts /
                               (double)BalloonShopConfiguration.ProductsPerPage);
        // return the page of products
        return table;
    }
    // retrieve the list of products featured for a department
    public static DataTable GetProductsOnDepartmentPromotion(string departmentId, string pageNumber, out int howManyPages)
    {
        // get a configured OracleCommand object
       OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetProductsOnDeptPromo";
        // create a new parameter
        OracleParameter param4 = comm.Parameters.Add("DepartmentID", OracleDbType.Int32);
        param4.Direction = ParameterDirection.Input;
        param4.Value = Int32.Parse(departmentId);

        OracleParameter param = comm.CreateParameter();
        param = comm.Parameters.Add("DescriptionLength", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = BalloonShopConfiguration.ProductDescriptionLength;
        // create a new parameter
        param = comm.CreateParameter();
        OracleParameter param1 = comm.CreateParameter();
        param1 = comm.Parameters.Add("PageNumber", OracleDbType.Int32);
        param1.Direction = ParameterDirection.Input;
        param1.Value = Int32.Parse(pageNumber);

        // create a new parameter
        OracleParameter param2 = comm.CreateParameter();
        param2 = comm.Parameters.Add("ProductsPerPage", OracleDbType.Int32);
        param2.Direction = ParameterDirection.Input;
        param2.Value = BalloonShopConfiguration.ProductsPerPage;

        // create a new parameter

         OracleParameter param3 = comm.CreateParameter();
        param3 = comm.Parameters.Add("HowManyProducts", OracleDbType.Int32);
        param3.Direction = ParameterDirection.Output;

        comm.CommandType = CommandType.StoredProcedure;
        OracleParameter p2 =
       comm.Parameters.Add("cat_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
     
        // execute the stored procedure and save the results in a DataTable
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        // calculate how many pages of products and set the out parameter
        int howManyProducts = Int32.Parse(comm.Parameters["HowManyProducts"].Value.ToString());
        howManyPages = (int)Math.Ceiling((double)howManyProducts /
                       (double)BalloonShopConfiguration.ProductsPerPage);
        // return the page of products
        return table;
    }

    // retrieve the list of products in a category
    public static DataTable GetProductsInCategory
    (string categoryId, string pageNumber, out int howManyPages)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetProductsInCategory";
        // create a new parameter
        OracleParameter param4 = comm.Parameters.Add("v_CategoryID", OracleDbType.Int32);
        param4.Direction = ParameterDirection.Input;
        param4.Value = Int32.Parse(categoryId);

        OracleParameter param = comm.CreateParameter();
        param = comm.Parameters.Add("DescriptionLength", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = BalloonShopConfiguration.ProductDescriptionLength;
        // create a new parameter
       
        OracleParameter param1 = comm.CreateParameter();
        param1 = comm.Parameters.Add("PageNumber", OracleDbType.Int32);
        param1.Direction = ParameterDirection.Input;
        param1.Value = Int32.Parse(pageNumber);

        // create a new parameter
        OracleParameter param2 = comm.CreateParameter();
        param2 = comm.Parameters.Add("ProductsPerPage", OracleDbType.Int32);
        param2.Direction = ParameterDirection.Input;
        param2.Value = BalloonShopConfiguration.ProductsPerPage;

               
        // create a new parameter
        OracleParameter param3 = comm.CreateParameter();
        param3 = comm.Parameters.Add("HowManyProducts", OracleDbType.Int32);
        param3.Direction = ParameterDirection.Output;

       
        OracleParameter p2 = comm.Parameters.Add("cat_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
        comm.CommandType = CommandType.StoredProcedure;
        // execute the stored procedure and save the results in a DataTable
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        // calculate how many pages of products and set the out parameter
        int howManyProducts = Int32.Parse(comm.Parameters["HowManyProducts"].Value.ToString());
        howManyPages = (int)Math.Ceiling((double)howManyProducts /
                     (double)BalloonShopConfiguration.ProductsPerPage);
        // return the page of products
        return table;
    }

    public static DataTable GetProductAttributes(string productId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetProdAttriValues";
        // create a new parameter
        OracleParameter param = comm.CreateParameter();
        param = comm.Parameters.Add("prod_id", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = productId;
        comm.CommandType = CommandType.StoredProcedure;
        OracleParameter p2 =
       comm.Parameters.Add("cat_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
        // execute the stored procedure and return the results
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
    // Search the product catalog
    public static DataTable Search(string searchString, string allWords,
    string pageNumber, out int howManyPages)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "SearchCatalog";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("descriptionlength", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = BalloonShopConfiguration.ProductDescriptionLength;
       
        // create a new parameter
        OracleParameter param1 = comm.Parameters.Add("AllWords", OracleDbType.Int32);
        param1.Direction = ParameterDirection.Input;
        param1.Value = allWords.ToUpper() == "TRUE" ? 1 : 0;
       // param1.Value = 1;
        // create a new parameter
     
       OracleParameter param2 = comm.Parameters.Add("PageNumber", OracleDbType.Int32);
        param2.Direction = ParameterDirection.Input;
        param2.Value = pageNumber;
        //param2.Value = 1;
        // create a new parameter
        OracleParameter param3 = comm.Parameters.Add("ProductsPerPage", OracleDbType.Int32);
        param3.Direction = ParameterDirection.Input;
        param3.Value = BalloonShopConfiguration.ProductsPerPage;
        // create a new parameter
       
        OracleParameter param4 = comm.Parameters.Add("HowManyResults", OracleDbType.Int32);
        param4.Direction = ParameterDirection.Output;
       
        // define the maximum number of words
        //int howManyWords = 5;
        // transform search string into array of words
        //string[] words = Regex.Split(searchString, "[^a-zA-Z0-9]+");

        // add the words as stored procedure parameters
        /*int index = 1;
        for (int i = 0; i <= words.GetUpperBound(0) && index <= howManyWords; i++)
            // ignore short words
            if (words[i].Length > 2)
            {
                // create the @Word parameters
                
                + index.ToString());
                param.Value = words[i];
                
                index++;
            }*/
        OracleParameter param5 = comm.Parameters.Add("Word", OracleDbType.Varchar2);
        param5.Direction = ParameterDirection.Input;
        param5.Value = searchString;
        //param5.Value = "love+rose";
        OracleParameter param6 = comm.Parameters.Add("all_out", OracleDbType.RefCursor);
        param6.Direction = ParameterDirection.Output;
        comm.CommandType = CommandType.StoredProcedure;
        // execute the stored procedure and save the results in a DataTable
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        // calculate how many pages of products and set the out parameter
        int howManyProducts =
      Int32.Parse(comm.Parameters["HowManyResults"].Value.ToString());
        howManyPages = (int)Math.Ceiling((double)howManyProducts /
                       (double)BalloonShopConfiguration.ProductsPerPage);
        // return the page of products
        return table;
    }
    // Update department details
    public static bool UpdateDepartment(string id, string name, string description)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogUpdateDepartment";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("v_departmentid", OracleDbType.Int32);
        param.Direction=ParameterDirection.Input;
        param.Value=Int32.Parse(id);          ;
        // create a new parameter
        OracleParameter param1 = comm.Parameters.Add("departmentname", OracleDbType.Varchar2);
        param1.Direction = ParameterDirection.Input;
        param1.Value = name;
        // create a new parameter
        OracleParameter param2 = comm.Parameters.Add("departmentdescription", OracleDbType.Varchar2);
        param2.Direction = ParameterDirection.Input;
        param2.Value = description;
        comm.CommandType = CommandType.StoredProcedure;
        // result will represent the number of changed rows
        int result = -1;
        try
        {
            // execute the stored procedure
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch
        {
            // any errors are logged in GenericDataAccess, we ingore them here
        }
        // result will be 1 in case of success 
        return (result != -1);
    }

    // Delete department
    public static bool DeleteDepartment(string id)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogDeleteDepartment";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("v_departmentid", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(id);
        comm.CommandType = CommandType.StoredProcedure;
        // execute the stored procedure; an error will be thrown by the
        // database in case the department has related categories, in which case
        // it is not deleted
        int result = -1;
        try
        {
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch
        {
            // any errors are logged in GenericDataAccess, we ingore them here
        }
        // result will be 1 in case of success
        return (result != -1);
    }

    // Add a new department
    public static bool AddDepartment(string name, string description)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogAddDepartment";
        // create a new parameter


        comm.CommandType = CommandType.StoredProcedure;
        OracleParameter param = comm.Parameters.Add("departmentname", OracleDbType.Varchar2);
        param.Direction = ParameterDirection.Input;
        param.Value = name;
        // create a new parameter
        param = comm.Parameters.Add("departmentdescription", OracleDbType.Varchar2);
        param.Direction = ParameterDirection.Input;
        param.Value = description;
        
        // result will represent the number of changed rows
        int result = -1;
        try
        {
            // execute the stored procedure
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch
        {
            // any errors are logged in GenericDataAccess, we ingore them here
        }
        // result will be 1 in case of success 
        return (result != -1);
    }

    // Create a new Category
    public static bool CreateCategory(string departmentId, string name, string description)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogCreateCategory";
        // create a new parameter
        OracleParameter param = comm.CreateParameter();
        param = comm.Parameters.Add("v_departmentid", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(departmentId);

              // create a new parameter
        OracleParameter param1 = comm.CreateParameter();
        param1 = comm.Parameters.Add("categoryname", OracleDbType.Varchar2);
        param1.Direction = ParameterDirection.Input;
        param1.Value = name;

        // create a new parameter
        OracleParameter param2 = comm.CreateParameter();
        param2 = comm.Parameters.Add("categorydescription", OracleDbType.Varchar2);
        param2.Direction = ParameterDirection.Input;
        param2.Value = description;
        comm.CommandType = CommandType.StoredProcedure;
        // result will represent the number of changed rows
        int result = -1;
        try
        {
            // execute the stored procedure
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch
        {
            // any errors are logged in GenericDataAccess, we ingore them here
        }
        // result will be 1 in case of success 
        return (result != -1);
    }

    // Update category details
    public static bool UpdateCategory(string id, string name, string description)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogUpdateCategory";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("V_categoryid", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(id);
        // create a new parameter
        OracleParameter param1 = comm.Parameters.Add("categoryname", OracleDbType.Varchar2);
        param1.Direction = ParameterDirection.Input;
        param1.Value = name;
        
        // create a new parameter
        OracleParameter param2 = comm.Parameters.Add("categorydescription", OracleDbType.Varchar2);
        param2.Direction = ParameterDirection.Input;
        param2.Value = description;


        comm.CommandType = CommandType.StoredProcedure;
        // result will represent the number of changed rows
        int result = -1;
        try
        {
            // execute the stored procedure
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch
        {
            // any errors are logged in GenericDataAccess, we ingore them here
        }
        // result will be 1 in case of success 
        return (result != -1);
    }

    // Delete Category
    public static bool DeleteCategory(string id)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogDeleteCategory";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("categoryid", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(id);


        comm.CommandType = CommandType.StoredProcedure;
        // execute the stored procedure; an error will be thrown by the
        // database in case the Category has related categories, in which case
        // it is not deleted
        int result = -1;
        try
        {
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch (Exception e)
        {
            // any errors are logged in GenericDataAccess, we ingore them here
            Console.WriteLine(e.Message);
        }
        // result will be 1 in case of success
        return (result != -1);
    }

    // retrieve the list of products in a category
    public static DataTable GetAllProductsInCategory(string categoryId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetAllProductsInCategory";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("categoryid", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = categoryId;

        OracleParameter p2 = comm.Parameters.Add("all_out", OracleDbType.RefCursor);
        p2.Direction = ParameterDirection.Output;
        comm.CommandType = CommandType.StoredProcedure;
        // execute the stored procedure and save the results in a DataTable
        DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
        return table;
    }

    // Create a new product
    public static bool CreateProduct(string categoryId, string name, string description, string price, string image1FileName, string image2FileName, string onDepartmentPromotion, string onCatalogPromotion)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogCreateProduct";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("categoryid", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(categoryId);
        // create a new parameter
        OracleParameter param1 = comm.Parameters.Add("ProductName", OracleDbType.Varchar2);
        param1.Direction = ParameterDirection.Input;
        param1.Value = name;
             
        // create a new parameter
        OracleParameter param2 = comm.Parameters.Add("productdescription", OracleDbType.Varchar2);
        param2.Direction = ParameterDirection.Input;
        param2.Value = description;
        // create a new parameter
        OracleParameter param3 = comm.Parameters.Add("Price", OracleDbType.Decimal);
        param3.Direction = ParameterDirection.Input;
        param3.Value = Decimal.Parse(price);
        
        // create a new parameter
        OracleParameter param4 = comm.Parameters.Add("thumbnail", OracleDbType.Varchar2);
        param4.Direction = ParameterDirection.Input;
        param.Value = image1FileName;
       
        // create a new parameter
        OracleParameter param5 = comm.Parameters.Add("image", OracleDbType.Varchar2);
        param5.Direction = ParameterDirection.Input;
        param.Value = image2FileName;
        // create a new parameter
        OracleParameter param6 = comm.Parameters.Add("Promofront", OracleDbType.Int32);
        param6.Direction = ParameterDirection.Input;
        param6.Value = Int32.Parse(onDepartmentPromotion);
        
        // create a new parameter
        OracleParameter param7 = comm.Parameters.Add("promodept", OracleDbType.Int32);
        param7.Direction = ParameterDirection.Input;
        param7.Value = Int32.Parse(onCatalogPromotion);
       


        comm.CommandType = CommandType.StoredProcedure;
        // result will represent the number of changed rows
        int result = -1;
        try
        {
            // execute the stored procedure
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch
        {
            // any errors are logged in GenericDataAccess, we ingore them here

        }
        // result will be 1 in case of success 
        return (result >= 1);
    }

    // Update an existing product
    public static bool UpdateProduct(string productId, string name, string description, string price, string image1FileName, string image2FileName, string onDepartmentPromotion, string onCatalogPromotion)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogUpdateProduct";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("productid", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(productId);
        
        // create a new parameter
        OracleParameter param1 = comm.Parameters.Add("ProductName", OracleDbType.Varchar2);
        param1.Direction = ParameterDirection.Input;
        param1.Value = name;

        // create a new parameter
        OracleParameter param2 = comm.Parameters.Add("productdescription", OracleDbType.Varchar2);
        param2.Direction = ParameterDirection.Input;
        param2.Value = description;
        // create a new parameter
        OracleParameter param3 = comm.Parameters.Add("Price", OracleDbType.Decimal);
        param3.Direction = ParameterDirection.Input;
        param3.Value = Decimal.Parse(price);

        // create a new parameter
        OracleParameter param4 = comm.Parameters.Add("thumbnail", OracleDbType.Varchar2);
        param4.Direction = ParameterDirection.Input;
        param.Value = image1FileName;

        // create a new parameter
        OracleParameter param5 = comm.Parameters.Add("image", OracleDbType.Varchar2);
        param5.Direction = ParameterDirection.Input;
        param.Value = image2FileName;
        // create a new parameter
        OracleParameter param6 = comm.Parameters.Add("Promofront", OracleDbType.Int32);
        param6.Direction = ParameterDirection.Input;
        param6.Value = Int32.Parse(onDepartmentPromotion);

        // create a new parameter
        OracleParameter param7 = comm.Parameters.Add("promodept", OracleDbType.Int32);
        param7.Direction = ParameterDirection.Input;
        param7.Value = Int32.Parse(onCatalogPromotion);



        comm.CommandType = CommandType.StoredProcedure;
        // result will represent the number of changed rows
        int result = -1;
        try
        {
            // execute the stored procedure
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch (Exception e)
        {
            // any errors are logged in GenericDataAccess, we ingore them here
            Console.WriteLine(e.Message);
        }
        // result will be 1 in case of success 
        return (result != -1);
    }

    // get categories that contain a specified product
    public static DataTable GetCategoriesWithProduct(string productId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetCategoriesWithProduct";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("prodid", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        
        param.Value = Int32.Parse(productId);
       
        // execute the stored procedure


        comm.CommandType = CommandType.StoredProcedure;
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // get categories that do not contain a specified product
    public static DataTable GetCategoriesWithoutProduct(string productId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetCatsWithoutProd";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("prod_id", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(productId);


        comm.CommandType = CommandType.StoredProcedure;
        // execute the stored procedure
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }

    // assign a product to a new category
    public static bool AssignProductToCategory(string productId, string categoryId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogAssignProductToCategory";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("prod_id", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(productId);
        // create a new parameter
        OracleParameter param1 = comm.Parameters.Add("cat_id", OracleDbType.Int32);
        param1.Direction = ParameterDirection.Input;
        param1.Value = Int32.Parse(categoryId);
        comm.CommandType = CommandType.StoredProcedure;
                    
        // result will represent the number of changed rows
        int result = -1;
        try
        {
            // execute the stored procedure
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch (Exception e)
        {
            // any errors are logged in GenericDataAccess, we ingore them here
            Console.WriteLine(e.Message);
        }
        // result will be 1 in case of success 
        return (result != -1);
    }

    // move product to a new category
    public static bool MoveProductToCategory(string productId, string oldCategoryId, string newCategoryId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogMoveProductToCategory";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("prod_id", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(productId);
       
        // create a new parameter
        OracleParameter param1 = comm.Parameters.Add("oldcategoryid", OracleDbType.Int32);
        param1.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(oldCategoryId);
        
        // create a new parameter
        OracleParameter param2 = comm.Parameters.Add("NewCategoryID", OracleDbType.Int32);
        param2.Direction = ParameterDirection.Input;
        param2.Value = Int32.Parse(newCategoryId);


        comm.CommandType = CommandType.StoredProcedure;
        // result will represent the number of changed rows
        int result = -1;
        try
        {
            // execute the stored procedure
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch
        {
            // any errors are logged in GenericDataAccess, we ingore them here
        }
        // result will be 1 in case of success 
        return (result != -1);
    }

    // removes a product from a category 
    public static bool RemoveProductFromCategory(string productId, string categoryId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogRemoveProductFromCat";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("prod_id", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
      
        param.Value = Int32.Parse(productId);
        
        // create a new parameter
        OracleParameter param1 = comm.Parameters.Add("cat-id", OracleDbType.Int32);
        param1.Direction = ParameterDirection.Input;
       
        param1.Value = Int32.Parse(categoryId);


        comm.CommandType = CommandType.StoredProcedure;
        // result will represent the number of changed rows
        int result = -1;
        try
        {
            // execute the stored procedure
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch
        {
            // any errors are logged in GenericDataAccess, we ingore them here
        }
        // result will be 1 in case of success 
        return (result != -1);
    }

    // deletes a product from the product catalog
    public static bool DeleteProduct(string productId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogDeleteProduct";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("prod_id", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(productId);


        comm.CommandType = CommandType.StoredProcedure;
        // result will represent the number of changed rows
        int result = -1;
        try
        {
            // execute the stored procedure
            result = GenericDataAccess.ExecuteNonQuery(comm);
        }
        catch
        {
            // any errors are logged in GenericDataAccess, we ingore them here
        }
        // result will be 1 in case of success 
        return (result != -1);
    }

    // gets product recommendations
    public static DataTable GetRecommendations(string productId)
    {
        // get a configured OracleCommand object
        OracleCommand comm = GenericDataAccess.CreateCommand();
        // set the stored procedure name
        comm.CommandText = "CatalogGetProductRecommend";
        // create a new parameter
        OracleParameter param = comm.Parameters.Add("prod_id", OracleDbType.Int32);
        param.Direction = ParameterDirection.Input;
        param.Value = Int32.Parse(productId);
        
        // create a new parameter
        OracleParameter param1 = comm.Parameters.Add("DescriptionLength", OracleDbType.Int32);
        param1.Direction = ParameterDirection.Input;
        param1.Value = BalloonShopConfiguration.ProductDescriptionLength;
        OracleParameter param2 = comm.Parameters.Add("all_out", OracleDbType.RefCursor);
        param2.Direction = ParameterDirection.Output;

        comm.CommandType = CommandType.StoredProcedure;
        // execute the stored procedure
        return GenericDataAccess.ExecuteSelectCommand(comm);
    }
   public static string CategoryId { get; set; }
}
