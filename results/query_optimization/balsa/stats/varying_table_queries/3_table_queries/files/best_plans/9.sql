/*+ HashJoin(c u ph)
 HashJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(ph)
 Leading(((c u) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.Score=0 AND ph.CreationDate<='2014-09-08 16:01:17'::timestamp AND u.Reputation<=6431 AND u.Views>=0 AND u.Views<=216 AND u.UpVotes>=0 AND u.UpVotes<=44 AND u.CreationDate>='2010-11-03 09:30:32'::timestamp;

