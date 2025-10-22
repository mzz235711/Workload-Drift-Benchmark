/*+ HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND c.CreationDate>='2010-07-23 15:29:16'::timestamp AND v.VoteTypeId=2 AND u.UpVotes>=0 AND u.CreationDate>='2010-07-19 19:16:54'::timestamp AND u.CreationDate<='2014-09-12 00:16:30'::timestamp;

