/*+ HashJoin(c u v)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 Leading(((c u) v)) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-08-09 12:22:37'::timestamp AND c.CreationDate<='2014-09-08 09:11:37'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Reputation<=150 AND u.Views<=44 AND u.UpVotes<=116;

