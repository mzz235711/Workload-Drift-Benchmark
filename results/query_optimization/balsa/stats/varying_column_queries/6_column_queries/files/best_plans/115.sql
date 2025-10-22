/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.Score=2 AND p.ViewCount<=8014 AND u.Reputation>=1 AND u.Views<=12 AND u.DownVotes>=0 AND u.CreationDate>='2010-08-15 01:26:16'::timestamp;

