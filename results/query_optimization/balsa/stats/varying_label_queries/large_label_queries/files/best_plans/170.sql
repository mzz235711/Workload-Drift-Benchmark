/*+ HashJoin(c u p)
 MergeJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading((c (u p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=2 AND c.CreationDate<='2014-08-26 09:42:58'::timestamp AND p.PostTypeId=2 AND p.Score>=-2 AND u.DownVotes>=0;

