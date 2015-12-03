using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Common;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;

/// <summary>
/// Wraps order data
/// </summary>
public struct OrderInfo
{
  public int OrderID;
  public decimal TotalAmount;
  public string DateCreated;
  public string DateShipped;
  public int Verified;
  public int Completed;
  public int Canceled;
  public string Comments;
  public string CustomerName;
  public string ShippingAddress;
  public string CustomerEmail;
}

/// <summary>
/// Summary description for OrdersAccess
/// </summary>
public class OrdersAccess
{
  public OrdersAccess()
  {
    //
    // TODO: Add constructor logic here
    //
  }

  // Retrieve the recent orders
  public static DataTable GetByRecent(int count)
  {
    // get a configured DbCommand object
   OracleCommand comm = GenericDataAccess.CreateCommand();
    // set the stored procedure name
    comm.CommandText = "OrdersGetByRecent";
    // create a new parameter
   // OracleParameter param = comm.Parameters.Add("count", OracleDbType.Int32);
    //param.Direction = ParameterDirection.Input;
    //param.Value = count;
    OracleParameter param1 = comm.Parameters.Add("all_out", OracleDbType.RefCursor);
    param1.Direction = ParameterDirection.Output;
    comm.CommandType = CommandType.StoredProcedure;
    // return the result table
    DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
    return table;
  }

  // Retrieve orders that have been placed in a specified period of time
  public static DataTable GetByDate(string startDate, string endDate)
  {
    // get a configured DbCommand object
    OracleCommand comm = GenericDataAccess.CreateCommand();
    // set the stored procedure name
    comm.CommandText = "OrdersGetByDate";
    // create a new parameter
    OracleParameter param = comm.Parameters.Add("startdate", OracleDbType.Date);
    param.Direction = ParameterDirection.Input;
    param.Value = startDate;
    
    // create a new parameter
    OracleParameter param1 = comm.Parameters.Add("enddate", OracleDbType.Date);
    param1.Direction = ParameterDirection.Input;
    param1.Value = endDate;
    OracleParameter param2 = comm.Parameters.Add("all_out", OracleDbType.RefCursor);
    param2.Direction = ParameterDirection.Output;


    comm.CommandType = CommandType.StoredProcedure;
    // return the result table
    DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
    return table;
  }

  // Retrieve orders that need to be verified or canceled
  public static DataTable GetUnverifiedUncanceled()
  {
    // get a configured DbCommand object
   OracleCommand comm = GenericDataAccess.CreateCommand();
    // set the stored procedure name
    comm.CommandText = "OrdersGetUnverifiedUncanceled";
    OracleParameter param = comm.Parameters.Add("all_out", OracleDbType.RefCursor);
    param.Direction = ParameterDirection.Output;


    comm.CommandType = CommandType.StoredProcedure;
    // return the result table
    DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
    return table;
  }

  // Retrieve orders that need to be shipped/completed
  public static DataTable GetVerifiedUncompleted()
  {
    // get a configured DbCommand object
    OracleCommand comm = GenericDataAccess.CreateCommand();
    // set the stored procedure name
    comm.CommandText = "OrdersGetVerifiedUncompleted";
    OracleParameter param = comm.Parameters.Add("all_out", OracleDbType.RefCursor);
    param.Direction = ParameterDirection.Output;

    // return the result table
    DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
    return table;
  }

  // Retrieve order information
  public static OrderInfo GetInfo(string orderID)
  {
    // get a configured DbCommand object
   OracleCommand comm = GenericDataAccess.CreateCommand();
    // set the stored procedure name
    comm.CommandText = "OrderGetInfo";
    // create a new parameter
    OracleParameter param = comm.Parameters.Add("v_orderid", OracleDbType.Int32);
    param.Direction = ParameterDirection.Input;
    param.Value = Int32.Parse(orderID);
    
    OracleParameter param1 = comm.Parameters.Add("all_out", OracleDbType.RefCursor);
    param1.Direction = ParameterDirection.Output;

    comm.CommandType = CommandType.StoredProcedure;
    // obtain the results
    DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
    DataRow orderRow = table.Rows[0];
    // save the results into an OrderInfo object
    OrderInfo orderInfo;
    orderInfo.OrderID = Int32.Parse(orderRow["OrderID"].ToString());
    orderInfo.TotalAmount = Decimal.Parse(orderRow["TotalAmount"].ToString());
    orderInfo.DateCreated = orderRow["DateCreated"].ToString();
    orderInfo.DateShipped = orderRow["DateShipped"].ToString();
    orderInfo.Verified = Int32.Parse(orderRow["Verified"].ToString());
    orderInfo.Completed =Int32.Parse(orderRow["Completed"].ToString());
    orderInfo.Canceled = Int32.Parse(orderRow["Canceled"].ToString());
    orderInfo.Comments = orderRow["Comments"].ToString();
    orderInfo.CustomerName = orderRow["CustomerName"].ToString();
    orderInfo.ShippingAddress = orderRow["ShippingAddress"].ToString();
    orderInfo.CustomerEmail = orderRow["CustomerEmail"].ToString();
    // return the OrderInfo object
    return orderInfo;
  }

