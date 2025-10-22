/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score>=-1 AND p.ViewCount>=0 AND p.CommentCount=2 AND p.CreationDate>='2010-07-20 08:05:04'::timestamp AND p.CreationDate<='2014-09-10 23:18:19'::timestamp;

