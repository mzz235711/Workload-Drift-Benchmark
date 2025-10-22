/*+ MergeJoin(v u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.CreationDate>='2010-07-26 00:00:00'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND p.Score=4 AND p.CommentCount<=16 AND u.Reputation>=1 AND u.Reputation<=461 AND u.DownVotes=0 AND u.CreationDate>='2010-12-28 02:35:22'::timestamp AND u.CreationDate<='2014-07-25 10:53:37'::timestamp;