  // Retrieve the order details (the products that are part of that order)
  public static DataTable GetDetails(string orderID)
  {
    // get a configured DbCommand object
    OracleCommand comm = GenericDataAccess.CreateCommand();
    // set the stored procedure name
    comm.CommandText = "OrderGetDetails";
    // create a new parameter
    OracleParameter param = comm.Parameters.Add("v_orderid", OracleDbType.Int32);
    param.Direction = ParameterDirection.Input;
    param.Value = Int32.Parse(orderID);
    OracleParameter param1 = comm.Parameters.Add("all_out", OracleDbType.RefCursor);
    param1.Direction = ParameterDirection.Output;

    comm.CommandType = CommandType.StoredProcedure;
    // return the results
    DataTable table = GenericDataAccess.ExecuteSelectCommand(comm);
    return table;
  }

  // Update an order
  public static void Update(OrderInfo orderInfo)
  {
    // get a configured DbCommand object
    OracleCommand comm = GenericDataAccess.CreateCommand();
    // set the stored procedure name
    comm.CommandText = "OrderUpdate";
    // create a new parameter
    OracleParameter param = comm.Parameters.Add("v_orderid", OracleDbType.Int32);
    param.Direction = ParameterDirection.Input;
    param.Value = orderInfo.OrderID;
    
    // create a new parameter
    OracleParameter param1 = comm.CreateParameter();
    
    param1.Value = orderInfo.DateCreated;
   
    // The DateShipped parameter is sent only if data is available
    if (orderInfo.DateShipped.Trim() != "")
    {
        OracleParameter param2 = comm.Parameters.Add("dateshipped", OracleDbType.Date);
        param2.Direction = ParameterDirection.Input;
      param2.Value = orderInfo.DateShipped;
      
    }
    // create a new parameter
    OracleParameter param3 = comm.Parameters.Add("verified", OracleDbType.Int32);
      param3.Direction = ParameterDirection.Input;
       
    param.Value = orderInfo.Verified;
    // create a new parameter
    OracleParameter param4 = comm.Parameters.Add("completed", OracleDbType.Int32);
    param4.Direction = ParameterDirection.Input;
    param.Value = orderInfo.Completed;
   
    // create a new parameter
    OracleParameter param5 = comm.Parameters.Add("canceled", OracleDbType.Int32);
    param5.Direction = ParameterDirection.Input;
    
    param.Value = orderInfo.Canceled;
    
    // create a new parameter
    OracleParameter param6 = comm.Parameters.Add("comments", OracleDbType.Varchar2);
       
    param6.Direction = ParameterDirection.Input;
    param6.Value = orderInfo.Comments;
    
    // create a new parameter
    OracleParameter param7 = comm.Parameters.Add("customername", OracleDbType.Varchar2);
      param7.Direction = ParameterDirection.Input;
       
    param7.Value = orderInfo.CustomerName;
   
    // create a new parameter
    OracleParameter param8 = comm.Parameters.Add("shippingaddress", OracleDbType.Varchar2);
    param8.Direction = ParameterDirection.Input;
    param.Value = orderInfo.ShippingAddress;
   
    // create a new parameter
    OracleParameter param9 = comm.Parameters.Add("customeremail", OracleDbType.Varchar2);
    param9.Direction = ParameterDirection.Input;
    param9.Value = orderInfo.CustomerEmail;
   
    // return the results
    GenericDataAccess.ExecuteNonQuery(comm);
  }

  // Mark an order as verified
  public static void MarkVerified(string orderId)
  {
    // get a configured DbCommand object
    OracleCommand comm = GenericDataAccess.CreateCommand();
    // set the stored procedure name
    comm.CommandText = "OrderMarkVerified";
    // create a new parameter
    OracleParameter param = comm.Parameters.Add("orderid", OracleDbType.Int32);
    param.Direction = ParameterDirection.Input;
      param.Value = Int32.Parse(orderId);
    
    // return the results
    GenericDataAccess.ExecuteNonQuery(comm);
  }

  // Mark an order as completed
  public static void MarkCompleted(string orderId)
  {
    // get a configured DbCommand object
    OracleCommand comm = GenericDataAccess.CreateCommand();
    // set the stored procedure name
    comm.CommandText = "OrderMarkCompleted";
    // create a new parameter
    OracleParameter param = comm.CreateParameter();
    param.ParameterName = "@OrderID";
    param.Value = orderId;
    param.DbType = DbType.Int32;
    comm.Parameters.Add(param);
    // return the results
    GenericDataAccess.ExecuteNonQuery(comm);
  }

  // Mark an order as canceled
  public static void MarkCanceled(string orderId)
  {
    // get a configured DbCommand object
    OracleCommand comm = GenericDataAccess.CreateCommand();
    // set the stored procedure name
    comm.CommandText = "OrderMarkCanceled";
    // create a new parameter
    OracleParameter param = comm.CreateParameter();
    param.ParameterName = "OrderID";
    param.Value = orderId;
    param.DbType = DbType.Int32;
    comm.Parameters.Add(param);
    // return the results
    GenericDataAccess.ExecuteNonQuery(comm);
  }


}
