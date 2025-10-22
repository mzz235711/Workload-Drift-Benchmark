/*+ MergeJoin(c u v p)
 MergeJoin(c u v)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 IndexScan(v)
 SeqScan(p)
 Leading((((c u) v) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.CreationDate<='2014-09-04 08:04:31'::timestamp AND p.CreationDate<='2014-09-08 16:01:17'::timestamp AND v.CreationDate>='2010-08-03 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=1673 AND u.UpVotes>=0 AND u.UpVotes<=238;

