/*+ HashJoin(c u ph b)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(b)
 Leading(((c (u ph)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.CreationDate<='2014-08-28 06:46:50'::timestamp AND b.Date<='2014-09-06 00:12:30'::timestamp AND u.Views>=0 AND u.UpVotes>=0 AND u.UpVotes<=86;

