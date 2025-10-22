/*+ HashJoin(p c u)
 MergeJoin(c u)
 SeqScan(p)
 SeqScan(c)
 IndexScan(u)
 Leading((p (c u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate='2012-10-11 21:20:05'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND u.UpVotes>=0;

