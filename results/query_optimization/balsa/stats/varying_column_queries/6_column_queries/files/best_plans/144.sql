/*+ HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-09-08 17:31:12'::timestamp AND v.VoteTypeId=2 AND u.Reputation>=1 AND u.Reputation<=670 AND u.DownVotes<=0 AND u.UpVotes<=11;

