/*+ HashJoin(v u p)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score<=8 AND p.ViewCount>=0 AND p.ViewCount<=6412 AND p.CommentCount>=0 AND u.Reputation>=1 AND u.CreationDate>='2010-07-20 01:47:47'::timestamp AND u.CreationDate<='2014-09-08 07:46:10'::timestamp;

