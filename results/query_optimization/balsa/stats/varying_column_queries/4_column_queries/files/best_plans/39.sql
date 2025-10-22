/*+ HashJoin(c u v)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-07-20 05:28:20'::timestamp AND v.VoteTypeId=2 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-12 14:52:52'::timestamp;

