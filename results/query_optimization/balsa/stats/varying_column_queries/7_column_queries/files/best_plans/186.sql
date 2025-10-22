/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-11 02:47:11'::timestamp AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=15 AND p.CreationDate>='2010-07-19 19:33:13'::timestamp AND p.CreationDate<='2014-08-08 21:23:16'::timestamp AND u.Reputation<=590;

