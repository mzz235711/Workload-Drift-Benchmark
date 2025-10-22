/*+ HashJoin(c u p)
 MergeJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-09-13 16:07:00'::timestamp AND c.CreationDate<='2014-09-09 21:08:08'::timestamp AND u.UpVotes<=54;

