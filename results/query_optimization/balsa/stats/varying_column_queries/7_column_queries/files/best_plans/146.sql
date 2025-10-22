/*+ HashJoin(c u p v b)
 MergeJoin(c u p v)
 HashJoin(c u p)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.CreationDate<='2014-09-12 19:11:19'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=224 AND u.UpVotes>=0 AND u.UpVotes<=65;

