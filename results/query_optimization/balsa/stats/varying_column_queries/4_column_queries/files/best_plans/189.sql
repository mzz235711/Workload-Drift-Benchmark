/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate<='2014-09-10 15:10:39'::timestamp AND v.VoteTypeId=2 AND u.Views>=0 AND u.Views<=29;

