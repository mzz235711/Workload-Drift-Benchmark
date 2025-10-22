/*+ HashJoin(v c b u pl p)
 MergeJoin(c b u pl p)
 HashJoin(b u pl p)
 MergeJoin(u pl p)
 HashJoin(pl p)
 IndexScan(v)
 IndexScan(c)
 SeqScan(b)
 IndexScan(u)
 IndexScan(pl)
 SeqScan(p)
 Leading((v (c (b (u (pl p)))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, votes as v, badges as b, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND c.CreationDate<='2014-09-11 13:51:01'::timestamp AND p.CommentCount<=21 AND p.CreationDate>='2010-08-19 14:15:28'::timestamp AND p.CreationDate<='2014-09-03 20:04:24'::timestamp AND pl.CreationDate<='2014-07-22 17:24:12'::timestamp AND u.Reputation>=1 AND u.Reputation<=7663;

