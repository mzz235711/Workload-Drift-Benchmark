/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = v.UserId AND c.CreationDate>='2010-07-27 17:15:55'::timestamp AND c.CreationDate<='2014-09-13 08:22:38'::timestamp AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.Reputation<=1205 AND u.UpVotes>=0 AND u.CreationDate>='2011-02-16 19:24:28'::timestamp;

