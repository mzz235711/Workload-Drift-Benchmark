/*+ HashJoin(c u ph b)
 HashJoin(c u ph)
 HashJoin(u ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(ph)
 IndexScan(b)
 Leading(((c (u ph)) b)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.CreationDate>='2010-11-24 15:01:27'::timestamp AND b.Date>='2010-07-20 05:19:09'::timestamp AND b.Date<='2014-09-13 08:20:50'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

