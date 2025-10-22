/*+ HashJoin(c u p v)
 HashJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((c (u p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=1 AND p.ViewCount>=0 AND p.ViewCount<=4615 AND p.CommentCount>=0 AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.CreationDate>='2010-11-26 13:15:57'::timestamp;

