/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount<=10876 AND p.CreationDate>='2010-08-09 15:36:26'::timestamp AND u.Views<=50 AND u.DownVotes>=0;

