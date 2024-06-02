--lab 7

--1 Create a cursor Product_Cursor to fetch all the rows from a products table
declare @Product_id int,@Product_Name varchar(100),@Price decimal(10,2)
declare  Product_Cursor cursor
for select Product_id,Product_Name,Price from Product_info
open Product_Cursor

fetch next from Product_Cursor into @Product_id,@Product_Name,@Price

while @@fetch_status=0
begin 
	print concat(@Product_id,' ',@Product_Name,' ',@Price,' ')
	fetch next from Product_Cursor into @Product_id,@Product_Name,@Price

end
close Product_Cursor
deallocate Product_Cursor

--2 Create a cursor Product_Cursor_Fetch to fetch the records in form of ProductID_ProductName.(Example: 1_Smartphone)


declare @Product_id int,@Product_Name varchar(100)
declare  Product_Cursor_fetch cursor
for select Product_id,Product_Name from Product_info
open Product_Cursor_fetch

fetch next from Product_Cursor_fetch into @Product_id,@Product_Name

while @@fetch_status=0
begin 
	print concat(@Product_id,'_',@Product_Name)
	fetch next from Product_Cursor_fetch into @Product_id,@Product_Name

end
close Product_Cursor_fetch
deallocate Product_Cursor_fetch


--3 Create a cursor Product_CursorDelete that deletes all the data from the Products table.
declare @Product_id int
declare  Product_Cursor_Delete cursor
for select product_id from Product_info

open Product_Cursor_Delete

fetch next from Product_Cursor_Delete into @product_id
while @@fetch_status=0
begin 
	delete from product_info
	where product_id=@product_id

	fetch next from Product_Cursor_Delete into @product_id
end
close Product_Cursor_Delete
deallocate Product_Cursor_Delete

--4. Create a cursor Product_CursorUpdate that retrieves all the data from the products table and increases the price by 10%.
 declare @price decimal(10,2)
 declare  Product_Cursor_Update cursor
 for select price from product_info

 open  Product_Cursor_Update
  fetch next from Product_Cursor_Update into @price
  while @@fetch_status=0
  begin 
	update product_info set price=Price + price*0.1
	 fetch next from Product_Cursor_Update into @price
  end
  close Product_Cursor_Update
  deallocate Product_Cursor_Update

  --5 . Create a cursor to insert details of Products into the NewProducts table if the product is “Laptop” 
  --(Note: Create NewProducts table first with same fields as Products table)  declare @Product_id int,@Product_Name varchar(100),@Price decimal(10,2)  declare cursor_product_insert cursor  for select Product_id,Product_Name,Price from Product_info WHERE Product_Name = 'Laptop'  open cursor_product_insert  fetch next from cursor_product_insert into @Product_id,@Product_Name,@Price   while @@fetch_status=0  begin 	insert into NewProducts VALUES(@Product_id,@Product_Name,@Price)     fetch next from cursor_product_insert into @Product_id,@Product_Name,@Price  end  close cursor_product_insert  deallocate cursor_product_insert
