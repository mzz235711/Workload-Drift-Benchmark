/*+ NestLoop(u p v c)
 NestLoop(u p v)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(v)
 IndexScan(c)
 Leading((((u p) v) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:37:27'::timestamp AND c.CreationDate<='2014-09-10 18:33:24'::timestamp AND p.Score>=0 AND p.ViewCount=105 AND p.CreationDate>='2010-07-21 11:18:56'::timestamp;

