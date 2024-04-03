select * from Cities
select * from Countries



select ct.Name as 'City',ctr.Name as 'Country' from Cities ct
join Countries ctr
on ct.CountyId = ctr.Id
 

select ct.Name as 'City',ctr.Name as 'Country' from Cities ct
left join Countries ctr
on ct.CountyId = ctr.Id

select ct.Name as 'City',ctr.Name as 'Country' from Cities ct
right join Countries ctr
on ct.CountyId = ctr.Id

select ct.Name as 'City',ctr.Name as 'Country' from Cities ct
full outer join Countries ctr
on ct.CountyId = ctr.Id


select a.Name as 'Author name',a.Email as 'Author email',b.Name as 'Book name' from Authors a
join BookAuthors ba
on a.Id = ba.AuthorId
join Books b
on b.Id = ba.AuthorId