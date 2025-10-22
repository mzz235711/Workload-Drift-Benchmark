/*+ MergeJoin(c u p v b)
 MergeJoin(c u p v)
 HashJoin(c u p)
 NestLoop(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.Score<=71 AND p.AnswerCount<=6 AND p.CreationDate<='2014-09-12 09:14:26'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=250 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND b.Date>='2010-07-21 04:23:12'::timestamp;

