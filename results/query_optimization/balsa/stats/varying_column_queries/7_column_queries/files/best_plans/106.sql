/*+ HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=7733 AND p.CreationDate>='2010-09-08 21:21:58'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=347;

