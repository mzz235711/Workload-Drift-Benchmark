/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.PostTypeId=1 AND p.CreationDate<='2014-09-11 08:48:37'::timestamp AND u.UpVotes<=103 AND u.CreationDate<='2014-09-04 03:45:29'::timestamp;

