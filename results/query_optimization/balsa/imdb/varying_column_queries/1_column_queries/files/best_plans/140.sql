/*+ SeqScan(movie_companies)
 Leading(movie_companies) */
select count(*) from movie_companies where movie_companies.company_type_id>1;

