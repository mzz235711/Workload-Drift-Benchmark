/*+ HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((u (p v))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount<=50 AND p.CommentCount<=9 AND p.FavoriteCount>=0 AND u.Reputation>=1 AND u.Reputation<=758 AND u.CreationDate>='2010-10-22 08:15:41'::timestamp AND u.CreationDate<='2014-08-08 12:09:59'::timestamp;

