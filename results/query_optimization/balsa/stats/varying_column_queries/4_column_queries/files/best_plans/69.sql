/*+ NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 Leading((p c)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.ViewCount>=0 AND p.FavoriteCount=0 AND p.CreationDate>='2009-02-02 14:24:31'::timestamp AND p.CreationDate<='2014-09-01 08:06:17'::timestamp;

