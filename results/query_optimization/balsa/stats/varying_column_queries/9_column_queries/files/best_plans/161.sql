/*+ HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score<=16 AND p.ViewCount>=0 AND p.ViewCount<=12640 AND p.CreationDate>='2010-07-20 17:17:21'::timestamp AND p.CreationDate<='2014-08-15 00:27:49'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

