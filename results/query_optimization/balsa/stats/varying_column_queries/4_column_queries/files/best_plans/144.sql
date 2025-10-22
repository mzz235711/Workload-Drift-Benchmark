/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.Views>=0 AND u.DownVotes>=0;

