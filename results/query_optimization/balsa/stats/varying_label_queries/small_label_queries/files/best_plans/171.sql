/*+ HashJoin(c v u)
 HashJoin(c v)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 Leading(((c v) u)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.VoteTypeId=2 AND v.CreationDate='2012-08-08 00:00:00'::timestamp AND u.DownVotes>=0 AND u.UpVotes<=13;

